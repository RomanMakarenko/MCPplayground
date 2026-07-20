#!/bin/bash
# Load env vars from .env and run Google Docs MCP auth
# Run this when you need to re-authenticate Google Docs MCP

ENV_FILE="$(dirname "$0")/../.env"
ENV_FILE="$(cd "$(dirname "$ENV_FILE")" && pwd)/$(basename "$ENV_FILE")"

if [ -f "$ENV_FILE" ]; then
  export $(grep -v '^#' "$ENV_FILE" | xargs)
fi

echo "Running Google Docs MCP auth..."
npx -y @a-bonus/google-docs-mcp auth