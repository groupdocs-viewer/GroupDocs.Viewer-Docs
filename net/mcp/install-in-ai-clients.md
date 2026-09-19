---
id: mcp-install-in-ai-clients
url: viewer/net/mcp/install-in-ai-clients
title: Register in AI clients
weight: 5
description: "Register the GroupDocs.Viewer MCP server in any AI client — Claude Desktop, Claude Code, VS Code, Visual Studio 2022, Cursor, Windsurf, Cline, or Codex — with the exact config file location and JSON block for each."
keywords: add MCP server to Claude Desktop config, Claude Code add MCP server command, VS Code mcp.json example, Cursor MCP config file location, Windsurf MCP setup, Cline MCP settings, Visual Studio 2022 MCP .mcp.json, Codex CLI MCP add
productName: GroupDocs.Viewer MCP Server for .NET
toc: True
---

Register the GroupDocs.Viewer MCP server in any AI client — Claude Desktop, Claude Code, VS Code, Visual Studio 2022, Cursor, Windsurf, Cline, or Codex — with the exact config file location and JSON block for each. The [installer]({{< ref "viewer/mcp/getting-started/_index.md" >}}) does all of this automatically (set the `clients` list in its config); this page is the manual reference. **Restart the client** after any registration change.

## One-click install

The fastest path for VS Code and Cursor — the link pre-fills the whole server entry, so there is no JSON to copy:

