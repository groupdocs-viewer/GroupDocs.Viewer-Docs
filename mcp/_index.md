---
id: mcp
url: viewer/mcp
title: GroupDocs.Viewer MCP Server
weight: 6
description: "GroupDocs.Viewer MCP server lets AI agents like Claude, Cursor, and Copilot render pages of PDF, Word, Excel, PowerPoint and 170+ formats as images — locally on your machine."
keywords: document viewer MCP server, render document page AI agent, PDF page to image MCP, document preview Claude, vision model document pages locally
productName: GroupDocs.Viewer MCP Server
hideChildren: True
toc: True
---

**GroupDocs.Viewer MCP server** lets AI agents like Claude, Cursor, and Copilot **see a document page**: it renders any page of a PDF, Word, Excel, PowerPoint, email, or 170+ other formats as a PNG image and hands it straight to the agent — **locally on your machine**. A vision-capable model can then read the chart, check the layout, or describe the scan, and nothing is uploaded. 

Run it with one command. The Docker image is self-contained — the runtime and every native dependency the engine needs are inside it:

```bash
docker run --rm -i -v $(pwd)/documents:/data \
  ghcr.io/groupdocs-viewer/viewer-net-mcp:latest
```

With the .NET 10 SDK installed, the same server also runs without Docker:

```bash
dnx GroupDocs.Viewer.Mcp --yes
```

Both are the **.NET** build of the server and run on Windows, Linux, and macOS. Other platforms will each get their own launcher — see [Install for your platform](#install-for-your-platform).

Or use the [guided installer]({{< ref "viewer/mcp/getting-started/_index.md" >}}) to register the server in your AI client, verify the setup, and configure shared folders in one pass.

## What you can do

Three tools (full details in the [tools reference]({{< ref "viewer/mcp/tools-reference/_index.md" >}})):

* **[`render_page`]({{< ref "viewer/mcp/tools-reference/render-page.md" >}})** — one page as a PNG image, returned inline to the agent and saved to storage.
* **[`get_view_info`]({{< ref "viewer/mcp/tools-reference/get-view-info.md" >}})** — file type, page count, and page sizes, without rendering.
* **[`get_license_status`]({{< ref "viewer/mcp/tools-reference/get-license-status.md" >}})** — active licensing mode and metered consumption.

Ask in plain language — *"show me page 3 of the deck"*, *"what does the chart on page 12 say?"* — and the agent does the rest.

## Install for your platform

Installation, prerequisites, and client configuration are platform-specific; the tools and licensing model below are the same everywhere.

| Platform | Status | Install and setup |
|---|---|---|
| .NET | **Available** | [MCP server for .NET]({{< ref "viewer/net/mcp/_index.md" >}}) |
| Java | Planned | [Tell us you need it](https://forum.groupdocs.com/c/viewer/9) |
| Python | Planned | [Tell us you need it](https://forum.groupdocs.com/c/viewer/9) |
| Node.js | Planned | [Tell us you need it](https://forum.groupdocs.com/c/viewer/9) |

{{< alert style="warning" >}}
**Evaluation mode watermarks every rendered page**, and one server process opens at most 15 documents. Check [`get_license_status`]({{< ref "viewer/mcp/tools-reference/get-license-status.md" >}}) before rendering pages you will share; see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).
{{< /alert >}}

## Two things to know before you start

* **Ask for the page count first.** `render_page` does not reject a page number past the last page — it still returns an image. `get_view_info` tells the agent which pages exist.
* **Images are big.** Each page comes back as an inline PNG, often a few hundred kilobytes. Render the pages the task needs, not the whole document.

## Supported AI clients

| Client | How it connects |
|---|---|
| Claude Desktop | `claude_desktop_config.json` |
| Claude Code | `claude mcp add` CLI |
| VS Code / GitHub Copilot | user-level or workspace `mcp.json` |
| Visual Studio 2022 (17.14+) | `.mcp.json` in the solution root |
| Cursor | `~/.cursor/mcp.json` |
| Windsurf | `~/.codeium/windsurf/mcp_config.json` |
| Cline | Cline MCP settings |
| Codex CLI | `codex mcp add` CLI |
| JetBrains Rider | manual registration (Settings → AI Assistant → MCP) |

Exact config blocks for every client: [Register in AI clients]({{< ref "viewer/net/mcp/install-in-ai-clients.md" >}}). To look at the images, the agent needs a model that accepts image input; any client can still save the PNG files.

## Delivery channels

| | Docker (recommended) | NuGet (`dnx`) |
|---|---|---|
| Prerequisites | Docker only | .NET 10 SDK (+ `libgdiplus` on Linux/macOS) |
| Native dependencies | bundled in the image | installed by you (or the setup script) |
| Package | `ghcr.io/groupdocs-viewer/viewer-net-mcp` | `GroupDocs.Viewer.Mcp` on NuGet |
| Architectures | linux/amd64 + linux/arm64 (Apple Silicon native) | any OS with .NET 10 |

## How it works

The server uses MCP's **local stdio transport**: your AI client starts the server as a child process and talks to it over standard input/output. No inbound ports, no external endpoints, no telemetry — the data path is *agent → local server → local filesystem*. The rendered image goes to the agent, and from there to whatever model the agent uses. Details: [On-premise architecture]({{< ref "viewer/mcp/use-cases/on-premise-document-viewing.md" >}}).

## Resources

* [Quick start]({{< ref "viewer/mcp/getting-started/_index.md" >}}) · [Use cases]({{< ref "viewer/mcp/use-cases/_index.md" >}}) · [Troubleshooting & FAQ]({{< ref "viewer/mcp/troubleshooting-faq.md" >}})
* GitHub: [server source](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp) · [installer](https://github.com/groupdocs/GroupDocs.Mcp.Installer) · [integration tests](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp.Tests)
* [NuGet package](https://www.nuget.org/packages/GroupDocs.Viewer.Mcp) · [Docker image](https://github.com/orgs/groupdocs-viewer/packages/container/package/viewer-net-mcp) · [MCP Registry](https://registry.modelcontextprotocol.io/v0/servers?search=io.github.groupdocs-viewer/groupdocs-viewer-mcp)
* Questions: [Viewer forum](https://forum.groupdocs.com/c/viewer/9)
