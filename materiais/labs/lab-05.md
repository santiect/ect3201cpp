---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Unidimensionais

## Laboratório 05 - Prática da Aula 06

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Parte I - Sem Funções

Nos exercícios 1 a 4, resolva os problemas diretamente no `main`.

Objetivo:

- declarar arrays;
- percorrer com `for`;
- usar contadores;
- usar arrays `bool`.

---

<!-- fit -->

# Exercício 1 - Estoque Diário

Uma loja acompanha o estoque final de um produto durante vários dias.

Crie um programa que:

1. leia a quantidade de dias `n`, com `n <= 31`;
2. leia o estoque final de cada dia em um array de inteiros;
3. mostre quantos dias ficaram abaixo do estoque mínimo;
4. mostre o primeiro dia em que isso ocorreu, caso exista.

---

<!-- fit -->

# Exercício 2 - Ajuste de Medições

Um sensor registrou `n` medições reais, com `n <= 50`.

Crie um programa que armazene as medições em um array do tipo `float`.

Depois, leia os limites `minimo` e `maximo` e substitua:

1. valores abaixo de `minimo` por `minimo`;
2. valores acima de `maximo` por `maximo`.

Ao final, mostre o array ajustado e quantas medições foram alteradas.

---

<!-- fit -->

# Exercício 3 - Presenças

Uma turma possui até `40` estudantes.

Crie um programa que:

1. leia a quantidade de estudantes `n`;
2. leia um array do tipo `bool`, em que `true` indica presença e `false` indica falta;
3. calcule a quantidade de presentes;
4. calcule o percentual de presença da turma.

---

<!-- fit -->

# Exercício 4 - Situação de Vacinação

Uma turma possui até `40` estudantes.

Crie um programa que leia dois arrays do tipo `bool`:

- `primeira_dose`
- `segunda_dose`

Ao final, mostre:

1. quantos estudantes tomaram as duas doses;
2. quantos tomaram apenas a primeira dose;
3. quantos não tomaram nenhuma dose;
4. o percentual da turma com vacinação completa.

---

<!-- fit -->

# Parte II - Com Funções

Nos exercícios 5 a 8, use funções e/ou procedimentos.

Cada função que receber um array também deve receber a quantidade de elementos válidos.

---

<!-- fit -->

# Exercício 5 - Salários por Faixa

Uma empresa paga:

$$
salario = 200 + 0{,}09 \cdot vendas
$$

Leia as vendas semanais de `n` vendedores.

Use funções/procedimentos para:

1. calcular o salário de cada vendedor;
2. atualizar um array contador;
3. imprimir a quantidade por faixa.

Continua no próximo slide.

---

<!-- fit -->

# Exercício 5 - Faixas

| Índice | Faixa salarial |
| ---: | --- |
| 0 | `200-299` |
| 1 | `300-399` |
| 2 | `400-499` |
| 3 | `500-599` |
| 4 | `600-699` |
| 5 | `700-799` |
| 6 | `800-899` |
| 7 | `900-999` |
| 8 | `1000 ou mais` |

---

<!-- fit -->

# Exercício 6 - Funções de Consulta e Ajuste

Implemente as funções abaixo usando arrays unidimensionais.

```cpp
float calcular_media(float v[], int n);
void limitar_valores(float v[], int n, float minimo, float maximo);
int contar_verdadeiros(bool v[], int n);
void inverter_sinais(int v[], int n);
```

No `main`, teste cada função com arrays pequenos.

Continua no próximo slide.

---

<!-- fit -->

# Exercício 6 - Regras

Regras:

- `limitar_valores` deve substituir valores abaixo de `minimo` por `minimo`;
- `limitar_valores` deve substituir valores acima de `maximo` por `maximo`;
- `inverter_sinais` deve trocar o sinal de cada elemento do array.

---

<!-- fit -->

# Exercício 7 - Valores em Comum

Crie uma função que receba dois arrays de inteiros e retorne quantos valores aparecem nos dois arrays.

Protótipo sugerido:

```cpp
int contar_comuns(int a[], int n_a, int b[], int n_b);
```

Considere que cada array informado não possui valores repetidos internamente.

---

<!-- fit -->

# Exercício 8 - Temperaturas da Semana

Uma estação registrou a temperatura média de `7` dias.

Escreva um programa modularizado que armazene as temperaturas em um array do tipo `float` e mostre:

1. a diferença de temperatura entre cada par de dias consecutivos;
2. quantos dias ficaram abaixo de `20.0` graus;
3. quantos dias ficaram na faixa de conforto, de `20.0` até `25.0` graus;
4. quantas vezes a temperatura aumentou em relação ao dia anterior.

Use funções/procedimentos para separar os cálculos principais.

---

<!-- fit -->

# Desafio - Histograma de Notas

Leia `n` notas inteiras no intervalo de `0` até `10`.

Use um array contador para gerar um histograma.

Ao final, imprima uma tabela com:

1. nota;
2. contagem;
3. barra com um `*` para cada ocorrência.

Use `setw` (`iomanip`) para alinhar as colunas.

Continua no próximo slide.

---

<!-- fit -->

# Desafio - Exemplo

Exemplo:

```text
Nota  Quantidade  Histograma
0     2           **
1     0
2     1           *
3     4           ****
...
10    2           **
```

O valor `10` ocupa mais posições que os demais valores.
