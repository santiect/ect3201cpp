---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Recursividade

## Lista 10 - Exercícios da Aula 10

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Contagem Crescente

Crie um procedimento recursivo que recebe um número inteiro positivo `n` e mostra os números de `1` até `n`.

Exemplo:

```text
1 2 3 4 5
```

---

<!-- fit -->

# Exercício 2 - Soma de 1 até N

Crie uma função recursiva que recebe um número inteiro positivo `n` e retorna a soma dos números de `1` até `n`.

Exemplo:

```text
soma(5) = 1 + 2 + 3 + 4 + 5 = 15
```

---

<!-- fit -->

# Exercício 3 - Número Par

Crie uma função recursiva que recebe um número inteiro não negativo `n` e retorna `true` se `n` for par.

Caso contrário, a função deve retornar `false`.

Resolva usando a ideia:

```text
0 é par
1 é ímpar
n tem a mesma paridade de n - 2
```

---

<!-- fit -->

# Exercício 4 - Fatorial

Crie uma função recursiva que recebe um número inteiro não negativo `n` e retorna o fatorial de `n`.

Lembre:

```text
0! = 1
n! = n * (n - 1)!
```

---

<!-- fit -->

# Exercício 5 - Vetor em Ordem Normal

Leia `n` e os elementos de um vetor de inteiros.

Depois, crie um procedimento recursivo para mostrar os elementos na mesma ordem em que aparecem no vetor.

Exemplo:

```text
Vetor: 4 7 1 9
Saída: 4 7 1 9
```

---

<!-- fit -->

# Exercício 6 - Vetor em Ordem Inversa

Leia `n` e os elementos de um vetor de inteiros.

Depois, crie um procedimento recursivo para mostrar os elementos em ordem inversa.

Exemplo:

```text
Vetor: 4 7 1 9
Saída: 9 1 7 4
```

---

<!-- fit -->

# Exercício 7 - Soma do Vetor

Leia `n` e os elementos de um vetor de inteiros.

Depois, crie uma função recursiva que retorne a soma dos elementos do vetor.

Ao final, mostre a soma calculada.

---

<!-- fit -->

# Exercício 8 - Contar Ocorrências

Leia `n` e os elementos de um vetor de inteiros.

Depois, leia um valor `x`.

Crie uma função recursiva que retorna quantas vezes `x` aparece no vetor.

---

<!-- fit -->

# Exercício 9 - Procurar Elemento

Leia `n` e os elementos de um vetor de inteiros.

Depois, leia um valor `x`.

Crie uma função recursiva que retorna `true` se `x` aparece no vetor e `false` caso contrário.

Ao final, informe se o valor foi encontrado.

---

<!-- fit -->

# Exercício 10 - Menor Valor

Leia `n` e os elementos de um vetor de inteiros.

Depois, crie uma função recursiva que retorne o menor valor do vetor.

Considere que `n >= 1`.

---

<!-- fit -->

# Exercício 11 - Maior Valor

Leia `n` e os elementos de um vetor de inteiros.

Depois, crie uma função recursiva que retorne o maior valor do vetor.

Considere que `n >= 1`.

---

<!-- fit -->

# Desafio Extra - Chamadas de Fibonacci

Crie uma função recursiva para calcular Fibonacci.

Depois, adicione uma variável contadora para descobrir quantas chamadas foram feitas durante o cálculo.

Teste para diferentes valores de `n` e observe o crescimento da quantidade de chamadas.
