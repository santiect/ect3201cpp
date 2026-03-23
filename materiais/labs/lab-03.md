---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Comandos de Repetição

## Laboratório 03 - Prática da Aula 03

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Revisão

Escreva um programa que:

1. Leia a quantidade de produtos comprados
2. Leia o valor de cada produto
3. Ao final, mostre:
- o valor total da compra
- o valor médio dos produtos
- quantos produtos custaram pelo menos `100.0`

---

<!-- fit -->

# Exercício 1 - Contagem Regressiva

Crie um programa que:

1. Leia um número inteiro positivo `n`
2. Mostre a contagem regressiva de `n` até `0`

---

<!-- fit -->

# Exercício 2 - Soma dos Múltiplos de 3

Crie um programa que:

1. Leia um número inteiro positivo `n`
2. Some todos os múltiplos de `3` no intervalo de `1` até `n`
3. Mostre o valor da soma final

---

<!-- fit -->

# Exercício 3 - Validação de Opção

Crie um programa que:

1. Leia uma opção inteira
2. Continue lendo enquanto a opção não estiver no intervalo de `1` até `4`
3. Conte quantas tentativas inválidas foram digitadas
4. Ao final, mostre:
- `"Opcao valida"`
- quantidade de tentativas inválidas

---

<!-- fit -->

# Exercício 4 - Maior Valor

Crie um programa que:

1. Leia `8` números reais
2. Determine o maior valor lido
3. Mostre o maior valor ao final

---

<!-- fit -->

# Exercício 5 - Tentativas de Login

Crie um programa que:

1. Leia tentativas de senha inteira
2. Considere a senha correta igual a `2025`
3. Repita a leitura até que a senha correta seja digitada
4. Ao final, mostre a quantidade de tentativas realizadas

---

<!-- fit -->

# Exercício 6 - Potência por Multiplicações

Crie um programa que:

1. Leia dois inteiros positivos `base` e `expoente`
2. Calcule:

$$
base^{expoente}
$$

3. Use apenas multiplicações sucessivas
4. Mostre o resultado final

---

<!-- fit -->

# Exercício 7 - Triângulo Crescente

Crie um programa que:

1. Leia um inteiro positivo `n`
2. Mostre um triângulo com `n` linhas usando o caractere `*`
3. A primeira linha deve ter `1` caractere, a segunda `2`, e assim por diante

Exemplo `n=4`

```txt
1
22
333
4444
```

Esse exercício envolve **repetição aninhada**.

---

<!-- fit -->

# Desafio 1 - Pesquisa de Satisfação

Crie um programa que:

1. Leia respostas de clientes para uma pesquisa de satisfação
2. Considere as opções:
- `1` para `"Ruim"`
- `2` para `"Regular"`
- `3` para `"Bom"`
- `4` para `"Otimo"`
- `0` para encerrar a pesquisa
3. Continue lendo respostas até que o valor `0` seja digitado
4. Ao final, mostre:
- quantidade total de respostas válidas
- quantidade de respostas em cada categoria
- percentual de respostas `"Bom"` e `"Otimo"` juntos

---
<!-- fit -->

# Desafio 2 - Fatoração

Decomponha um número inteiro positivo em fatores primos.