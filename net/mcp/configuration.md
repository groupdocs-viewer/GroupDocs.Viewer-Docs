---
id: mcp-configuration
url: viewer/net/mcp/configuration
title: Configuration
weight: 6
description: "Configure the GroupDocs.Viewer MCP server through one config file: set the documents folder, output folder, license path, delivery channel (Docker or NuGet), and target clients in a single place."
keywords: MCP server environment variables, MCP server config file, MCP server storage path, pin MCP server version
productName: GroupDocs.Viewer MCP Server for .NET
toc: True
---

Configure the GroupDocs.Viewer MCP server through **one config file**: the documents folder, output folder, license path, delivery channel (Docker or NuGet), and target clients — set once, applied everywhere. This is the installer's `groupdocs-mcp.config.json`:

```json
{
  "channel":     "docker",
  "registry":    "ghcr",
  "clients":     ["claude-desktop", "vscode"],
  "version":     "latest",
  "storagePath": "D:/Storage/Documents",
  "outputPath":  "D:/Storage/Output",
  "licensePath": "D:/Storage/Licenses/GroupDocs.Viewer.lic",
  "products":    ["viewer"]
}
```

* `channel` — `docker` (self-contained, recommended) or `nuget` (`dnx`, needs the .NET 10 SDK).
* `storagePath` — where the server reads input documents (created if missing).
* `outputPath` — optional separate folder for rendered page images; empty = same as storage.
* `licensePath` — empty string = evaluation mode (safe, no error); see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).
* Metered (pay-per-use) licensing is configured with environment variables rather than this file, so the private key is never written to disk — see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}#metered-pay-per-use-licensing).
* `version` — `"latest"` or a pin such as `"26.9.0"`. Pinning is recommended for shared/committed configs.
* Any CLI switch overrides the file: `-Channel`, `-Products`, `-Clients`, `-Version`.

## Environment variables (manual installs)

When you register the server manually, the same settings travel as environment variables:

| Variable | Description | Default |
|---|---|---|
| `GROUPDOCS_MCP_STORAGE_PATH` | Base folder for input and output files | current directory |
| `GROUPDOCS_MCP_OUTPUT_PATH` | Optional separate folder for output files | same as storage |
| `GROUPDOCS_LICENSE_PATH` | Path to a GroupDocs license file | empty = evaluation mode |
| `GROUPDOCS_METERED_PUBLIC_KEY` | Metered public key. Requires the private key too; takes precedence over the license file | unset |
| `GROUPDOCS_METERED_PRIVATE_KEY` | Metered private key. **Treat as a secret** — see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}) | unset |

## Docker volume mapping

On the docker channel, host folders map into the container:

* `storagePath` → `/data` (with `GROUPDOCS_MCP_STORAGE_PATH=/data`)
* `outputPath` → `/data/output` (when set)
* license folder → `/license:ro` with `GROUPDOCS_LICENSE_PATH=/license/<file>.lic`

```bash
docker run --rm -i \
  -v /path/to/documents:/data \
  -v /path/to/license-folder:/license:ro \
  -e GROUPDOCS_LICENSE_PATH=/license/GroupDocs.Viewer.lic \
  ghcr.io/groupdocs-viewer/viewer-net-mcp:latest
```

## Compose-only setups

For container fleets without client registration, generate a `docker-compose.yml`:

```powershell
./install-groupdocs-mcp.ps1 -EmitCompose -Clients @()
```
