---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Operadores Lógicos e Relacionais e Comandos de Seleção

**ECT3201 – Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Todos os programas executam sempre o mesmo caminho?

Em muitos casos, a resposta é **não**.

Um programa pode:

- comparar valores
- tomar decisões
- executar comandos diferentes

---

<!-- fit -->
# Tipo `bool`

O tipo `bool` é usado para representar valores lógicos:

- `true`
- `false`

Ele também pode ser visto numericamente como:

- `false` equivale a `0`
- `true` equivale a `1`

Esse tipo é útil para representar condições.

---

<!-- fit -->
# Exemplos com `bool`

```cpp
bool aprovado = true;
bool senha_correta = false;
bool pode_entrar = true;
```

Em geral, variáveis `bool` representam:

- respostas do tipo sim ou não
- resultados de comparações
- condições para executar comandos

---

<!-- fit -->
# Operadores Relacionais

| Operador | Significado      |
| -------- | ---------------- |
| `>`      | maior que        |
| `<`      | menor que        |
| `>=`     | maior ou igual a |
| `<=`     | menor ou igual a |
| `==`     | igual a          |
| `!=`     | diferente de     |

O resultado de uma comparação é sempre `true` ou `false`.

---

<!-- fit -->
# Expressões Relacionais

Exemplos:

```cpp
idade >= 18
nota < 7.0
media == 10
numero != 0
```

- Cada expressão acima produz um valor lógico.

---

<!-- fit -->
# Exercício

Considere:

```cpp
int a = 5, b = 8, c = 5;
```

Determine o valor lógico de:

```cpp
a < b
a == c
b <= c
a != b
```

---

<!-- fit -->
# Operadores Lógicos

| Operador | Significado |
| -------- | ----------- |
| `&&`     | AND         |
| `\|\|`   | OR          |
| `!`      | NOT         |

- Esses operadores combinam ou alteram valores lógicos.

---

<!-- fit -->
# Tabela-Verdade do `&&`

| A       | B       | A `&&` B |
| ------- | ------- | -------- |
| `true`  | `true`  | `true`   |
| `true`  | `false` | `false`  |
| `false` | `true`  | `false`  |
| `false` | `false` | `false`  |

- O resultado só é `true` quando as duas condições são verdadeiras.

---

<!-- fit -->
# Exercício

Determine o valor lógico de:

```cpp
true && true
true && false
false && true
false && false
```

---

<!-- fit -->
# Tabela-Verdade do `||`

| A       | B       | A `\|\|` B |
| ------- | ------- | -------- |
| `true`  | `true`  | `true`   |
| `true`  | `false` | `true`   |
| `false` | `true`  | `true`   |
| `false` | `false` | `false`  |

- O resultado só é `false` quando as duas condições são falsas.

---

<!-- fit -->
# Exercício

Determine o valor lógico de:

```cpp
true || true
true || false
false || true
false || false
```

---

<!-- fit -->
# Tabela-Verdade do `!`

| A       | `!`A    |
| ------- | ------- |
| `true`  | `false` |
| `false` | `true`  |

- O operador `!` inverte o valor lógico da expressão.

---

<!-- fit -->
# Combinando Condições

Exemplos:

```cpp
idade >= 18 && idade <= 65
media >= 7.0 || nota_final >= 5.0
!(numero == 0)
```

- Nesses casos, estamos formando expressões maiores a partir de comparações.

---

<!-- fit -->
# Exercício

Considere:

```cpp
int idade = 20;
double media = 6.5;
```

Determine o valor lógico de:

```cpp
idade >= 18 && media >= 7.0
idade >= 18 || media >= 7.0
!(media >= 7.0)
```

---

<!-- fit -->
# Avaliando Expressões

- Comparações produzem `true` ou `false`.
- Operadores lógicos combinam esses resultados.
- Use parênteses para deixar a expressão mais clara.

Exemplo:

```cpp
(idade >= 18) && (idade <= 65)
```

---

<!-- fit -->
# Para Que Serve Seleção?

Usamos seleção quando:

- o programa precisa escolher um caminho entre várias possibilidades
- a ação depende de uma condição

Exemplo de problema:

- verificar se um aluno foi aprovado, ficou em recuperação ou foi reprovado com base na média

---

<!-- fit -->
# Comando `if`

Use `if` quando:

- você quer executar um bloco apenas se a condição for verdadeira
- a condição é uma expressão avaliada pelo seu valor booleano calculado (`true` ou `false`)

Sintaxe básica:

```cpp
if (condicao) {
    // comandos
}
```

---

<!-- fit -->
# Exemplo com `if`

- leia a idade de uma pessoa
- use `if` para verificar se ela é maior de idade
- se `idade >= 18`, mostre: `"Maior de idade"`

---

<!-- fit -->
# Comando `if-else`

Use `if-else` quando:

- você precisa escolher entre dois caminhos

Sintaxe básica:

```cpp
if (condicao) {
    // comandos se verdadeiro
} else {
    // comandos se falso
}
```

---

<!-- fit -->
# Exemplo com `if-else`

- leia a média de um aluno
- use `if-else` para classificar o resultado
- se `media >= 7.0`, mostre: `"Aprovado"`
- caso contrário, mostre: `"Reprovado"`

---

<!-- fit -->
# `if-else-if` encadeado

Use essa estrutura quando:

- existem mais de duas possibilidades
- também chamada na literatura de `if-else-if ladder`

- leia a média de um aluno
- se `media >= 7.0`, mostre: `"Aprovado"`
- se `media >= 4.0` e `media < 7.0`, mostre: `"Recuperacao"`
- caso contrário, mostre: `"Reprovado"`

---

<!-- fit -->
# Exercício Integrador

Uma loja quer classificar o benefício de um cliente no momento da compra.

Faça um programa em C++ que leia:

- a `idade` do cliente
- o `valor_compra`
- se o cliente é cadastrado (`1` para sim e `0` para não)

E mostre:

- `"Desconto Maximo"` quando o cliente for cadastrado e (`valor_compra >= 200` ou `idade >= 60`)
- `"Desconto Basico"` quando o cliente for cadastrado e `valor_compra >= 100`
- `"Sem Desconto"` nos demais casos
