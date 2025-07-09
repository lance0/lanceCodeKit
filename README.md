# LanceCodeKit: Gemini + Context7 MCP Integration for Claude Code

**LanceCodeKit** simplifies the setup of [Google Gemini](https://aistudio.google.com/) and [Context7](https://smithery.ai/) as Model Context Protocol (MCP) servers for use with Claude Code. It supports local and Docker-based installations and includes custom command templates, making it easy for teams or solo devs to boost productivity with multi-agent AI workflows.

---

## 🔧 Features

- **Automated Setup** with `setup.sh` for local environments
- **Docker Support** via `docker-compose.yml` for portable deployment
- **Preconfigured MCP** file for Claude integration
- **Custom Claude Commands** in `CLAUDE.md`
- **Clean `.env` template** for secure configuration
- **MIT Licensed** and easy to share

---

## 📦 Prerequisites

### System Requirements
- Linux, macOS, or Windows (WSL2)
- Node.js ≥ 18.0.0
- Python ≥ 3.8 (optional)
- Docker (optional)

### Tools Required
- Git
- Claude CLI or Claude Desktop
- Gemini API key ([Google AI Studio](https://aistudio.google.com/))
- Optional: Smithery.ai key for Context7
- Optional: MCP Inspector for debugging

---

## 🚀 Quick Start

### Option 1: Local Setup

```bash
git clone https://github.com/lance0/lanceCodeKit.git
cd lanceCodeKit
cp .env.example .env
# Edit .env to add your API keys
chmod +x setup.sh

### Option 2: Docker Setup
bash
Copy
Edit
git clone https://github.com/lance0/lanceCodeKit.git
cd lanceCodeKit
cp .env.example .env
# Edit .env with your API keys
docker-compose up -d
claude mcp list
🛠 Manual Configuration (Advanced)
Update your Claude config at ~/.claude/mcp.json:

json
Copy
Edit
{
  "mcpServers": {
    "gemini": {
      "command": "node",
      "args": ["dist/gemini_mcp_server.js"],
      "env": {
        "GEMINI_API_KEY": "your_api_key_here"
      }
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"]
    }
  }
}
Or use CLI commands:

bash
Copy
Edit
claude mcp add gemini -s user --env GEMINI_API_KEY=your-gemini-api-key npx -y https://github.com/RLabs-Inc/gemini-mcp.git
claude mcp add --transport http context7 https://mcp.context7.com/mcp
🧠 Example Usage
bash
Copy
Edit
/gemini-query What is quantum computing?
/context7 What’s the latest way to use redis-py?
Check out CLAUDE.md for more custom commands like:

/project:analyze – Review code with Gemini + Context7

/project:docs [library] – Fetch up-to-date docs via Context7

/project:brainstorm – Generate new ideas with Gemini

🧪 Workflow Example
text
Copy
Edit
@gemini Optimize this Python function for Redis operations. use context7
Flow:

Context7 pulls Redis docs

Gemini reviews your code

Claude suggests and applies improvements

🧯 Troubleshooting
Gemini Issues
Check .env for valid key

Use verbose CLI:

bash
Copy
Edit
VERBOSE=true claude mcp add ...
Context7 Issues
Make sure Node ≥ 18 is installed

Double-check Smithery key and library IDs

🤝 Contributing
PRs welcome! Open issues or reach out to Lance with improvements, ideas, or bugs.


./setup.sh
claude mcp list  # Should show gemini and context7


