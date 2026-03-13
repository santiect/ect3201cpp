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

  if [[ "$raw" == \[*\]\(*\) ]]; then
    local label="${raw#\[}"
    label="${label%%\]*}"
    local url="${raw#*\(}"
    url="${url%\)}"

    if [[ "$url" == http://* || "$url" == https://* ]]; then
      printf '<a href="%s" target="_blank" rel="noopener noreferrer">%s</a>' "$(escape_html "$url")" "$(escape_html "$label")"
      return
    fi
  fi

  if [[ "$raw" == http://* || "$raw" == https://* ]]; then
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

  # Ignorar lab-02 temporariamente
  [ "$name" == "lab-02" ] && continue

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

  # Ignorar lab-02 temporariamente
  [ "$name" == "lab-02" ] && continue

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
      --bg: #edf2f7;
      --panel: #ffffff;
      --panel-soft: #f8fbff;
      --border: #d7dfeb;
      --text: #112033;
      --muted: #5f7188;
      --brand: #1d4f91;
      --brand-dark: #143964;
      --brand-soft: #eaf2fb;
      --link: #0e60b6;
      --ok: #1168af;
      --pdf: #b42318;
      --shadow: 0 14px 30px rgba(17, 32, 51, 0.08);
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Segoe UI", "Poppins", system-ui, sans-serif;
      color: var(--text);
      background:
        radial-gradient(circle at top left, rgba(29, 79, 145, 0.08), transparent 28%),
        linear-gradient(180deg, #f7f9fc 0%, var(--bg) 100%);
      min-height: 100vh;
    }
    .ectbar {
      background: linear-gradient(90deg, var(--brand-dark), var(--brand));
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: flex-start;
      gap: 12px;
      padding: 10px 20px;
      box-shadow: 0 6px 18px rgba(20, 57, 100, 0.18);
    }
    .ect-logo {
      font-weight: 700;
      letter-spacing: .3px;
      text-transform: uppercase;
      font-size: .95rem;
    }
    .hero-banner {
      position: relative;
      min-height: 170px;
      background:
        radial-gradient(circle at 20% 20%, rgba(255,255,255,.12) 1px, transparent 2px) 0 0 / 32px 32px,
        radial-gradient(circle at 80% 30%, rgba(255,255,255,.10) 1px, transparent 2px) 0 0 / 40px 40px,
        linear-gradient(155deg, #082246 0%, #0c3568 58%, #16508e 100%);
      display: grid;
      place-items: center;
      padding: 18px 20px;
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
      max-width: 860px;
    }
    .hero-title {
      margin: 0 0 6px;
      font-size: clamp(1.45rem, 4vw, 2.4rem);
      line-height: 1.1;
      font-weight: 800;
    }
    .hero-sub {
      margin: 0;
      font-size: clamp(.95rem, 1.8vw, 1.08rem);
      color: #d9e7fb;
    }
    .grid {
      max-width: 1040px;
      margin: 0 auto;
      padding: 18px 18px 40px;
      display: grid;
      gap: 14px;
    }
    .section-title {
      margin: 0;
      color: #243246;
      font-size: clamp(1.05rem, 2vw, 1.22rem);
      font-weight: 700;
    }
    .tabs {
      border: 1px solid var(--border);
      border-radius: 18px;
      background: rgba(255, 255, 255, 0.78);
      backdrop-filter: blur(10px);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .tab-buttons {
      display: flex;
      gap: 8px;
      padding: 10px 12px 0;
      border-bottom: 1px solid rgba(215, 223, 235, 0.7);
      background: linear-gradient(180deg, #f6f9fd 0%, #fdfefe 100%);
      flex-wrap: wrap;
    }
    .tab-select-wrapper {
      display: none;
      padding: 12px;
      border-bottom: 1px solid rgba(215, 223, 235, 0.7);
      background: linear-gradient(180deg, #f6f9fd 0%, #fdfefe 100%);
    }
    .tab-select {
      width: 100%;
      padding: 11px 12px;
      border: 1px solid var(--border);
      border-radius: 12px;
      font: inherit;
      color: #27466b;
      background: #fff;
    }
    .tab-btn {
      appearance: none;
      border: 1px solid transparent;
      background: transparent;
      color: #395372;
      font-weight: 700;
      font-size: .95rem;
      padding: 10px 14px;
      cursor: pointer;
    }
    .tab-btn.active {
      background: #ffffff;
      color: var(--brand-dark);
      border-color: rgba(29, 79, 145, 0.14);
      box-shadow: 0 8px 20px rgba(17, 32, 51, 0.08);
    }
    .tab-panel {
      display: none;
      padding: 18px;
    }
    .tab-panel.active { display: block; }
    .tab-panel h2 {
      margin: 0 0 14px;
      font-size: 1.05rem;
      color: var(--brand-dark);
      padding-bottom: 0;
    }
    .material-list {
      display: grid;
      gap: 12px;
    }
    .material-card,
    .tool-card,
    .reference-card {
      display: grid;
      gap: 10px;
      padding: 14px 16px;
      border: 1px solid var(--border);
      border-radius: 16px;
      background: linear-gradient(180deg, #ffffff 0%, var(--panel-soft) 100%);
    }
    .material-card {
      grid-template-columns: auto 1fr auto;
      align-items: center;
      column-gap: 14px;
    }
    .material-number {
      min-width: 48px;
      padding: 8px 10px;
      border-radius: 999px;
      background: var(--brand-soft);
      color: var(--brand-dark);
      text-align: center;
      font-weight: 800;
      font-size: .88rem;
    }
    .material-copy {
      display: grid;
      gap: 4px;
    }
    .material-title,
    .tool-name,
    .reference-text {
      font-weight: 700;
      line-height: 1.35;
      color: var(--text);
    }
    .material-meta,
    .tool-type {
      color: var(--muted);
      font-size: .92rem;
    }
    .material-actions {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      justify-content: flex-end;
    }
    .action-link,
    .tool-link,
    .reference-link {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      min-width: 86px;
      padding: 9px 12px;
      border-radius: 999px;
      border: 1px solid rgba(17, 104, 175, 0.16);
      background: #fff;
      font-size: .92rem;
      font-weight: 700;
    }
    .action-link.html { color: var(--ok); }
    .action-link.pdf { color: var(--pdf); border-color: rgba(180, 35, 24, 0.16); }
    .tool-link,
    .reference-link {
      width: fit-content;
      color: var(--link);
    }
    .empty-state {
      padding: 18px 16px;
      border: 1px dashed var(--border);
      border-radius: 16px;
      color: var(--muted);
      background: rgba(255, 255, 255, 0.68);
    }
    a { color: var(--link); text-decoration: none; font-weight: 600; }
    a:hover { text-decoration: underline; }
    @media (max-width: 760px) {
      .ectbar { padding: 10px 12px; }
      .ect-logo { font-size: .85rem; }
      .tab-buttons { display: none; }
      .tab-select-wrapper { display: block; }
      .tab-panel { padding: 14px; }
      .material-card {
        grid-template-columns: 1fr;
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
      <div class="tab-select-wrapper">
        <select id="material-tab-select" class="tab-select" aria-label="Selecionar se&ccedil;&atilde;o">
          <option value="tab-aulas">Aulas</option>
          <option value="tab-listas">Listas</option>
          <option value="tab-labs">Laborat&oacute;rios</option>
          <option value="tab-ferramentas">Ferramentas</option>
          <option value="tab-referencias">Refer&ecirc;ncias</option>
        </select>
      </div>
      <div class="tab-buttons">
        <button class="tab-btn active" data-target="tab-aulas">Aulas</button>
        <button class="tab-btn" data-target="tab-listas">Listas</button>
        <button class="tab-btn" data-target="tab-labs">Laborat&oacute;rios</button>
        <button class="tab-btn" data-target="tab-ferramentas">Ferramentas</button>
        <button class="tab-btn" data-target="tab-referencias">Refer&ecirc;ncias</button>
      </div>
      <section id="tab-aulas" class="tab-panel active">
        <h2>Aulas Te&oacute;ricas</h2>
        <div class="material-list">
HTML

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '          <article class="material-card"><div class="material-number">%s</div><div class="material-copy"><div class="material-title">%s</div><div class="material-meta">Aula te&oacute;rica</div></div><div class="material-actions"><a class="action-link html" href="slides/%s.html">Ver HTML</a><a class="action-link pdf" href="slides/%s.pdf">Baixar PDF</a></div></article>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
        </div>
      </section>
      <section id="tab-listas" class="tab-panel">
        <h2>Listas de Exerc&iacute;cios</h2>
        <div class="material-list">
HTML

for file in listas/lista-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lista-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '          <article class="material-card"><div class="material-number">%s</div><div class="material-copy"><div class="material-title">%s</div><div class="material-meta">Lista de exerc&iacute;cios</div></div><div class="material-actions"><a class="action-link html" href="listas/%s.html">Ver HTML</a><a class="action-link pdf" href="listas/%s.pdf">Baixar PDF</a></div></article>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
        </div>
      </section>
      <section id="tab-labs" class="tab-panel">
        <h2>Laborat&oacute;rios</h2>
        <div class="material-list">
HTML

for file in labs/lab-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lab-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '          <article class="material-card"><div class="material-number">%s</div><div class="material-copy"><div class="material-title">%s</div><div class="material-meta">Laborat&oacute;rio</div></div><div class="material-actions"><a class="action-link html" href="labs/%s.html">Ver HTML</a><a class="action-link pdf" href="labs/%s.pdf">Baixar PDF</a></div></article>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
        </div>
      </section>
      <section id="tab-ferramentas" class="tab-panel">
        <h2>Ferramentas</h2>
        <div class="material-list">
HTML

has_tools=0
while IFS=$'\t' read -r tool_name tool_type tool_link; do
  [ -z "${tool_name:-}" ] && continue
  has_tools=1
  safe_tool_name=$(escape_html "$tool_name")
  safe_tool_type=$(escape_html "$tool_type")
  link_html=$(link_cell_html "$tool_link")
  printf '          <article class="tool-card"><div class="tool-name">%s</div><div class="tool-type">%s</div><div class="tool-link">%s</div></article>\n' "$safe_tool_name" "$safe_tool_type" "$link_html" >> index.html
done < <(render_markdown_table_rows "ferramentas/ferramentas.md" 3)

if [ "$has_tools" -eq 0 ]; then
  printf '          <div class="empty-state">Nenhuma ferramenta cadastrada.</div>\n' >> index.html
fi

cat >> index.html <<'HTML'
        </div>
      </section>
      <section id="tab-referencias" class="tab-panel">
        <h2>Refer&ecirc;ncias</h2>
        <div class="material-list">
HTML

has_refs=0
while IFS=$'\t' read -r ref_text ref_link; do
  [ -z "${ref_text:-}" ] && continue
  has_refs=1
  safe_ref_text=$(escape_html "$ref_text")
  link_html=$(link_cell_html "$ref_link")
  printf '          <article class="reference-card"><div class="reference-text">%s</div><div class="reference-link">%s</div></article>\n' "$safe_ref_text" "$link_html" >> index.html
done < <(render_markdown_table_rows "referencias/referencias.md" 2)

if [ "$has_refs" -eq 0 ]; then
  printf '          <div class="empty-state">Nenhuma refer&ecirc;ncia cadastrada.</div>\n' >> index.html
fi

cat >> index.html <<'HTML'
        </div>
      </section>
    </section>
  </main>
  <script>
    const tabButtons = document.querySelectorAll('.tab-btn');
    const tabPanels = document.querySelectorAll('.tab-panel');
    const tabSelect = document.getElementById('material-tab-select');

    function activateTab(targetId) {
      tabButtons.forEach((b) => b.classList.remove('active'));
      tabPanels.forEach((p) => p.classList.remove('active'));

      const activeButton = document.querySelector(`.tab-btn[data-target="${targetId}"]`);
      const activePanel = document.getElementById(targetId);

      if (activeButton) activeButton.classList.add('active');
      if (activePanel) activePanel.classList.add('active');
      if (tabSelect) tabSelect.value = targetId;
    }

    tabButtons.forEach((btn) => {
      btn.addEventListener('click', () => activateTab(btn.dataset.target));
    });

    if (tabSelect) {
      tabSelect.addEventListener('change', () => activateTab(tabSelect.value));
    }
  </script>
</body>
</html>
HTML
