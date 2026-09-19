---
id: mcp-windows-installation
url: viewer/net/mcp/windows-installation
title: Install on Windows
weight: 2
description: "To install the GroupDocs.Viewer MCP server on Windows, run the prerequisite bootstrapper and the guided installer in PowerShell — it registers the server in Claude Desktop, VS Code, and other clients automatically."
keywords: install MCP server Windows, MCP server Windows setup, Claude Desktop MCP Windows config location, dnx not recognized Windows
productName: GroupDocs.Viewer MCP Server for .NET
toc: True
---

To install the GroupDocs.Viewer MCP server on **Windows**, run the prerequisite bootstrapper and the guided installer in PowerShell — it registers the server in Claude Desktop, VS Code, and other clients automatically:

```powershell
git clone https://github.com/groupdocs/GroupDocs.Mcp.Installer.git
cd GroupDocs.Mcp.Installer
powershell -ExecutionPolicy Bypass -File setup\windows.ps1 -Channel docker
./install-groupdocs-mcp.ps1 -Interactive
```

The built-in Windows PowerShell 5.1 is enough — PowerShell 7 is optional.

## Prerequisites

The `setup\windows.ps1` bootstrapper installs only what your delivery channel needs (via winget, idempotently; add `-Check` to report without installing):

* **Docker channel (recommended):** Docker Desktop (`winget install --id Docker.DockerDesktop`). Start Docker Desktop once after installation to finish its WSL2 first-run setup.
* **NuGet channel:** .NET 10 SDK (`winget install --id Microsoft.DotNet.SDK.10`), which includes the `dnx` runner. GDI+ is built into Windows — no extra native libraries needed.

## Install

**Recommended — the installer** (wizard, or fully from the command line):

```powershell
./install-groupdocs-mcp.ps1 -Channel nuget -Products viewer `
  -Clients claude-desktop,vscode -Verify
```

**Manual alternatives:**

```powershell
# NuGet channel - runs directly, no install step (requires .NET 10 SDK):
dnx GroupDocs.Viewer.Mcp --yes

# Docker channel:
docker run --rm -i -v C:/Docs:/data `
  ghcr.io/groupdocs-viewer/viewer-net-mcp:latest
```

Client config locations on Windows: Claude Desktop `%APPDATA%\Claude\claude_desktop_config.json`, VS Code user-level `%APPDATA%\Code\User\mcp.json` — full list with JSON blocks in [Register in AI clients]({{< ref "viewer/net/mcp/install-in-ai-clients.md" >}}).

## Verify

```powershell
./verify-groupdocs-mcp.ps1
```

A passing run performs the MCP handshake and prints the server's three tools; if a document exists in your storage folder, it also runs a real `get_document_info` call against it. Exit code `0` means everything works.

## Windows-specific troubleshooting

* **"running scripts is disabled on this system"** — launch with `powershell -ExecutionPolicy Bypass -File …` (as shown above), or `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`.
* **`dnx` is not recognized** — the .NET 10 SDK was just installed: open a **new** terminal so PATH refreshes. `dnx` ships inside the SDK (`C:\Program Files\dotnet\dnx.cmd`).
* **"docker daemon not reachable"** — start Docker Desktop; the installer's preflight detects this before writing anything and prints the exact fix.

Installing on a different OS? [Linux]({{< ref "viewer/net/mcp/linux-installation.md" >}}) · [macOS]({{< ref "viewer/net/mcp/macos-installation.md" >}})
