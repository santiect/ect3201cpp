---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Unidimensionais

## Laboratório 05 - Prática da Aula 06

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Estoque Diário

Uma loja acompanha o estoque final de um produto durante vários dias.

Crie um programa que:

1. leia a quantidade de dias `n`, com `n <= 31`;
2. leia o estoque final de cada dia em um array de inteiros;
3. mostre quantos dias ficaram abaixo do estoque mínimo;
4. mostre o primeiro dia em que isso ocorreu, caso exista.

---

<!-- fit -->

# Exercício 2 - Ajuste de Medições

Um sensor registrou `n` medições reais, com `n <= 50`.

Crie um programa que armazene as medições em um array do tipo `float`.

Depois, leia os limites `minimo` e `maximo` e substitua:

1. valores abaixo de `minimo` por `minimo`;
2. valores acima de `maximo` por `maximo`.

Ao final, mostre o array ajustado e quantas medições foram alteradas.

---

<!-- fit -->

# Exercício 3 - Presenças

Uma turma possui até `40` estudantes.

Crie um programa que:

1. leia a quantidade de estudantes `n`;
2. leia um array do tipo `bool`, em que `true` indica presença e `false` indica falta;
3. calcule a quantidade de presentes;
4. calcule o percentual de presença da turma.

---

<!-- fit -->

# Exercício 4 - Situação de Vacinação

Uma turma possui até `40` estudantes.

Crie um programa que leia dois arrays do tipo `bool`:

- `primeira_dose`
- `segunda_dose`

Ao final, mostre:

1. quantos estudantes tomaram as duas doses;
2. quantos tomaram apenas a primeira dose;
3. quantos não tomaram nenhuma dose;
4. o percentual da turma com vacinação completa.

---

<!-- fit -->

# Exercício 5 - Datas Próximas de Entrega

Uma transportadora registrou o prazo de entrega, em dias, de `n` pedidos.

Leia os prazos em um array de inteiros, com `n <= 50`.

Mostre todos os pares de pedidos cujos prazos diferem em, no máximo, `2` dias.

Ao final, informe quantos pares foram encontrados.

---

<!-- fit -->

# Exercício 6 - Sequência de Pagamentos

Uma pessoa registrou os valores pagos em várias contas ao longo do mês.

Leia os valores em um array do tipo `float`, com `n <= 50`.

Verifique se os pagamentos foram registrados em ordem não decrescente.

Ao final, mostre:

1. se a sequência está ordenada;
2. a primeira posição em que a ordem foi quebrada, caso exista.

---

<!-- fit -->

# Desafio - Histograma de Notas

Leia `n` notas inteiras no intervalo de `0` até `10`.

Use um array contador para gerar um histograma.

Ao final, imprima uma tabela com:

1. nota;
2. contagem;
3. barra com um `*` para cada ocorrência.

Use `setw` (`iomanip`) para alinhar as colunas.

Continua no próximo slide.

---

<!-- fit -->

# Desafio - Exemplo

Exemplo:

```text
Nota  Quantidade  Histograma
0     2           **
1     0
2     1           *
3     4           ****
...
10    2           **
```

O valor `10` ocupa mais posições que os demais valores.
