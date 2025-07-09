#!/usr/bin/env bash
set -euo pipefail

# Ensure Node.js is installed and >= 18
if ! command -v node >/dev/null; then
  echo "Node.js >=18 is required. Please install it first." >&2
  exit 1
fi

NODE_MAJOR=$(node -v | cut -d. -f1 | tr -d 'v')
if [ "$NODE_MAJOR" -lt 18 ]; then
  echo "Node.js >=18 is required." >&2
  exit 1
fi

# Clone Gemini MCP if not present
if [ ! -d gemini-mcp ]; then
  git clone https://github.com/RLabs-Inc/gemini-mcp.git
fi

# Install dependencies for Gemini MCP
(cd gemini-mcp && npm install)

# Load environment variables
if [ -f .env ]; then
  # shellcheck disable=SC2046
  export $(grep -v '^#' .env | xargs -d '\n')
fi

# Register Gemini MCP server
claude mcp add gemini --env GEMINI_API_KEY="$GEMINI_API_KEY" npx -y ./gemini-mcp

# Register Context7 MCP server
claude mcp add --transport http context7 https://mcp.context7.com/mcp

claude mcp list

echo "Setup complete"
