#!/bin/bash


# vscode
mkdir -p ~/.config/Code/User
cp mcp-msft.json ~/.config/Code/User/mcp.json # vscode

# cursor
if [ -d ~/.cursor ]; then
    cp mcp-msft.json ~/.cursor/mcp.json
fi

# claude code 
cp -r .claude/ ~/
claude mcp add postgres docker run -i --rm -e POSTGRES_URL mcp/postgres ${POSTGRES_URL}
claude mcp add --scope user context7 npx @upstash/context7-mcp
claude mcp add --scope user playwright npx @playwright/mcp@latest
claude mcp add --scope user --transport http microsoft_docs_mcp https://learn.microsoft.com/api/mcp

