---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Tipos Estruturados (`struct`)

**ECT3201 - Linguagem de Programação**

Prof. Éverton Santi

---

<!-- fit -->
# Motivação

Muitos programas precisam guardar informações diferentes sobre a mesma entidade.

Exemplos:

- um aluno tem matrícula, nome e nota;
- um produto tem código, descrição e preço;
- um livro tem título, autor e ano.

Usar várias variáveis soltas pode dificultar a organização do programa.

---

<!-- fit -->
# O Que é uma `struct`

Uma `struct` permite agrupar dados de tipos possivelmente diferentes em uma única estrutura.

Em vez de várias variáveis separadas, usamos um único registro com campos relacionados.

Modelo:

```cpp
struct Aluno {
    int matricula;
    float nota;
    bool aprovado;
};
```

Cada item interno é chamado de campo.

---

<!-- fit -->
# Acesso aos Campos

Usamos o operador `.` para acessar cada campo.

Código:

```cpp
a1.matricula = 202501;
a1.nota = 8.5;
a1.aprovado = true;
```

---

<!-- fit -->
# Campos de Tipos Diferentes

Uma `struct` pode combinar:

- inteiros;
- reais;
- lógicos;
- caracteres;
- arrays.

Isso é útil quando os dados do problema não são homogêneos.

---

<!-- fit -->
# `struct` com Cadeias de Caracteres

Também podemos guardar texto em arrays de `char`.

Modelo:

```cpp
struct Produto {
    int codigo;
    char descricao[40];
    float preco;
    int quantidade;
};
```

---

<!-- fit -->
# Exemplo 1

Crie uma `struct` chamada `Aluno` com:

- matrícula;
- nota final;
- frequência.

Leia os dados de um aluno e mostre todos os campos.

---

<!-- fit -->
# Cálculos com Campos

Os campos podem ser usados em expressões como qualquer outra variável.

Código:

```cpp
float total = produto.preco * produto.quantidade;
```

A `struct` organiza os dados, mas os cálculos continuam usando operações já conhecidas.

---

<!-- fit -->
# Exemplo 2

Crie uma `struct` chamada `Produto` com:

- código;
- preço unitário;
- quantidade em estoque.

Leia um produto e mostre o valor total em estoque.

---

<!-- fit -->
# Exemplo 3

Crie uma `struct` chamada `Livro` com:

- título;
- autor;
- ano.

Leia os dados de um livro e mostre:

- título;
- autor;
- idade do livro em relação ao ano atual.

---

<!-- fit -->
# Array de `struct`

Se quisermos guardar vários registros do mesmo tipo, podemos usar um array de `struct`.

Exemplo:

```cpp
Produto itens[100];
```

Cada posição do array armazena um produto completo.

---

<!-- fit -->
# Exemplo 4

Crie um programa que leia `n` produtos em um array de `struct`.

Para cada produto, leia:

- código;
- preço;
- quantidade.

Ao final, mostre:

- todos os produtos cadastrados;
- o valor total de cada produto;
- o código do produto com maior valor em estoque.

---

<!-- fit -->
# `struct` e Funções

Uma função pode receber uma `struct` como parâmetro.

Isso permite separar:

- leitura;
- impressão;
- cálculos;
- verificações.

---

<!-- fit -->
# Protótipos Possíveis

```cpp
float calcular_total(Produto p);
bool aprovado(Aluno a);
void imprimir_livro(Livro l);
```

Cada função usa os campos do registro recebido.

---

<!-- fit -->
# Exemplo 5

Crie uma função que receba um `Aluno` e retorne `true` se ele estiver aprovado e `false` caso contrário.

Considere aprovado o aluno com:

- nota maior ou igual a `7.0`;
- frequência maior ou igual a `75`.

---

<!-- fit -->
# Passagem por Referência

Quando queremos alterar o registro original, usamos referência.

Exemplo:

```cpp
void reajustar_preco(Produto &p, float percentual);
```

Nesse caso, as alterações feitas em `p` afetam a variável usada na chamada.

---

<!-- fit -->
# Exemplo 6

Crie um procedimento que receba um `Produto` por referência e um percentual de reajuste.

O procedimento deve atualizar o preço do produto.

Depois, mostre o preço antes e depois do reajuste.

---

<!-- fit -->
# Exemplo 7

Reutilize um array de `Produto`.

Organize o programa com funções para:

- calcular o valor total em estoque de um produto;
- buscar um produto pelo código;
- atualizar a quantidade de um produto por referência.
- ordenar os produtos em ordem crescente de código.

Este exemplo continua no próximo slide.

---

<!-- fit -->
# Exemplo 7 (continuação)

Reutilize o mesmo array de `Produto`.

Ao final, o programa deve:

- mostrar o valor total de cada produto;
- localizar um produto informado pelo usuário;
- atualizar a quantidade desse produto;
- ordenar o array de produtos pelo código;
- mostrar os dados do produto após a atualização.

---

<!-- fit -->
# Síntese

Nesta aula, vimos:

- como declarar uma `struct`;
- como acessar campos com `.`;
- como usar arrays de `struct`;
- como passar registros para funções;
- como alterar registros por referência.

Agora podemos construir programas mais organizados para representar dados do mundo real.
