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
      --bg-1: #f8fbff;
      --bg-2: #edf4fb;
      --panel: rgba(255, 255, 255, 0.92);
      --border: #c7d2df;
      --text: #0b1220;
      --muted: #365f8c;
      --accent: #0a2f57;
      --accent-2: #0f457b;
      --ok: #0f6ab3;
      --pdf: #b42318;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Segoe UI", "Poppins", system-ui, sans-serif;
      color: var(--text);
      background:
        radial-gradient(900px 500px at -15% -20%, rgba(15, 69, 123, 0.14) 0%, transparent 60%),
        radial-gradient(900px 520px at 120% -10%, rgba(11, 79, 140, 0.11) 0%, transparent 62%),
        linear-gradient(140deg, var(--bg-1), var(--bg-2));
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
      box-shadow: 0 10px 30px rgba(10, 47, 87, 0.08);
    }
    h1 { margin: 0 0 6px; font-size: clamp(1.8rem, 4vw, 2.7rem); }
    .sub { margin: 0; color: var(--muted); }
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
      box-shadow: 0 8px 24px rgba(10, 47, 87, 0.06);
    }
    .card h2 { margin: 0 0 10px; font-size: 1.1rem; }
    table { width: 100%; border-collapse: collapse; font-size: .95rem; }
    th, td { border-top: 1px solid var(--border); padding: 8px 6px; text-align: left; }
    th { color: #0f457b; border-top: none; }
    a { color: #0f5eb8; text-decoration: none; font-weight: 600; }
    a:hover { text-decoration: underline; }
    .html { color: var(--ok); }
    .pdf { color: var(--pdf); }
    .sandbox-title { margin: 0 0 6px; font-size: 1.2rem; color: #0a2f57; }
    .sandbox-desc { margin: 0 0 12px; color: #365f8c; }
    .sandbox-frame {
      border: 1px solid var(--border);
      border-radius: 12px;
      overflow: hidden;
      background: #ffffff;
    }
    .sandbox-frame iframe {
      display: block;
      width: 100%;
      height: 460px;
      border: 0;
    }
    .sandbox-fallback { margin: 10px 0 0; font-size: .95rem; color: #365f8c; }
  </style>
</head>
<body>
  <main class="grid">
    <section class="hero">
      <h1>ECT3201 - Linguagem de Programação (C++)</h1>
      <p class="sub">Prof. Éverton Santi</p>
    </section>
    <section class="hero">
      <h2 class="sandbox-title">Sandbox C++</h2>
      <p class="sandbox-desc">Escreva e execute código C++ diretamente no navegador.</p>
      <div class="sandbox-frame">
        <iframe
          title="Sandbox C++"
          loading="lazy"
          src="https://www.onlinegdb.com/online_c++_compiler">
        </iframe>
      </div>
      <p class="sandbox-fallback">
        Se o sandbox não carregar aqui, <a href="https://www.onlinegdb.com/online_c++_compiler" target="_blank" rel="noopener noreferrer">abra em nova aba</a>.
      </p>
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
