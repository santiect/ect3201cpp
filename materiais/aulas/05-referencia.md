---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções: Passagem por Valor e Referência

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi


---

<!-- fit -->

# Retomada

Na aula anterior, usamos funções e procedimentos para organizar programas.

Agora vamos observar uma pergunta importante:

**o que acontece com os argumentos enviados para uma função?**

---

<!-- fit -->

# Escopo de Variável

Escopo é o bloco de código em que uma variável é válida:

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
# Parâmetros Formais

- são variáveis da função
- existem apenas durante a chamada
- recebem informações enviadas pelo programa principal ou por outra função
- têm tipo, ordem e quantidade definidos no cabeçalho

---

<!-- fit -->
# Passagem de Parâmetros

## Por valor

O parâmetro recebe uma cópia do argumento.

Alterações feitas no parâmetro **não alteram** a variável original.

## Por referência

O parâmetro passa a representar a própria variável enviada.

Alterações feitas no parâmetro **alteram** a variável original.

---

<!-- fit -->
# Exemplo 1 - Passagem por Valor

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
# Operador de Endereço: `&`

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
# Exemplo 2 - Passagem por Referência
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

- alterar variáveis pertencentes a outro escopo
- criar procedimentos que atualizam dados
- devolver mais de um resultado usando parâmetros de saída

---

<!-- fit -->
# Exemplo 3

Crie um procedimento `trocar` que receba dois inteiros por referência.

O procedimento deve inverter os valores das duas variáveis.

Depois, use esse procedimento para organizar em ordem crescente os valores de quatro variáveis `a`, `b`, `c` e `d`.

---

<!-- fit -->
# Exemplo 4

Crie um programa para calcular as raízes reais de uma equação de segundo grau.

Use uma função que receba `a`, `b` e `c` por valor e receba `x1` e `x2` por referência.

A função deve retornar `true` quando houver raízes reais e `false` caso contrário.
$$
 x =  \frac{-b \pm \sqrt{b^2-4ac}}{2a}
$$

---

<!-- fit -->
# Fechamento

Nesta aula:

- diferenciamos passagem por valor e por referência
- observamos quando a variável original é alterada
- usamos referência para troca de valores e múltiplas saídas

Próximo passo:

- armazenar muitos valores com arrays
