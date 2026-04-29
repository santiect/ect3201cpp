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
# Motivação

Em programas com arrays, algumas tarefas aparecem muitas vezes:

- ler elementos
- imprimir elementos
- somar valores
- buscar valores
- comparar arrays

Podemos organizar essas tarefas usando funções e procedimentos.

---

<!-- fit -->
# Capacidade e Elementos Válidos

Use uma constante para representar a capacidade máxima do array.

Um array pode ter uma capacidade máxima, mas usar apenas `n` posições.

Ao criar funções com arrays, é importante informar também quantos elementos são válidos.

Exemplo:

```cpp
#define MAX 100

void imprimir_array(int v[MAX], int n);
```

---

<!-- fit -->
# Passagem para Funções

Arrays são passados automaticamente por referência.

Isso significa que a função pode alterar os elementos do array original.

Não usamos `&` no parâmetro do array.

Exemplo:

```cpp
void zerar_array(int v[MAX], int n) {
    for (int i = 0; i < n; i++) {
        v[i] = 0;
    }
}
```

---

<!-- fit -->
# Exemplo 1

Crie dois procedimentos:

1. um procedimento para ler os elementos de um array de inteiros;
2. um procedimento para imprimir os elementos de um array de inteiros.

Esses procedimentos serão reutilizados nos próximos exemplos.

---

<!-- fit -->
# Exemplo 2

Reutilize os procedimentos de leitura e impressão.

Crie uma função que recebe um array de inteiros e retorna a soma de seus elementos.

No programa principal, leia o array, calcule a soma e mostre o resultado.

---

<!-- fit -->
# Exemplo 3

Reutilize os procedimentos de leitura e impressão.

Crie uma função que recebe um array de inteiros e um valor `x`.

A função deve retornar quantas vezes `x` aparece no array.

---

<!-- fit -->
# Exemplo 4

Crie uma função que recebe um array e verifica se seus elementos estão em ordem não decrescente.

Exemplos:

- `{2, 4, 4, 7}` está ordenado
- `{2, 8, 5, 9}` não está ordenado

---

<!-- fit -->
# Exemplo 5

Crie um procedimento que recebe:

- um array de notas do tipo `float`
- um array do tipo `bool`
- a quantidade de elementos válidos

O procedimento deve marcar `true` para notas aprovadas e `false` para notas reprovadas.

---

<!-- fit -->
# Exemplo 6

Crie uma função que verifica se dois arrays de inteiros são iguais.

Dois arrays são iguais quando:

- possuem a mesma quantidade de elementos
- cada posição possui o mesmo valor correspondente

---

<!-- fit -->
# Exemplo 7

Crie uma função que verifica se um valor existe em um array.

Depois, use essa função para verificar se todos os elementos de um array `a` aparecem em outro array `b`.

Este problema deve ser resolvido com mais de uma função.

---

<!-- fit -->
# Exemplo 8

Crie um procedimento para eliminar valores repetidos.

O procedimento deve receber:

- um array de entrada
- sua quantidade de elementos válidos
- um array de saída
- uma variável para guardar a quantidade de saída

---

<!-- fit -->
# Exemplo 8: Reutilização

Para eliminar repetidos, verifique se cada valor da entrada já apareceu no array de saída.

Este problema pode reutilizar a função que verifica se um valor existe em um array.
