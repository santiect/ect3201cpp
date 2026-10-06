---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Bidimensionais

## Laboratório 08 - Prática da Aula 08

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Soma dos Elementos

Leia uma matriz de inteiros com `m` linhas e `n` colunas.

Calcule e mostre:

- a soma de todos os elementos;
- a quantidade de elementos lidos;
- a média dos elementos.

Neste exercício, resolva tudo no `main`, sem criar funções.

---

<!-- fit -->

# Exercício 2 - Adição de Matrizes

Leia duas matrizes de inteiros `A` e `B`, ambas com `m` linhas e `n` colunas.

Calcule a matriz `C`, em que:

```text
C[i][j] = A[i][j] + B[i][j]
```

Mostre a matriz resultante `C`.

Neste exercício, resolva tudo no `main`, sem criar funções.

---

<!-- fit -->

# Exercício 3 - Multiplicação de Matrizes

Leia uma matriz `A` com `m` linhas e `n` colunas.

Leia uma matriz `B` com `n` linhas e `p` colunas.

Calcule a matriz `C = A x B`.

A matriz resultante terá `m` linhas e `p` colunas.

Para cada posição:

$$
c_{ij} = \sum_{k=0}^{n-1} a_{ik} \cdot b_{kj}
$$

Mostre a matriz `C`.

---

<!-- fit -->

# Exercício 4 - Matriz Esparsa

Leia uma matriz de inteiros com `m` linhas e `n` colunas.

Conte quantos elementos são iguais a zero.

Considere que a matriz é esparsa quando mais da metade de seus elementos é igual a zero.

Mostre:

- a quantidade de zeros;
- a quantidade total de elementos;
- se a matriz é esparsa ou não.

Crie uma função para contar os zeros da matriz.

---

<!-- fit -->

# Exercício 5 - Linha com Maior Soma

Uma matriz representa a quantidade de atendimentos feitos por equipes durante vários dias.

Cada linha representa uma equipe.

Cada coluna representa um dia.

Leia a matriz e determine qual linha possui a maior soma.

Mostre:

- o índice da equipe com maior total de atendimentos;
- o valor da maior soma.

Crie uma função para calcular a soma de uma linha da matriz.

---

<!-- fit -->

# Exercício 6 - Coluna com Menor Soma

Uma matriz representa gastos de departamentos em diferentes meses.

Cada linha representa um departamento.

Cada coluna representa um mês.

Leia a matriz e determine qual coluna possui a menor soma.

Mostre:

- o índice do mês com menor gasto total;
- o valor da menor soma.

Crie uma função para calcular a soma de uma coluna da matriz.

---

<!-- fit -->

# Desafio - Jogo da Velha

Crie um programa para jogar jogo da velha entre dois jogadores.

Use uma matriz `char` de tamanho `3 x 3` para representar o tabuleiro.

Cada posição contém:

- `'X'` para jogada do primeiro jogador;
- `'O'` para jogada do segundo jogador;
- `'-'` para posição vazia.

---

<!-- fit -->

# Desafio - Jogo da Velha (continuação)

O programa deve:

1. iniciar o tabuleiro com `'-'`;
2. alternar as jogadas entre `'X'` e `'O'`;
3. ler a linha e a coluna da jogada;
4. aceitar apenas posições válidas e vazias;
5. mostrar o tabuleiro após cada jogada;
6. verificar se houve vencedor após cada jogada.

Use funções para organizar o programa.

---

<!-- fit -->

# Desafio - Jogo da Velha (continuação)

Protótipos sugeridos:

```cpp
void iniciar_tabuleiro(char tab[3][3]);
void mostrar_tabuleiro(char tab[3][3]);
bool jogada_valida(char tab[3][3], int linha, int coluna);
bool existe_vencedor(char tab[3][3], char jogador);
bool tabuleiro_cheio(char tab[3][3]);
```

O jogo termina quando:

- algum jogador vencer;
- o tabuleiro ficar cheio.

---
