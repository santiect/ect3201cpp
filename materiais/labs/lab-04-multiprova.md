---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções e Procedimentos

## Laboratório 04 - Versão Multiprova

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->
# Instruções Gerais

Nos exercícios deste laboratório, não imprima mensagens pedindo entrada, como `Digite um valor`.

Leia os dados na ordem indicada em cada enunciado.

Quando houver saída com números reais, mostre o valor com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.

---

<!-- fit -->
# Exercício 1 - Conversão de Temperatura

Crie um programa que converta temperaturas de graus Celsius para Fahrenheit.

Use uma função que receba a temperatura em Celsius e retorne o valor em Fahrenheit.

Entrada:

1. um inteiro `n`, representando a quantidade de temperaturas;
2. `n` números reais, cada um representando uma temperatura em Celsius.

Saída: para cada temperatura, uma linha no formato `Fahrenheit: X.XX`.

Mostre a temperatura em Fahrenheit com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.

Considere:

$$
F = C \cdot \frac{9}{5} + 32
$$

---

<!-- fit -->
# Exercício 2 - Valor da Compra

Em uma papelaria, o valor de uma compra depende da quantidade de unidades adquiridas e do preço unitário do produto.

Use uma função que receba a quantidade e o preço unitário e retorne o total da compra.

Entrada:

1. um inteiro `n`, representando a quantidade de compras;
2. para cada compra, um inteiro `q` e um número real `p`, representando quantidade e preço unitário.

Saída: para cada compra, uma linha no formato `Total: X.XX`.

Mostre o valor total da compra com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.

---

<!-- fit -->
# Exercício 3 - Conta de Energia

Uma residência recebe a cobrança de energia de acordo com três faixas de consumo:

1. os primeiros `100` kWh têm tarifa de `0.60`;
2. os próximos `100` kWh têm tarifa de `0.75`;
3. o consumo acima de `200` kWh tem tarifa de `0.90`.

Use funções para calcular o valor pago em cada faixa e o valor total da conta.

Entrada:

1. um inteiro `n`, representando a quantidade de clientes;
2. `n` números reais, cada um representando o consumo de um cliente em kWh.

Saída: para cada cliente, uma linha no formato `Conta: X.XX`.

Mostre o valor total da conta com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.

---

<!-- fit -->
# Exercício 4 - Situação de Aluno

Crie um programa que calcule a média de três notas e informe a situação final do aluno.

Use:

1. uma função para calcular a média;
2. uma função para retornar `true` quando o aluno estiver aprovado;
3. um procedimento para mostrar a média e a situação final.

Entrada:

1. um inteiro `n`, representando a quantidade de alunos;
2. para cada aluno, três números reais, representando as notas.

Saída: para cada aluno, uma linha no formato `Media: X.XX - Situacao`.

Mostre `Aprovado` quando a média for maior ou igual a `7.0`. Caso contrário, mostre `Reprovado`.

Mostre a média com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.

---

<!-- fit -->
# Exercício 5 - Número Forte

Um número é chamado de forte quando é igual à soma dos fatoriais de seus dígitos.

Exemplo:

```text
145 = 1! + 4! + 5!
```

Crie funções para calcular o fatorial de um dígito e verificar se um número inteiro positivo é forte.

Entrada:

1. um inteiro `n`, representando a quantidade de números;
2. `n` inteiros positivos.

Saída: para cada número, uma linha contendo `Forte` ou `Nao forte`.

---

<!-- fit -->
# Exercício 6 - Poupança Mensal

Uma pessoa deseja acompanhar a evolução de uma aplicação financeira.

Crie uma função que receba o saldo atual, a taxa mensal e o depósito do mês, e retorne o novo saldo.

Entrada:

1. um número real `saldo`, representando o saldo inicial;
2. um número real `taxa`, representando a taxa mensal em percentual;
3. um inteiro `m`, representando a quantidade de meses;
4. `m` números reais, cada um representando o depósito de um mês.

Saída:

1. para cada mês, uma linha no formato `Mes i: X.XX`, em que `i` começa em `1`;
2. ao final, uma linha no formato `Saldo final: X.XX`.

Em cada mês, aplique primeiro o rendimento e depois some o depósito.

Mostre todos os saldos com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.

---

<!-- fit -->
# Exercício 7 - Pedidos de uma Lanchonete

Uma lanchonete recebe pedidos. Cada pedido possui uma quantidade finita de itens.

Use uma função para calcular o valor de cada item e outra para retornar o maior valor entre dois pedidos.

Entrada:

1. um inteiro `p`, representando a quantidade de pedidos;
2. para cada pedido, um inteiro `q`, representando a quantidade de itens;
3. para cada item, um número real `preco` e um inteiro `quantidade`.

Saída:

1. para cada pedido, uma linha no formato `Pedido i: X.XX`, em que `i` começa em `1`;
2. ao final, uma linha no formato `Faturamento: X.XX`;
3. ao final, uma linha no formato `Media: X.XX`;
4. ao final, uma linha no formato `Maior pedido: X.XX`.

Mostre todos os valores monetários com duas casas decimais. Sugestão: use `#include <iomanip>`, `fixed` e `setprecision(2)`.
