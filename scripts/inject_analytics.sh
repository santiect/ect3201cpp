#!/bin/bash
set -euo pipefail
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

CONFIG_FILE="${1:-config/site.yml}"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "Config file not found: $CONFIG_FILE" >&2
  exit 1
fi

yaml_get() {
  local key="$1"
  awk -F': *' -v k="$key" '
    $0 ~ "^[[:space:]]*"k":[[:space:]]*" {
      sub(/^[^:]*:[[:space:]]*/, "")
      print
      exit
    }
  ' "$CONFIG_FILE" | sed -e 's/^"//' -e 's/"$//'
}

GOOGLE_ANALYTICS_ID="$(yaml_get "google_analytics_id")"

if [ -z "${GOOGLE_ANALYTICS_ID:-}" ]; then
  echo "google_analytics_id not set in $CONFIG_FILE; skipping injection."
  exit 0
fi

SNIPPET_FILE="$(mktemp)"
cat > "$SNIPPET_FILE" <<HTML
  <script async src="https://www.googletagmanager.com/gtag/js?id=${GOOGLE_ANALYTICS_ID}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', '${GOOGLE_ANALYTICS_ID}');
  </script>
HTML

shift || true

for file in "$@"; do
  [ -f "$file" ] || continue

  if grep -q "googletagmanager.com/gtag/js?id=${GOOGLE_ANALYTICS_ID}" "$file"; then
    continue
  fi

  awk -v snippet_file="$SNIPPET_FILE" '
    /<\/head>/ && !inserted {
      while ((getline line < snippet_file) > 0) {
        print line
      }
      close(snippet_file)
      inserted=1
    }
    { print }
  ' "$file" > "${file}.tmp"

  mv "${file}.tmp" "$file"
done

rm -f "$SNIPPET_FILE"
