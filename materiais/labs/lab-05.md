---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções: Passagem por Valor e Referência

## Laboratório 05 - Prática da Aula 05

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->
# Revisão - Quadrado por Valor

Crie uma função que receba um número real por valor, calcule seu quadrado e retorne o resultado.

No `main`, leia um valor `x`, chame a função e mostre:

1. o valor retornado pela função;
2. o valor de `x` após a chamada.

Explique, em comentário no código, por que `x` não foi alterado.

---

<!-- fit -->
# Exercício 1 - Troca de Valores

Crie um procedimento `trocar` que receba dois números inteiros por referência.

O procedimento deve inverter os valores das duas variáveis.

No `main`, leia dois valores, mostre antes da chamada, chame o procedimento e mostre depois da chamada.

---

<!-- fit -->
# Exercício 2 - Ordem de Dois Valores

Leia vários pares de números reais.

Escreva um programa modularizado que, para cada par, use um procedimento que receba os dois valores por referência e coloque-os em ordem crescente.

Mostre os valores antes e depois da chamada do procedimento.

---

<!-- fit -->
# Exercício 3 - Faixa Permitida

Em um sistema de medição, vários valores reais precisam permanecer dentro de uma faixa aceitável.

Crie um procedimento que receba uma medição por referência e os limites mínimo e máximo por valor.

O procedimento deve alterar a medição quando ela estiver fora da faixa.

No `main`, leia `n` medições e informe quantas precisaram de ajuste.

---

<!-- fit -->
# Exercício 4 - Fechamento de Pedido

No fechamento diário, uma loja precisa processar vários pedidos e informar imposto e total a pagar.

Crie um procedimento que receba:

1. o subtotal por valor;
2. o percentual de imposto por valor;
3. o valor do imposto por referência;
4. o valor total por referência.

No `main`, leia vários pedidos e mostre também o total de impostos e o faturamento total do dia.

---

<!-- fit -->
# Exercício 5 - Simplificação de Fração

Uma fração deve ser apresentada na forma irredutível.

Crie:

1. uma função para calcular o máximo divisor comum entre numerador e denominador;
2. um procedimento para simplificar a fração, recebendo numerador e denominador por referência.

No `main`, leia `n` frações e mostre cada resultado simplificado.

---

<!-- fit -->
# Exercício 6 - Atualização de Estoque

Uma loja acompanha a quantidade em estoque de um produto.

Crie procedimentos para:

1. registrar entrada de unidades, alterando o estoque por referência;
2. registrar saída de unidades, alterando o estoque por referência apenas quando houver quantidade suficiente.

No `main`, processe várias movimentações e mostre o estoque após cada uma.

---

<!-- fit -->
# Exercício 7 - Raízes Reais

Crie uma função para calcular as raízes reais de uma equação do segundo grau.

A função deve receber `a`, `b` e `c` por valor, receber `x1` e `x2` por referência, e retornar `true` quando houver raízes reais.

No `main`, leia várias equações e mostre as raízes apenas quando existirem.

Considere:

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$
