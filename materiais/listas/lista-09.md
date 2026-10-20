---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Números Aleatórios e Ordenação

## Lista 09 - Exercícios da Aula 09

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Avaliações Automáticas

Um sistema gera notas inteiras de `0` até `100` para testar relatórios.

Leia `n` e gere `n` notas aleatórias.

Depois, mostre:

- todas as notas geradas;
- a menor nota;
- a maior nota;
- a média da turma.

Funções sugeridas:

```cpp
#define MAX 100

void gerar_aleatorios(int v[MAX], int n, int inicio, int fim);
void mostrar_array(int v[MAX], int n);
int menor(int v[MAX], int n);
int maior(int v[MAX], int n);
double media(int v[MAX], int n);
```

---

<!-- fit -->

# Exercício 2 - Histograma de Idades

Leia `n` e gere `n` idades aleatórias entre `18` e `80`.

Use um array contador para registrar quantas pessoas aparecem em cada faixa:

- `18-29`
- `30-39`
- `40-49`
- `50-59`
- `60-69`
- `70-80`

Ao final, mostre uma tabela com as faixas e suas contagens.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 2 (continuação)

Funções sugeridas:

```cpp
int indice_faixa(int idade);
void contar_faixas(int idades[MAX], int n, int cont[6]);
```

`indice_faixa` devolve a posição do contador (de `0` a `5`) correspondente à idade.

---

<!-- fit -->

# Exercício 3 - Moeda Viciada

Uma moeda viciada sai `cara` em 70% dos lançamentos.

Leia `n` e simule `n` lançamentos, guardando `1` para cara e `0` para coroa.

Mostre:

- a sequência de lançamentos;
- o total de caras;
- a maior sequência de caras seguidas.

Funções sugeridas:

```cpp
bool sorteia_cara(int percentual);
int maior_sequencia(int v[MAX], int n);
```

---

<!-- fit -->

# Exercício 4 - Passeio Aleatório

Um robô parte da posição `0` de uma reta.

Leia `n`. Em cada um dos `n` passos, o robô anda `+1` ou `-1`, com a mesma chance para cada direção.

Ao final, mostre:

- a posição final do robô;
- a maior distância da origem atingida durante o passeio.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 4 (continuação)

Funções sugeridas:

```cpp
int passo_aleatorio();
void passeio(int n, int &posicao_final, int &maior_distancia);
```

`passo_aleatorio` devolve `+1` ou `-1`.

---

<!-- fit -->

# Exercício 5 - Preços em Promoção

Leia os preços de `n` produtos, com `n >= 3`.

Ordene os preços em ordem crescente usando o método bolha.

Depois, mostre:

- os preços ordenados;
- os três menores preços;
- os três maiores preços.

Funções sugeridas:

```cpp
void trocar(int &a, int &b);
void ordenar_crescente(int v[MAX], int n);
void mostrar_extremos(int v[MAX], int n, int k);
```

---

<!-- fit -->

# Exercício 6 - Orçamento de Compras

Leia os preços de `n` produtos e o valor do orçamento disponível.

Ordene os preços em ordem crescente e compre os produtos mais baratos primeiro, enquanto o total não ultrapassar o orçamento.

Mostre:

- quantos produtos foram comprados;
- o total gasto;
- o valor que sobrou do orçamento.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 6 (continuação)

Função sugerida:

```cpp
int itens_que_cabem(int preco[MAX], int n, int orcamento, int &gasto);
```

Reutilize `ordenar_crescente` do exercício anterior.

---

<!-- fit -->

# Exercício 7 - Fila Alternada

Leia `n` valores inteiros.

Ordene os valores em ordem crescente e monte um segundo array alternando os extremos:

- o menor valor;
- o maior valor;
- o segundo menor;
- o segundo maior;
- e assim por diante.

Se `n` for ímpar, o valor central é o último da sequência.

Mostre o array lido e o array alternado.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 7 (continuação)

Função sugerida:

```cpp
void intercalar_extremos(int origem[MAX], int destino[MAX], int n);
```

`origem` já deve estar ordenado em ordem crescente quando a função for chamada.

---

<!-- fit -->

# Exercício 8 - Lotes Mais Frequentes

