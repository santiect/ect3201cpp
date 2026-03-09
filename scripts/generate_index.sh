#!/bin/bash
set -euo pipefail

printf '%s\n' '---' 'marp: true' 'title: ECT3201 - Linguagem de Programacao' '---' '' '# ECT3201 - Linguagem de Programacao (C++)' '' 'Prof. Everton Santi' '' '---' '' '# Aulas' '' > index.md

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(head -n 5 "$file" | grep '^# ' | head -n 1 | sed 's/^# //')
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    echo "- [Aula $num - $title](slides/$name.html)" >> index.md
  else
    echo "- [$title](slides/$name.html)" >> index.md
  fi
done