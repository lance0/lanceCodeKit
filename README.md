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
./setup.sh
claude mcp list  # Should show gemini and context7


