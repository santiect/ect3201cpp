---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Recursividade

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Às vezes, um problema pode ser descrito usando uma versão menor dele mesmo.

Essa é a ideia da recursividade.

Uma função recursiva é uma função que chama a si mesma para resolver uma parte menor do problema.

Exemplos:

- contar de `n` até `0`
- calcular fatorial
- percorrer um array
- somar elementos de um array
- buscar um valor em um array

---

<!-- fit -->
# Ideia Principal

Toda função recursiva precisa de duas partes:

- **caso base**: situação simples, em que a função para;
- **caso recursivo**: chamada para uma versão menor do problema.

O caso base é essencial.

Sem ele, a função continua chamando a si mesma sem parar.

---

<!-- fit -->
# Primeiro Modelo

Em uma função recursiva, normalmente seguimos este formato:

- verificamos se chegamos ao caso base;
- se não chegamos, fazemos uma chamada para um problema menor.

```cpp
void funcao(int n) {
    if (n == 0) {
        return;
    }

    funcao(n - 1);
}
```

Neste exemplo:

- `n == 0` é o caso base;
- `funcao(n - 1)` aproxima o problema do caso base.

A cada chamada, o valor de `n` diminui.

---

<!-- fit -->
# Recursão e Iteração

Muitos problemas podem ser resolvidos com repetição ou com recursão.

Com repetição, controlamos o avanço usando um laço:

```cpp
for (int i = 0; i < n; i++) {
    cout << i << endl;
}
```

Com recursão, o avanço acontece por meio das chamadas da função:

```cpp
void mostrar(int i, int n) {
    if (i == n) return;
    cout << i << endl;
    mostrar(i + 1, n);
}
```

As duas soluções percorrem os mesmos valores.

---

<!-- fit -->
# Quando Usar Recursão?

Recursão pode deixar alguns problemas mais fáceis de expressar.

Mas é preciso cuidado:

- toda chamada ocupa memória;
- muitas chamadas podem deixar o programa lento;
- o caso base precisa ser alcançado;
- em alguns casos, a repetição é mais direta.

Hoje vamos trabalhar com exemplos pequenos para entender bem a mecânica.

---

<!-- fit -->
# Exemplo 1

Vamos começar com uma contagem regressiva.

Crie um procedimento recursivo que recebe um número inteiro `n` e mostra os valores de `n` até `0`.

Exemplo:

Saída esperada: `5 4 3 2 1 0`

---

<!-- fit -->
# Exemplo 1: Ideia

Para contar de `n` até `0`:

- se `n < 0`, pare;
- mostre `n`;
- chame a função para `n - 1`.

O problema fica menor porque o próximo valor é sempre uma unidade menor.

---

<!-- fit -->
# Exemplo 2

Agora vamos inverter a ordem.

Crie um procedimento recursivo que recebe um número inteiro `n` e mostra os números de `1` até `n`.

Exemplo:

Saída esperada: `1 2 3 4 5`

---

<!-- fit -->
# Exemplo 2: Ordem da Chamada

Uma forma de resolver é chamar a função para `n - 1` antes de mostrar `n`.

Assim, os menores valores são mostrados primeiro.

A posição da chamada recursiva muda a ordem do resultado.

---

<!-- fit -->
# Exemplo 3

Agora vamos usar a mesma ideia com arrays.

Crie um procedimento recursivo que recebe um array de inteiros e mostra os elementos em ordem inversa.

Exemplo:

- array: `2 8 5 1`
- saída: `1 5 8 2`

---

<!-- fit -->
# Exemplo 3: Ideia

Para mostrar em ordem inversa:

- se `n == 0`, pare;
- mostre o último elemento;
- chame a função para os `n - 1` primeiros elementos.

Depois da chamada, o problema passa a ter um elemento a menos.

---

<!-- fit -->
# Exemplo 4

Depois de imprimir o vetor ao contrário, vamos imprimir na ordem normal.

Crie um procedimento recursivo que mostra os elementos na mesma ordem em que aparecem no array.

Exemplo:

- array: `2 8 5 1`
- saída: `2 8 5 1`

---

<!-- fit -->
# Exemplo 4: Ideia

Uma forma de resolver é usar um índice.

O índice indica qual posição será processada na chamada atual.

A cada chamada, o índice avança uma posição.

Quando o índice chega em `n`, todos os elementos já foram processados.

---

<!-- fit -->
# Exemplo 5

Depois de percorrer o vetor para imprimir, podemos percorrê-lo para calcular.

Crie uma função recursiva que retorna a soma dos elementos do array.

Exemplo:

- array: `2 8 5 1`
- soma: `16`

---

<!-- fit -->
# Exemplo 5: Ideia

A soma de um array pode ser vista assim:

```text
soma dos n elementos =
último elemento + soma dos n - 1 primeiros
```

O caso base é o vetor sem elementos.

Nesse caso, a soma é `0`.

---

<!-- fit -->
# Exemplo 6

Também podemos usar recursão para comparar valores.

Crie uma função recursiva que retorna o maior valor do array.

Considere que o array possui pelo menos um elemento.

---

<!-- fit -->
# Exemplo 6: Ideia

O maior valor de um array pode ser encontrado comparando:

- o último elemento;
- o maior valor dos elementos anteriores.

O caso base é o vetor com apenas um elemento.

Nesse caso, o maior valor é o próprio elemento.

---

<!-- fit -->
# Exemplo 7

O fatorial é um exemplo clássico de definição recursiva.

Crie uma função recursiva que recebe um número inteiro `n` e retorna o fatorial de `n`.

Definição:

```text
0! = 1
n! = n * (n - 1)!
```

---

<!-- fit -->
# Exemplo 7: Ideia

Exemplo:

```text
5! = 5 * 4 * 3 * 2 * 1
5! = 120
```

O caso base é `0!`.

O caso recursivo reduz o problema de `n!` para `(n - 1)!`.

---

<!-- fit -->
# Exemplo 8

Fibonacci também tem uma definição recursiva simples.

Crie uma função recursiva que recebe um número inteiro `n` e retorna o n-ésimo termo da sequência.

Definição:

```text
fib(0) = 0
fib(1) = 1
fib(n) = fib(n - 1) + fib(n - 2)
```

---

<!-- fit -->
# Exemplo 8: Ideia

A definição é simples.

Mas a execução pode ficar cara.

Para calcular um termo, a função precisa calcular dois termos anteriores.

---

<!-- fit -->
# Fibonacci: Cuidado

Para calcular o termo `5`, a função chama os termos:

```text
4 e 3
```

Depois, para calcular o termo `4`, ela chama:

```text
3 e 2
```

O mesmo valor pode ser calculado várias vezes.

Por isso, recursão nem sempre significa solução eficiente.

---

<!-- fit -->
# Cuidados com Recursão

Ao criar uma função recursiva, pergunte:

- qual é o caso base?
- a chamada recursiva chega mais perto do caso base?
- o problema fica menor a cada chamada?
- existe risco de repetir muitas chamadas?
- uma solução iterativa seria mais simples?

---

<!-- fit -->
# Fechamento

Recursão resolve um problema chamando a própria função para problemas menores.

Nesta aula vimos:

- caso base;
- caso recursivo;
- recursão versus iteração;
- impressão de valores;
- arrays;
- fatorial;
- Fibonacci.

Agora veremos um exemplo clássico: Torres de Hanoi.
