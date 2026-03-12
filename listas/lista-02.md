---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Operadores Lógicos e Relacionais e Comandos de Seleção

## Lista 02 - Exercícios da Aula 02

ECT3201 - Linguagem de Programação (C++)

---

<!-- fit -->

# Exercício 1 - Nível de Combustível

Crie um programa que:

1. Leia o nível de combustível em porcentagem (`0` a `100`)
2. Mostre `"Nivel critico"` quando o nível for igual ou inferior a 15%

---

<!-- fit -->

# Exercício 2 - Faixa de Velocidade

Crie um programa que:

1. Leia a velocidade de um carro (km/h)
2. Mostre `"Acima do limite"` quando a velocidade estiver acima de 80 km/h

---

<!-- fit -->

# Exercício 3 - Número Positivo

Crie um programa que:

1. Leia um número inteiro
2. Mostre `"Positivo"` se o número for maior ou igual a zero
3. Mostre `"Negativo"` caso contrário

---

<!-- fit -->

# Exercício 4 - Entrada com Documento

Crie um programa que:

1. Leia a idade de uma pessoa
2. Leia se ela apresentou documento (`1` para sim, `0` para não)
3. Mostre `"Entrada permitida"` se:
- a pessoa tiver pelo menos 16 anos e apresentar documento
4. Mostre `"Entrada negada"` nos demais casos

---

<!-- fit -->

# Exercício 5 - Verificação de Intervalo

Crie um programa que:

1. Leia um valor inteiro `x`
2. Verifique se `x` está no intervalo de 10 a 20 (inclusive)
3. Mostre `"Dentro"` ou `"Fora"`

---

<!-- fit -->

# Exercício 6 - Login Básico

Crie um programa que:

1. Leia `usuario_correto` (`1` ou `0`)
2. Leia `senha_correta` (`1` ou `0`)
3. Mostre `"Login realizado"` se ambos forem verdadeiros
4. Mostre `"Falha no login"` caso contrário

---

<!-- fit -->

# Exercício 7 - Classificação de Desempenho

Crie um programa que:

1. Leia um índice de desempenho (`0` a `100`)
2. Mostre:
- `"Alto"` para índices a partir de 80
- `"Medio"` para índices de 50 até 79
- `"Baixo"` caso contrário

---

<!-- fit -->

# Exercício 8 - Situação de Temperatura

Crie um programa que:

1. Leia a temperatura em graus Celsius
2. Classifique:
- `"Frio"` para temperaturas abaixo de 18°C
- `"Agradavel"` para temperaturas de 18°C até 30°C
- `"Quente"` para temperaturas acima de 30°C

---

<!-- fit -->

# Exercício 9 - Benefício no Transporte

Crie um programa que leia:

1. `idade`
2. `estudante` (`1` ou `0`)
3. `renda_baixa` (`1` ou `0`)

Classifique:

1. `"Passe livre"` para idosos ou para estudantes de baixa renda
2. `"Meia tarifa"` para estudantes que não se enquadram em passe livre
3. `"Tarifa integral"` nos demais casos

---

<!-- fit -->

# Exercício 10 - Elegibilidade de Bolsa

Crie um programa que leia:

1. `media`
2. `frequencia`
3. `vulnerabilidade_social` (`1` ou `0`)

Classifique:

1. `"Bolsa integral"` para média alta e frequência mínima de 85%
2. `"Bolsa parcial"` se:
- média pelo menos 7,0 e frequência mínima de 75%, ou
- vulnerabilidade social, média pelo menos 6,0 e frequência mínima de 80%
3. `"Sem bolsa"` nos demais casos

---

<!-- fit -->

# Desafio Extra - Triagem em Clínica

Uma clínica deseja priorizar atendimentos.

Crie um programa que leia:

1. `idade`
2. `febre_alta` (`1` ou `0`)
3. `dor_intensa` (`1` ou `0`)
4. `doenca_cronica` (`1` ou `0`)

Classifique:

1. `"Prioridade maxima"` para casos com febre alta combinada com dor intensa ou doença crônica
2. `"Prioridade moderada"` para idosos com doença crônica ou pacientes com dor intensa
3. `"Atendimento normal"` nos demais casos
