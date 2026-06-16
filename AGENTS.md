# AGENTS.md

Este arquivo define como novos materiais da disciplina **ECT3201 - Linguagem de Programação (C++)** devem ser preparados neste repositório.

O contexto é um **curso de graduação** com foco em **lógica, algoritmos, estruturas básicas da linguagem e decomposição de problemas**, sem adotar um padrão de codificação avançado, industrial ou orientado a frameworks. O estilo esperado é direto, didático, incremental e compatível com estudantes em formação inicial/intermediária.

## Objetivo pedagógico

Ao gerar novos materiais:

- priorize clareza de enunciado, progressão de dificuldade e coerência com a sequência da disciplina;
- mantenha o foco em **resolver problemas com C++ básico**;
- favoreça exercícios que reforcem leitura, processamento, saída, decisões, repetições, funções, arrays, matrizes, recursão e cadeias de caracteres;
- trate os materiais como apoio de aula de graduação, não como documentação profissional de software;
- evite sofisticar a solução ou o estilo de código além do necessário para o conteúdo da aula.

## Padrão geral da disciplina

- As **aulas** têm duração de **100 minutos**.
- Os **laboratórios** devem ter **5 a 8 exercícios**.
- As **listas de exercícios** devem ter **10 a 15 exercícios**.
- A dificuldade em **listas** e **laboratórios** deve ser **progressiva**.
- Os exercícios de listas e laboratórios **podem exigir conteúdos de aulas anteriores**, especialmente nos itens finais.
- **Exercícios não podem se repetir** entre exemplos de aula, laboratórios e listas.
- Os materiais devem preservar uma linha de evolução natural: introdução do conceito, exemplos guiados, prática orientada, prática mais autônoma e integração com conteúdos anteriores.

## Diretrizes para aulas

- Cada aula deve ser pensada para ocupar **100 minutos** com ritmo realista.
- O foco principal das aulas é o **enunciado dos exemplos**, não a apresentação de soluções longas prontas.
- Os **exemplos são codificados pelo professor no quadro** ou ao vivo; por isso:
  - os slides devem destacar o problema, as entradas, as saídas, as regras e os casos relevantes;
  - o código completo não precisa aparecer para todos os exemplos;
  - quando houver código nos slides, ele deve ser curto e servir para introduzir sintaxe, protótipos ou trechos essenciais.
- As aulas devem combinar:
  - motivação inicial do tema;
  - apresentação gradual dos conceitos;
  - exemplos em sequência;
  - observações de cuidado, limitações ou erros comuns;
  - fechamento ou síntese quando fizer sentido.
- A quantidade de exemplos deve ser **realista para uma aula de 100 minutos**.
  - Evite inflar a aula com exemplos demais.
  - Quando o tema exigir encadeamento maior, prefira **menos exemplos e mais progressão dentro deles**.
- Sempre que possível, limite a aula a uma quantidade de exemplos que o professor consiga realmente desenvolver em sala no tempo disponível.
- Os exemplos devem crescer em complexidade ao longo da aula.
- Sempre que possível, exemplos posteriores devem **reutilizar ideias, funções ou procedimentos** introduzidos antes.
- Os exemplos devem preparar o terreno para os exercícios do laboratório e da lista, sem antecipar exatamente os mesmos problemas.
- Cada exemplo deve ter um enunciado **fechado, específico e determinado**.
  - Não escreva exemplos com alternativas do tipo `como Livro ou Aluno`, `escolha um contexto`, `por exemplo`.
  - O exemplo deve deixar claro **qual entidade usar, quais campos ler, o que calcular e o que mostrar**.
- Não use formulações vagas em exemplos, laboratórios ou listas, como:
  - `calcule uma informação do registro`;
  - `faça algum processamento`;
  - `atualize os dados necessários`.
  Em vez disso, explicite exatamente a tarefa: `calcule o valor total`, `busque por código`, `ordene por nota`, `atualize a quantidade`, etc.

## Diretrizes para laboratórios

- Cada laboratório deve conter **5 a 8 exercícios**.
- O laboratório deve funcionar como prática da aula corrente, com dependência natural do conteúdo recém-apresentado.
- A sequência deve começar com itens mais diretos e terminar com itens mais integradores.
- É aceitável que os últimos exercícios combinem o tema atual com tópicos anteriores.
- Os enunciados devem ser suficientemente claros para trabalho relativamente autônomo, mas sem virar texto excessivamente longo.
- Quando útil, inclua:
  - restrições;
  - fórmulas;
  - protótipos sugeridos;
  - exemplos curtos;
  - continuação em slide seguinte quando um único slide ficar carregado.
