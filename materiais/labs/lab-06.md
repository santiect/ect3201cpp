---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays e Funções

## Laboratório 06 - Prática da Aula 07

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Salários por Faixa

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

# Exercício 1 - Faixas

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

# Exercício 2 - Funções de Consulta e Ajuste

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

# Exercício 2 - Regras

Regras:

- `limitar_valores` deve substituir valores abaixo de `minimo` por `minimo`;
- `limitar_valores` deve substituir valores acima de `maximo` por `maximo`;
- `inverter_sinais` deve trocar o sinal de cada elemento do array.

---

<!-- fit -->

# Exercício 3 - Valores em Comum

Crie uma função que receba dois arrays de inteiros e retorne quantos valores aparecem nos dois arrays.

Protótipo sugerido:

```cpp
int contar_comuns(int a[], int n_a, int b[], int n_b);
```

Considere que cada array informado não possui valores repetidos internamente.

---

<!-- fit -->

# Exercício 4 - Temperaturas da Semana

Uma estação registrou a temperatura média de `7` dias.

Escreva um programa modularizado que armazene as temperaturas em um array do tipo `float` e mostre:

1. a diferença de temperatura entre cada par de dias consecutivos;
2. quantos dias ficaram abaixo de `20.0` graus;
3. quantos dias ficaram na faixa de conforto, de `20.0` até `25.0` graus;
4. quantas vezes a temperatura aumentou em relação ao dia anterior.

Use funções/procedimentos para separar os cálculos principais.
