---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Bidimensionais

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Arrays bidimensionais são úteis para representar tabelas.

Exemplos:

- notas de alunos por avaliação
- vendas por loja e produto
- temperaturas por dia e horário
- ocupação de assentos

Cada elemento é acessado por dois índices.

---

<!-- fit -->
# Linhas e Colunas

Em um array `m` com 3 linhas e 4 colunas:

|  | Coluna 0 | Coluna 1 | Coluna 2 | Coluna 3 |
| --- | ---: | ---: | ---: | ---: |
| Linha 0 | `m[0][0]` | `m[0][1]` | `m[0][2]` | `m[0][3]` |
| Linha 1 | `m[1][0]` | `m[1][1]` | `m[1][2]` | `m[1][3]` |
| Linha 2 | `m[2][0]` | `m[2][1]` | `m[2][2]` | `m[2][3]` |

---

<!-- fit -->
# Declaração

Sintaxe geral:

```cpp
tipo nome[capacidade_linhas][capacidade_colunas];
```

Exemplos:

```cpp
int m[2][3];
float notas[50][4];
bool ocupado[10][6];
```

---

<!-- fit -->
# Capacidade e Dimensões Válidas

Use constantes para a capacidade máxima:

```cpp
#define MAX_LINHAS 50
#define MAX_COLUNAS 50
```

Uma matriz pode ter capacidade máxima, mas usar apenas:

- `m` linhas válidas
- `n` colunas válidas

---

<!-- fit -->
# Percurso

O percurso de uma matriz normalmente usa repetição aninhada.

```cpp
for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
        // processa matriz[i][j]
    }
}
```

O índice `i` percorre as linhas.

O índice `j` percorre as colunas.

---

<!-- fit -->
# Matrizes e Funções

Ao passar uma matriz para uma função, informe a capacidade nos colchetes.

Também passe as dimensões válidas.

Exemplo:

```cpp
void imprimir_matriz(int matriz[MAX_LINHAS][MAX_COLUNAS],
                     int m, int n);
```

---

<!-- fit -->
# Exemplo 1

Crie dois procedimentos:

1. um procedimento para ler os elementos de uma matriz de inteiros;
2. um procedimento para imprimir os elementos de uma matriz de inteiros.

Esses procedimentos serão reutilizados nos próximos exemplos.

---

<!-- fit -->
# Exemplo 2

Reutilize os procedimentos de leitura e impressão.

Crie uma função que recebe uma matriz de inteiros e retorna a soma de todos os seus elementos.

No programa principal, leia a matriz, calcule a soma e mostre o resultado.

---

<!-- fit -->
# Exemplo 3

Uma matriz armazena as vendas de várias lojas.

Cada linha representa uma loja.

Cada coluna representa um produto.

Crie um procedimento que mostre o total vendido por cada loja.

---

<!-- fit -->
# Exemplo 4

Usando a mesma matriz de vendas:

- cada linha representa uma loja
- cada coluna representa um produto

Crie um procedimento que mostre o total vendido de cada produto.

---

<!-- fit -->
# Exemplo 5

Ainda usando a matriz de vendas, crie um procedimento que preencha um array com o total vendido por cada loja.

Cada posição do array de saída deve guardar o total de uma linha da matriz.

---

<!-- fit -->
# Exemplo 6

Ainda usando a matriz de vendas, crie uma função que retorne o índice da loja com maior total vendido.

Este problema pode reutilizar a lógica de soma dos elementos de uma linha.

---

<!-- fit -->
# Exemplo 7

Uma matriz armazena as notas de vários alunos em várias avaliações.

Cada linha representa um aluno.

Cada coluna representa uma avaliação.

Crie uma função que retorne a média de uma avaliação escolhida pelo usuário.

---

<!-- fit -->
# Exemplo 8

Crie um procedimento que recebe uma matriz `m x n` e gera sua transposta.

Na matriz transposta:

- linhas viram colunas
- colunas viram linhas

Exemplo: uma matriz `3 x 2` gera uma transposta `2 x 3`.
