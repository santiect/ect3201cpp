---
marp: true
theme: ect
paginate: true
math: katex
---

<!-- fit -->

# Operadores LÃ³gicos e Relacionais e Comandos de SeleÃ§Ã£o

## Lista 02 - ExercÃ­cios da Aula 02

ECT3201 - Linguagem de ProgramaÃ§Ã£o (C++)
Prof. Éverton Santi

---

<!-- fit -->

# ExercÃ­cio 1 - NÃ­vel de CombustÃ­vel

Crie um programa que:

1. Leia o nÃ­vel de combustÃ­vel em porcentagem (`0` a `100`)
2. Mostre `"Nivel critico"` quando o nÃ­vel for igual ou inferior a 15%

---

<!-- fit -->

# ExercÃ­cio 2 - Faixa de Velocidade

Crie um programa que:

1. Leia a velocidade de um carro (km/h)
2. Mostre `"Acima do limite"` quando a velocidade estiver acima de 80 km/h

---

<!-- fit -->

# ExercÃ­cio 3 - NÃºmero Positivo

Crie um programa que:

1. Leia um nÃºmero inteiro
2. Mostre `"Positivo"` se o nÃºmero for maior ou igual a zero
3. Mostre `"Negativo"` caso contrÃ¡rio

---

<!-- fit -->

# ExercÃ­cio 4 - Entrada com Documento

Crie um programa que:

1. Leia a idade de uma pessoa
2. Leia se ela apresentou documento (`1` para sim, `0` para nÃ£o)
3. Mostre `"Entrada permitida"` se:
- a pessoa tiver pelo menos 16 anos e apresentar documento
4. Mostre `"Entrada negada"` nos demais casos

---

<!-- fit -->

# ExercÃ­cio 5 - VerificaÃ§Ã£o de Intervalo

Crie um programa que:

1. Leia um valor inteiro `x`
2. Verifique se `x` estÃ¡ no intervalo de 10 a 20 (inclusive)
3. Mostre `"Dentro"` ou `"Fora"`

---

<!-- fit -->

# ExercÃ­cio 6 - Login BÃ¡sico

Crie um programa que:

1. Leia `usuario_correto` (`1` ou `0`)
2. Leia `senha_correta` (`1` ou `0`)
3. Mostre `"Login realizado"` se ambos forem verdadeiros
4. Mostre `"Falha no login"` caso contrÃ¡rio

---

<!-- fit -->

# ExercÃ­cio 7 - ClassificaÃ§Ã£o de Desempenho

Crie um programa que:

1. Leia um Ã­ndice de desempenho (`0` a `100`)
2. Mostre:
- `"Alto"` para Ã­ndices a partir de 80
- `"Medio"` para Ã­ndices de 50 atÃ© 79
- `"Baixo"` caso contrÃ¡rio

---

<!-- fit -->

# ExercÃ­cio 8 - SituaÃ§Ã£o de Temperatura

Crie um programa que:

1. Leia a temperatura em graus Celsius
2. Classifique:
- `"Frio"` para temperaturas abaixo de 18Â°C
- `"Agradavel"` para temperaturas de 18Â°C atÃ© 30Â°C
- `"Quente"` para temperaturas acima de 30Â°C

---

<!-- fit -->

# ExercÃ­cio 9 - BenefÃ­cio no Transporte

Crie um programa que leia:

1. `idade`
2. `estudante` (`1` ou `0`)
3. `renda_baixa` (`1` ou `0`)

Classifique:

1. `"Passe livre"` para idosos ou para estudantes de baixa renda
2. `"Meia tarifa"` para estudantes que nÃ£o se enquadram em passe livre
3. `"Tarifa integral"` nos demais casos

---

<!-- fit -->

# ExercÃ­cio 10 - Elegibilidade de Bolsa

Crie um programa que leia:

1. `media`
2. `frequencia`
3. `vulnerabilidade_social` (`1` ou `0`)

Classifique:

1. `"Bolsa integral"` para mÃ©dia alta e frequÃªncia mÃ­nima de 85%
2. `"Bolsa parcial"` se:
- mÃ©dia pelo menos 7,0 e frequÃªncia mÃ­nima de 75%, ou
- vulnerabilidade social, mÃ©dia pelo menos 6,0 e frequÃªncia mÃ­nima de 80%
3. `"Sem bolsa"` nos demais casos

---

<!-- fit -->

# Desafio Extra - Triagem em ClÃ­nica

Uma clÃ­nica deseja priorizar atendimentos.

Crie um programa que leia:

1. `idade`
2. `febre_alta` (`1` ou `0`)
3. `dor_intensa` (`1` ou `0`)
4. `doenca_cronica` (`1` ou `0`)

Classifique:

1. `"Prioridade maxima"` para casos com febre alta combinada com dor intensa ou doenÃ§a crÃ´nica
2. `"Prioridade moderada"` para idosos com doenÃ§a crÃ´nica ou pacientes com dor intensa
3. `"Atendimento normal"` nos demais casos
