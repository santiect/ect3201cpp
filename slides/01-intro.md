---
marp: true
style: |
  section {
    box-sizing: border-box;
    padding: 40px 52px 64px 52px;
    font-size: 28px;
    line-height: 1.2;
  }
  section h1 {
    margin-top: 0;
    margin-bottom: 0.35em;
    font-size: 1.45em;
  }
  section h2 {
    font-size: 1.1em;
    margin: 0.2em 0;
  }
  section ul,
  section ol {
    margin: 0.3em 0;
  }
  section li {
    margin: 0.12em 0;
  }
  section pre {
    font-size: 0.72em;
    line-height: 1.25;
    margin: 0.25em 0;
  }
  section table {
    font-size: 0.8em;
  }
---

<!-- fit -->


**ECT3201 – Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Cronograma e Avaliações

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
| char   | 1 byte  | -127 a 127   |
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

<!-- fit -->

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
}
```
---

<!-- fit -->

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

int main(){

    cout << "Gravidade = " << GRAVIDADE << endl;

}
```

<!-- fit -->

---

# Casting (Conversção Forçada)

Quando queremos converter de forma explícita entre tipos, usamos **casting**.

```cpp
double media = 8.75;
int nota_inteira = (int)(media);
```

Nesse caso, a parte decimal é descartada e `nota_inteira` recebe `8`.

Outro exemplo:

```cpp
int a = 5, b = 2;
double resultado = (double) a / b; // 2.5
```

<!-- fit -->
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

<!-- fit -->

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
