#!/bin/bash
set -euo pipefail
shopt -s nullglob
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

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
  '# Aulas Teóricas' \
  '' > index.md

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    echo "- Aula $num - $title: [Ver slides](slides/$name.html) | [Baixar PDF](slides/$name.pdf)" >> index.md
  else
    echo "- $title: [Ver slides](slides/$name.html) | [Baixar PDF](slides/$name.pdf)" >> index.md
  fi
done

printf '%s\n' \
  '' \
  '# Laboratórios' \
  '' >> index.md

for file in labs/lab-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^lab-\([0-9][0-9]*\)$/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    echo "- Laboratório $num - $title: [Ver slides](labs/$name.html) | [Baixar PDF](labs/$name.pdf)" >> index.md
  else
    echo "- $title: [Ver slides](labs/$name.html) | [Baixar PDF](labs/$name.pdf)" >> index.md
  fi
done

printf '%s\n' \
  '' \
  '# Listas de Exercícios' \
  '' >> index.md

for file in listas/lista-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^lista-\([0-9][0-9]*\)$/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    echo "- Lista $num - $title: [Ver slides](listas/$name.html) | [Baixar PDF](listas/$name.pdf)" >> index.md
  else
    echo "- $title: [Ver slides](listas/$name.html) | [Baixar PDF](listas/$name.pdf)" >> index.md
  fi
done
