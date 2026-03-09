#!/bin/bash

echo "# ECT3201 — Linguagem de Programação (C++)" > index.md
echo "" >> index.md
echo "Prof. Éverton Santi" >> index.md
echo "" >> index.md
echo "## Aulas" >> index.md
echo "" >> index.md

for file in slides/*.md
do
  name=$(basename "$file" .md)
  title=$(head -n 5 "$file" | grep "^# " | head -n 1 | sed 's/# //')

  if [ -z "$title" ]; then
    title=$name
  fi

  echo "- [Aula $num — $title](slides/$name.html)" >> index.md
done