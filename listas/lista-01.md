---
marp: true
theme: ect
math: katex
---

<!-- fit -->

# IntroduÃ§Ã£o

## Lista 01 - ExercÃ­cios da Aula 01

ECT3201 - Linguagem de ProgramaÃ§Ã£o (C++)
Prof. Éverton Santi

---

<!-- fit -->

# ExercÃ­cio 1 - Arredondamento (`cmath`)

Crie um programa que:

1. Leia um nÃºmero real positivo
2. Arredonde para o inteiro mais prÃ³ximo usando `round()`
3. Mostre o valor arredondado

Dica:

```cpp
#include <cmath>
```

---

<!-- fit -->

# ExercÃ­cio 2 - PedÃ¡gio

Crie um programa que calcule o custo de uma viagem.

Entradas:

1. DistÃ¢ncia da viagem (km)
2. Consumo do carro (km/L)
3. PreÃ§o do litro de combustÃ­vel (R$)

Use a constante:

```cpp
const double PEDAGIO = 12.50;
```

Mostre:

1. Litros necessÃ¡rios
2. Custo do combustÃ­vel
3. Custo total (combustÃ­vel + pedÃ¡gio)
4. Litros inteiros usando casting: `(int) litros`

---

<!-- fit -->

# ExercÃ­cio 3 - Hipotenusa (`cmath`)

Crie um programa que:

1. Leia os catetos `a` e `b` de um triÃ¢ngulo retÃ¢ngulo
2. Calcule a hipotenusa:

$$
h = \sqrt{a^2 + b^2}
$$

3. Mostre o resultado com 2 casas decimais

---

<!-- fit -->

# ExercÃ­cio 4 - ConversÃ£o de Tempo

Crie um programa que:

1. Leia um valor inteiro em segundos
2. Converta para horas, minutos e segundos restantes

Exemplo:

`3671` segundos -> `1h 1min 11s`

---

<!-- fit -->

# ExercÃ­cio 5 - PrestaÃ§Ã£o em Atraso

Crie um programa que calcule o valor de uma prestaÃ§Ã£o em atraso.

Entradas:

1. Valor da prestaÃ§Ã£o
2. Taxa de juros mensal (%)
3. Tempo de atraso (meses)

FÃ³rmula:

$$
valor\_final = valor + (valor \times taxa/100 \times tempo)
$$

Mostre o valor final com 2 casas decimais.

---

<!-- fit -->

# ExercÃ­cio 6 - Reajuste de SalÃ¡rio

Crie um programa que:

1. Leia o salÃ¡rio atual
2. Leia o percentual de reajuste
3. Calcule e mostre o novo salÃ¡rio com 2 casas decimais

---

<!-- fit -->

# ExercÃ­cio 7 - Volume de uma Esfera

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

# ExercÃ­cio 8 - DivisÃ£o Inteira e Real

Crie um programa que:

1. Leia dois inteiros `a` e `b`
2. Mostre:
- resultado de `a / b` (divisÃ£o inteira)
- resultado de `(double)a / b` (divisÃ£o real)
- resto da divisÃ£o `a % b`

---

<!-- fit -->

# ExercÃ­cio 9 - Valor Total com Desconto

Crie um programa que:

1. Leia o valor unitÃ¡rio de um produto
2. Leia a quantidade comprada
3. Leia o percentual de desconto
4. Calcule:
- valor bruto
- valor do desconto
- valor final

Mostre os valores monetÃ¡rios com 2 casas decimais.

---

<!-- fit -->

# ExercÃ­cio 10 - DistÃ¢ncia em Linha Reta (`cmath`)

Crie um programa que:

1. Leia as coordenadas `(x1, y1)` e `(x2, y2)`
2. Calcule a distÃ¢ncia entre os pontos:

$$
d = \sqrt{(x2-x1)^2 + (y2-y1)^2}
$$

3. Mostre a distÃ¢ncia com 2 casas decimais
