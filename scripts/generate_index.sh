#!/bin/bash
set -euo pipefail
shopt -s nullglob
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

CONFIG_FILE="${1:-config/site.yml}"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "Config file not found: $CONFIG_FILE" >&2
  exit 1
fi

yaml_get() {
  local key="$1"
  awk -F': *' -v k="$key" '
    $0 ~ "^[[:space:]]*"k":[[:space:]]*" {
      sub(/^[^:]*:[[:space:]]*/, "")
      print
      exit
    }
  ' "$CONFIG_FILE" | sed -e 's/^"//' -e 's/"$//'
}

yaml_get_list() {
  local key="$1"
  awk -v k="$key" '
    $0 ~ "^[[:space:]]*"k":[[:space:]]*$" { in_list=1; next }
    in_list && $0 ~ "^[[:space:]]*-[[:space:]]+" {
      sub(/^[[:space:]]*-[[:space:]]+/, "")
      print
      next
    }
    in_list && $0 !~ "^[[:space:]]*$" { in_list=0 }
  ' "$CONFIG_FILE"
}

COURSE_CODE="$(yaml_get "course_code")"
COURSE_NAME="$(yaml_get "course_name")"
COURSE_SUFFIX="$(yaml_get "course_suffix")"
PROFESSOR_NAME="$(yaml_get "professor_name")"
INSTITUTION_NAME="$(yaml_get "institution_name")"
SITE_SUBTITLE="$(yaml_get "site_subtitle")"

COURSE_CODE="${COURSE_CODE:-ECT3201}"
COURSE_NAME="${COURSE_NAME:-Linguagem de Programacao}"
COURSE_SUFFIX="${COURSE_SUFFIX:-C++}"
PROFESSOR_NAME="${PROFESSOR_NAME:-Docente}"
INSTITUTION_NAME="${INSTITUTION_NAME:-Instituicao}"
SITE_SUBTITLE="${SITE_SUBTITLE:-Indice dos materiais da disciplina.}"

mapfile -t UNPUBLISHED_ITEMS < <(yaml_get_list "unpublished_items")

is_unpublished() {
  local file_path="$1"
  local item
  for item in "${UNPUBLISHED_ITEMS[@]}"; do
    if [ "$file_path" = "$item" ]; then
      return 0
    fi
  done
  return 1
}

escape_html() {
  printf '%s' "$1" | sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g'
}

append_material_rows() {
  local glob_pattern="$1"
  local label="$2"
  local href_prefix="$3"
  local number_pattern="$4"

  for file in $glob_pattern; do
    [ -f "$file" ] || continue
    is_unpublished "$file" && continue

    local name
    local title
    local num
    local safe_title

    name=$(basename "$file" .md)
    title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
    [ -z "$title" ] && title="$name"

    num=$(echo "$name" | sed -n "$number_pattern" | tr -d '\r')
    [ -z "$num" ] && num="-"

    safe_title=$(escape_html "$title")

    printf '        <article class="material-card">\n' >> index.html
    printf '          <div class="material-number">%s</div>\n' "$num" >> index.html
    printf '          <div class="material-copy">\n' >> index.html
    printf '            <div class="material-label">%s</div>\n' "$label" >> index.html
    printf '            <div class="material-title">%s</div>\n' "$safe_title" >> index.html
    printf '          </div>\n' >> index.html
    printf '          <div class="material-actions">\n' >> index.html
    printf '            <a class="action-link html" href="%s/%s.html">HTML</a>\n' "$href_prefix" "$name" >> index.html
    printf '            <a class="action-link pdf" href="%s/%s.pdf">PDF</a>\n' "$href_prefix" "$name" >> index.html
    printf '          </div>\n' >> index.html
    printf '        </article>\n' >> index.html
  done
}

