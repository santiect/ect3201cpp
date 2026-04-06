---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções: Valor e Referência

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi


---

<!-- fit -->

# Escopo de Variável

- Bloco de código em que uma variável é válida:

```C++
int somar(int x, int y){
    //bloco da função somar
    int soma = x + y;
    return soma;
}

void imprimir_saudacao(){
    //bloco do procedimento imprimir saudacao
    cout << "Ola Mundo" << endl;
}

int main(){
    //Bloco da função main
    int x;
    return 0;
}

```

---

<!-- fit -->
# Escopo de Variável

Em um mesmo programa, nomes podem se repetir.

|Identificador| Valor| Endereço|Escopo|
|---|---|---|---|
|x|15|0x7ffeefbff51c|`main`|
|y|25|0x00403000ff5a|`somar`|
|x|10|0x7ffeefbff508|`somar`|

---

<!-- fit -->
# Parâmetros formais de uma função

- Visíveis apenas dentro do escopo da função;
- Tipo, ordem e quantidade correspondem à declaração da função;
- Valores dos argumentos são convertidos para os tipos definidos dos parâmetros;

---

<!-- fit -->
# Passagem de Parâmetros

Por **Valor:**

- Parâmetros recebem uma cópia dos valores das variáveis ou expressões usadas na chamada de função;

Por **Referência:**

- Parâmetros recebem o endereço de memória da variável utilizada na chamada da função;
- Parâmetros referenciam variável externa à função durante a execução;

---

<!-- fit -->
# Exemplo 1: Passagem por Valor

Qual o valor de `x` ao final da execução?

```C++
#include<iostream>

using namespace std;

float quadrado(float x);

int main(){
    float x;
    cout << "Informe um valor x: ";
    cin >> x;
    cout << quadrado(x) << endl;
    cout << x << endl;
    return 0;
}

float quadrado(float x){
    x = x * x;
    return x;
}
```
---

<!-- fit -->
# Operador Unário de Referência: `&`

Usado para extrair o endereço de memória de uma variável.

```C++
#include <iostream>

using namespace std;

int main(){
    int x;
    cout << "Informe o valor de x: ";
    cin >> x;
    cout << "x tem valor: " << x << endl;
    cout << "x está em " << &x << endl;
    return 0;
}

```

---

<!-- fit -->
# Exemplo 2: Passagem por Referência
Qual o valor de `x` ao final da execução do código abaixo?
```C++
#include<iostream>

using namespace std;

float quadrado(float &x);

int main(){
    float x;
    cout << "Informe um valor x: ";
    cin >> x;
    cout << quadrado(x) << endl;
    cout << x << endl;
    return 0;
}

float quadrado(float &x){
    x = x * x;
    return x;
}
```

---

<!-- fit -->
# Passagem por Referência

Quais possibilidades o uso de referência nos traz?

---


<!-- fit -->
# Passagem por Referência

Quais possibilidades o uso de referência nos traz?

- **Alterar** variáveis pertencentes a outros escopos;
- Retornar mais de um valor: **Parâmetros de Saída**; 

---

<!-- fit -->
# Exemplo 3

Usando funções e/ou procedimentos, organize em ordem crescente os valores de quatro variáveis `a`, `b`, `c` e `d`.

---

<!-- fit -->
# Exemplo 4

Crie um programa para calcular as raízes reais de uma Equação de Segundo Grau. Implemente este programa utilizando funções e/ou procedimentos.
$$
 x =  \frac{-b \pm \sqrt{b^2-4ac}}{2a}
$$

---