[![Install in VS Code](https://img.shields.io/badge/VS_Code-Install-0098FF)](https://vscode.dev/redirect/mcp/install?name=groupdocs-viewer&config=%7B%22command%22%3A%22dnx%22%2C%22args%22%3A%5B%22GroupDocs.Viewer.Mcp%22%2C%22--yes%22%5D%2C%22env%22%3A%7B%22GROUPDOCS_MCP_STORAGE_PATH%22%3A%22%2Fpath%2Fto%2Fdocuments%22%2C%22GROUPDOCS_MCP_OUTPUT_PATH%22%3A%22%2Fpath%2Fto%2Fdocuments%22%2C%22GROUPDOCS_LICENSE_PATH%22%3A%22%22%7D%7D) [![Install in VS Code Insiders](https://img.shields.io/badge/VS_Code_Insiders-Install-24bfa5)](https://insiders.vscode.dev/redirect/mcp/install?name=groupdocs-viewer&config=%7B%22command%22%3A%22dnx%22%2C%22args%22%3A%5B%22GroupDocs.Viewer.Mcp%22%2C%22--yes%22%5D%2C%22env%22%3A%7B%22GROUPDOCS_MCP_STORAGE_PATH%22%3A%22%2Fpath%2Fto%2Fdocuments%22%2C%22GROUPDOCS_MCP_OUTPUT_PATH%22%3A%22%2Fpath%2Fto%2Fdocuments%22%2C%22GROUPDOCS_LICENSE_PATH%22%3A%22%22%7D%7D&quality=insiders) [![Add to Cursor](https://img.shields.io/badge/Cursor-Add_MCP-111111)](https://cursor.com/en/install-mcp?name=groupdocs-viewer&config=eyJjb21tYW5kIjoiZG54IiwiYXJncyI6WyJHcm91cERvY3MuVmlld2VyLk1jcCIsIi0teWVzIl0sImVudiI6eyJHUk9VUERPQ1NfTUNQX1NUT1JBR0VfUEFUSCI6Ii9wYXRoL3RvL2RvY3VtZW50cyIsIkdST1VQRE9DU19NQ1BfT1VUUFVUX1BBVEgiOiIvcGF0aC90by9kb2N1bWVudHMiLCJHUk9VUERPQ1NfTElDRU5TRV9QQVRIIjoiIn19)

{{< alert style="info" >}}
One-click installs pre-fill every supported setting. After installing, **edit the placeholder documents folder** (`/path/to/documents`); the output folder defaults to the same place, and an empty `GROUPDOCS_LICENSE_PATH` runs in [evaluation mode]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).
{{< /alert >}}

Prefer to paste a config yourself, or using a client without a one-click link? Every client is covered below, and ready-made config files for each live in [`install/generated/`](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp/tree/master/install/generated) in the server repository.

The standard server entry (NuGet channel — for Docker, see the [Docker entry](#docker-based-entry) below):

```json
{
  "command": "dnx",
  "args": ["GroupDocs.Viewer.Mcp", "--yes"],
  "env": {
    "GROUPDOCS_MCP_STORAGE_PATH": "/path/to/documents",
    "GROUPDOCS_MCP_OUTPUT_PATH": "/path/to/documents",
    "GROUPDOCS_LICENSE_PATH": ""
  }
}
```

An empty `GROUPDOCS_LICENSE_PATH` runs in evaluation mode — see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).

## Claude Desktop

Add to `claude_desktop_config.json` under the `mcpServers` key:

* Windows: `%APPDATA%\Claude\claude_desktop_config.json`
* macOS: `~/Library/Application Support/Claude/claude_desktop_config.json`
* Linux: `~/.config/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "groupdocs-viewer": {
      "type": "stdio",
      "command": "dnx",
      "args": ["GroupDocs.Viewer.Mcp", "--yes"],
      "env": { "GROUPDOCS_MCP_STORAGE_PATH": "/path/to/documents" }
    }
  }
}
```

## Claude Code

One command — no file editing:

```bash
claude mcp add groupdocs-viewer -- dnx GroupDocs.Viewer.Mcp --yes
```

Add `-e GROUPDOCS_MCP_STORAGE_PATH=/path/to/documents` (and `-e GROUPDOCS_LICENSE_PATH=…`) before the `--` for env vars; `--scope user` makes it machine-wide.

## VS Code / GitHub Copilot

User-level `mcp.json` (applies to every workspace) — root key `servers`:

* Windows: `%APPDATA%\Code\User\mcp.json` · macOS: `~/Library/Application Support/Code/User/mcp.json` · Linux: `~/.config/Code/User/mcp.json`

Or workspace-level `.vscode/mcp.json`. The [NuGet package page](https://www.nuget.org/packages/GroupDocs.Viewer.Mcp) generates a ready-to-paste snippet, and the repo README has one-click **Install in VS Code** buttons.

## Visual Studio 2022 (17.14+)

Create `.mcp.json` in your **solution root** — same `servers` shape as VS Code. This is the native path for .NET teams already in Visual Studio.

## Cursor

`~/.cursor/mcp.json`, root key `mcpServers` — same entry as Claude Desktop. The repo README also has an **Add to Cursor** one-click button.

## Windsurf

`~/.codeium/windsurf/mcp_config.json`, root key `mcpServers` (Settings → Cascade → Manage MCP servers → View raw config), then refresh the server list.

## Cline

VS Code globalStorage: `…/Code/User/globalStorage/saoudrizwan.claude-dev/settings/cline_mcp_settings.json`, root key `mcpServers`.

## Codex CLI

```bash
codex mcp add groupdocs-viewer -- dnx GroupDocs.Viewer.Mcp --yes
```

Or add a `[mcp_servers.groupdocs-viewer]` table to `~/.codex/config.toml`.

## JetBrains Rider

No stable config-file surface yet — register manually: Settings → Tools → AI Assistant → Model Context Protocol (MCP) → Add, using the standard entry above as reference.

## Docker-based entry

Any client above can run the server via Docker instead of `dnx` — storage is passed as a volume mount:

```json
{
  "command": "docker",
  "args": [
    "run", "--rm", "-i",
    "-v", "/path/to/documents:/data",
    "ghcr.io/groupdocs-viewer/viewer-net-mcp:latest"
  ]
}
```

Version pinning: replace `GroupDocs.Viewer.Mcp` with `GroupDocs.Viewer.Mcp@26.9.0`, or `:latest` with `:26.9.0` — recommended for shared configs.
