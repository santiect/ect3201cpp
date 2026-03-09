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
  '# Índice' \
  '' \
  '| Tipo | Nº | Tema | Slides | PDF |' \
  '| --- | --- | --- | --- | --- |' > index.md

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    printf '| Aula | %02d | %s | [Ver](slides/%s.html) | [PDF](slides/%s.pdf) |\n' "$num" "$title" "$name" "$name" >> index.md
  else
    printf '| Aula | - | %s | [Ver](slides/%s.html) | [PDF](slides/%s.pdf) |\n' "$title" "$name" "$name" >> index.md
  fi
done

for file in labs/lab-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^lab-\([0-9][0-9]*\)$/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    printf '| Laboratório | %02d | %s | [Ver](labs/%s.html) | [PDF](labs/%s.pdf) |\n' "$num" "$title" "$name" "$name" >> index.md
  else
    printf '| Laboratório | - | %s | [Ver](labs/%s.html) | [PDF](labs/%s.pdf) |\n' "$title" "$name" "$name" >> index.md
  fi
done

for file in listas/lista-*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^lista-\([0-9][0-9]*\)$/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    printf '| Lista | %02d | %s | [Ver](listas/%s.html) | [PDF](listas/%s.pdf) |\n' "$num" "$title" "$name" "$name" >> index.md
  else
    printf '| Lista | - | %s | [Ver](listas/%s.html) | [PDF](listas/%s.pdf) |\n' "$title" "$name" "$name" >> index.md
  fi
done
