---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Cadeias de Caracteres

## Lista 11 - Exercícios da Aula 11

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Codificação de Frase

Leia uma frase usando `cin.getline`.

Mostre o código ASCII decimal de cada caractere da frase.

Ao final, mostre:

- a quantidade de caracteres;
- a soma dos códigos ASCII;
- o maior código encontrado.

---

<!-- fit -->

# Exercício 2 - Perfil da Frase

Leia uma frase usando `cin.getline`.

Mostre quantos caracteres da frase são:

- letras maiúsculas;
- letras minúsculas;
- dígitos;
- espaços;
- outros símbolos.

Use os códigos ASCII para fazer as classificações.

---

<!-- fit -->

# Exercício 3 - Cópia em Maiúsculas

Leia uma palavra.

Crie outra string contendo uma cópia da palavra com todas as letras minúsculas convertidas para maiúsculas.

Caracteres que não forem letras minúsculas devem ser copiados sem alteração.

Use `strlen` para controlar o percurso.

---

<!-- fit -->

# Exercício 4 - Iniciais do Nome

Leia uma linha contendo o nome completo de uma pessoa.

Crie uma string contendo apenas as iniciais do nome.

Exemplo:

```text
Nome: Maria Clara Souza
Iniciais: MCS
```

---

<!-- fit -->

# Exercício 5 - Ocorrências de Palavras

Leia `n` palavras e armazene-as em uma matriz de `char`.

Depois, leia uma palavra de referência.

Use `strcmp` para contar quantas vezes a palavra de referência aparece na lista.

Ao final, mostre a quantidade de ocorrências.

---

<!-- fit -->

# Exercício 6 - Estatísticas de Palavras

Leia `n` palavras e armazene-as em uma matriz de `char`.

Usando `strlen`, encontre:

- a palavra mais curta;
- a palavra mais longa;
- o tamanho médio das palavras.

Se houver empate, mostre uma das palavras empatadas.

---

<!-- fit -->

# Exercício 7 - Contagem por Linha

Leia uma matriz de caracteres com `m` linhas e `n` colunas.

Depois, leia um caractere `x`.

Mostre quantas vezes `x` aparece:

- em cada linha;
- na matriz inteira.

---

<!-- fit -->

# Exercício 8 - Montagem de Código

Leia:

- um número inteiro de matrícula;
- o primeiro nome de uma pessoa;
- o sobrenome;

Se usar `cin.getline` depois da matrícula, lembre de usar `cin.ignore()`.

Monte uma string no formato:

```text
primeiro.sobrenome
```

Depois, mostre a matrícula e o código criado.

---

<!-- fit -->

# Exercício 9 - Palíndromo

Leia uma palavra.

Verifique se ela é um palíndromo.

Uma palavra é palíndromo quando pode ser lida da mesma forma da esquerda para a direita e da direita para a esquerda.

Exemplos:

- `arara`
- `radar`

---

<!-- fit -->

# Exercício 10 - Ordenação por Tamanho

Leia `n` palavras e armazene-as em uma matriz de `char`.

Ordene as palavras em ordem crescente de tamanho.

Use:

- `strlen` para comparar os tamanhos;
- `strcpy` para trocar palavras de posição.

---

<!-- fit -->

# Exercício 11 - Relatório de Comentários

Leia `n` comentários, um por linha.

Cada comentário deve ser armazenado em uma linha de uma matriz de `char`.

Para cada comentário, mostre:

- o texto;
- seu tamanho;
- a quantidade de espaços.

Use `cin.ignore()` antes da primeira leitura com `cin.getline`, se antes dela houver leitura numérica.

---

<!-- fit -->

# Desafio Extra - Mensagem Compactada

Leia uma frase.

Crie outra string removendo todos os espaços da frase.

Depois, mostre:

- a frase original;
- a frase sem espaços;
- a diferença entre os tamanhos das duas strings.
