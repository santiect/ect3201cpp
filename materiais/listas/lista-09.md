---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Números Aleatórios e Ordenação

## Lista 09 - Exercícios da Aula 09

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Avaliações Automáticas

Um sistema gera notas inteiras de `0` até `100` para testar relatórios.

Leia `n` e gere `n` notas aleatórias.

Depois, mostre:

- todas as notas geradas;
- a menor nota;
- a maior nota;
- a média da turma.

---

<!-- fit -->

# Exercício 2 - Histograma de Idades

Leia `n` e gere `n` idades aleatórias entre `18` e `80`.

Use um array contador para registrar quantas pessoas aparecem em cada faixa:

- `18-29`
- `30-39`
- `40-49`
- `50-59`
- `60-69`
- `70-80`

Ao final, mostre uma tabela com as faixas e suas contagens.

---

<!-- fit -->

# Exercício 3 - Controle de Frequência Cardíaca

Um aplicativo registra batimentos cardíacos durante uma atividade física.

Leia `n` e gere `n` medições aleatórias entre `50` e `190`.

Depois, leia `zona_minima` e `zona_maxima`.

Mostre quantas medições ficaram abaixo, dentro e acima da zona informada.

---

<!-- fit -->

# Exercício 4 - Preços em Promoção

Leia os preços de `n` produtos.

Ordene os preços em ordem crescente usando o método bolha.

Depois, mostre:

- os preços ordenados;
- os três menores preços, se existirem;
- os três maiores preços, se existirem.

---

<!-- fit -->

# Exercício 5 - Pesquisa de Satisfação

Uma pesquisa usa notas inteiras de `1` até `5`.

Leia `n` e gere `n` respostas aleatórias.

Mostre a contagem de cada nota e ordene as respostas em ordem crescente.

Ao final, mostre as respostas ordenadas.

---

<!-- fit -->

# Exercício 6 - Lotes de Produção

Uma máquina produz peças com códigos de lote entre `1000` e `9999`.

Leia `n` e gere `n` códigos aleatórios.

Depois, ordene os códigos em ordem crescente.

Mostre os códigos ordenados e informe se houve códigos repetidos.

---

<!-- fit -->

# Exercício 7 - Intervalo Entre Alertas

Um sensor registra códigos de situação ao longo do tempo.

Leia `n` e gere `n` códigos aleatórios entre `1` e `20`.

Depois, leia o código de alerta `x`.

Mostre todas as posições em que o código `x` apareceu.

Ao final, informe a maior distância entre duas ocorrências de `x` na lista de situações.

Se `x` aparecer menos de duas vezes, informe que não há distância a calcular.

---

<!-- fit -->

# Exercício 8 - Fila por Prioridade

Uma fila de chamados possui prioridades inteiras de `1` até `10`.

Leia `n` e gere `n` prioridades aleatórias.

Ordene as prioridades em ordem decrescente usando o método bolha.

Depois, mostre a fila original e a fila organizada por prioridade.

---

<!-- fit -->

# Desafio Extra - Cartela Ordenada

Uma cartela possui `n` números distintos sorteados no intervalo `[1, 99]`.

Leia `n`, gere a cartela sem valores repetidos e ordene os números em ordem crescente.

Depois, mostre a cartela em linhas com `5` números por linha.

Se `n` não for múltiplo de `5`, a última linha terá menos números.
