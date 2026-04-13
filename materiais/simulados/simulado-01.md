# ECT3201 - Linguagem de Programação

## Simulado 01

**Nome:** ________________________________________________ 

**Matrícula:** _________________________

---

### Questão 1 - Biblioteca

Uma biblioteca cobra multa por atraso na devolução de livros.

Leia a quantidade de dias de atraso e o valor da multa por dia. Se o atraso passar de `10` dias, aplique também uma taxa fixa de suspensão.

Crie uma função que receba `dias_atraso`, `multa_por_dia` e `taxa_suspensao`, retornando o valor total a pagar.

Mostre o valor total a pagar e informe se o usuário ficou suspenso.

---

### Questão 2 - Acesso ao Laboratório

Um laboratório só pode ser usado por estudantes autorizados.

Leia idade, matrícula ativa (`1` ou `0`) e autorização do professor (`1` ou `0`). Mostre `"Permitido"` se o estudante tiver matrícula ativa e for maior de idade ou tiver autorização do professor. Caso contrário, mostre `"Negado"`. Use neste programa uma função que receba `idade`, `matricula_ativa` e `autorizacao_professor`, retornando `true` quando o acesso for permitido e `false` caso contrário.

---

### Questão 3 - Monitoramento de Sensor

Um sensor envia leituras positivas. A leitura `0` encerra o monitoramento.

Leia as leituras e ignore valores negativos. Ao final, mostre quantas leituras válidas foram recebidas, a soma, a média e quantas leituras ficaram acima de um limite fixado por você em uma constante.

Crie um procedimento que receba uma `leitura`, o `limite` e, por referência, atualize `quantidade`, `soma` e `acima_limite`.

Considere que pelo menos uma leitura válida será informada.

---

### Questão 4 - Controle de Produção

Uma máquina produz peças durante vários turnos.

Leia a quantidade de turnos. Para cada turno, leia peças produzidas e peças defeituosas. Use função para calcular o percentual de defeitos de um turno.

Crie uma função que receba `produzidas` e `defeituosas`, retornando o percentual de defeitos.

Classifique cada turno como `"Adequado"` quando o percentual de defeitos for até `5%`; caso contrário, `"Revisar"`.

Mostre também a quantidade de turnos classificados como `"Revisar"` e o maior percentual de defeitos encontrado.

---

### Questão 5 - Pedidos de uma Lanchonete

Uma lanchonete registra vários pedidos. Cada pedido possui vários itens.

Leia a quantidade de pedidos. Para cada pedido, leia a quantidade de itens. Para cada item, leia preço unitário e quantidade.

Crie uma função que receba `preco_unitario` e `quantidade`, retornando o valor do item.

Ao final de cada pedido, mostre o subtotal. Ao final do programa, mostre o maior subtotal encontrado.
