const fs = require("fs");
const path = require("path");

const ROOT = process.cwd();
const INPUT_DIR = path.join(ROOT, "materiais", "simulados");

function escapeHtml(value) {
  return value
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

function renderInline(value) {
  return escapeHtml(value)
    .replace(/`([^`]+)`/g, "<code>$1</code>")
    .replace(/\*\*([^*]+)\*\*/g, "<strong>$1</strong>");
}

function markdownToHtml(markdown) {
  const lines = markdown.replace(/\r\n/g, "\n").split("\n");
  const output = [];
  let inList = false;

  function closeList() {
    if (inList) {
      output.push("</ol>");
      inList = false;
    }
  }

  for (const line of lines) {
    const trimmed = line.trim();

    if (!trimmed) {
      closeList();
      continue;
    }

    if (trimmed === "---") {
      closeList();
      output.push("<hr>");
      continue;
    }

    const heading = /^(#{1,6})\s+(.+)$/.exec(trimmed);
    if (heading) {
      closeList();
      const level = heading[1].length;
      output.push(`<h${level}>${renderInline(heading[2])}</h${level}>`);
      continue;
    }

    const ordered = /^(\d+)\.\s+(.+)$/.exec(trimmed);
    if (ordered) {
      if (!inList) {
        output.push("<ol>");
        inList = true;
      }
      output.push(`<li>${renderInline(ordered[2])}</li>`);
      continue;
    }

    closeList();
    output.push(`<p>${renderInline(trimmed)}</p>`);
  }

  closeList();
  return output.join("\n");
}

function renderDocument(markdown) {
  const body = markdownToHtml(markdown);

  return `<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    @page { size: A4; margin: 1.35cm; }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      color: #111;
      font-family: "Times New Roman", serif;
      font-size: 10.4pt;
      line-height: 1.22;
    }
    h1 {
      margin: 0 0 3pt;
      text-align: center;
      font-size: 15pt;
      line-height: 1.1;
    }
    h2 {
      margin: 0 0 8pt;
      text-align: center;
      font-size: 12.5pt;
      line-height: 1.1;
    }
    h3 {
      margin: 8pt 0 3pt;
      font-size: 10.8pt;
      line-height: 1.1;
      page-break-after: avoid;
    }
    p { margin: 0 0 4pt; }
    ol {
      margin: 0 0 4pt 18pt;
      padding: 0;
    }
    li { margin: 0 0 1.5pt; }
    hr {
      border: 0;
      border-top: 0.6pt solid #aaa;
      margin: 7pt 0;
    }
    code {
      font-family: "Consolas", "Courier New", monospace;
      font-size: 9.4pt;
    }
    @media screen {
      body {
        max-width: 21cm;
        min-height: 29.7cm;
        margin: 24px auto;
        padding: 1.35cm;
        background: #fff;
        box-shadow: 0 0 0 1px #ddd, 0 12px 30px rgba(0,0,0,.12);
      }
      html { background: #f2f2f2; }
    }
  </style>
</head>
<body>
${body}
</body>
</html>
`;
}

const files = fs
  .readdirSync(INPUT_DIR)
  .filter((file) => /^simulado-.*\.md$/.test(file));

for (const file of files) {
  const sourcePath = path.join(INPUT_DIR, file);
  const targetPath = path.join(INPUT_DIR, file.replace(/\.md$/, ".html"));
  const markdown = fs.readFileSync(sourcePath, "utf8");
  fs.writeFileSync(targetPath, renderDocument(markdown), "utf8");
  console.log(`Generated ${path.relative(ROOT, targetPath)}`);
}
