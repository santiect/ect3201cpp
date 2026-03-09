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
      --bg: #eef1f5;
      --panel: #ffffff;
      --border: #d5dbe5;
      --text: #0b1220;
      --muted: #5a6475;
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
    .govbar {
      height: 34px;
      background: #f0f0f0;
      border-bottom: 1px solid #d9dde3;
      font-size: .9rem;
      color: #384455;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 22px;
      padding: 0 12px;
      overflow: hidden;
    }
    .govbar a { color: #384455; text-decoration: none; font-weight: 600; white-space: nowrap; }
    .govbar a:hover { text-decoration: underline; }
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
      box-shadow: 0 8px 18px rgba(11, 29, 58, 0.05);
    }
    .card h2 {
      margin: 0 0 10px;
      font-size: 1.08rem;
      color: var(--brand-dark);
      border-bottom: 2px solid #edf2f8;
      padding-bottom: 7px;
    }
    table { width: 100%; border-collapse: collapse; font-size: .95rem; }
    th, td { border-top: 1px solid var(--border); padding: 8px 6px; text-align: left; }
    th { color: #1d4777; border-top: none; background: #f7faff; }
    a { color: var(--link); text-decoration: none; font-weight: 600; }
    a:hover { text-decoration: underline; }
    .html { color: var(--ok); }
    .pdf { color: var(--pdf); }
    @media (max-width: 760px) {
      .govbar { gap: 14px; font-size: .8rem; }
      .ectbar { padding: 10px 12px; }
      .ect-logo { font-size: .85rem; }
    }
  </style>
</head>
<body>
  <div class="govbar">
    <a href="#">Brasil</a>
    <a href="#">Simplifique!</a>
    <a href="#">Acesso à Informação</a>
    <a href="#">Legislação</a>
  </div>
  <div class="ectbar">
    <div class="ect-logo">Escola de Ciências e Tecnologia - UFRN</div>
  </div>
  <section class="hero-banner">
    <div class="hero-content">
      <h1 class="hero-title">ECT3201 - Linguagem de Programação (C++)</h1>
      <p class="hero-sub">Índice dos materiais da disciplina: aulas, laboratórios e listas.</p>
    </div>
  </section>
  <main class="grid">
    <p class="section-title">Materiais Disponíveis</p>
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
