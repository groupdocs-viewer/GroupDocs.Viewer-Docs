---
id: mcp-net-troubleshooting
url: viewer/net/mcp/troubleshooting
title: Troubleshooting (.NET)
linkTitle: Troubleshooting
weight: 9
description: "Fixes for problems specific to the .NET build of the GroupDocs.Viewer MCP server — dnx not found, missing libgdiplus on Linux and macOS, cold NuGet cache on first launch, and Docker daemon errors."
keywords: dnx command not found, libgdiplus not found error, .NET 10 SDK MCP server, MCP server first launch timeout, docker daemon not reachable
productName: GroupDocs.Viewer MCP Server for .NET
toc: True
---

Problems that only affect the **.NET** build of the server — the `dnx` runner, its native dependencies, and the Docker channel. For issues that are the same on every platform (the server not appearing in your client, evaluation limits, engine behaviour), see [Troubleshooting & FAQ]({{< ref "viewer/mcp/troubleshooting-faq.md" >}}).

## `dnx` command not found

The `dnx` runner ships **inside the .NET 10 SDK** — it is not a separate download. Install the [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0) (the `setup/<os>` bootstrapper in the [installer](https://github.com/groupdocs/GroupDocs.Mcp.Installer) does it for you), then open a **new** terminal so `PATH` refreshes.

* Windows: `C:\Program Files\dotnet\dnx.cmd`
* Linux / macOS: `dnx` next to the `dotnet` binary

Check with `dotnet --version` (expect 10.x) and `dnx --help`.

{{< alert style="info" >}}
Your AI client has its own `PATH`, which may differ from your terminal's — a GUI client launched from the desktop often does not see a `PATH` set in your shell profile. If `dnx` works in the terminal but the client reports it missing, that mismatch is the reason; use an absolute command path in the client entry, or launch the client from a terminal.
{{< /alert >}}

## `DllNotFoundException: libgdiplus`

On Linux and macOS in the NuGet channel, the engine needs native graphics libraries that are not installed by default:

```bash
# Linux (Debian/Ubuntu)
sudo apt-get install -y --no-install-recommends \
  libgdiplus libfontconfig1 ttf-mscorefonts-installer
# macOS
brew install mono-libgdiplus
```

Or switch to the **Docker channel**, where every native dependency is already inside the image — this is why Docker is the recommended default on Linux and macOS. See [Install on Linux]({{< ref "viewer/net/mcp/linux-installation.md" >}}) / [Install on macOS]({{< ref "viewer/net/mcp/macos-installation.md" >}}).

## The first tool call is slow, or fails once and then works

A **cold cache**: on first use `dnx` downloads the package (or Docker pulls the image) while your client is already waiting on the connection. Warm it once:

```powershell
./install-groupdocs-mcp.ps1 -Prewarm
```

Or run the launch command yourself once in a terminal — `dnx GroupDocs.Viewer.Mcp --yes`, or `docker pull ghcr.io/groupdocs-viewer/viewer-net-mcp:latest`. The installer's `-Verify` mode pre-warms automatically.

## "docker daemon not reachable"

Start Docker Desktop (or `dockerd`). The installer's preflight detects this **before** writing any config and prints the exact `setup/<os>` command that fixes the environment.

## Pinning a version

`dnx GroupDocs.Viewer.Mcp --yes` resolves the latest stable release on every launch. For shared or committed configurations, pin it — `dnx GroupDocs.Viewer.Mcp@26.9.0 --yes`, or the image tag `:26.9.0` instead of `:latest`.

## Verifying an installation end-to-end

```powershell
./verify-groupdocs-mcp.ps1
```

Performs the real MCP handshake per configured product and — when a document exists in your storage folder — a live `get_document_info` call through the engine. Exit `0` = healthy; failures print the server's own error text.

## Still stuck?

Post your config (redact license paths) and the client name in the [Viewer forum](https://forum.groupdocs.com/c/viewer/9). Bugs: [GitHub issues](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp/issues).
