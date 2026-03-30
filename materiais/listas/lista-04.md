---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções e Procedimentos

## Lista 04 - Exercícios da Aula 04

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Média de 4 Valores

Apresente uma função que:

1. Receba 4 valores reais como argumentos
2. Calcule a média aritmética
3. Retorne o resultado

---

<!-- fit -->

# Exercício 2 - Máximo e Mínimo

Apresente um procedimento que:

1. Receba 3 valores reais
2. Mostre o maior e o menor valor entre eles

---

<!-- fit -->

# Exercício 3 - Número Perfeito

Um número é perfeito quando é igual à soma de seus divisores positivos próprios.

Exemplo:

`6 = 1 + 2 + 3`

Apresente:

1. Uma função que verifica se um inteiro é perfeito
2. Outra função que mostre todos os números perfeitos de `2` até `n`

---

<!-- fit -->

# Exercício 4 - Fibonacci

Apresente uma função que:

1. Receba um inteiro positivo `n`
2. Retorne o `n`-ésimo termo da sequência de Fibonacci

Sequência:

`0, 1, 1, 2, 3, 5, 8, 13, ...`

---

<!-- fit -->

# Exercício 5 - Mínimo Múltiplo Comum

Apresente uma função que:

1. Receba dois inteiros positivos `a` e `b`
2. Calcule e retorne o MMC entre eles

---

<!-- fit -->

# Exercício 6 - Primos em Intervalo

Apresente um procedimento que:

1. Receba dois inteiros `a` e `b`
2. Liste todos os números primos no intervalo `[a, b]`

Use valores padrão:

- `a = 10`
- `b = 150`

---

<!-- fit -->

# Exercício 7 - Fatorial e Mega Sena

Apresente:

1. Uma função que calcule o fatorial de um inteiro `n`
2. Uma função que calcule a chance  $P$ de acerto da Mega Sena simples

Use tipo `double` (ou `long double`) para o cálculo de probabilidade.

Considere:


$$
P = \frac{1}{\binom{60}{6}}
$$

tal que:

$$
\binom{n}{k} = \frac{n!}{(n-k)!\,k!}
$$


---

<!-- fit -->

# Exercício 8 - Padrão 1

Apresente um procedimento que, dado `n`, imprima o padrão:

```text
1
12
123
...
123...n
```

---

<!-- fit -->

# Exercício 9 - Padrão 2

Apresente um procedimento que, dado `n`, imprima o padrão:

```text
n
n(n-1)
n(n-1)(n-2)
...
n(n-1)...1
```

---

<!-- fit -->

# Exercício 10 - Classificação de Triângulo

Implemente:

1. Uma função `ehTriangulo(a, b, c)` que verifica se três lados podem formar um triângulo
2. Uma função `tipoTriangulo(a, b, c)` que retorne um código inteiro:
- `1` para triângulo equilátero
- `2` para triângulo isósceles
- `3` para triângulo escaleno
- `0` quando os lados não formarem triângulo
3. Um procedimento para mostrar o resultado final

Considere:

- `equilátero`: `a == b` e `b == c`
- `isósceles`: exatamente dois lados iguais
- `escaleno`: três lados diferentes
- condição de existência: `a + b > c`, `a + c > b` e `b + c > a`

---

<!-- fit -->

# Desafio Extra - Sistema de Votação

Crie um módulo para uma votação simples com:

1. Uma função para calcular percentual dado `votos_candidato` e `total_validos`
2. Um procedimento para mostrar o resultado final da eleição, recebendo os totais de votos de cada candidato

No programa principal:

1. Leia votos (`1` a `4`) até o valor `0`
2. Contabilize votos em variáveis separadas (`v1`, `v2`, `v3`, `v4`)
3. Desconsidere e informe votos inválidos (valores fora de `0` a `4`)
4. Use a função de percentual e o procedimento de relatório

No relatório final, mostre:

1. total de votos válidos
2. percentual de cada candidato
3. candidato vencedor
