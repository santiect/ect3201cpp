---
marp: true
theme: ect
math: katex
---

<!-- fit -->

# Introdução

## Lista 01 - Exercícios da Aula 01

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Arredondamento (`cmath`)

Crie um programa que:

1. Leia um número real positivo
2. Arredonde para o inteiro mais próximo usando `round()`
3. Mostre o valor arredondado

Dica:

```cpp
#include <cmath>
```

---

<!-- fit -->

# Exercício 2 - Pedágio

Crie um programa que calcule o custo de uma viagem.

Entradas:

1. Distância da viagem (km)
2. Consumo do carro (km/L)
3. Preço do litro de combustível (R$)

Use a constante:

```cpp
const double PEDAGIO = 12.50;
```

Mostre:

1. Litros necessários
2. Custo do combustível
3. Custo total (combustível + pedágio)
4. Litros inteiros usando casting: `(int) litros`

---

<!-- fit -->

# Exercício 3 - Hipotenusa (`cmath`)

Crie um programa que:

1. Leia os catetos `a` e `b` de um triângulo retângulo
2. Calcule a hipotenusa:

$$
h = \sqrt{a^2 + b^2}
$$

3. Mostre o resultado com 2 casas decimais

---

<!-- fit -->

# Exercício 4 - Conversão de Tempo

Crie um programa que:

1. Leia um valor inteiro em segundos
2. Converta para horas, minutos e segundos restantes

Exemplo:

`3671` segundos -> `1h 1min 11s`

---

<!-- fit -->

# Exercício 5 - Prestação em Atraso

Crie um programa que calcule o valor de uma prestação em atraso.

Entradas:

1. Valor da prestação
2. Taxa de juros mensal (%)
3. Tempo de atraso (meses)

Fórmula:

$$
valor\_final = valor + (valor \times taxa/100 \times tempo)
$$

Mostre o valor final com 2 casas decimais.

---

<!-- fit -->

# Exercício 6 - Reajuste de Salário

Crie um programa que:

1. Leia o salário atual
2. Leia o percentual de reajuste
3. Calcule e mostre o novo salário com 2 casas decimais

---

<!-- fit -->

# Exercício 7 - Volume de uma Esfera

Crie um programa que:

1. Leia o raio `r` de uma esfera
2. Use a constante:

```cpp
const double PI = 3.14159;
```

3. Calcule o volume:

$$
V = \frac{4}{3}\pi r^3
$$

4. Mostre o resultado com 2 casas decimais

---

<!-- fit -->

# Exercício 8 - Divisão Inteira e Real

Crie um programa que:

1. Leia dois inteiros `a` e `b`
2. Mostre:
- resultado de `a / b` (divisão inteira)
- resultado de `(double)a / b` (divisão real)
- resto da divisão `a % b`

---

<!-- fit -->

# Exercício 9 - Valor Total com Desconto

Crie um programa que:

1. Leia o valor unitário de um produto
2. Leia a quantidade comprada
3. Leia o percentual de desconto
4. Calcule:
- valor bruto
- valor do desconto
- valor final

Mostre os valores monetários com 2 casas decimais.

---

<!-- fit -->

# Exercício 10 - Distância em Linha Reta (`cmath`)

Crie um programa que:

1. Leia as coordenadas `(x1, y1)` e `(x2, y2)`
2. Calcule a distância entre os pontos:

$$
d = \sqrt{(x2-x1)^2 + (y2-y1)^2}
$$

3. Mostre a distância com 2 casas decimais
