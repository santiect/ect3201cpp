---
marp: true
theme: ect
paginate: true
---


**ECT3201 – Linguagem de Programação**

Prof. Éverton Santi

---

# Linguagens de Programação

## Alto vs Baixo Nível

- **Linguagens de alto nível**: Próximas à linguagem humana, fáceis de entender (ex: C++, Python)
- **Linguagens de baixo nível**: Próximas ao hardware, mais difíceis (ex: Assembly)

## Compiladas vs Interpretadas

- **Compiladas**: Código traduzido para executável antes da execução (ex: C++, Java)
- **Interpretadas**: Código executado linha por linha por um interpretador (ex: Python, JavaScript)

---

# Processo de Compilação

O processo de compilação em C++ transforma o código-fonte em um programa executável.

## Etapas principais:

1. **Pré-processamento**: Expande diretivas como `#include` e `#define`
2. **Compilação**: Traduz o código para linguagem assembly
3. **Montagem (Assembly)**: Converte assembly em código objeto
4. **Ligação (Linking)**: Combina código objeto com bibliotecas para criar o executável

---

# Hello World em C++

O primeiro programa em qualquer linguagem é geralmente o "Hello World".

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
```

Este programa imprime "Hello, World!" na tela.

---

# Programa de Computador

De modo geral, qual é o objetivo de criarmos um programa?

Dados → Processamento → Informação

Um programa:

1. recebe **dados**
2. executa **operações**
3. produz **informação**

---

# Exemplo

## Distanciamento de Segurança

No trânsito é recomendado manter uma distância segura entre veículos.

Regra prática:

$$
d = \left(\frac{velocidade}{10}\right)^2
$$

onde:

- velocidade em **km/h**
- distância **em metros**

---

# Controlando Casas Decimais

Podemos controlar casas decimais usando a biblioteca `iomanip`.

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main() {

    double velocidade;
    double distancia;

    cout << "Digite a velocidade: ";
    cin >> velocidade;

    distancia = (velocidade / 10) * (velocidade / 10);

    cout << fixed << setprecision(2);
    cout << "Distancia segura: " << distancia << " metros" << endl;

}
```

---

# Variáveis

Uma **variável** representa um espaço na memória.

Ela possui:

* um **identificador**
* um **tipo**
* um **valor**

Exemplo conceitual:

| Endereço | Nome      | Valor |
| -------- | --------- | ----- |
| 0101     | a         | 'd'   |
| 0110     | resultado | 12.45 |
| 1100     | valor     | 864   |

---

# Informações Importantes

Quando declaramos variáveis precisamos definir:

* **tipo de dado**
* **nome da variável**

O compilador decide:

* **endereço na memória**

---

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

# Tamanho dos Tipos

| Tipo   | Tamanho | Faixa        |
| ------ | ------- | ------------ |
| char   | 1 byte  | -127 a 127   |
| int    | 4 bytes | ±2 bilhões   |
| float  | 4 bytes | ±3.4 × 10³⁸  |
| double | 8 bytes | ±1.7 × 10³⁰⁸ |

Tipos diferentes ocupam **quantidades diferentes de memória**.

---

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

# Entrada de Dados

Em C++ usamos **cin** para entrada.

```cpp
#include <iostream>
using namespace std;

int main() {

    int idade;

    cout << "Digite sua idade: ";
    cin >> idade;

    cout << "Idade digitada: " << idade << endl;

}
```

---

# Saída de Dados

Usamos **cout** para exibir informações.

```cpp
cout << "Hello world" << endl;
```

Podemos combinar texto e variáveis.

```cpp
cout << "Voce tem " << idade << " anos" << endl;
```

---

# Exemplo Completo

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){

    double peso, altura, imc;

    cout << "Digite o peso: ";
    cin >> peso;

    cout << "Digite a altura: ";
    cin >> altura;

    imc = peso / (altura * altura);

    cout << fixed << setprecision(2);
    cout << "IMC = " << imc << endl;

}
```

---

# Constantes

Constantes são valores que **não podem ser alterados**.

```cpp
const int A = 10;
const float GRAVIDADE = 9.8;
const double T = 1e-10;
```

---

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

int main(){

    cout << "Gravidade = " << GRAVIDADE << endl;

}
```

---

# Operador de Atribuição

O operador `=` armazena valores em variáveis.

```cpp
idade = 35;
peso = 98.5;
letra = 'd';
```

---

# Conversão de Tipos

Cuidado ao misturar tipos.

```cpp
#include <iostream>

using namespace std;

int main(){

    int x = 2.4;

    cout << x << endl;

}
```

Saída:

```
2
```

A parte decimal é perdida.

---

# Exercício 1

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

# Operador sizeof

O operador `sizeof` retorna o tamanho em bytes.

```cpp
#include <iostream>

using namespace std;

int main(){

    int a = 10;
    float b;

    cout << sizeof(a) << endl;
    cout << sizeof(b) << endl;

}
```

---

# Exemplo Mais Completo

```cpp
#include <iostream>

using namespace std;

int main(){

    int tamanho_a;
    float b;

    tamanho_a = sizeof(int);

    cout << "int ocupa " << tamanho_a << " bytes" << endl;
    cout << "float ocupa " << sizeof(b) << " bytes" << endl;
    cout << "expressao ocupa " << sizeof(10.1 * 3.2) << " bytes" << endl;

}
```

---

# Exercício 2

Crie um programa que imprime:

**o maior valor possível de um `unsigned int`.**

Dica:

```cpp
#include <limits>
```

Exemplo:

```cpp
#include <iostream>
#include <limits>

using namespace std;

int main(){

    cout << numeric_limits<unsigned int>::max() << endl;

}
```

---

# Próxima Aula

Veremos:

* operadores aritméticos
* operadores relacionais
* operadores lógicos
* estruturas condicionais

```
```
