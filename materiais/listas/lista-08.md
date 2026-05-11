---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Bidimensionais

## Lista 08 - Exercícios da Aula 08

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Moldura da Matriz

Leia uma matriz de inteiros com `m` linhas e `n` colunas.

Calcule a soma dos elementos da moldura da matriz.

A moldura é formada por:

- primeira linha;
- última linha;
- primeira coluna;
- última coluna.

Os cantos devem ser somados apenas uma vez.

---

<!-- fit -->

# Exercício 2 - Região Acima do Limite

Uma matriz representa índices de poluição em regiões de uma cidade.

Cada posição da matriz representa uma região monitorada.

Leia a matriz e um limite de alerta.

Mostre todas as posições em que o índice ficou acima do limite.

Ao final, informe se houve pelo menos uma região em alerta.

---

<!-- fit -->

# Exercício 3 - Matriz Diagonal

Leia uma matriz quadrada de inteiros.

Verifique se ela é uma matriz diagonal.

Uma matriz diagonal possui valor `0` em todas as posições fora da diagonal principal.

Os valores da diagonal principal podem ser quaisquer inteiros.

---

<!-- fit -->

# Exercício 4 - Matriz Identidade

Leia uma matriz quadrada de inteiros.

Verifique se ela é uma matriz identidade.

Uma matriz identidade possui:

- valor `1` na diagonal principal;
- valor `0` nas demais posições.

---

<!-- fit -->

# Exercício 5 - Matriz Simétrica

Leia uma matriz quadrada de inteiros.

Verifique se ela é simétrica.

Uma matriz é simétrica quando:

```text
m[i][j] == m[j][i]
```

para todas as posições válidas.

---

<!-- fit -->

# Exercício 6 - Campo Minado

Uma matriz `bool` representa um campo com minas.

O valor `true` indica que existe mina na posição.

O valor `false` indica posição sem mina.

Para cada posição sem mina, calcule quantas minas existem ao redor dela.

Considere as oito posições vizinhas:

- horizontais;
- verticais;
- diagonais.

---

<!-- fit -->

# Exercício 7 - Ponto de Sela

Leia uma matriz de inteiros.

Um ponto de sela é um elemento que é:

- o menor valor de sua linha;
- o maior valor de sua coluna.

Mostre a posição do primeiro ponto de sela encontrado, caso exista.

---

<!-- fit -->

# Exercício 8 - Matriz de Permutação

Leia uma matriz quadrada de inteiros.

Verifique se ela é uma matriz de permutação.

Uma matriz de permutação:

- contém apenas zeros e uns;
- possui exatamente um `1` em cada linha;
- possui exatamente um `1` em cada coluna.

---

<!-- fit -->

# Desafio Extra - Quadrado Mágico

Leia uma matriz quadrada de inteiros.

Verifique se ela é um quadrado mágico.

Em um quadrado mágico, todas as somas abaixo são iguais:

- cada linha;
- cada coluna;
- diagonal principal;
- diagonal secundária.
