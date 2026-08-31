---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções: Passagem por Valor e Referência

## Lista 05 - Exercícios da Aula 05

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->
# Exercício 1 - Dobro por Valor

Crie uma função que receba um inteiro por valor, calcule o dobro e retorne o resultado.

No `main`, leia um inteiro `x`, chame a função e mostre:

1. o valor retornado;
2. o valor de `x` depois da chamada.

Escreva um comentário curto explicando por que `x` permanece igual.

---

<!-- fit -->
# Exercício 2 - Dobro por Referência

Crie um procedimento que receba um inteiro por referência e altere seu valor para o dobro.

No `main`, leia um inteiro `x`, chame o procedimento e mostre:

1. o valor antes da chamada;
2. o valor depois da chamada.

Compare o comportamento com o exercício anterior.

---

<!-- fit -->
# Exercício 3 - Limites de Horário

Crie um procedimento que receba `hora` e `minuto` por referência.

O procedimento deve corrigir valores fora das faixas válidas:

1. se `hora < 0`, altere para `0`;
2. se `hora > 23`, altere para `23`;
3. se `minuto < 0`, altere para `0`;
4. se `minuto > 59`, altere para `59`.

No `main`, leia vários horários e mostre o horário corrigido.

---

<!-- fit -->
# Exercício 4 - Caixa Eletrônico

Crie um procedimento que receba um valor inteiro em reais por valor e receba por referência as quantidades de notas de `100`, `50`, `20` e `10`.

O procedimento deve calcular a menor quantidade de notas possível, considerando apenas valores múltiplos de `10`.

No `main`, leia vários saques válidos e mostre a decomposição de cada saque.

---

<!-- fit -->
# Exercício 5 - Maior e Menor

Crie um procedimento que receba três números reais por valor e receba `menor` e `maior` por referência.

O procedimento deve armazenar o menor e o maior valor nos parâmetros de saída.

No `main`, leia vários trios de valores e mostre o menor e o maior de cada trio.

---

<!-- fit -->
# Exercício 6 - Conversão de Segundos

Crie um procedimento que receba uma quantidade total de segundos por valor e receba `horas`, `minutos` e `segundos` por referência.

O procedimento deve decompor o tempo total no formato:

```text
horas:minutos:segundos
```

No `main`, leia várias durações e mostre cada uma no formato decomposto.

---

<!-- fit -->
# Exercício 7 - Atualização de Saldo

Uma conta bancária possui um saldo atual.

Crie um procedimento que receba o saldo por referência, um tipo de operação por valor e um valor de operação por valor.

Regras:

1. operação `1`: depósito, soma o valor ao saldo;
2. operação `2`: saque, subtrai o valor apenas se houver saldo suficiente;
3. qualquer outro código não altera o saldo.

No `main`, processe várias operações e mostre o saldo após cada uma.

---

<!-- fit -->
# Exercício 8 - Preço com Desconto e Acréscimo

Crie um procedimento que receba o preço original por valor, o percentual de desconto por valor, o percentual de acréscimo por valor, e receba por referência:

1. o valor do desconto;
2. o valor do acréscimo;
3. o preço final.

No `main`, leia vários produtos e mostre os três resultados calculados para cada um.

---

<!-- fit -->
# Exercício 9 - Normalização de Data

Crie um procedimento que receba `dia` e `mes` por referência.

Considere todos os meses com `30` dias.

O procedimento deve transformar valores acima do limite:

1. enquanto `dia > 30`, subtraia `30` de `dia` e some `1` ao mês;
2. enquanto `mes > 12`, subtraia `12` de `mes`.

No `main`, leia várias datas simplificadas e mostre a data normalizada.

---

<!-- fit -->
# Exercício 10 - Divisão Inteira

Crie uma função que receba `dividendo` e `divisor` por valor e receba `quociente` e `resto` por referência.

A função deve retornar `true` quando o divisor for diferente de zero.

Quando a divisão for válida, armazene o quociente e o resto nos parâmetros de saída.

No `main`, leia vários pares de inteiros e mostre o resultado apenas quando a divisão for possível.

---

<!-- fit -->
# Desafio Extra - Simulação de Partida

Crie um programa modularizado para acompanhar o placar de uma partida entre dois times.

Use procedimentos por referência para:

1. registrar ponto para o time A;
2. registrar ponto para o time B;
3. aplicar uma penalidade, removendo um ponto de um time apenas se ele tiver pontuação maior que zero.

No `main`, leia comandos até o código `0` e mostre o placar final.
