---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Números Aleatórios e Ordenação

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Números aleatórios são úteis para criar dados de teste e simulações.

Exemplos:

- sorteios
- jogos
- geração automática de vetores
- simulação de eventos
- testes com muitos valores

Depois de gerar dados, muitas vezes precisamos ordená-los.

---

<!-- fit -->
# Função `rand`

A função `rand` gera um número inteiro pseudoaleatório.

Para usar:

```cpp
#include <cstdlib>
```

Exemplo de uso:

```cpp
int valor = rand();
```

Os valores gerados parecem aleatórios, mas seguem uma sequência.

---

<!-- fit -->
# Limitando o Intervalo

Para gerar valores em um intervalo, usamos o operador `%`.

Valores de `0` até `limite - 1`:

```cpp
rand() % limite
```

Valores de `inicio` até `fim`:

```cpp
inicio + rand() % (fim - inicio + 1)
```

---

<!-- fit -->
# Função `srand`

Sem `srand`, a sequência gerada por `rand` tende a se repetir.

Para alterar a semente:

```cpp
#include <ctime>

srand(time(NULL));
```

Normalmente chamamos `srand` uma única vez no início do programa.

---

<!-- fit -->
# Exemplo 1

Crie um programa que leia `n`, `inicio` e `fim`.

Depois, gere `n` números inteiros aleatórios no intervalo `[inicio, fim]` e armazene os valores em um array.

Ao final, mostre todos os valores gerados.

---

<!-- fit -->
# Exemplo 2

Crie um programa para simular o lançamento de um dado de seis faces `n` vezes.

Use um array contador para registrar quantas vezes cada face foi sorteada.

Ao final, mostre a frequência de cada face.

---

<!-- fit -->
# Dados Aleatórios para Testes

Arrays preenchidos com valores aleatórios ajudam a testar programas.

Podemos testar:

- busca de valores
- contagem de ocorrências
- cálculo de estatísticas
- ordenação
- remoção de repetidos

O mesmo programa pode ser testado com várias entradas diferentes.

---

<!-- fit -->
# Ordenação

Ordenar significa reorganizar os valores de acordo com algum critério.

Exemplos:

- ordem crescente
- ordem decrescente
- menor preço primeiro
- maior nota primeiro
- ordem alfabética

Nesta aula, usaremos o método bolha.

---

<!-- fit -->
# Método Bolha

O método bolha compara elementos vizinhos.

Quando dois vizinhos estão fora de ordem, eles são trocados.

Após uma passagem completa, um dos maiores valores chega ao final do array.

O processo é repetido até o array ficar ordenado.

---

<!-- fit -->
# Troca de Valores

Para trocar dois elementos, usamos uma variável auxiliar.

```cpp
int aux = v[i];
v[i] = v[j];
v[j] = aux;
```

No método bolha, a troca acontece entre posições vizinhas.

---

<!-- fit -->
# Exemplo 3

Crie um procedimento que ordene um array de inteiros em ordem crescente usando o método bolha.

No programa principal, leia os valores do array, ordene o array e mostre o resultado.

---

<!-- fit -->
# Exemplo 4

Crie um jogo de cara ou coroa.

O programa deve perguntar quantas rodadas serão jogadas.

Em cada rodada, o usuário escolhe `cara` ou `coroa`.

O computador sorteia o resultado e informa se o usuário acertou.

Ao final, mostre a quantidade de acertos.

---

<!-- fit -->
# Exemplo 5

Crie um programa que gere `n` temperaturas inteiras aleatórias entre `-10` e `40`.

Depois, ordene as temperaturas em ordem crescente.

Ao final, mostre:

- as temperaturas geradas;
- as temperaturas ordenadas;
- a menor temperatura;
- a maior temperatura.

---

<!-- fit -->
# Exemplo 6

Crie um programa para sortear `n` números distintos no intervalo `[1, 60]`.

Nenhum número pode aparecer mais de uma vez.

Depois de sortear todos os números, ordene o array em ordem crescente e mostre o resultado.
