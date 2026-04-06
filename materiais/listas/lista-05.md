---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções, Procedimentos, Valor e Referência

## Lista 05 - Exercícios da Aula 05

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->
# Exercício 1 - Lucro e Margem

Uma empresa deseja analisar o resultado financeiro de várias vendas em um mês.

Crie a solução de forma modularizada para:

1. calcular o lucro a partir de receita e custo;
2. calcular a margem percentual de lucro sobre a receita.

No programa principal, leia a quantidade de vendas e, para cada venda, leia receita e custo.

Saídas:

1. lucro e margem de cada venda;
2. lucro total acumulado do mês.

Considere:

$$
\text{margem} = \frac{lucro}{receita} \cdot 100
$$

---

<!-- fit -->

# Exercício 2 - Valor da Mensalidade

Uma instituição precisa processar as mensalidades de uma turma.

Descreva e implemente uma solução modularizada que calcule o valor final de cada aluno.

No programa principal, repita a leitura para `n` alunos e mostre:

1. valor final de cada mensalidade;
2. soma total arrecadada.

Considere:

$$
V_f = V_b - V_b\frac{d}{100} + V_b\frac{m}{100}
$$

---

<!-- fit -->

# Exercício 3 - Faixa Permitida

Em um sistema de medição, vários valores reais precisam permanecer dentro de uma faixa aceitável.

Implemente uma solução modularizada que ajuste cada valor para o intervalo definido pelos limites inferior e superior.

No programa principal, leia `n` medições e informe quantas precisaram de ajuste.

Regra:

1. se o valor estiver abaixo do mínimo, deve ser ajustado para o mínimo;
2. se estiver acima do máximo, deve ser ajustado para o máximo.
3. se estiver dentro da faixa, deve permanecer inalterado.

---

<!-- fit -->

# Exercício 4 - Fechamento de Pedido

No fechamento diário, uma loja precisa processar vários pedidos e informar imposto e total a pagar.

Implemente uma solução modularizada que, para cada pedido, produza:

1. valor do imposto;
2. valor total do pedido.

No programa principal, leia a quantidade de pedidos e mostre também:

1. total de impostos do dia;
2. faturamento total do dia.

Considere:

$$
\text{valor\_imposto} = subtotal\cdot\frac{percentual\_imposto}{100}
$$

$$
\text{valor\_total} = subtotal + \text{valor\_imposto}
$$

---

<!-- fit -->

# Exercício 5 - Simplificação de Fração

Uma fração deve ser apresentada na forma irredutível.

Construa uma solução modularizada que:

1. determine o máximo divisor comum entre numerador e denominador;
2. simplifique a fração dividindo ambos pelo valor adequado.

Considere numerador e denominador inteiros, com denominador diferente de zero.

No programa principal, leia `n` frações e mostre cada resultado já simplificado.

---

<!-- fit -->

# Exercício 6 - Extremos e Amplitude

Um professor precisa resumir rapidamente uma sequência de medições reais.

Implemente uma solução modularizada que determine:

- o menor valor
- o maior valor
- a amplitude (`maior - menor`)

No programa principal, leia `n` valores (`n >= 1`) e apresente menor, maior e amplitude.

---

<!-- fit -->

# Exercício 7 - Elegibilidade de Financiamento

Uma análise de crédito considera que a parcela não pode ultrapassar 30% da renda.

Implemente uma função de decisão que indique se a proposta é elegível ou não.

Entradas: renda mensal e valor da parcela.
Saída: indicação de elegibilidade.

Considere elegível quando:

$$
parcela \le 0{,}30 \cdot renda
$$

No programa principal, leia `n` propostas e informe, ao final, quantas foram elegíveis e quantas não foram.

---

<!-- fit -->

# Exercício 8 - Reajuste por Meta

Em uma empresa, o reajuste salarial depende do cumprimento de meta para cada colaborador.

Crie uma solução modularizada em que:

1. o salário seja atualizado somente quando a meta for atingida;
2. o percentual de reajuste seja aplicado sobre o salário atual.

No programa principal, processe `n` colaboradores e apresente:

1. salário final de cada colaborador;
2. total de colaboradores com reajuste aplicado.

---

<!-- fit -->

# Exercício 9 - Contagem de Dígitos Ímpares

Dado um número inteiro positivo, deseja-se analisar sua composição decimal.

Implemente uma função que retorne a quantidade de dígitos ímpares desse número.

Entrada: inteiro positivo.
Saída: quantidade de dígitos ímpares.

Exemplo:

- para `n = 28041`, o retorno deve ser `2`

No programa principal, leia `k` números positivos e mostre a quantidade de dígitos ímpares de cada um.

---

<!-- fit -->

# Exercício 10 - Depreciação de Equipamento

Um equipamento perde valor ao longo dos anos por depreciação composta.

Implemente uma função que calcule o valor estimado ano a ano.

Entradas: valor inicial, taxa anual de depreciação (%) e quantidade de anos.
Saídas:

1. valor do equipamento ao final de cada ano;
2. valor final ao término do período.

Considere depreciação composta:

$$
V = V_0\left(1-\frac{t}{100}\right)^n
$$

---

<!-- fit -->

# Desafio Extra - Controle de Produção

Apresente um programa modularizado com:

1. uma função para calcular a eficiência diária (`itens_bons / itens_totais`);
2. uma função para classificar o dia (`Excelente`, `Adequado`, `Crítico`) usando código inteiro;
3. um procedimento para atualizar os acumuladores das categorias.

No programa principal:

1. Leia a quantidade de dias analisados
2. Para cada dia, leia `itens_totais` e `itens_bons`
3. Ao final, mostre:
- quantidade de dias por categoria
- eficiência média do período

Considere `itens_totais > 0` em cada dia.
