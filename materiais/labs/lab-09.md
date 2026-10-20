---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Números Aleatórios e Ordenação

## Laboratório 09 - Prática da Aula 09

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Amostras de Qualidade

Uma fábrica mede automaticamente o peso de pequenas peças.

Leia `n`, `peso_minimo` e `peso_maximo`.

Gere `n` pesos inteiros aleatórios no intervalo `[peso_minimo, peso_maximo]`.

Depois, mostre:

- todos os pesos gerados;
- quantas peças ficaram abaixo de `peso_minimo + 5`;
- quantas peças ficaram acima de `peso_maximo - 5`.

---

<!-- fit -->

# Exercício 2 - Adivinhe o Número

Crie um jogo de adivinhação.

O programa deve sortear um número inteiro no intervalo `[1, 100]`.

Em cada tentativa, leia o palpite do usuário e informe se o número sorteado é `maior` ou `menor` que o palpite.

Repita até o usuário acertar.

Ao final, mostre o número de tentativas.

---

<!-- fit -->

# Exercício 3 - Ranking de Pontuações

Leia a pontuação de `n` jogadores.

Ordene as pontuações em ordem decrescente usando o método bolha.

Depois, mostre o ranking final.

Se duas pontuações forem iguais, elas podem aparecer em qualquer ordem entre si.

---

<!-- fit -->

# Exercício 4 - Intervalo Entre Chegadas

Em uma corrida, os tempos de chegada de `n` corredores foram registrados em segundos, fora de ordem.

Leia os `n` tempos e ordene-os em ordem crescente.

Depois, mostre:

- os tempos ordenados;
- a maior diferença entre dois tempos consecutivos no array ordenado;
- os dois tempos que originam essa diferença.

---

<!-- fit -->

# Exercício 5 - Tempos de Entrega

Uma transportadora registrou os tempos de entrega de `n` pedidos, em minutos.

Gere tempos aleatórios entre `15` e `180`.

Ordene os tempos em ordem crescente.

Ao final, mostre:

- os tempos gerados;
- os tempos ordenados;
- a mediana dos tempos.

Se `n` for par, a mediana é a média dos dois valores centrais.

---

<!-- fit -->

# Exercício 6 - Avaliação dos Jurados

Uma apresentação foi avaliada por `n` jurados, com `n >= 5`.

Gere `n` notas inteiras aleatórias entre `0` e `10`.

Ordene as notas em ordem crescente.

Descarte as duas menores e as duas maiores notas.

Mostre:

- as notas ordenadas;
- as notas descartadas;
- a média das notas restantes.

---

<!-- fit -->

# Exercício 7 - Leituras Distintas do Sensor

Um sensor registra `n` leituras inteiras.

Gere as leituras aleatoriamente entre `1` e `30`.

Ordene as leituras em ordem crescente.

Percorrendo o array ordenado, mostre cada valor distinto uma única vez.

Ao final, informe quantos valores distintos foram encontrados.

---

<!-- fit -->

# Exercício 8 - Campeonato Simulado

Um campeonato tem `n` times.

Gere a pontuação de cada time, entre `0` e `100`.

Depois, ordene as pontuações em ordem decrescente usando o método bolha.

Mostre:

- a tabela ordenada;
- a pontuação do campeão;
- as pontuações dos dois últimos colocados.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 8 (continuação)

Use procedimentos separados para gerar, ordenar e mostrar os dados.

Protótipos sugeridos:

```cpp
#define MAX 100

void gerar_pontos(int v[MAX], int n);
void ordenar_decrescente(int v[MAX], int n);
void mostrar_tabela(int v[MAX], int n);
```
