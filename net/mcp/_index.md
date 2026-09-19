---
id: mcp-net
url: viewer/net/mcp
title: MCP server for .NET
linkTitle: MCP Server
weight: 7
description: "Install and configure the GroupDocs.Viewer MCP server for .NET — one-click install links for VS Code and Cursor, per-OS setup for Windows, Linux, and macOS, and the full environment-variable reference."
keywords: GroupDocs.Viewer MCP .NET, install MCP server dnx, MCP server Docker image, MCP server configuration, Model Context Protocol .NET
productName: GroupDocs.Viewer MCP Server for .NET
hideChildren: True
toc: True
---

Everything needed to **install and run** the GroupDocs.Viewer MCP server on the .NET platform. What the server *does* — its tools, use cases, and licensing model — is platform-independent and lives in the [MCP server section]({{< ref "viewer/mcp/_index.md" >}}).

| The .NET build at a glance | |
|---|---|
| Package | [`GroupDocs.Viewer.Mcp`](https://www.nuget.org/packages/GroupDocs.Viewer.Mcp) (current **26.9.0**) |
| One-command run | `dnx GroupDocs.Viewer.Mcp --yes` |
| Container images | `ghcr.io/groupdocs-viewer/viewer-net-mcp` · `groupdocs/viewer-net-mcp` |
| Prerequisites | [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0) for the NuGet channel, or Docker |
| Source | [GroupDocs.Viewer.Mcp on GitHub](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp) |
| Release notes | [changelog](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp/tree/master/changelog) · [GitHub releases](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp/releases) |

## Start here

1. **Install** for your operating system — [Windows]({{< ref "viewer/net/mcp/windows-installation.md" >}}) · [Linux]({{< ref "viewer/net/mcp/linux-installation.md" >}}) · [macOS]({{< ref "viewer/net/mcp/macos-installation.md" >}})
2. **Register it in your AI client** — [one-click links and per-client configs]({{< ref "viewer/net/mcp/install-in-ai-clients.md" >}})
3. **Point it at your documents** — [configuration]({{< ref "viewer/net/mcp/configuration.md" >}})
4. **License it** — evaluation, a license file, or metered keys: [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}})

## In this section

* [Install on Windows]({{< ref "viewer/net/mcp/windows-installation.md" >}})
* [Install on Linux]({{< ref "viewer/net/mcp/linux-installation.md" >}})
* [Install on macOS]({{< ref "viewer/net/mcp/macos-installation.md" >}})
* [Register in AI clients]({{< ref "viewer/net/mcp/install-in-ai-clients.md" >}}) — VS Code, Cursor, Claude, Visual Studio, Windsurf, Cline, Codex, Rider
* [Configuration]({{< ref "viewer/net/mcp/configuration.md" >}}) — storage, output, license, metered keys
* [System requirements]({{< ref "viewer/net/mcp/system-requirements.md" >}})
* [Troubleshooting (.NET)]({{< ref "viewer/net/mcp/troubleshooting.md" >}}) — `dnx`, native libraries, Docker daemon

## Platform-independent reference

* [Tools reference]({{< ref "viewer/mcp/tools-reference/_index.md" >}}) — `render_page`, `get_view_info`, `get_license_status`
* [Use cases]({{< ref "viewer/mcp/use-cases/_index.md" >}}) · [Supported formats]({{< ref "viewer/mcp/supported-formats.md" >}}) · [Troubleshooting & FAQ]({{< ref "viewer/mcp/troubleshooting-faq.md" >}})
