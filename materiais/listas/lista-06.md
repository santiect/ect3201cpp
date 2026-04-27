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

# Parte I - Sem Funções

Nos exercícios 1 a 5, resolva os problemas diretamente no `main`.

Objetivo:

- transformar arrays;
- usar arrays auxiliares;
- usar arrays contadores;
- praticar busca e comparação.

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

# Parte II - Com Funções

Nos exercícios 6 a 10, use funções e/ou procedimentos.

Cada função que receber um array também deve receber a quantidade de elementos válidos.

---

<!-- fit -->

# Exercício 6 - Análise das Idades

Leia as idades de `n` pessoas, com `n <= 100`.

Considere apenas idades de `0` até `120`.

Use um array contador para registrar quantas pessoas possuem cada idade.

Crie funções/procedimentos para:

1. preencher o array contador com zeros;
2. atualizar o contador a partir das idades lidas;
3. encontrar a idade mais frequente;
4. imprimir a tabela de frequências não nulas.

Continua no próximo slide.

---

<!-- fit -->

# Exercício 6 - Saídas

Ao final, mostre:

1. a idade mais frequente;
2. quantas pessoas possuem essa idade;
3. quantas idades diferentes apareceram;
4. a tabela de frequências não nulas.

---

<!-- fit -->

# Exercício 7 - Sequência Palíndroma

Crie uma função que receba um array de inteiros e verifique se a sequência é igual quando lida de trás para frente.

Protótipo sugerido:

```cpp
bool eh_palindromo(int v[], int n);
```

Exemplos: `{1, 4, 7, 4, 1}` e `{1, 2, 3, 4}`.

---

<!-- fit -->

# Exercício 8 - Conjuntos

Considere dois arrays que representam conjuntos, isto é, não possuem valores repetidos.

Crie funções para gerar:

1. união;
2. interseção;
3. diferença `A - B`.

Cada função deve preencher um array de saída.

Continua no próximo slide.

---

<!-- fit -->

# Exercício 8 - Exemplo

Exemplo:

```text
A = {1, 3, 5, 7}
B = {3, 4, 5, 8}

uniao       = {1, 3, 5, 7, 4, 8}
intersecao  = {3, 5}
diferenca   = {1, 7}
```

No exemplo, `diferenca` representa `A - B`.

---

<!-- fit -->

# Exercício 9 - Contagem de Dígitos

Crie uma função que receba um array de inteiros positivos.

A função deve atualizar um array contador de tamanho `10`.

O contador deve indicar quantas vezes cada dígito de `0` até `9` aparece nos números informados.

Continua no próximo slide.

---

<!-- fit -->

# Exercício 9 - Exemplo

Exemplo:

```text
valores = {12, 36, 102, 71}
contador = {1, 3, 2, 1, 0, 0, 1, 1, 0, 0}
```

Interpretação:

- o dígito `0` aparece 1 vez;
- o dígito `1` aparece 3 vezes;
- o dígito `2` aparece 2 vezes.

---

<!-- fit -->

# Exercício 10 - Maior Bloco Crescente

Crie uma função que receba um array de inteiros e retorne o tamanho da maior sequência contígua estritamente crescente.

Exemplo:

```text
valores = {3, 4, 8, 2, 5, 6, 1}
maior_bloco = 3
```

O maior bloco crescente é `{2, 5, 6}`.

---

<!-- fit -->

# Desafio Extra - Sinal de Sensor

Um sensor gera uma sequência de `n` medições reais.

Crie um programa modularizado que:

1. leia as medições em um array `float`;
2. leia `limite_minimo` e `limite_maximo`;
3. gere um array `bool` indicando falhas;
4. conte blocos consecutivos de falha;
5. informe o maior bloco de falhas.

Uma medição é falha quando está fora do intervalo seguro:

```text
[limite_minimo, limite_maximo]
```

Continua no próximo slide.

---

<!-- fit -->

# Desafio Extra - Falhas

Considere:

```text
limite_minimo = 10.0
limite_maximo = 20.0
medicoes = {12.0, 25.0, 22.0, 18.0, 5.0}
```

O array de falhas será:

```text
falhas = {false, true, true, false, true}
```

Nesse caso:

1. existem `2` blocos de falha;
2. o maior bloco de falhas tem tamanho `2`.
