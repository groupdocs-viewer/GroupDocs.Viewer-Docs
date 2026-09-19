---
id: mcp-troubleshooting-faq
url: viewer/mcp/troubleshooting-faq
title: Troubleshooting & FAQ
weight: 5
description: "Solutions to the most common GroupDocs.Viewer MCP server issues — server not appearing in the client, startup failures, missing native dependencies, and first-launch timeouts."
keywords: MCP server not showing up in Claude Desktop, Claude can't see MCP tools, MCP server failed to start, dnx command not found, libgdiplus not found error, render document page AI agent, preview PDF page Claude, document to PNG MCP, page image for vision model
productName: GroupDocs.Viewer MCP Server
toc: True
---

Solutions to the most common GroupDocs.Viewer MCP server issues — server not appearing in the client, startup failures, missing native dependencies, and first-launch timeouts.

{{< alert style="info" >}}
**Platform-specific troubleshooting:** runtime problems depend on which build you run. For the `dnx` runner, native graphics libraries, and the Docker channel, see [Troubleshooting (.NET)]({{< ref "viewer/net/mcp/troubleshooting.md" >}}). The issues on this page apply to every platform.
{{< /alert >}}

## Why is my MCP server not showing up in Claude Desktop?

1. **Restart the client** — every client reads its MCP config only at startup.
2. Check the config file location for your OS ([per-client reference]({{< ref "viewer/net/mcp/install-in-ai-clients.md" >}})) and that the entry sits under the right root key (`mcpServers` for Claude Desktop/Cursor/Windsurf, `servers` for VS Code/VS 2022).
3. Validate the JSON — a trailing comma silently breaks the whole file. If you used the [installer](https://github.com/groupdocs/GroupDocs.Mcp.Installer), a timestamped `.bak` of your previous config sits next to the file for comparison.

## The first tool call is slow or fails once, then works

A **cold cache**: on the very first use the server's package or image is still downloading while the client is already waiting on the connection. Warming it once fixes it for good — the exact command depends on your build: [.NET]({{< ref "viewer/net/mcp/troubleshooting.md" >}}#the-first-tool-call-is-slow-or-fails-once-and-then-works).

## The server fails to start, or a runtime dependency is missing

These are properties of the build you run rather than of MCP, so the fixes live with the platform:

| Symptom | Where the fix is |
|---|---|
| `dnx: command not found` | [.NET troubleshooting]({{< ref "viewer/net/mcp/troubleshooting.md" >}}#dnx-command-not-found) — `dnx` ships inside the .NET 10 SDK |
| `DllNotFoundException: libgdiplus` on Linux/macOS | [.NET troubleshooting]({{< ref "viewer/net/mcp/troubleshooting.md" >}}#dllnotfoundexception-libgdiplus) — install the native graphics libraries, or use the Docker image |
| "docker daemon not reachable" | [.NET troubleshooting]({{< ref "viewer/net/mcp/troubleshooting.md" >}}#docker-daemon-not-reachable) — start Docker Desktop or `dockerd` |

## The agent says a file does not exist

Pass the **file name**, not a full path from your machine: the server resolves names inside its configured storage folder. When a name is not found the tool responds with the list of files it can see, so the agent can correct itself — check that list against [`GROUPDOCS_MCP_STORAGE_PATH`]({{< ref "viewer/net/mcp/configuration.md" >}}).

## I asked for a page that does not exist and still got an image

`render_page` does not check the page number against the document. Asking for page 99 of a two-page PDF returns an image and saves it as `<name>_page99.png`, with no error. Ask for the page count first with [`get_view_info`]({{< ref "viewer/mcp/tools-reference/get-view-info.md" >}}) and render only pages that exist.

## Why do the images have a watermark?

The server is running in **evaluation mode**. Every rendered page carries a watermark, and the response text starts with `[Evaluation mode] Output may include watermarks.` Check [`get_license_status`]({{< ref "viewer/mcp/tools-reference/get-license-status.md" >}}) and see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).

## Rendering stopped working after a while

In evaluation mode one server process opens at most 15 documents. After that, calls fail with an evaluation-cap error until the server restarts. Restart your AI client, or configure a licence.

## Can it render to HTML or PDF instead of PNG?

Not through MCP today. `render_page` produces PNG only. The GroupDocs.Viewer library itself renders to HTML, JPG, PNG, and PDF — see the [library documentation]({{< ref "viewer/net/_index.md" >}}) if you need those formats in your own code.

## The agent's context fills up quickly

Each rendered page travels back inline as a PNG, typically a few hundred kilobytes of base64. Render the pages you need, not the whole document, and let the agent work from the saved files when it only needs to hand them on.

## Verifying an installation end-to-end

Ask your agent *"list your GroupDocs Viewer tools and the license status"* — it should name `render_page`, `get_view_info`, `get_license_status`. For a scripted check that performs the real MCP handshake and a live call through the engine, see [verifying a .NET installation]({{< ref "viewer/net/mcp/troubleshooting.md" >}}#verifying-an-installation-end-to-end).

## Still stuck?

Post your config (redact license paths) and the client name in the [Viewer forum](https://forum.groupdocs.com/c/viewer/9) — we answer MCP questions daily. Bugs: [GitHub issues](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp/issues).
