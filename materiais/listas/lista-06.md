---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Unidimensionais

## Lista 06 - Exercícios da Aula 06

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Rotação à Esquerda

Leia `n` valores inteiros em um array, com `n <= 100`.

Gere um segundo array com os valores deslocados uma posição para a esquerda.

Exemplo:

```text
original:  4 9 2 7
rotacao:   9 2 7 4
```

---

<!-- fit -->

# Exercício 2 - Compactação

Leia `n` valores inteiros em um array, com `n <= 100`.

Gere um segundo array contendo apenas os valores diferentes de zero.

A ordem original deve ser preservada.

Mostre:

1. array original;
2. array compactado;
3. quantidade de elementos compactados.

---

<!-- fit -->

# Exercício 3 - Intercalação

Leia dois arrays `a` e `b`, ambos com `n` valores inteiros.

Gere um terceiro array `c` com os valores intercalados:

```text
c = a[0], b[0], a[1], b[1], ...
```

Use `n <= 50`.

---

<!-- fit -->

# Exercício 4 - Eliminação de Duplicatas

Leia `20` números inteiros no intervalo de `10` até `100`.

Armazene cada número apenas se ele ainda não apareceu.

Ao final, mostre:

1. o array com valores únicos;
2. a quantidade de valores únicos;
3. a quantidade de valores repetidos ignorados.

---

<!-- fit -->

# Exercício 5 - Frequência de Idades

Leia as idades de `n` pessoas, com `n <= 100`.

Considere apenas idades de `0` até `120`.

Use um array contador para registrar quantas pessoas possuem cada idade.

Ao final, mostre apenas as idades que apareceram pelo menos uma vez.

---

<!-- fit -->

# Exercício 6 - Entrada com Sentinela

Leia valores inteiros positivos e armazene-os em um array.

A leitura deve parar quando:

- o usuário digitar `0`; ou
- o array atingir capacidade máxima de `100` valores.

Ao final, mostre quantos valores foram armazenados e a soma desses valores.

---

<!-- fit -->

# Exercício 7 - Menu de Consulta

Leia `n` valores inteiros em um array, com `n <= 100`.

Depois, exiba um menu até que o usuário escolha sair:

1. mostrar o array;
2. consultar valor por índice;
3. contar quantos valores são negativos;
4. sair.

Use `do-while` para controlar o menu.

---

<!-- fit -->

# Exercício 8 - Leitura Validada

Leia `n` notas inteiras no intervalo de `0` até `10`.

Cada nota inválida deve ser lida novamente até estar dentro do intervalo.

Use um array contador para mostrar quantas vezes cada nota apareceu.

Ao final, mostre também quantas tentativas inválidas ocorreram.

---

<!-- fit -->

# Exercício 9 - Pares com Soma Alvo

Leia `n` valores inteiros em um array, com `n <= 100`.

Depois, leia um valor inteiro `alvo`.

Mostre todos os pares de posições `(i, j)`, com `i < j`, cuja soma dos valores seja igual a `alvo`.

---

<!-- fit -->

# Exercício 10 - Maior Distância

Leia `n` valores reais em um array, com `n <= 100`.

Considere a distância entre dois valores:

$$
d = |v_i - v_j|
$$

Determine a maior distância entre dois elementos do array.
