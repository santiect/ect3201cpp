# ECT3201 - Materiais de Linguagem de Programação

Este repositório reúne materiais editáveis para as aulas da disciplina **ECT3201 - Linguagem de Programação**, edição em C++.

Página publicada: [https://santiect.github.io/ect3201cpp/](https://santiect.github.io/ect3201cpp/)

## O que você encontra aqui

- `materiais/aulas/`: apresentações e conteúdo teórico.
- `materiais/listas/`: listas de exercícios.
- `materiais/labs/`: roteiros de laboratório/prática.
- `theme/`: tema visual usado nas páginas geradas.
- `scripts/`: scripts de geração do índice e das páginas.
- `config/site.yml`: arquivo único de configuração do site.

## Objetivo

Centralizar e versionar os materiais da disciplina para facilitar estudo, manutenção, colaboração e publicação.

## Como reutilizar este repositório

Se você é docente e quer criar sua própria página com esta estrutura:

1. Faça um **Fork** deste repositório para sua conta no GitHub.
2. Clone seu fork localmente.
3. Personalize o arquivo `config/site.yml`.
4. Edite os conteúdos em `materiais/aulas/`, `materiais/listas/` e `materiais/labs/`.
5. Envie as alterações para o seu repositório no GitHub.
6. Ative o **GitHub Pages** em `Settings` -> `Pages`:
   - `Branch`: `main`
   - `Folder`: `/ (root)` (pasta principal do repositório no GitHub)
7. A URL final ficará em formato:
   - `https://seu-usuario.github.io/seu-repositorio/`

## Configuração central (`config/site.yml`)

Todos os dados de identificação do site ficam nesse arquivo. Exemplo:

```yml
course_code: "ECT3201"
course_name: "Linguagem de Programação"
course_suffix: "C++"
professor_name: "Éverton Santi"
institution_name: "Escola de Ciências e Tecnologia - UFRN"
site_subtitle: "Índice dos materiais da disciplina."
published_url: "https://santiect.github.io/ect3201cpp/"

unpublished_items:
  - materiais/labs/lab-02.md
```

### O que cada campo controla

- `course_code`, `course_name`, `course_suffix`: título da disciplina.
- `professor_name`: nome exibido no índice (`indice.md`).
- `institution_name`: barra superior da página `index.html`.
- `site_subtitle`: subtítulo da página `index.html`.
- `published_url`: URL pública de referência.
- `unpublished_items`: arquivos `.md` que devem ficar fora da publicação (HTML/PDF e índice).

## Geração do site

### No GitHub Actions (automático)

Ao fazer `push` na branch `main`, o workflow em `.github/workflows/deploy.yml`:

1. Executa `scripts/generate_index.sh` (lê `config/site.yml`).
2. Gera `indice.md` e `index.html`.
3. Converte materiais para HTML e PDF com Marp.
4. Publica no GitHub Pages.

### Localmente (opcional)

Se quiser gerar localmente, execute:

```bash
bash scripts/generate_index.sh
```

Depois use o Marp CLI para gerar HTML/PDF, como no workflow.

## Checklist rápido de personalização

- Atualizar `config/site.yml` com disciplina, docente e instituição.
- Ajustar `unpublished_items` para controlar o que será publicado.
- Atualizar `README.md` com links e informações de autoria.
- Revisar conteúdos de `materiais/aulas/`, `materiais/listas/` e `materiais/labs/`.

## Autoria

**Éverton Santi**  
Email: `everton.santi@ufrn.br`
