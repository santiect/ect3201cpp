---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Comandos de Repetição

## Lista 03 - Exercícios da Aula 03

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Soma dos Ímpares

Crie um programa que:

1. Leia um número inteiro positivo `n`
2. Some todos os números ímpares de `1` até `n`
3. Mostre o resultado final

---

<!-- fit -->

# Exercício 2 - Menor de uma Sequência

Crie um programa que:

1. Leia `10` números reais
2. Determine o menor valor lido
3. Mostre o menor valor ao final

---

<!-- fit -->

# Exercício 3 - Acumulando Compras

Crie um programa que:

1. Leia valores de compras em reais
2. Encerre a leitura quando o valor digitado for negativo
3. Mostre:
- quantidade de compras válidas
- valor total acumulado
- valor médio das compras

Considere que pelo menos uma compra válida será informada.

---

<!-- fit -->

# Exercício 4 - Crescimento Populacional

Considere duas cidades:

- cidade A com `90000` habitantes e crescimento de `3%` ao ano
- cidade B com `120000` habitantes e crescimento de `1.5%` ao ano

Crie um programa que determine:

1. Em quantos anos a população da cidade A será maior ou igual à da cidade B
2. As populações finais das duas cidades

---

<!-- fit -->

# Exercício 5 - Sequência de Fibonacci

Crie um programa que:

1. Leia um inteiro positivo `n`
2. Mostre os `n` primeiros termos da sequência de Fibonacci

Considere:

`1, 1, 2, 3, 5, 8, ...`

---

<!-- fit -->

# Exercício 6 - Divisores de um Número

Crie um programa que:

1. Leia um número inteiro positivo `n`
2. Mostre todos os divisores positivos de `n`
3. Ao final, mostre quantos divisores foram encontrados

---

<!-- fit -->

# Exercício 7 - Soma de uma Série

Crie um programa que:

1. Leia um número inteiro positivo `n`
2. Calcule o valor da série:

$$
S = \frac{1}{1} + \frac{1}{2} + \frac{1}{3} + \dots + \frac{1}{n}
$$

3. Mostre o valor de `S` com 4 casas decimais

---

<!-- fit -->

# Exercício 8 - Triângulo Numérico

Crie um programa que:

1. Leia um inteiro positivo `n`
2. Mostre um triângulo numérico com `n` linhas
3. Na linha `i`, mostre o número `i` repetido `i` vezes

Exemplo para `n = 4`:

```text
1
22
333
4444
```

Esse exercício envolve **repetição aninhada**.

---

<!-- fit -->

# Exercício 9 - Tabela de Temperaturas

Crie um programa que:

1. Mostre uma tabela de conversão de Celsius para Fahrenheit
2. Considere temperaturas de `0` até `100` graus Celsius
3. Mostre os valores de `10` em `10`

Use a fórmula:

$$
F = \frac{9}{5}C + 32
$$

---

<!-- fit -->

# Exercício 10 - Estatística de Turma

Crie um programa que:

1. Leia a quantidade de atletas de uma competição
2. Leia a distância alcançada por cada atleta
3. Ao final, mostre:
- a maior distância
- a menor distância
- a distância média
- quantos atletas alcançaram pelo menos `10.0` metros

---

<!-- fit -->

# Desafio Extra - Padrão em X

Crie um programa que:

1. Leia um inteiro ímpar positivo `n`
2. Mostre uma figura quadrada `n x n`
3. Use `*` nas duas diagonais e espaço nas demais posições

Exemplo para `n = 5`:

```text
*   *
 * *
  *
 * *
*   *
```

Esse exercício envolve **repetição aninhada**.

---

<!-- fit -->

# Desafio Extra - Aproximação do Seno

Crie um programa que:

1. Leia um valor real `x` e um inteiro positivo `n`
2. Aproxime o valor de `sen(x)` usando os `n` primeiros termos da série:

$$
\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots
$$

3. Mostre o valor aproximado obtido

Considere `x` em radianos.
