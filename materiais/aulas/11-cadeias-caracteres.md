---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Cadeias de Caracteres

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# 66 111 97 32 116 97 114 100 101 33

---

<!-- fit -->
# Boa tarde!

Os valores do slide anterior são números inteiros.

Cada número representa um caractere da tabela ASCII.

| Caractere | Código decimal |
| --- | ---: |
| `B` | `66` |
| `o` | `111` |
| `a` | `97` |
| espaço | `32` |
| `t` | `116` |
| `r` | `114` |
| `d` | `100` |
| `e` | `101` |
| `!` | `33` |

---

<!-- fit -->
# Caracteres São Números

Em C++, um valor do tipo `char` guarda um caractere.

Mas internamente esse caractere é representado por um número.

O símbolo que vemos na tela é uma interpretação desse número.

Exemplos:

- `'A'` corresponde ao valor `65`
- `'B'` corresponde ao valor `66`
- `'a'` corresponde ao valor `97`
- `'0'` corresponde ao valor `48`

---

<!-- fit -->
# Exemplo 1

Teste conversões entre `char` e `int`.

Leia ou crie alguns caracteres e mostre:

- o caractere;
- o valor inteiro correspondente;
- o resultado de converter um inteiro para `char`.

Compare letras maiúsculas, letras minúsculas, dígitos e símbolos.

---

<!-- fit -->
# Tabela ASCII

A tabela ASCII associa números a caracteres.

Nem todos os valores representam símbolos visíveis.

Alguns valores representam comandos de controle, como quebra de linha.

Nesta aula, vamos focar nos caracteres imprimíveis.

---

<!-- fit -->
# Exemplo 2

Escreva um programa para imprimir parte da tabela ASCII.

Para cada valor inteiro entre `32` e `126`, mostre:

- o número inteiro;
- o caractere correspondente.

Esse intervalo contém os principais caracteres visíveis.

---

<!-- fit -->
# Cadeias de Caracteres

Uma cadeia de caracteres é uma sequência de caracteres.

Em C++, podemos representar uma cadeia usando um array de `char`.

Exemplo:

```cpp
char nome[50];
```

Esse array pode guardar uma sequência de caracteres.

Nesta aula, usaremos arrays alocados estaticamente, com tamanho definido no código.

---

<!-- fit -->
# Capacidade Fixa

Ao declarar um array de `char`, escolhemos uma capacidade máxima.

Exemplo:

```cpp
char palavra[30];
```

Esse array possui 30 posições.

A palavra armazenada pode usar menos posições, mas não deve ultrapassar essa capacidade.

---

<!-- fit -->
# O Caractere Final

Strings em arrays de `char` terminam com o caractere nulo.

Esse caractere é escrito como:

```cpp
'\0'
```

Ele marca onde a cadeia termina.

Sem esse marcador, o programa não sabe onde a string acaba.

---

<!-- fit -->
# Espaço Necessário

O array precisa ter espaço para os caracteres e para o `'\0'`.

Exemplo:

```text
"casa"
```

Possui 4 caracteres, mas precisa de 5 posições:

| Posição | Valor |
| ---: | --- |
| `0` | `c` |
| `1` | `a` |
| `2` | `s` |
| `3` | `a` |
| `4` | `'\0'` |

---

<!-- fit -->
# Leitura de Strings

Podemos ler uma palavra usando `cin`.

```cpp
char palavra[50];
cin >> palavra;
```

Essa leitura para no primeiro espaço.

Por isso, `cin >> palavra` lê apenas uma palavra.

---

<!-- fit -->
# Leitura com Espaços

Para ler uma frase com espaços, podemos usar `cin.getline`.

```cpp
char frase[100];
cin.getline(frase, 100);
```

O segundo argumento indica a capacidade do array.

---

<!-- fit -->
# Cuidado Após Ler Números

Quando usamos `cin >>` para ler um número, a tecla Enter pode ficar pendente na entrada.

Se depois disso usarmos `cin.getline`, essa quebra de linha pode ser lida como uma frase vazia.

Para evitar esse problema, usamos:

```cpp
cin.ignore();
```

antes do `cin.getline`.

---

<!-- fit -->
# Biblioteca `cstring`

Algumas funções prontas ajudam a trabalhar com strings em arrays de `char`.

Para usar:

```cpp
#include <cstring>
```

Nesta aula, usaremos apenas:

- `strlen`
- `strcpy`
- `strcat`
- `strcmp`

---

<!-- fit -->
# Função `strlen`

A função `strlen` retorna o tamanho da string.

Ela conta os caracteres antes do `'\0'`.

O caractere `'\0'` não entra na contagem.

Exemplo:

```text
strlen("casa") = 4
```

---

<!-- fit -->
# Exemplo 3

Leia uma palavra e mostre seu tamanho usando `strlen`.

Depois, percorra a palavra com um laço e mostre:

- cada caractere;
- seu código ASCII;
- sua posição no array.

---

<!-- fit -->
# Função `strcpy`

A função `strcpy` copia uma string para outra.

Ideia:

```text
strcpy(destino, origem)
```

O array de destino precisa ter espaço suficiente.

---

<!-- fit -->
# Exemplo 4

Leia uma palavra.

Depois, copie essa palavra para outro array usando `strcpy`.

Mostre a palavra original e a cópia.

Altere a cópia e observe que a original continua existindo separadamente.

---

<!-- fit -->
# Função `strcat`

A função `strcat` concatena strings.

Ela acrescenta uma string ao final de outra.

Ideia:

```text
strcat(destino, complemento)
```

O destino já precisa conter uma string válida.

O array de destino precisa ter espaço para o resultado final.

---

<!-- fit -->
# Exemplo 5

Leia um primeiro nome e um sobrenome.

Monte o nome completo em outro array.

Use `strcpy` para iniciar o resultado e `strcat` para acrescentar:

- um espaço;
- o sobrenome.

---

<!-- fit -->
# Função `strcmp`

A função `strcmp` compara duas strings.

Ideia:

```text
strcmp(a, b)
```

Resultado:

- `0`: as strings são iguais;
- valor menor que `0`: `a` vem antes de `b`;
- valor maior que `0`: `a` vem depois de `b`.

---

<!-- fit -->
# Ordem Lexicográfica

`strcmp` compara caractere por caractere.

A comparação usa os códigos dos caracteres.

Por isso:

- letras maiúsculas e minúsculas são diferentes;
- `"Ana"` e `"ana"` não são iguais;
- `"Casa"` pode vir antes de `"casa"`.

---

<!-- fit -->
# Exemplo 6

Leia duas palavras.

Use `strcmp` para verificar:

- se as palavras são iguais;
- qual palavra vem primeiro em ordem lexicográfica.

Teste com letras maiúsculas e minúsculas.

---

<!-- fit -->
# Cuidados

Ao trabalhar com arrays de `char`:

- reserve espaço para o `'\0'`;
- não copie textos maiores que o destino;
- lembre que `cin >>` não lê espaços;
- use `strcmp` para comparar strings;
- não use `==` para comparar o conteúdo das strings.

---

<!-- fit -->
# Fechamento

Nesta aula vimos:

- caracteres como números;
- tabela ASCII;
- strings como arrays de `char`;
- o caractere `'\0'`;
- leitura de palavras e frases;
- `strlen`, `strcpy`, `strcat` e `strcmp`.