Uma máquina produz peças com códigos de lote entre `1000` e `9999`.

Leia `n` códigos de lote.

Ordene os códigos em ordem crescente.

Percorrendo o array ordenado, descubra qual código aparece mais vezes e quantas vezes ele aparece.

Em caso de empate, mostre o menor código.

Função sugerida:

```cpp
int mais_frequente(int v[MAX], int n, int &repeticoes);
```

---

<!-- fit -->

# Exercício 9 - Intervalo Entre Alertas

Um sensor registra códigos de situação ao longo do tempo.

Leia `n` e gere `n` códigos aleatórios entre `1` e `20`.

Depois, leia o código de alerta `x`.

Mostre todas as posições em que o código `x` apareceu.

Ao final, informe a distância entre a primeira e a última ocorrência de `x`.

Se `x` aparecer menos de duas vezes, informe que não há distância a calcular.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 9 (continuação)

Funções sugeridas:

```cpp
void mostrar_posicoes(int v[MAX], int n, int x);
int maior_distancia(int v[MAX], int n, int x);
```

`maior_distancia` devolve `-1` quando `x` aparece menos de duas vezes.

---

<!-- fit -->

# Exercício 10 - Nota de Corte

Um processo seletivo avaliou `n` candidatos.

Leia `n` e o número de vagas `vagas`, com `1 <= vagas <= n`.

Gere as notas dos candidatos, entre `0` e `100`.

Ordene as notas em ordem decrescente. A nota de corte é a nota que está na posição `vagas` do ranking.

Mostre:

- o ranking de notas;
- a nota de corte;
- quantos candidatos foram aprovados, contando todos com nota maior ou igual à nota de corte.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 10 (continuação)

Funções sugeridas:

```cpp
void ordenar_decrescente(int v[MAX], int n);
int nota_de_corte(int notas[MAX], int n, int vagas);
int contar_aprovados(int notas[MAX], int n, int corte);
```

Reutilize `gerar_aleatorios` e `mostrar_array`.

---

<!-- fit -->

# Exercício 11 - Vendedores do Mês

Uma loja tem `n` vendedores numerados de `1` até `n`, com `n >= 3`.

Gere o total vendido por cada vendedor, entre `1000` e `9999`.

Ordene as vendas em ordem decrescente, mas sem perder de quem é cada venda: sempre que trocar duas vendas, troque também os números dos vendedores.

Mostre o pódio com os três primeiros colocados, indicando o número do vendedor e o valor vendido.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 11 (continuação)

Funções sugeridas:

```cpp
void ordenar_com_vendedores(int vendas[MAX], int vendedor[MAX], int n);
void mostrar_podio(int vendas[MAX], int vendedor[MAX]);
```

Use `trocar` duas vezes dentro da ordenação: uma para `vendas` e outra para `vendedor`.

---

<!-- fit -->

# Exercício 12 - Intercalação de Dois Lotes

Leia `n` e `m`.

Gere dois arrays, `a` com `n` valores e `b` com `m` valores, todos aleatórios entre `1` e `50`.

Ordene cada array em ordem crescente.

Monte um terceiro array `c`, já ordenado, com todos os valores de `a` e `b`. Para isso, percorra `a` e `b` ao mesmo tempo, copiando sempre o menor valor que ainda não foi usado. Não ordene `c` depois de montado.

Mostre `a`, `b` e `c`.

Este exercício continua no próximo slide.

---

<!-- fit -->

# Exercício 12 (continuação)

Função sugerida:

```cpp
int intercalar(int a[MAX], int na, int b[MAX], int nb, int c[MAX]);
```

A função devolve o tamanho de `c`.

Considere `n + m <= MAX`.

---

<!-- fit -->

# Desafio Extra - Baralho Embaralhado

Crie um array com os valores `1, 2, ..., n`.

Embaralhe o array: repita `n` vezes a troca entre duas posições sorteadas.

Mostre o array embaralhado.

Depois, ordene o array com o método bolha, contando quantas trocas foram feitas, e mostre o array ordenado e o número de trocas.

Funções sugeridas:

```cpp
void embaralhar(int v[MAX], int n);
int ordenar_contando_trocas(int v[MAX], int n);
```
