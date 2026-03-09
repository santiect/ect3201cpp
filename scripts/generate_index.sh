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
  '# Aulas' \
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
