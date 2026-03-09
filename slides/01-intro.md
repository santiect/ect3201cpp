---
marp: true
theme: ect
---

<!-- fit -->

# Introdução

**ECT3201 – Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Cronograma e Avaliações

- SIGAA

---

<!-- fit -->
# Linguagens de Programação

## Alto vs Baixo Nível

- **Linguagens de alto nível**: Próximas à linguagem humana, fáceis de entender (ex: C++, Python)
- **Linguagens de baixo nível**: Próximas ao hardware, mais difíceis (ex: Assembly)

## Compiladas vs Interpretadas

- **Compiladas**: Código traduzido para executável antes da execução (ex: C++, Java)
- **Interpretadas**: Código executado linha por linha por um interpretador (ex: Python, JavaScript)

---

<!-- fit -->

# Processo de Compilação

O processo de compilação em C++ transforma o código-fonte em um programa executável.

## Etapas principais:

1. **Pré-processamento**: Expande diretivas como `#include` e `#define`
2. **Compilação**: Traduz o código para linguagem assembly
3. **Montagem (Assembly)**: Converte assembly em código objeto
4. **Ligação (Linking)**: Combina código objeto com bibliotecas para criar o executável

---

<!-- fit -->

# Hello World em C++

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
```

Este programa imprime "Hello, World!" na tela.

---

<!-- fit -->

# Programa de Computador

De modo geral, qual é o objetivo de criarmos um programa?

Dados → Processamento → Informação

Um programa:

1. recebe **dados**
2. executa **operações**
3. produz **informação**

---

<!-- fit -->

# Variáveis

Uma **variável** representa um espaço na memória.

Ela possui:

* um identificador
* um tipo
* um valor

Exemplo conceitual:

| Endereço | Nome      | Valor |
| -------- | --------- | ----- |
| 0101     | a         | 'd'   |
| 0110     | resultado | 12.45 |
| 1100     | valor     | 864   |

---

<!-- fit -->

# Informações Importantes

Quando declaramos variáveis precisamos definir:

* **tipo de dado**
* **nome da variável**

O compilador decide:

* **endereço na memória**

---

<!-- fit -->

# Tipos Básicos em C++

Principais tipos primitivos:

```
char
int
float
double
bool
void
```

---

<!-- fit -->

# Tamanho dos Tipos

| Tipo   | Tamanho | Faixa        |
| ------ | ------- | ------------ |
| char   | 1 byte  | -128 a 127   |
| int    | 4 bytes | ±2 bilhões   |
| float  | 4 bytes | ±3.4 × 10³⁸  |
| double | 8 bytes | ±1.7 × 10³⁰⁸ |

Tipos diferentes ocupam **quantidades diferentes de memória**.

---

<!-- fit -->

# Modificadores de Tipo

Modificadores alteram o alcance dos tipos.

Principais:

```
signed
unsigned
short
long
```

Exemplo:

```cpp
unsigned int contador;
long int populacao;
```

---

<!-- fit -->

# Identificadores

Regras para nomes de variáveis:

✔ podem conter letras, números e `_`
✔ devem começar com letra ou `_`
❌ não podem ser palavras reservadas

Exemplos válidos:

```
soma
peso_bruto
p2p
SOMA
```

Exemplos inválidos:

```
5altura
desvio-padrão
```

---

<!-- fit -->

# Declaração de Variáveis

Sintaxe geral:

```
tipo nome;
```

Exemplos:

```cpp
double lucro;
int i, j;
char a, b, c;
```

---

<!-- fit -->

# Inicialização

Podemos declarar e atribuir ao mesmo tempo.

```cpp
int idade = 35;
float peso = 82.4;
```

Isso é equivalente a:

```cpp
int idade;
idade = 35;
```

---

<!-- fit -->

# Entrada/Saída de Dados

Escreva um programa para ler o nome e a idade de uma pessoa. Exiba os dados lidos na tela.

---

<!-- fit -->

# Exemplo

## Distanciamento de Segurança

Escreva um programa para a distância segura entre veículos:

$$
d = \left(\frac{velocidade}{10}\right)^2
$$

em que:

- velocidade em **km/h**
- distância **em metros**

---

<!-- fit -->

# Controlando Casas Decimais

Use a biblioteca `iomanip` para customizar a exibição de casas decimais do exemplo anterior:

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    cout << fixed << setprecision(2);
    return 0;
}
```
---

<!-- fit -->

# Exemplo Completo

Enunciado:

Crie um programa que:

1. Leia o **peso** (kg) e a **altura** (m) de uma pessoa
2. Calcule o IMC usando:

$$
IMC = \frac{peso}{altura^2}
$$

3. Mostre o resultado com **2 casas decimais**


---

<!-- fit -->

# Constantes

Constantes são valores que **não podem ser alterados**.

```cpp
const int A = 10;
const float GRAVIDADE = 9.8;
const double T = 1e-10;
```

---

<!-- fit -->

# Constantes Simbólicas

Podemos usar o pré-processador:

```cpp
#define GRAVIDADE 9.80665
```

Exemplo:

```cpp
#include <iostream>

#define GRAVIDADE 9.80665

using namespace std;

int main() {
    cout << "Gravidade = " << GRAVIDADE << endl;
    return 0;
}
```

---

<!-- fit -->

# Casting (Conversão Forçada)

Quando queremos converter de forma explícita entre tipos, usamos **casting**.

```cpp
double media = 8.75;
int nota_inteira = (int)(media);
```

Nesse caso, a parte decimal é descartada e `nota_inteira` recebe `8`.

Outro exemplo:

```cpp
int a = 5, b = 2;
double resultado = (double)(a) / b; // 2.5
```

---

<!-- fit -->

# Conversão de Tipos

Cuidado ao misturar tipos.

```cpp
#include <iostream>

using namespace std;

int main() {
    int x = 2.4;
    cout << x << endl;
    return 0;
}
```

Saída:

```
2
```

A parte decimal é perdida.

---

<!-- fit -->

# Exercício 1  - Arredondamento

Crie um programa que:

1. Recebe um número real positivo
2. Arredonda para o inteiro mais próximo

Exemplo:

```
2.32 -> 2
3.5 -> 4
6.8 -> 7
```

Dica:

```
#include <cmath>
round()
```

---

<!-- fit -->

# Exercício 2 - Pedágio

Crie um programa que calcule o **custo de uma viagem**.

Entradas:

1. Distância da viagem (km)
2. Consumo do carro (km/L)
3. Preço do litro de combustível (R$)

Use a constante:

```cpp
const double PEDAGIO = 12.50;
```

Calcule e mostre:

1. Litros necessários
2. Custo do combustível
3. Custo total da viagem (combustível + pedágio)
4. Litros inteiros usando **casting**: `(int) litros`

Mostre os valores monetários com **2 casas decimais**.
