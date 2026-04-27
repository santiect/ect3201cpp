---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Arrays Unidimensionais

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Até agora, para guardar vários valores, usamos várias variáveis:

```cpp
int n1, n2, n3, n4, n5;
```

Mas e se precisarmos armazenar:

- 10 notas?
- 100 temperaturas?
- 1000 medições?

---

<!-- fit -->
# Definição

Um **array** é um conjunto de espaços de memória:

- com o mesmo nome
- com o mesmo tipo
- organizados em posições

Cada elemento é acessado usando um **índice**.

---

<!-- fit -->
# Exemplo

Um array `c` com 6 elementos inteiros:

| Elemento | Valor |
| --- | ---: |
| `c[0]` | -45 |
| `c[1]` | 6 |
| `c[2]` | 0 |
| `c[3]` | 72 |
| `c[4]` | 1543 |
| `c[5]` | -89 |

O primeiro elemento está na posição `0`.

---

<!-- fit -->
# Índice

O índice também pode ser chamado de:

- posição
- subscrito

Ele deve ser um valor inteiro ou uma expressão inteira.

Exemplos:

```cpp
c[0]
c[i]
c[i + 1]
c[proximo_indice()]
```

---

<!-- fit -->
# Atenção aos Índices

Em C++, um array com `n` elementos possui índices:

```text
0, 1, 2, ..., n - 1
```

Exemplo:

```cpp
int v[5];
```

Índices válidos:

```text
v[0], v[1], v[2], v[3], v[4]
```

---

<!-- fit -->
# Declaração

Sintaxe geral:

```cpp
tipo nome[capacidade];
```

Onde:

- `tipo`: tipo de cada elemento
- `nome`: identificador do array
- `capacidade`: quantidade de elementos

---

<!-- fit -->
# Exemplos

```cpp
// array com 12 elementos inteiros
int c[12];

// array com 100 elementos inteiros
int b[100];

// array com 500 elementos reais
float f[500];

// array com 100 elementos lógicos
bool aprovado[100];
```

Um array é uma estrutura de dados **homogênea**.

---

<!-- fit -->
# Capacidade

A capacidade deve ser conhecida em tempo de compilação.

Uma prática comum é usar constante simbólica:

```cpp
#define MAX 100

int valores[MAX];
```

Isso facilita alterar a capacidade depois.

---

<!-- fit -->
# Tamanho em Memória

O tamanho ocupado por um array depende:

- do tipo dos elementos
- da quantidade de elementos

```cpp
int v[10];

int tamanho_v = sizeof(int) * 10;
```

Se `int` ocupar 4 bytes, `v` ocupará 40 bytes.

---

<!-- fit -->
# Posições Contíguas

Os elementos de um array ficam em posições contíguas de memória.

```cpp
int v[5];
```

Representação lógica:

| Elemento | `v[0]` | `v[1]` | `v[2]` | `v[3]` | `v[4]` |
| --- | ---: | ---: | ---: | ---: | ---: |
| Valor | 12 | 15 | 89 | 1 | 78 |

---

<!-- fit -->
# Acesso aos Elementos

Cada posição funciona como uma variável.

```cpp
int v[5];

v[0] = 10;
v[1] = 20;
v[2] = v[0] + v[1];

cout << v[2] << endl;
```

Saída:

```text
30
```

---

<!-- fit -->
# Inicialização

Podemos inicializar um array na declaração.

```cpp
int n[10] = {0};

int b[10] = {10, 20, 30, 40, 50,
             60, 70, 80, 90, 100};

float z[] = {3.0, 1.2, 3.98};
```

Em `z`, a capacidade é inferida pelo compilador.

---

<!-- fit -->
# Leitura com `for`

Arrays combinam naturalmente com repetição.

```cpp
#define MAX 10

int v[MAX];
int n;

cin >> n;

for (int i = 0; i < n; i++) {
    cin >> v[i];
}
```

Use `n <= MAX`.

---

<!-- fit -->
# Impressão com `for`

```cpp
for (int i = 0; i < n; i++) {
    cout << v[i] << endl;
}
```

Para imprimir na mesma linha:

```cpp
for (int i = 0; i < n; i++) {
    cout << v[i] << " ";
}
```

---

<!-- fit -->
# Exemplo 1

Crie um programa que declare um array com capacidade para 10 notas reais.

Leia `n` notas, com `n <= 10`.

Ao final, mostre:

- as notas informadas
- a soma
- a média
- a quantidade de notas abaixo da média

---

<!-- fit -->
# Exemplo 2

Crie um programa que leia `n` valores inteiros em um array.

Depois, mostre:

- a quantidade de números pares
- a quantidade de números ímpares

Use capacidade máxima igual a 10.

---

<!-- fit -->
# Exemplo 3

Crie um programa que leia `n` valores inteiros em um array.

Depois, imprima os valores na ordem inversa da ordem de leitura.

Use capacidade máxima igual a 10.

---

<!-- fit -->
# Exemplo 4

Crie um programa que leia `n` valores inteiros em um array.

Depois, mostre:

- o maior valor armazenado
- a posição em que o maior valor aparece

---

<!-- fit -->
# Exemplo 5

Dados dois vetores reais $u$ e $v$:

$$
u \cdot v = \sum_{i=0}^{n-1} u_i v_i
$$

Crie um programa para calcular o produto escalar de dois arrays do tipo `float` informados pelo usuário.

Os dois vetores devem possuir a mesma quantidade de elementos.

---

<!-- fit -->
# Cuidados

Em C++, o acesso fora dos limites do array não é verificado automaticamente.

```cpp
int v[5];

v[5] = 10; // erro lógico: índice inválido
```

Índices válidos:

```text
0 até 4
```

---

<!-- fit -->
# Arrays e Funções

Na chamada da função, passamos o nome do array:

```cpp
soma = somar_elementos(v, n);
```

No protótipo, usamos colchetes:

```cpp
int somar_elementos(int v[], int n);
```

---

<!-- fit -->
# Passagem para Funções

Arrays são passados automaticamente por referência.

Isso significa que a função pode alterar os elementos do array original.

Não usamos `&` no parâmetro.

---

<!-- fit -->
# Exemplo 6

Crie uma função que recebe um array de inteiros e retorna a soma de seus elementos.

```cpp
#define MAX 10

int somar_elementos(int v[], int n);
```

Chamada:

```cpp
int x[MAX] = {1, 2, 3};
int soma = somar_elementos(x, 3);
```

---

<!-- fit -->
# Exemplo 7

Crie uma função que recebe um array de inteiros e sua quantidade de elementos válidos.

A função deve imprimir os elementos do array do início para o final.

Protótipo sugerido:

```cpp
void imprimir_array(int v[], int n);
```

---

<!-- fit -->
# Exemplo 8

Crie uma função que recebe um array de inteiros e sua quantidade de elementos válidos.

A função deve receber um valor `x` e retornar quantas vezes `x` aparece no array.

Protótipo sugerido:

```cpp
int contar_ocorrencias(int v[], int n, int x);
```

---

<!-- fit -->
# Exemplo 9

Crie um procedimento que recebe:

- um array de notas do tipo `float`
- um array do tipo `bool`
- a quantidade de elementos válidos

O procedimento deve marcar `true` para notas aprovadas e `false` para notas reprovadas.

Protótipo sugerido:

```cpp
void marcar_aprovacao(float notas[], bool aprovado[], int n);
```
