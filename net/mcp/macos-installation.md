---
id: mcp-macos-installation
url: viewer/net/mcp/macos-installation
title: Install on macOS
weight: 4
description: "Install the GroupDocs.Viewer MCP server on macOS (Intel and Apple Silicon) via Homebrew-based bootstrap and the guided installer — registered into Claude Desktop and other clients automatically."
keywords: install MCP server macOS, MCP server Mac Apple Silicon, Claude Desktop MCP config Mac location, brew install MCP prerequisites
productName: GroupDocs.Viewer MCP Server for .NET
toc: True
---

Install the GroupDocs.Viewer MCP server on **macOS** — Intel and Apple Silicon — via the Homebrew-based bootstrap and the guided installer, registered into Claude Desktop and other clients automatically:

```bash
git clone https://github.com/groupdocs/GroupDocs.Mcp.Installer.git
cd GroupDocs.Mcp.Installer
bash setup/macos.sh --channel docker
pwsh ./install-groupdocs-mcp.ps1 -Interactive
```

## Prerequisites

`setup/macos.sh` installs via Homebrew, idempotently (add `--check` to report only). If Homebrew itself is missing, the script prints the official install command and stops — it never installs a package manager silently.

* **Always:** PowerShell 7 — `brew install --cask powershell`.
* **Docker channel (recommended):** Docker Desktop — `brew install --cask docker`. Launch Docker Desktop once from /Applications to finish its first-run setup.
* **NuGet channel:** .NET 10 SDK — `brew install --cask dotnet-sdk` — plus the native graphics library `brew install mono-libgdiplus`.

**Apple Silicon note:** the Docker images are published multi-arch (`linux/arm64` + `linux/amd64`), so M-series Macs run them **natively** — no Rosetta emulation. This makes the docker channel the smoothest path on Apple Silicon.

## Install

**Recommended — the installer:**

```bash
pwsh ./install-groupdocs-mcp.ps1 -Channel docker \
  -Products viewer -Clients claude-desktop,cursor -Verify
```

**Manual alternatives:**

```bash
# Docker channel:
docker run --rm -i -v $(pwd)/documents:/data \
  ghcr.io/groupdocs-viewer/viewer-net-mcp:latest

# NuGet channel (requires .NET 10 SDK + mono-libgdiplus):
dnx GroupDocs.Viewer.Mcp --yes
```

Client config locations on macOS: Claude Desktop `~/Library/Application Support/Claude/claude_desktop_config.json`, VS Code user-level `~/Library/Application Support/Code/User/mcp.json`, Cursor `~/.cursor/mcp.json` — full list in [Register in AI clients]({{< ref "viewer/net/mcp/install-in-ai-clients.md" >}}).

## Verify

```bash
pwsh ./verify-groupdocs-mcp.ps1
```

The handshake lists the server's three tools; with a document in your storage folder it also runs a real `get_document_info` call through the engine.

## macOS-specific troubleshooting

* **Docker daemon not reachable** — Docker Desktop must be running (menu-bar whale icon); the installer's preflight catches this before writing anything.
* **Native (`dnx`) runs fail on graphics operations** — install `mono-libgdiplus` via Homebrew, or prefer the docker channel where everything is bundled.
* **`pwsh` not found after install** — open a new terminal so the shell picks up the Homebrew path.

Installing on a different OS? [Windows]({{< ref "viewer/net/mcp/windows-installation.md" >}}) · [Linux]({{< ref "viewer/net/mcp/linux-installation.md" >}})
