
# vs and vscode
cp mcp-msft.json $env:appdata/code/user/mcp.json # vscode
cp mcp-msft.json ~/.mcp.json # visual studio

# cursor
if (Test-Path ~/.cursor) { cp mcp-msft.json ~/.cursor/mcp.json }     # cursor

# claude code 
cp .claude ~/ -recurse -force
claude mcp add --scope user context7 npx @upstash/context7-mcp
claude mcp add --scope user playwright npx @playwright/mcp@latest
claude mcp add --scope user postgres docker 'run -i --rm -e POSTGRES_URL mcp/postgres ${env:POSTGRES_URL}'
claude mcp add --scope user --transport http microsoft_docs_mcp https://learn.microsoft.com/api/mcp


