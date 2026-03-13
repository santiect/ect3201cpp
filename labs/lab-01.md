---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Introdução

## Laboratório 01 - Prática da Aula 01

ECT3201 - Linguagem de Programação (C++)

---

<!-- fit -->

# Exercício 1 - Entrada e Saída

Crie um programa para conversão de temperatura.

Entradas:

1. Temperatura em graus Celsius (`double`)

Saídas:

1. Temperatura em Fahrenheit:

$$
F = \frac{9}{5}C + 32
$$

2. Temperatura em Kelvin:

$$
K = C + 273.15
$$

Mostre os resultados com 2 casas decimais.

---

<!-- fit -->

# Exercício 2 - Área e Perímetro

Crie um programa que leia a base e a altura de um retângulo e calcule:

1. Área
2. Perímetro

Fórmulas:

$$
Area = base \times altura
$$

$$
Perimetro = 2(base + altura)
$$

Mostre os dois resultados com 2 casas decimais.

---

<!-- fit -->

# Exercício 3 - Consumo de Energia

Crie um programa que:

1. Leia potência do aparelho (em watts)
2. Leia quantidade de horas de uso por dia
3. Leia quantidade de dias no mês
4. Leia preço do kWh (R$)

Calcule:

$$
consumo\_kWh = \frac{potencia \times horas \times dias}{1000}
$$

e o custo mensal:

$$
custo = consumo\_kWh \times preco\_kWh
$$

Mostre consumo e custo com 2 casas decimais.

---

<!-- fit -->

# Exercício 4 - Salário com Desconto

Crie um programa que:

1. Leia o salário bruto (`double`)
2. Use constantes:

```cpp
const double INSS = 0.08;
const double VT = 0.06;
```

3. Calcule os descontos de INSS e vale-transporte
4. Mostre:
- valor descontado de INSS
- valor descontado de VT
- salário líquido

Exiba valores monetários com 2 casas decimais.

---

<!-- fit -->

# Exercício 5 - Média e Conversões

Crie um programa que:

Entradas:

1. Leia 3 notas (`double`)
2. Calcule a média aritmética
3. Calcule também a soma das notas
4. Mostre:
- média real com 2 casas decimais
- média inteira usando casting: `(int) media`
- soma total das notas com 2 casas decimais

---

<!-- fit -->

# Exercício 6 - Cálculo de Troco

Crie um programa para calcular o troco em cédulas e moedas.

Entradas (valores inteiros):

1. Valor da venda
2. Valor entregue pelo cliente

Considere as seguintes cédulas/moeda:

`100`, `50`, `20`, `10`, `5`, `2` e `1`

O programa deve:

1. Calcular o valor do troco
2. Informar quantas unidades de cada cédula/moeda devem ser entregues

Dica: use divisão inteira e o operador de resto (`%`).

---

<!-- fit -->

# Exercício 7 - Ponto e Círculo (`cmath`)

Use `cmath` para verificar se um ponto está dentro de um círculo.

Entradas:

1. Centro: `cx`, `cy`
2. Raio: `r`
3. Ponto: `x`, `y`

Distância euclidiana:

$$
d = \sqrt{(x-cx)^2 + (y-cy)^2}
$$

Saída (somente uma palavra):

1. `verdadeiro`, se `d <= r`
2. `falso`, se `d > r`

Dica: use `sqrt()` da `cmath`.