- Só use um exercício extra ou de revisão ampliada se isso for intencional e explícito; o padrão normal continua sendo 5 a 8.
- Os exercícios do laboratório **não devem repetir** os exemplos da aula.
  - O laboratório pode reaproveitar o conceito e a técnica.
  - O problema, o contexto e a tarefa principal devem ser diferentes.

## Diretrizes para listas de exercícios

- Cada lista deve conter **10 a 15 exercícios**.
- A lista deve aprofundar e variar o conteúdo da aula correspondente.
- A progressão esperada é:
  - primeiros exercícios: aplicação direta do conceito;
  - exercícios intermediários: combinação de passos e maior atenção a condições, contagens, estruturas auxiliares ou modularização;
  - exercícios finais: integração com conteúdos anteriores, maior autonomia e mais tomada de decisão.
- Desafios extras são bem-vindos, mas não substituem a progressão principal.
- Os últimos itens podem exigir reutilização de funções, arrays auxiliares, contadores, decomposição em subproblemas ou raciocínio recursivo, conforme o tema.
- A lista não deve reaproveitar literalmente exemplos de aula nem exercícios de laboratório.
- A lista também não deve reaproveitar o mesmo problema do laboratório com mudança superficial de nomes.
- Entre **aula, laboratório e lista**, os problemas devem ser **distintos entre si**.
  - Pode haver continuidade conceitual.
  - Não pode haver repetição de enunciado, tarefa principal ou estrutura de solução apenas com troca de contexto superficial.

## Estilo dos enunciados

- Use linguagem objetiva, imperativa e direta: `Crie um programa...`, `Escreva um programa...`, `Leia...`, `Mostre...`.
- Prefira problemas concretos e contextualizados, mas simples: salários, vendas, temperaturas, sensores, estoques, notas, matrizes, nomes, tempos, distâncias, rankings.
- O contexto deve ajudar a interpretar o problema, não esconder a lógica principal.
- O enunciado deve dizer com clareza:
  - o que ler;
  - o que calcular, verificar, transformar ou comparar;
  - o que mostrar ao final.
- Quando necessário, separe explicitamente `Entradas`, `Saídas`, `Regras`, `Exemplo`, `Protótipo sugerido` ou `Dica`.
- Use fórmulas matemáticas quando elas forem parte natural do problema.
- Se o enunciado ficar longo, divida em mais de um slide com continuidade explícita.
- Títulos de exercícios e exemplos devem ser coerentes com o conteúdo do enunciado.
  - Se o exercício trata de `Sensor`, o título não deve permanecer com nome antigo como `Produto`, `Aluno` ou `Catálogo de Livros`.
  - Após qualquer revisão de contexto, conferir se **título, entidade, campos e tarefa** continuam alinhados.
- Ao revisar materiais, verificar explicitamente:
  - se não há títulos herdados de versões anteriores;
  - se não há campos ou descrições de outro contexto misturados no mesmo exercício;
  - se o enunciado inteiro aponta para uma única situação-problema coerente.

## Progressão de dificuldade

- A progressão deve ser perceptível dentro de cada laboratório e lista.
- Evite começar com o exercício mais difícil.
- Evite sequências em que todos os exercícios tenham o mesmo formato mental.
- Misture, de forma controlada:
  - leitura e saída;
  - decisão;
  - repetição;
  - decomposição em funções;
  - uso de arrays ou matrizes;
  - contagem, busca, comparação, ordenação ou transformação;
  - integração com conhecimentos anteriores.
- Nos itens finais, é desejável que o estudante precise decidir sozinho como combinar ferramentas já estudadas.

## Reutilização e articulação entre materiais

- Um novo material deve respeitar o histórico do repositório para evitar repetição de problemas.
- Antes de propor exercícios ou exemplos, verifique se a mesma ideia já apareceu em:
  - `materiais/aulas/`
  - `materiais/labs/`
  - `materiais/listas/`
- Não replique o mesmo enunciado trocando apenas nomes superficiais.
- Pode haver reutilização de **estratégias** e **conceitos**, mas não duplicação de exercício.
- É desejável que materiais posteriores retomem técnicas anteriores em novos contextos.
- Além de verificar o histórico do repositório, compare explicitamente os **três materiais da semana atual**:
  - aula;
  - laboratório;
  - lista.
  Essa comparação deve garantir que não haja repetição entre eles.

