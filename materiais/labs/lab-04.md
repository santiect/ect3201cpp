---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções, Procedimentos, Valor e Referência

## Laboratório 04 - Prática da Aula 05

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->
# Revisão - Fechamento do Caixa

Uma loja realizou várias vendas ao longo do dia. Para cada venda, são informados o valor da compra e o percentual de desconto aplicado.

Escreva um programa modularizado que processe as vendas e mostre:

1. o valor final de cada venda;
2. o total arrecadado no dia;
3. o total de descontos concedidos.

---

<!-- fit -->
# Exercício 1 - Valor da Compra

Em uma papelaria, o valor de uma compra depende da quantidade de unidades adquiridas e do preço unitário do produto. Escreva um programa modularizado que leia várias compras e calcule o valor total de cada uma:

- Use uma função simples que receba os dados da compra por valor e retorne o total correspondente.
- Estipule faixas de preço baseadas na quantidade comprada por meio de constantes.

---

<!-- fit -->
# Exercício 2 - Ordem de Dois Valores

Leia vários pares de números reais.

Escreva um programa modularizado que, para cada par, use um procedimento para colocar os dois valores em ordem crescente.

Mostre os valores antes e depois da chamada do procedimento.

---

<!-- fit -->
# Exercício 3 - Conta de Energia

Uma residência recebe a cobrança de energia de acordo com três faixas de consumo:

1. os primeiros `100` kWh têm uma tarifa;
2. os próximos `100` kWh têm outra tarifa;
3. o consumo excedente tem uma terceira tarifa.

Escreva um programa modularizado que leia o consumo de vários clientes e calcule o valor total da conta de cada um, mostrando também quanto foi paga em cada faixa de consumo. Note que a impressão de resultados na tela não deve ser realizada pela mesma função/procedimento que irá fazer o cálculo.

---

<!-- fit -->
# Exercício 4 - Pagamento de Dívida

Uma pessoa possui uma dívida. A cada mês, o valor devido sofre juros e, em seguida, é feito um pagamento fixo.

Escreva um programa modularizado que simule essa situação mês a mês até a dívida ser quitada ou até atingir um número máximo de meses.

Ao final, mostre quantos meses foram necessários, quanto foi pago ao todo e quanto foi pago apenas em juros.

---

<!-- fit -->
# Exercício 5 - Estoque com Reposição

Uma loja trabalha com estoque mínimo de um produto. Sempre que o estoque ficar abaixo desse mínimo, novas unidades devem ser acrescentadas de um lote fixo até o estoque voltar a um valor aceitável.

Escreva um programa modularizado que processe entradas e saídas do produto ao longo do dia e mostre:

1. o estoque após cada movimentação;
2. quantas reposições foram feitas;
3. o estoque final.

---

<!-- fit -->
# Exercício 6 - Controle de Qualidade

Uma fábrica produz peças com um peso esperado. Cada peça pode variar um pouco, mas essa diferença não pode ultrapassar uma tolerância definida.

Escreva um programa modularizado que leia os pesos de um lote de peças e determine:

1. quantas peças ficaram dentro da tolerância;
2. quantas ficaram fora;
3. o maior desvio encontrado;
4. a média dos pesos do lote.

---

<!-- fit -->
# Exercício 7 - Poupança Mensal

Uma pessoa deseja acompanhar a evolução de uma aplicação financeira. Todo mês o saldo rende uma taxa fixa e, depois disso, é feito um novo depósito.

Escreva um programa modularizado que simule a aplicação durante vários meses e mostre:

1. o saldo ao final de cada mês;
2. o total depositado;
3. o total obtido em rendimentos;
4. o saldo final.

---

<!-- fit -->
# Exercício 8 - Pedidos de uma Lanchonete

Uma lanchonete recebe vários pedidos. Cada pedido possui vários itens, e para cada item são informados o preço unitário e a quantidade solicitada.

Escreva um programa modularizado que processe os pedidos do dia e mostre:

1. o valor de cada pedido;
2. o faturamento total do dia;
3. o valor médio dos pedidos;
4. o pedido de maior valor.

---

<!-- fit -->
# Exercício 9 - Fechamento do Mês

Durante um mês, um pequeno comércio registra, a cada dia, o valor total de entradas e o valor total de saídas.

Escreva um programa modularizado que processe os dias do mês e mostre:

1. o saldo de cada dia;
2. quantos dias terminaram com lucro;
3. quantos dias terminaram empatados;
4. quantos dias terminaram com prejuízo;
5. o saldo acumulado do mês.

---

<!-- fit -->
# Desafio - Financiamento

Uma pessoa está pagando um financiamento. A cada mês, o saldo devedor sofre juros e depois recebe o desconto da parcela paga. Em alguns meses, a pessoa também consegue fazer um pagamento extra.

Escreva um programa modularizado que simule o financiamento até a quitação ou até um limite máximo de meses.

Ao final, mostre:

1. em quantos meses a dívida foi quitada;
2. quanto foi pago em parcelas regulares;
3. quanto foi pago em parcelas extras;
4. quanto foi pago em juros.
