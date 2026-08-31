---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Recursividade

## Laboratório 10 - Prática da Aula 10

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->
# Exercício 1 - Múltiplos de 3

Crie um procedimento recursivo que receba um inteiro positivo `n` e mostre todos os múltiplos de `3` entre `0` e `n`, em ordem crescente.

No `main`, leia `n` e chame o procedimento.

Identifique no código o caso base e a chamada recursiva.

---

<!-- fit -->
# Exercício 2 - Soma dos Quadrados

Crie uma função recursiva que receba um inteiro positivo `n` e retorne:

$$
1^2 + 2^2 + 3^2 + ... + n^2
$$

No `main`, leia `n`, chame a função e mostre o resultado.

---

<!-- fit -->
# Exercício 3 - Potência

Crie uma função recursiva para calcular:

$$
a^b
$$

Considere `a` real e `b` inteiro não negativo.

Não use a função `pow`.

---

<!-- fit -->
# Exercício 4 - Contagem de Dígitos Pares

Crie uma função recursiva que receba um inteiro positivo `n` e retorne a quantidade de dígitos pares de `n`.

Exemplo:

```text
28041 -> 3
```

---

<!-- fit -->
# Exercício 5 - Número Invertido

Crie uma função recursiva que receba um inteiro positivo `n` e retorne o número formado pelos mesmos dígitos em ordem inversa.

Exemplo:

```text
1234 -> 4321
```

Dica: use também um parâmetro auxiliar para acumular o resultado.

---

<!-- fit -->
# Exercício 6 - Primeiro Negativo

Leia `n` inteiros em um array, com `n <= 50`.

Crie uma função recursiva que receba o array e retorne a posição do primeiro valor negativo.

Se não houver valor negativo, a função deve retornar `-1`.

---

<!-- fit -->
# Desafio Extra - Dígitos em Ordem Crescente

Crie uma função recursiva que receba um inteiro positivo `n` e retorne `true` se seus dígitos aparecem em ordem não decrescente da esquerda para a direita.

Exemplos:

```text
1228 -> true
321 -> false
```
