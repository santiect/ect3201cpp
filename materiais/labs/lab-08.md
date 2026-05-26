---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Números Aleatórios e Ordenação

## Laboratório 08 - Prática da Aula 09

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

# Exercício 2 - Monitoramento de Ruído

Um laboratório mede o nível de ruído em decibéis durante vários instantes.

Leia `n` e gere `n` valores aleatórios entre `30` e `120`.

Depois, leia um limite de alerta.

Mostre:

- todos os valores gerados;
- quantos valores ficaram acima do limite;
- o maior bloco consecutivo de valores acima do limite.

---

<!-- fit -->

# Exercício 3 - Ranking de Pontuações

Leia a pontuação de `n` jogadores.

Ordene as pontuações em ordem decrescente usando o método bolha.

Depois, mostre o ranking final.

Se duas pontuações forem iguais, elas podem aparecer em qualquer ordem entre si.

---

<!-- fit -->

# Exercício 4 - Tempos de Entrega

Uma transportadora registrou os tempos de entrega de `n` pedidos, em minutos.

Gere tempos aleatórios entre `15` e `180`.

Ordene os tempos em ordem crescente.

Ao final, mostre:

- os tempos gerados;
- os tempos ordenados;
- a mediana dos tempos.

---

<!-- fit -->

# Exercício 5 - Controle de Estoque

Uma loja possui `n` produtos.

Para cada produto, gere aleatoriamente uma quantidade em estoque entre `0` e `50`.

Depois, ordene as quantidades em ordem crescente.

Mostre:

- as quantidades originais;
- as quantidades ordenadas;
- quantos produtos estão com estoque zerado;
- quantos produtos possuem estoque menor ou igual a `5`.
