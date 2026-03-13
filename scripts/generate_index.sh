#!/bin/bash
set -euo pipefail
shopt -s nullglob
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

escape_html() {
  printf '%s' "$1" | sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g'
}

trim() {
  local value="$1"
  value="${value#"${value%%[![:space:]]*}"}"
  value="${value%"${value##*[![:space:]]}"}"
  printf '%s' "$value"
}

render_markdown_table_rows() {
  local file="$1"
  local cols="$2"

  [ -f "$file" ] || return 0

  awk -F'|' -v cols="$cols" '
    function trim(s) { gsub(/^[ \t]+|[ \t]+$/, "", s); return s }
    {
      if ($0 !~ /^\|/) next
      for (i = 1; i <= cols; i++) {
        c[i] = trim($(i + 1))
      }
      if (c[1] == "") next

      sep = 1
      for (i = 1; i <= cols; i++) {
        if (c[i] !~ /^:?-{3,}:?$/) sep = 0
      }
      if (sep) next

      lc = tolower(c[1])
      if (lc == "nome" || lc == "ferramenta" || lc == "referência" || lc == "referencia") next

      out = c[1]
      for (i = 2; i <= cols; i++) out = out "\t" c[i]
      print out
    }
  ' "$file"
}

link_cell_html() {
  local raw
  raw="$(trim "$1")"

  if [[ "$raw" =~ ^\[(.+)\]\((https?://[^)]+)\)$ ]]; then
    local label="${BASH_REMATCH[1]}"
    local url="${BASH_REMATCH[2]}"
    printf '<a href="%s" target="_blank" rel="noopener noreferrer">%s</a>' "$(escape_html "$url")" "$(escape_html "$label")"
    return
  fi

  if [[ "$raw" =~ ^https?:// ]]; then
    printf '<a href="%s" target="_blank" rel="noopener noreferrer">Abrir</a>' "$(escape_html "$raw")"
    return
  fi

  printf '%s' "$(escape_html "$raw")"
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

  if [ -z "$title" ]; then
    title="$name"
  fi

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

  if [ -z "$title" ]; then
    title="$name"
  fi

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

  if [ -z "$title" ]; then
    title="$name"
  fi

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
      --bg: #eef1f5;
      --panel: #ffffff;
      --border: #d5dbe5;
      --text: #0b1220;
      --brand: #1f4f93;
      --brand-dark: #143f78;
      --link: #0f5eb8;
      --ok: #1168af;
      --pdf: #b42318;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Segoe UI", "Poppins", system-ui, sans-serif;
      color: var(--text);
      background: var(--bg);
      min-height: 100vh;
    }
    .ectbar {
      background: linear-gradient(90deg, var(--brand-dark), var(--brand));
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: flex-start;
      gap: 12px;
      padding: 12px 20px;
    }
    .ect-logo {
      font-weight: 700;
      letter-spacing: .3px;
      text-transform: uppercase;
      font-size: .95rem;
    }
    .hero-banner {
      position: relative;
      min-height: 290px;
      background:
        radial-gradient(circle at 20% 20%, rgba(255,255,255,.18) 1px, transparent 2px) 0 0 / 36px 36px,
        radial-gradient(circle at 80% 30%, rgba(255,255,255,.14) 1px, transparent 2px) 0 0 / 42px 42px,
        linear-gradient(160deg, #021637 0%, #062b61 55%, #0e3f7e 100%);
      display: grid;
      place-items: center;
      padding: 20px;
      text-align: center;
      color: #fff;
    }
    .hero-banner::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(2, 8, 25, 0.46), rgba(2, 8, 25, 0.15));
      pointer-events: none;
    }
    .hero-content {
      position: relative;
      z-index: 1;
      max-width: 940px;
    }
    .hero-title {
      margin: 0 0 8px;
      font-size: clamp(1.6rem, 4.4vw, 3rem);
      line-height: 1.12;
      font-weight: 800;
    }
    .hero-sub {
      margin: 0;
      font-size: clamp(1rem, 2vw, 1.25rem);
      color: #dbeafe;
    }
    .grid {
      max-width: 1100px;
      margin: 0 auto;
      padding: 22px 18px 40px;
      display: grid;
      gap: 18px;
    }
    .section-title {
      margin: 0;
      color: #243246;
      font-size: clamp(1.1rem, 2vw, 1.35rem);
      font-weight: 700;
    }
    .tabs {
      border: 1px solid var(--border);
      border-radius: 14px;
      background: var(--panel);
      overflow: hidden;
      box-shadow: 0 8px 18px rgba(11, 29, 58, 0.05);
    }
    .tab-buttons {
      display: flex;
      gap: 0;
      border-bottom: 1px solid var(--border);
      background: #f6f9fd;
      flex-wrap: wrap;
    }
    .tab-btn {
      appearance: none;
      border: none;
      background: transparent;
      color: #27466b;
      font-weight: 700;
      font-size: .98rem;
      padding: 12px 16px;
      cursor: pointer;
      border-right: 1px solid var(--border);
    }
    .tab-btn:last-child { border-right: none; }
    .tab-btn.active {
      background: #ffffff;
      color: var(--brand-dark);
      box-shadow: inset 0 -3px 0 var(--brand);
    }
    .tab-panel {
      display: none;
      padding: 14px;
    }
    .tab-panel.active { display: block; }
    .tab-panel h2 {
      margin: 0 0 10px;
      font-size: 1.08rem;
      color: var(--brand-dark);
      border-bottom: 2px solid #edf2f8;
      padding-bottom: 7px;
    }
    table { width: 100%; border-collapse: collapse; font-size: .95rem; }
    th, td { border-top: 1px solid var(--border); padding: 8px 6px; text-align: left; vertical-align: top; }
    th { color: #1d4777; border-top: none; background: #f7faff; }
    a { color: var(--link); text-decoration: none; font-weight: 600; }
    a:hover { text-decoration: underline; }
    .html { color: var(--ok); }
    .pdf { color: var(--pdf); }
    @media (max-width: 760px) {
      .ectbar { padding: 10px 12px; }
      .ect-logo { font-size: .85rem; }
      .tab-btn { padding: 10px 12px; font-size: .92rem; }
    }
  </style>
</head>
<body>
  <div class="ectbar">
    <div class="ect-logo">Escola de Ci&ecirc;ncias e Tecnologia - UFRN</div>
  </div>
  <section class="hero-banner">
    <div class="hero-content">
      <h1 class="hero-title">ECT3201 - Linguagem de Programa&ccedil;&atilde;o (C++)</h1>
      <p class="hero-sub">&Iacute;ndice dos materiais da disciplina: aulas, laborat&oacute;rios e listas.</p>
    </div>
  </section>
  <main class="grid">
    <p class="section-title">Materiais Dispon&iacute;veis</p>
    <section class="tabs">
      <div class="tab-buttons">
        <button class="tab-btn active" data-target="tab-aulas">Aulas</button>
        <button class="tab-btn" data-target="tab-listas">Listas</button>
        <button class="tab-btn" data-target="tab-labs">Laborat&oacute;rios</button>
        <button class="tab-btn" data-target="tab-ferramentas">Ferramentas</button>
        <button class="tab-btn" data-target="tab-referencias">Refer&ecirc;ncias</button>
      </div>
      <section id="tab-aulas" class="tab-panel active">
        <h2>Aulas Te&oacute;ricas</h2>
        <table>
          <thead><tr><th>No</th><th>Tema</th><th>Links</th></tr></thead>
          <tbody>
HTML

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '            <tr><td>%s</td><td>%s</td><td><a class="html" href="slides/%s.html">HTML</a> &middot; <a class="pdf" href="slides/%s.pdf">PDF</a></td></tr>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </section>
      <section id="tab-listas" class="tab-panel">
        <h2>Listas de Exerc&iacute;cios</h2>
        <table>
          <thead><tr><th>No</th><th>Tema</th><th>Links</th></tr></thead>
          <tbody>
HTML

for file in listas/lista-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lista-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '            <tr><td>%s</td><td>%s</td><td><a class="html" href="listas/%s.html">HTML</a> &middot; <a class="pdf" href="listas/%s.pdf">PDF</a></td></tr>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </section>
      <section id="tab-labs" class="tab-panel">
        <h2>Laborat&oacute;rios</h2>
        <table>
          <thead><tr><th>No</th><th>Tema</th><th>Links</th></tr></thead>
          <tbody>
HTML

for file in labs/lab-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lab-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '            <tr><td>%s</td><td>%s</td><td><a class="html" href="labs/%s.html">HTML</a> &middot; <a class="pdf" href="labs/%s.pdf">PDF</a></td></tr>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </section>
      <section id="tab-ferramentas" class="tab-panel">
        <h2>Ferramentas</h2>
        <table>
          <thead><tr><th>Nome</th><th>Tipo</th><th>Download</th></tr></thead>
          <tbody>
HTML

has_tools=0
while IFS=$'\t' read -r tool_name tool_type tool_link; do
  [ -z "${tool_name:-}" ] && continue
  has_tools=1
  safe_tool_name=$(escape_html "$tool_name")
  safe_tool_type=$(escape_html "$tool_type")
  link_html=$(link_cell_html "$tool_link")
  printf '            <tr><td>%s</td><td>%s</td><td>%s</td></tr>\n' "$safe_tool_name" "$safe_tool_type" "$link_html" >> index.html
done < <(render_markdown_table_rows "ferramentas/ferramentas.md" 3)

if [ "$has_tools" -eq 0 ]; then
  printf '            <tr><td colspan="3">Nenhuma ferramenta cadastrada.</td></tr>\n' >> index.html
fi

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </section>
      <section id="tab-referencias" class="tab-panel">
        <h2>Refer&ecirc;ncias</h2>
        <table>
          <thead><tr><th>Refer&ecirc;ncia</th><th>Link</th></tr></thead>
          <tbody>
HTML

has_refs=0
while IFS=$'\t' read -r ref_text ref_link; do
  [ -z "${ref_text:-}" ] && continue
  has_refs=1
  safe_ref_text=$(escape_html "$ref_text")
  link_html=$(link_cell_html "$ref_link")
  printf '            <tr><td>%s</td><td>%s</td></tr>\n' "$safe_ref_text" "$link_html" >> index.html
done < <(render_markdown_table_rows "referencias/referencias.md" 2)

if [ "$has_refs" -eq 0 ]; then
  printf '            <tr><td colspan="2">Nenhuma refer&ecirc;ncia cadastrada.</td></tr>\n' >> index.html
fi

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </section>
    </section>
  </main>
  <script>
    const tabButtons = document.querySelectorAll('.tab-btn');
    const tabPanels = document.querySelectorAll('.tab-panel');
    tabButtons.forEach((btn) => {
      btn.addEventListener('click', () => {
        tabButtons.forEach((b) => b.classList.remove('active'));
        tabPanels.forEach((p) => p.classList.remove('active'));
        btn.classList.add('active');
        const panel = document.getElementById(btn.dataset.target);
        if (panel) panel.classList.add('active');
      });
    });
  </script>
</body>
</html>
HTML
