---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Funções e Procedimentos

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Programas maiores exigem organização.

Com funções e procedimentos, podemos:

- dividir o problema em partes menores
- reutilizar código
- facilitar manutenção e testes

---

<!-- fit -->
# Módulos

Em termos gerais:

**Entrada -> Processamento -> Saída**

O processamento pode ser decomposto em módulos.

---

<!-- fit -->
# Exemplo 1

Problema: sistema de notas de uma turma.

Possíveis módulos:

- ler nota válida
- calcular média
- classificar situação
- mostrar relatório final

---

<!-- fit -->
# Função e Procedimento

## Função

- processa e **retorna** valor

## Procedimento

- processa e **não retorna** valor (`void`)

---

<!-- fit -->
# Exemplo 2

Crie:

- uma função para somar dois números reais
- um procedimento para mostrar uma linha de separação na tela

Considere linha de separação como uma sequência de caracteres, por exemplo:

```text
------------------------------
```

---

<!-- fit -->
# Estrutura de Função

```cpp
tipo_retorno nome(parametros) {
    // processamento
    return valor;
}
```

Tipos de retorno comuns:

- `int`, `double`, `bool`

---

<!-- fit -->
# Estrutura de Procedimento

```cpp
void nome(parametros) {
    // processamento
}
```

Em C++, procedimentos são funções com retorno `void`.

---

<!-- fit -->
# Parâmetros e Argumentos

Parâmetros:

- variáveis formais da função

Argumentos:

- valores informados na chamada

---

<!-- fit -->
# Exemplo 3

Crie uma função que:

- receba peso e altura
- calcule o IMC:

$$
IMC = \frac{peso}{altura^2}
$$

- retorne o valor calculado

---

<!-- fit -->
# Retorno e Tipo `bool`

Funções de verificação costumam retornar `bool`:

- `true` para condição satisfeita
- `false` caso contrário

---

<!-- fit -->
# Exemplo 4

Crie uma função que:

- receba um inteiro positivo `n`
- verifique se `n` é primo
- retorne `true` ou `false`

---

<!-- fit -->
# Exemplo 5

Um número `p` é primo de Sophie Germain quando:

- `p` é primo
- `2p + 1` também é primo

Crie uma função para verificar essa propriedade.

---

<!-- fit -->
# Escopo Local

Variáveis declaradas dentro da função:

- existem apenas durante aquela execução
- não podem ser acessadas fora da função

---

<!-- fit -->
# Exemplo 6

Crie uma função que:

- receba um valor inteiro
- calcule o quadrado em uma variável local
- retorne o resultado

---

<!-- fit -->
# Chamada de Função

Uma função pode ser chamada:

- dentro do `main`
- dentro de outra função

Também pode ser usada em expressões, desde que retorne valor compatível.

---

<!-- fit -->
# Exemplo 7

Crie duas funções:

- `quadrado(n)` que retorna `n * n`
- `somaQuadrados(a, b)` que usa `quadrado` internamente

---

<!-- fit -->
# Parâmetro com Valor Padrão

Em C++, podemos declarar:

```cpp
void nome(int x = 1)
```

Quando nenhum argumento é informado, o padrão é usado.

---

<!-- fit -->
# Exemplo 8

Crie um procedimento para tabuada:

- recebe `n` como argumento
- usa `1` como padrão se nenhum valor for informado

---

<!-- fit -->
# Exemplo 9

Crie um procedimento que trate:

$$
ax^2 + bx + c = 0
$$

O procedimento deve:

- analisar o discriminante
- usar:

$$
\Delta = b^2 - 4ac
$$

- indicar se há raízes reais
- calcular as raízes quando existirem

---

# Exemplo 10

Crie um módulo para processamento de notas com:

- uma função para calcular média de um aluno
- uma função para classificar o aluno por código (`1`, `2`, `3`)
- um procedimento para mostrar o resultado final

---

<!-- fit -->
# Boas Práticas

- nomes claros para funções e parâmetros
- cada função com responsabilidade única
- evitar duplicação de código
- separar entrada, processamento e saída

---

<!-- fit -->
# Exercício 1

Apresente uma função que:

- receba 4 valores reais
- calcule e retorne a média aritmética

---

<!-- fit -->
# Exercício 2

Apresente um procedimento que:

- receba 3 valores reais
- mostre o maior e o menor valor informado

---

<!-- fit -->
# Exercício 3

Um número é perfeito quando é igual à soma de seus divisores positivos próprios.

Exemplo:

- `6 = 1 + 2 + 3`

Apresente:

1. uma função que verifica se um inteiro é perfeito
2. uma função que mostra os números perfeitos de `2` até `n`

---

<!-- fit -->
# Exercício 4

Apresente uma função que:

- receba um inteiro `n`
- retorne o `n`-ésimo termo da sequência de Fibonacci

Sequência:

`0, 1, 1, 2, 3, 5, 8, 13, ...`

---

<!-- fit -->
# Fechamento

Nesta aula:

- vimos funções e procedimentos
- trabalhamos parâmetros, retorno, escopo e valor padrão
- aplicamos modularização em problemas maiores

Próximo passo:

- resolver problemas completos com funções
