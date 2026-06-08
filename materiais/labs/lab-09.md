---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Cadeias de Caracteres

## Laboratório 09 - Prática da Aula 11

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Conversões com Caracteres

Leia um caractere.

Mostre:

- o caractere lido;
- seu código ASCII;
- o próximo caractere da tabela ASCII.

Depois, leia um número inteiro e mostre o caractere correspondente.

---

<!-- fit -->

# Exercício 2 - Análise de Palavra

Leia uma palavra em um array de `char`.

Usando `strlen`, mostre:

- o tamanho da palavra;
- a primeira letra;
- a última letra.

Depois, mostre cada caractere da palavra e seu código ASCII.

---

<!-- fit -->

# Exercício 3 - Cópia e Alteração

Leia uma palavra.

Copie essa palavra para outro array usando `strcpy`.

Depois, altere o primeiro caractere da cópia para `*`.

Mostre:

- a palavra original;
- a palavra copiada e alterada.

---

<!-- fit -->

# Exercício 4 - Nome Completo

Leia o primeiro nome e o sobrenome de uma pessoa.

Monte o nome completo em outro array no formato:

```text
primeiro sobrenome
```

Use `strcpy` e `strcat`.

O array do nome completo deve ter espaço suficiente para o resultado.

---

<!-- fit -->

# Exercício 5 - Palavra Secreta

Cadastre uma palavra secreta.

Depois, leia uma tentativa.

Use `strcmp` para verificar se a tentativa é igual à palavra secreta.

Ao final, informe se o usuário acertou ou errou.

---

<!-- fit -->

# Exercício 6 - Lista de Palavras

Leia `n` palavras e armazene-as em uma matriz de `char`.

Depois, mostre:

- todas as palavras lidas;
- o tamanho de cada palavra;
- a maior palavra da lista.

Use `strlen` para comparar os tamanhos.

---

<!-- fit -->

# Exercício 7 - Frase com Espaços

Leia um número inteiro representando a matrícula de um aluno.

Depois, leia uma frase curta usando `cin.getline`.

Use `cin.ignore()` depois da leitura da matrícula.

Mostre:

- a matrícula;
- a frase;
- a quantidade de caracteres da frase;
- quantos espaços aparecem na frase.

---

<!-- fit -->

# Exercício 8 - Matriz de Caracteres

Leia uma matriz de caracteres com `m` linhas e `n` colunas.

Depois, leia um caractere de busca.

Mostre:

- a matriz lida;
- quantas vezes o caractere aparece na matriz inteira.

Este exercício mistura cadeias de caracteres com o percurso de matrizes.
