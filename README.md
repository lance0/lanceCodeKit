# LanceCodeKit

LanceCodeKit helps developers integrate Google Gemini and Context7 as Model Context Protocol (MCP) servers for Claude Code. The project offers automated setup scripts, Docker support, and custom Claude commands so you can start querying both services quickly and securely.

## Features

- Automated installation script (`setup.sh`)
- Docker configuration with `docker-compose.yml`
- Ready to use MCP configuration (`mcp.json`)
- Custom Claude commands in `CLAUDE.md`
- Example environment file for safe sharing
- MIT licensed

## Prerequisites

- Node.js 18 or later
- Optionally Python 3.8+
- Claude CLI or Desktop installed
- Gemini API key from Google AI Studio
- Optional: Smithery key for Context7
- Docker (for container usage)

## Setup

### Local

```bash
# Clone the repo
git clone https://github.com/your-user/lanceCodeKit.git
cd lanceCodeKit

# Copy and edit environment variables
cp .env.example .env
# add your GEMINI_API_KEY and optional SMITHERY_KEY

# Run the setup
chmod +x setup.sh
./setup.sh
```

### Docker

```bash
git clone https://github.com/your-user/lanceCodeKit.git
cd lanceCodeKit
cp .env.example .env
# Edit .env with your API keys

docker-compose up -d
```

Both services will be available on ports **3000** (Gemini) and **3001** (Context7).

## Using with Claude

- `claude mcp list` – verify that `gemini` and `context7` are registered
- Use slash commands such as `/gemini-query` and `/context7`
- Advanced users can modify `mcp.json` and load it manually

See `CLAUDE.md` for command examples.

## Troubleshooting

- Ensure API keys are correct in `.env`
- Check Docker containers with `docker-compose logs`
- Run the setup script with `bash -x setup.sh` for verbose output

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Publishing

To publish your own fork:

```bash
git init
git add .
git commit -m "Initial commit"
# Create a GitHub repo named lanceCodeKit then run:
git remote add origin git@github.com:your-user/lanceCodeKit.git
git push -u origin main
```