printf '%s\n' \
  '---' \
  'marp: true' \
  'theme: ect' \
  "title: ${COURSE_CODE} - ${COURSE_NAME}" \
  '---' \
  '' \
  "# ${COURSE_CODE} - ${COURSE_NAME} (${COURSE_SUFFIX})" \
  '' \
  "Prof. ${PROFESSOR_NAME}" \
  '' \
  '---' \
  '' \
  '# Indice' \
  '' \
  '## Aulas Teoricas' \
  '' \
  '| No | Tema | HTML | PDF |' \
  '| --- | --- | --- | --- |' > indice.md

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"

  if [ -n "$num" ]; then
    printf '| %02d | %s | [&#128065; HTML](slides/%s.html) | [&#128196; PDF](slides/%s.pdf) |\n' "$num" "$title" "$name" "$name" >> indice.md
  else
    printf '| - | %s | [&#128065; HTML](slides/%s.html) | [&#128196; PDF](slides/%s.pdf) |\n' "$title" "$name" "$name" >> indice.md
  fi
done

printf '%s\n' \
  '' \
  '---' \
  '' \
  '## Laboratorios' \
  '' \
  '| No | Tema | HTML | PDF |' \
  '| --- | --- | --- | --- |' >> indice.md

for file in labs/lab-*.md; do
  is_unpublished "$file" && continue

  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lab-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"

  if [ -n "$num" ]; then
    printf '| %02d | %s | [&#128065; HTML](labs/%s.html) | [&#128196; PDF](labs/%s.pdf) |\n' "$num" "$title" "$name" "$name" >> indice.md
  else
    printf '| - | %s | [&#128065; HTML](labs/%s.html) | [&#128196; PDF](labs/%s.pdf) |\n' "$title" "$name" "$name" >> indice.md
  fi
done

printf '%s\n' \
  '' \
  '---' \
  '' \
  '## Listas de Exercicios' \
  '' \
  '| No | Tema | HTML | PDF |' \
  '| --- | --- | --- | --- |' >> indice.md

for file in listas/lista-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lista-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"

  if [ -n "$num" ]; then
    printf '| %02d | %s | [&#128065; HTML](listas/%s.html) | [&#128196; PDF](listas/%s.pdf) |\n' "$num" "$title" "$name" "$name" >> indice.md
  else
    printf '| - | %s | [&#128065; HTML](listas/%s.html) | [&#128196; PDF](listas/%s.pdf) |\n' "$title" "$name" "$name" >> indice.md
  fi
done

SAFE_COURSE_TITLE="$(escape_html "${COURSE_CODE} - ${COURSE_NAME} (${COURSE_SUFFIX})")"
SAFE_INSTITUTION_NAME="$(escape_html "$INSTITUTION_NAME")"
SAFE_SITE_SUBTITLE="$(escape_html "$SITE_SUBTITLE")"

