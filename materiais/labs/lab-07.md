---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Bidimensionais

## Laboratório 07 - Prática da Aula 08

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Leituras Fora da Faixa

Uma rede de sensores registra medições em vários pontos e horários.

Cada linha representa um ponto de medição.

Cada coluna representa um horário.

Leia uma matriz de medições do tipo `float`.

Depois, leia os limites `minimo` e `maximo`.

Mostre quantas medições ficaram fora da faixa segura em cada ponto de medição.

---

<!-- fit -->

# Exercício 2 - Máscara de Imagem

Uma imagem em tons de cinza pode ser representada por uma matriz de inteiros de `0` até `255`.

Leia a matriz da imagem e um valor `limiar`.

Gere uma matriz `bool` em que:

- `true` indica pixel maior ou igual ao limiar;
- `false` indica pixel abaixo do limiar.

---

<!-- fit -->

# Exercício 3 - Picos de Altura

Uma matriz representa alturas de um terreno.

Uma posição interna é um pico quando seu valor é maior que os valores imediatamente:

- acima
- abaixo
- à esquerda
- à direita

Conte quantos picos existem no terreno.

---

<!-- fit -->

# Exercício 4 - Jogo da Velha

Leia um tabuleiro `3 x 3` de jogo da velha.

Cada posição contém:

- `'X'` para jogada do primeiro jogador;
- `'O'` para jogada do segundo jogador;
- `'-'` para posição vazia.

Verifique se existe vencedor em:

- alguma linha;
- alguma coluna;
- alguma diagonal.

Mostre o símbolo vencedor ou informe que não há vencedor.

---

<!-- fit -->

# Exercício 5 - Agenda de Laboratório

Uma matriz `bool` representa a ocupação de um laboratório.

Cada linha representa um dia.

Cada coluna representa um horário.

O valor `true` indica horário ocupado.

O valor `false` indica horário livre.

Leia também a duração `k` da reserva.

Mostre o primeiro horário livre para uma reserva de `k` horários consecutivos em um mesmo dia.
