#!/bin/bash
set -euo pipefail
shopt -s nullglob
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

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
  'title: ECT3201 - Linguagem de Programacao' \
  '---' \
  '' \
  '# ECT3201 - Linguagem de Programacao (C++)' \
  '' \
  'Prof. Everton Santi' \
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

cat > index.html <<'HTML'
<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ECT3201 - Linguagem de Programa&ccedil;&atilde;o (C++)</title>
  <style>
    :root {
      --bg: #f4f7fb;
      --panel: #ffffff;
      --text: #122033;
      --muted: #53657c;
      --brand: #123b6d;
      --brand-soft: #e8f0fa;
      --line: #dfe7f1;
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
      background: var(--brand);
      color: #fff;
      padding: 12px 18px;
      font-size: .9rem;
      font-weight: 700;
      letter-spacing: .02em;
      text-transform: uppercase;
    }
    .hero {
      background: #fff;
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
      padding: 22px 18px 40px;
    }
    .section {
      margin-bottom: 28px;
    }
    .section-title {
      margin: 0 0 12px;
      font-size: 1.05rem;
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
  <header class="topbar">Escola de Ci&ecirc;ncias e Tecnologia - UFRN</header>
  <section class="hero">
    <div class="hero-inner">
      <h1 class="hero-title">ECT3201 - Linguagem de Programa&ccedil;&atilde;o (C++)</h1>
      <p class="hero-sub">&Iacute;ndice dos materiais da disciplina.</p>
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

cat >> index.html <<'HTML'
      </div>
    </section>
  </main>
</body>
</html>
HTML
