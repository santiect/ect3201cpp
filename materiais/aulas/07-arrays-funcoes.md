---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays e Funções

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Arrays e Funções

Na chamada da função, passamos o nome do array:

```cpp
soma = somar_elementos(v, n);
```

No protótipo, usamos colchetes:

```cpp
int somar_elementos(int v[], int n);
```

---

<!-- fit -->
# Passagem para Funções

Arrays são passados automaticamente por referência.

Isso significa que a função pode alterar os elementos do array original.

Não usamos `&` no parâmetro.

---

<!-- fit -->
# Exemplo 1

Crie uma função que recebe um array de inteiros e retorna a soma de seus elementos.

```cpp
#define MAX 10

int somar_elementos(int v[], int n);
```

Chamada:

```cpp
int x[MAX] = {1, 2, 3};
int soma = somar_elementos(x, 3);
```

---

<!-- fit -->
# Exemplo 2

Crie uma função que recebe um array de inteiros e sua quantidade de elementos válidos.

A função deve imprimir os elementos do array do início para o final.

Protótipo sugerido:

```cpp
void imprimir_array(int v[], int n);
```

---

<!-- fit -->
# Exemplo 3

Crie uma função que recebe um array de inteiros e sua quantidade de elementos válidos.

A função deve receber um valor `x` e retornar quantas vezes `x` aparece no array.

Protótipo sugerido:

```cpp
int contar_ocorrencias(int v[], int n, int x);
```

---

<!-- fit -->
# Exemplo 4

Crie um procedimento que recebe:

- um array de notas do tipo `float`
- um array do tipo `bool`
- a quantidade de elementos válidos

O procedimento deve marcar `true` para notas aprovadas e `false` para notas reprovadas.

Protótipo sugerido:

```cpp
void marcar_aprovacao(float notas[], bool aprovado[], int n);
```