cat > index.html <<HTML
<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>${SAFE_COURSE_TITLE}</title>
  <style>
    :root {
      --bg: #ffffff;
      --panel: #ffffff;
      --text: #122033;
      --muted: #53657c;
      --brand: #123b6d;
      --brand-soft: #f2f6fb;
      --line: #d6e0eb;
      --html: #0a6db6;
      --pdf: #b3261e;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Segoe UI", "Poppins", system-ui, sans-serif;
      color: var(--text);
      background: var(--bg);
    }
    .topbar {
      background: linear-gradient(90deg, #123b6d 0%, #1b568d 100%);
      color: #eef5ff;
      padding: 14px 18px;
      border-bottom: 1px solid #0f3158;
      font-size: .9rem;
      font-weight: 700;
      letter-spacing: .02em;
      text-transform: uppercase;
    }
    .hero {
      background: linear-gradient(180deg, #edf4fb 0%, #f8fbff 100%);
      border-bottom: 1px solid var(--line);
    }
    .hero-inner {
      max-width: 920px;
      margin: 0 auto;
      padding: 28px 18px 24px;
    }
    .hero-title {
      margin: 0 0 8px;
      font-size: clamp(1.7rem, 4vw, 2.5rem);
      line-height: 1.08;
      color: var(--brand);
    }
    .hero-sub {
      margin: 0;
      font-size: 1rem;
      color: var(--muted);
    }
    .page {
      max-width: 920px;
      margin: 0 auto;
      padding: 28px 18px 44px;
    }
    .section {
      margin-bottom: 22px;
      padding: 18px 18px 8px;
      background: var(--panel);
      border: 1px solid var(--line);
      border-radius: 18px;
    }
    .section-title {
      margin: 0 0 14px;
      padding-bottom: 10px;
      border-bottom: 2px solid var(--line);
      font-size: 1.08rem;
      color: var(--brand);
      text-transform: uppercase;
      letter-spacing: .04em;
    }
    .material-list {
      display: grid;
      gap: 10px;
    }
    .material-card {
      display: grid;
      grid-template-columns: auto 1fr auto;
      gap: 14px;
      align-items: center;
      padding: 14px 0;
      border-bottom: 1px solid var(--line);
    }
    .material-card:last-child {
      border-bottom: none;
    }
    .material-number {
      min-width: 42px;
      padding: 6px 8px;
      background: var(--brand-soft);
      color: var(--brand);
      border-radius: 999px;
      text-align: center;
      font-size: .85rem;
      font-weight: 800;
    }
    .material-copy {
      min-width: 0;
    }
    .material-label {
      margin-bottom: 3px;
      color: var(--muted);
      font-size: .82rem;
      text-transform: uppercase;
      letter-spacing: .04em;
    }
    .material-title {
      font-size: 1rem;
      font-weight: 700;
      line-height: 1.35;
    }
    .material-actions {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      justify-content: flex-end;
    }
    .action-link {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      min-width: 68px;
      padding: 8px 11px;
      border-radius: 10px;
      background: #fff;
      text-decoration: none;
      font-size: .9rem;
      font-weight: 700;
    }
    .action-link.html { color: var(--html); }
    .action-link.pdf { color: var(--pdf); }
    .action-link:hover { text-decoration: underline; }
    @media (max-width: 720px) {
      .hero-inner { padding: 24px 16px 20px; }
      .page { padding: 18px 16px 32px; }
      .section { padding: 16px 14px 6px; }
      .material-card {
        grid-template-columns: 1fr;
        gap: 10px;
      }
      .material-number {
        width: fit-content;
      }
      .material-actions {
        justify-content: flex-start;
      }
    }
  </style>
</head>
<body>
  <header class="topbar">${SAFE_INSTITUTION_NAME}</header>
  <section class="hero">
    <div class="hero-inner">
      <h1 class="hero-title">${SAFE_COURSE_TITLE}</h1>
      <p class="hero-sub">${SAFE_SITE_SUBTITLE}</p>
    </div>
  </section>
  <main class="page">
    <section class="section">
      <h2 class="section-title">Aulas</h2>
      <div class="material-list">
HTML

append_material_rows "slides/*.md" "Aula te&oacute;rica" "slides" 's/^\([0-9][0-9]*\).*/\1/p'

cat >> index.html <<'HTML'
      </div>
    </section>
    <section class="section">
      <h2 class="section-title">Listas</h2>
      <div class="material-list">
HTML

append_material_rows "listas/lista-*.md" "Lista de exerc&iacute;cios" "listas" 's/^lista-\([0-9][0-9]*\)$/\1/p'

cat >> index.html <<'HTML'
      </div>
    </section>
    <section class="section">
      <h2 class="section-title">Laborat&oacute;rios</h2>
      <div class="material-list">
HTML

append_material_rows "labs/lab-*.md" "Laborat&oacute;rio" "labs" 's/^lab-\([0-9][0-9]*\)$/\1/p'

cat >> index.html <<HTML
      </div>
    </section>
  </main>
</body>
</html>
HTML
