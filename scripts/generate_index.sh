#!/bin/bash
set -euo pipefail
shopt -s nullglob
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

escape_html() {
  printf '%s' "$1" | sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g'
}

printf '%s\n' \
  '---' \
  'marp: true' \
  'theme: ect' \
  'title: ECT3201 - Linguagem de Programação' \
  '---' \
  '' \
  '# ECT3201 - Linguagem de Programação (C++)' \
  '' \
  'Prof. Éverton Santi' \
  '' \
  '---' \
  '' \
  '# Índice' \
  '' \
  '## Aulas Teóricas' \
  '' \
  '| Nº | Tema | HTML | PDF |' \
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
  '## Laboratórios' \
  '' \
  '| Nº | Tema | HTML | PDF |' \
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
  '## Listas de Exercícios' \
  '' \
  '| Nº | Tema | HTML | PDF |' \
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
  <title>ECT3201 - Linguagem de Programação (C++)</title>
  <style>
    :root {
      --bg-1: #030712;
      --bg-2: #0b1f3a;
      --panel: rgba(15, 23, 42, 0.78);
      --border: rgba(148, 163, 184, 0.28);
      --text: #e2e8f0;
      --muted: #93c5fd;
      --accent: #22d3ee;
      --accent-2: #38bdf8;
      --ok: #86efac;
      --pdf: #fca5a5;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Segoe UI", "Poppins", system-ui, sans-serif;
      color: var(--text);
      background:
        radial-gradient(1200px 700px at -10% -20%, #1d4ed8 0%, transparent 55%),
        radial-gradient(1000px 650px at 120% 0%, #0ea5e9 0%, transparent 55%),
        linear-gradient(130deg, var(--bg-1), var(--bg-2));
      min-height: 100vh;
    }
    .grid {
      max-width: 1100px;
      margin: 0 auto;
      padding: 28px 18px 40px;
      display: grid;
      gap: 18px;
    }
    .hero {
      border: 1px solid var(--border);
      border-radius: 16px;
      padding: 24px;
      background: var(--panel);
      backdrop-filter: blur(8px);
    }
    h1 { margin: 0 0 6px; font-size: clamp(1.8rem, 4vw, 2.7rem); }
    .sub { margin: 0; color: var(--muted); }
    .actions { margin-top: 16px; display: flex; gap: 10px; flex-wrap: wrap; }
    .btn {
      display: inline-block;
      padding: 10px 14px;
      border-radius: 10px;
      font-weight: 600;
      text-decoration: none;
      border: 1px solid transparent;
      transition: transform .16s ease, border-color .16s ease;
    }
    .btn.primary { background: linear-gradient(90deg, var(--accent), var(--accent-2)); color: #062033; }
    .btn.ghost { border-color: var(--border); color: var(--text); background: rgba(15, 23, 42, 0.4); }
    .btn:hover { transform: translateY(-1px); }
    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 14px;
    }
    .card {
      border: 1px solid var(--border);
      border-radius: 14px;
      background: var(--panel);
      padding: 14px;
    }
    .card h2 { margin: 0 0 10px; font-size: 1.1rem; }
    table { width: 100%; border-collapse: collapse; font-size: .95rem; }
    th, td { border-top: 1px solid var(--border); padding: 8px 6px; text-align: left; }
    th { color: #bae6fd; border-top: none; }
    a { color: #7dd3fc; text-decoration: none; font-weight: 600; }
    a:hover { text-decoration: underline; }
    .html { color: var(--ok); }
    .pdf { color: var(--pdf); }
  </style>
</head>
<body>
  <main class="grid">
    <section class="hero">
      <h1>ECT3201 - Linguagem de Programação (C++)</h1>
      <p class="sub">Prof. Éverton Santi</p>
      <div class="actions">
        <a class="btn primary" href="indice.html">Abrir Índice em Slides</a>
      </div>
    </section>
    <section class="cards">
      <article class="card">
        <h2>Aulas Teóricas</h2>
        <table>
          <thead><tr><th>Nº</th><th>Tema</th><th>Links</th></tr></thead>
          <tbody>
HTML

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '            <tr><td>%s</td><td>%s</td><td><a class="html" href="slides/%s.html">👁 HTML</a> · <a class="pdf" href="slides/%s.pdf">📄 PDF</a></td></tr>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </article>
      <article class="card">
        <h2>Laboratórios</h2>
        <table>
          <thead><tr><th>Nº</th><th>Tema</th><th>Links</th></tr></thead>
          <tbody>
HTML

for file in labs/lab-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lab-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '            <tr><td>%s</td><td>%s</td><td><a class="html" href="labs/%s.html">👁 HTML</a> · <a class="pdf" href="labs/%s.pdf">📄 PDF</a></td></tr>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </article>
      <article class="card">
        <h2>Listas de Exercícios</h2>
        <table>
          <thead><tr><th>Nº</th><th>Tema</th><th>Links</th></tr></thead>
          <tbody>
HTML

for file in listas/lista-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file" | tr -d '\r')
  num=$(echo "$name" | sed -n 's/^lista-\([0-9][0-9]*\)$/\1/p' | tr -d '\r')
  [ -z "$title" ] && title="$name"
  [ -z "$num" ] && num="-"
  safe_title=$(escape_html "$title")
  printf '            <tr><td>%s</td><td>%s</td><td><a class="html" href="listas/%s.html">👁 HTML</a> · <a class="pdf" href="listas/%s.pdf">📄 PDF</a></td></tr>\n' "$num" "$safe_title" "$name" "$name" >> index.html
done

cat >> index.html <<'HTML'
          </tbody>
        </table>
      </article>
    </section>
  </main>
</body>
</html>
HTML