## Escopo técnico esperado em C++

- Use C++ em nível introdutório/intermediário, coerente com disciplina de graduação.
- Priorize construções simples:
  - `cin`, `cout`;
  - `if`, `else`;
  - `while`, `for`;
  - funções e procedimentos;
  - passagem por referência quando for conteúdo da disciplina;
  - arrays estáticos;
  - matrizes estáticas;
  - `char` e strings em arrays de `char`;
  - recursão, quando for o tema.
- Bibliotecas básicas podem aparecer quando fizerem sentido pedagógico, como:
  - `cmath`
  - `iomanip`
  - `cstring`
  - bibliotecas mínimas para aleatoriedade já compatíveis com o padrão da disciplina
- Evite introduzir, sem necessidade:
  - STL avançada;
  - programação orientada a objetos como foco;
  - templates;
  - lambdas;
  - ponteiros como tema incidental fora da aula correspondente;
  - padrões arquiteturais;
  - convenções profissionais complexas de organização de software.
- O padrão de código esperado é simples, legível e funcional, não “moderno C++” avançado.

## Formato editorial dos arquivos

- Os materiais são escritos em Markdown para Marp.
- Preserve o front matter compatível com o repositório, tipicamente com:
  - `marp: true`
  - `theme: ect`
  - `math: katex`
  - `paginate: true` quando apropriado
- Use separação por slides com `---`.
- Use `<!-- fit -->` nos slides quando isso ajudar a manter o padrão visual do repositório.
- Títulos devem seguir o estilo já adotado:
  - aula com título do tema;
  - lista como `Lista NN - Exercícios da Aula NN`;
  - laboratório como `Laboratório NN - Prática da Aula NN`.
- Mantenha a identificação da disciplina e do professor no cabeçalho inicial.
- Se o conteúdo de um slide não couber bem em uma página, divida-o em dois slides.
  - Nesses casos, sinalize explicitamente a continuidade, com algo como:
    - `Este exercício continua no próximo slide.`
    - `Exercício X (continuação)`
  - Não comprima texto demais apenas para forçar tudo em um único slide.

## O que evitar

- Não gerar materiais com cara de apostila corporativa.
- Não transformar enunciados em especificações excessivamente formais.
- Não depender de padrões avançados de projeto, abstrações sofisticadas ou bibliotecas fora do escopo.
- Não produzir listas ou laboratórios com exercícios muito homogêneos.
- Não repetir exemplos da aula como exercício da lista ou do laboratório.
- Não repetir exercícios entre aula, laboratório e lista da mesma semana.
- Não exigir conhecimento que ainda não tenha sido minimamente preparado, a menos que a intenção seja integrar conteúdos já vistos.
- Não esconder a dificuldade em textos longos e confusos.
- Não deixar exemplos ou exercícios com enunciados vagos, abertos demais ou com opções de contexto.
- Não deixar títulos desatualizados após trocar o contexto de um exemplo ou exercício.

## Regra prática para novos materiais

Ao criar uma nova aula, lista ou laboratório, siga esta ordem:

1. identifique o tema da aula atual e os pré-requisitos já estudados;
2. verifique os materiais existentes para evitar repetição;
3. defina uma progressão realista de dificuldade;
4. escreva enunciados claros, curtos e orientados a ação;
5. mantenha o nível técnico compatível com graduação em Linguagem de Programação com C++ básico;
6. favoreça reutilização de ideias e integração com conteúdos anteriores;
7. revise se o material final continua coerente com a dinâmica real da disciplina;
8. confira se exemplos e exercícios estão com enunciados fechados e sem tarefas vagas;
9. confira se não há repetição entre aula, laboratório e lista;
10. confira se os títulos permanecem alinhados com o conteúdo final de cada slide;
11. confira se slides longos foram divididos com indicação de continuação quando necessário.

## Resumo operacional

Se um agente for gerar material novo neste repositório, ele deve assumir que:

- está escrevendo para uma disciplina de graduação;
- a aula dura 100 minutos;
- laboratórios têm 5 a 8 exercícios;
- listas têm 10 a 15 exercícios;
- os exemplos de aula são guiados por enunciados e resolvidos ao vivo pelo professor;
- listas e laboratórios devem ter progressão de dificuldade;
- os itens finais podem integrar conteúdo novo e conteúdo anterior;
- o curso usa C++ básico, com baixo nível de sofisticação de estilo e implementação;
- clareza pedagógica vale mais que sofisticação técnica.
