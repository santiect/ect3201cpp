---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Tipos Estruturados (`struct`)

## Laboratório 10 - Prática da Aula 12

ECT3201 - Linguagem de Programação (C++)
Prof. Éverton Santi

---

<!-- fit -->

# Exercício 1 - Registro de Consulta

Crie uma `struct` chamada `Consulta` com:

- código;
- nome do paciente;
- temperatura.

Leia os dados de uma consulta e mostre todos os campos cadastrados.

---

<!-- fit -->

# Exercício 2 - Custo de Viagem

Crie uma `struct` chamada `Viagem` com:

- destino;
- distância em quilômetros;
- consumo médio em km/l;
- preço do litro do combustível.

Leia os dados de uma viagem e mostre o custo estimado do combustível.

Use:

```text
custo = distância / consumo_médio * preço_litro
```

---

<!-- fit -->

# Exercício 3 - Sessão Infantil

Crie uma `struct` chamada `Filme` com:

- título;
- duração em minutos;
- classificação indicativa.

Implemente uma função que receba um `Filme` e retorne `true` se ele puder ser recomendado para uma sessão infantil e `false` caso contrário.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 3 - Sessão Infantil (continuação)

Reutilize a mesma `struct Filme`.

Considere adequado para sessão infantil o filme com:

- classificação indicativa menor ou igual a `10`; e
- duração menor ou igual a `120`.

---

<!-- fit -->

# Exercício 4 - Tempos de Atletas

Leia `n` atletas em um array de `struct`.

Para cada atleta, leia:

- nome;
- idade;
- tempo em segundos.

Ao final, mostre:

- o menor tempo;
- o maior tempo;
- a média dos tempos.

---

<!-- fit -->

# Exercício 5 - Busca de Contato

Leia `n` contatos em um array de `struct`.

Cada contato deve possuir:

- nome;
- telefone;
- idade.

Depois, leia um nome de busca.

Crie uma função que receba o array e o nome procurado, retornando:

- o índice do contato encontrado; ou
- `-1`, se o nome não existir.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 5 - Busca de Contato (continuação)

Reutilize o mesmo array de contatos.

Use `strcmp` para comparar os nomes.

Se o contato for encontrado, mostre todos os seus dados.

---

<!-- fit -->

# Exercício 6 - Leitura de Sensor

Crie uma `struct` chamada `Sensor` com:

- identificador;
- descrição;
- valor da leitura;
- limite de alerta.

Crie um procedimento que receba um sensor por referência e atualize sua leitura.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 6 - Leitura de Sensor (continuação)

Reutilize a mesma `struct Sensor`.

No programa principal:

- leia os dados de um sensor;
- leia um novo valor de leitura;
- informe se o sensor estava em alerta antes da atualização;
- atualize a leitura;
- informe se o sensor ficou em alerta depois da atualização.

---

<!-- fit -->

# Exercício 7 - Classificação de Equipes

Crie uma `struct` chamada `Equipe` com:

- nome;
- vitórias;
- empates;
- derrotas;
- gols marcados.

Leia `n` equipes em um array.

Este exercício continua no próximo slide.

---

<!-- fit -->
# Exercício 7 - Classificação de Equipes (continuação)

Reutilize o mesmo array de equipes.

Depois:

- calcule os pontos de cada equipe usando a regra
  `3` pontos por vitória e `1` por empate;
- mostre todas as equipes com seus pontos;
- encontre a equipe com mais pontos;
- ordene as equipes em ordem decrescente de pontos.

Se duas equipes tiverem a mesma pontuação, elas podem permanecer em qualquer ordem entre si.
