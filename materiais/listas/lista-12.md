---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Tipos Estruturados (`struct`)

## Lista 12 - Exercícios da Aula 12

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Arrecadação de Viagem

Crie uma `struct` chamada `Passagem` com:

- cidade de destino;
- preço da passagem;
- quantidade de passageiros.

Leia os dados de uma viagem e mostre:

- o destino;
- a arrecadação total.

---

<!-- fit -->

# Exercício 2 - Situação de Sensor

Crie uma `struct` chamada `Sensor` com:

- identificador;
- descrição;
- leitura atual;
- limite de alerta.

Leia um sensor e mostre:

- identificador;
- descrição;
- se ele está em situação normal ou de alerta.

---

<!-- fit -->

# Exercício 3 - Resumo de Cidade

Crie uma `struct` chamada `Cidade` com:

- nome;
- população;
- temperatura média.

Leia os dados de uma cidade e mostre:

- o nome;
- a população informada;
- a classificação da temperatura.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 3 - Resumo de Cidade (continuação)

Reutilize a mesma `struct Cidade`.

Use a regra:

- `Fria`: temperatura menor que `18`;
- `Amena`: temperatura de `18` até `28`;
- `Quente`: temperatura maior que `28`.

---

<!-- fit -->

# Exercício 4 - Partida de Futebol

Crie uma `struct` chamada `Partida` com:

- nome do time A;
- nome do time B;
- gols do time A;
- gols do time B.

Leia os dados da partida e informe:

- o placar final;
- o vencedor; ou
- se houve empate.

---

<!-- fit -->

# Exercício 5 - Velocidade de Entregas

Leia `n` entregas em um array de `struct`.

Cada entrega deve possuir:

- código;
- distância em quilômetros;
- tempo em minutos.

Crie uma função para calcular a velocidade média de uma entrega.

Ao final, mostre:

- a velocidade média de cada entrega;
- a maior velocidade média;
- o código da entrega mais rápida.

---

<!-- fit -->

# Exercício 6 - Estoque Mínimo

Leia `n` medicamentos em um array.

Cada medicamento deve possuir:

- nome;
- quantidade atual;
- quantidade mínima;
- preço unitário.

Mostre:

- quantos medicamentos estão abaixo da quantidade mínima;
- os nomes desses medicamentos;
- o valor total necessário para repor apenas os itens abaixo do mínimo.

---

<!-- fit -->

# Exercício 7 - Busca por Título

Leia `n` filmes em um array de `struct`.

Cada filme deve possuir:

- título;
- duração;
- classificação indicativa.

Depois, leia um título de busca.

Use `strcmp` para procurar o filme informado.

Se ele existir, mostre seus dados.

Caso contrário, informe que o filme não foi encontrado.

---

<!-- fit -->

# Exercício 8 - Ordenação por Nota

Leia `n` candidatos em um array.

Cada candidato deve possuir:

- nome;
- nota na prova;
- nota na redação.

Considere como nota final a média aritmética entre prova e redação.

Ordene os candidatos em ordem decrescente de nota final.

Depois, mostre o ranking final.

---

<!-- fit -->

# Exercício 9 - Ranking de Atletas

Leia `n` atletas em um array.

Cada atleta deve possuir:

- nome;
- idade;
- tempo em segundos.

Ordene os atletas em ordem crescente de tempo.

Depois, mostre:

- a classificação final;
- o atleta mais rápido;
- a diferença de tempo entre o primeiro e o último colocado.

---

<!-- fit -->

# Exercício 10 - Ocupação de Cursos

Leia `n` cursos em um array.

Cada curso deve possuir:

- nome;
- carga horária;
- quantidade de vagas;
- quantidade de matriculados.

Mostre:

- o curso com maior carga horária;
- quantos cursos ainda possuem vagas;
- a taxa de ocupação de cada curso.

---

<!-- fit -->

# Exercício 11 - Contas de Energia

Leia `n` contas em um array.

Cada conta deve possuir:

- número da conta;
- nome do cliente;
- consumo em kWh;
- tarifa por kWh.

Crie funções para:

- calcular o valor total de uma conta;
- calcular o total faturado para um cliente informado.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 11 - Contas de Energia (continuação)

Reutilize o mesmo array de contas.

Depois, leia o nome de um cliente e mostre quanto ele pagou ao todo.

Use `strcmp` para comparar os nomes.

---

<!-- fit -->

# Exercício 12 - Lista de Pacientes

Crie uma `struct` chamada `Paciente` com:

- nome;
- idade;
- peso.

Leia `n` pacientes em um array.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 12 - Lista de Pacientes (continuação)

Reutilize o mesmo array de pacientes.

Depois:

- ordene os pacientes em ordem alfabética de nome;
- permita buscar um paciente pelo nome;
- crie um procedimento por referência para atualizar o peso de um paciente encontrado.

Ao final, mostre a lista atualizada.

---

<!-- fit -->

# Desafio Extra - Reprodução de Músicas

Crie uma `struct` chamada `Música` com:

- título;
- artista;
- duração em segundos;
- quantidade de reproduções.

Implemente um programa que:

Este desafio continua no próximo slide.

---

<!-- fit -->
# Desafio Extra - Reprodução de Músicas (continuação)

Reutilize o mesmo array de músicas.

- leia `n` músicas;
- calcule o tempo total reproduzido de cada música:
  `duração * reproduções`;
- ordene as músicas em ordem decrescente de reproduções;
- mostre a música mais reproduzida e a que gerou maior tempo total de execução.

Use funções para separar as principais tarefas do programa.
