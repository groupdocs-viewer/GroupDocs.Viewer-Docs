---
id: mcp-uc-on-premise-document-viewing
url: viewer/mcp/use-cases/on-premise-document-viewing
title: "Running GroupDocs MCP servers on-premise: architecture and security model"
linkTitle: On-premise deployment
weight: 5
description: "Render documents for AI agents fully on-premise: local stdio transport, no external endpoints, no inbound ports, no telemetry."
keywords: on-premise MCP server, air-gapped document viewer, MCP security model, render documents locally for AI
productName: GroupDocs.Viewer MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "Running GroupDocs MCP servers on-premise: architecture and security model"
        description: "Render documents for AI agents fully on-premise: local stdio transport, no external endpoints, no inbound ports, no telemetry."
        steps:
        - name: "Run the pinned image inside the perimeter"
          text: "Start the GroupDocs.Viewer MCP server from its versioned Docker image as a child process of the AI client."
        - name: "Mount only the folders the agent may reach"
          text: "Map the document folder read-write and the license folder read-only."
        - name: "Choose the license mode"
          text: "Use a license file for fully offline operation; metered licensing needs outbound egress for usage reports."
---

Render documents for AI agents **fully on-premise**: the GroupDocs.Viewer MCP server uses local stdio transport with **no external endpoints, no inbound ports, and no telemetry**. This page is the one to send your security reviewer.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "viewer/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The architecture in one picture

```text
+--------------+          +--------------------+         +------------------+
|  AI client   |  stdio   | MCP server process | reads / | local filesystem |
| (Claude, VS  | <----->  | (GroupDocs engine) | <-----> | storage / output |
| Code, agent) | JSON-RPC |   child process    |  writes |     folders      |
+--------------+          +--------------------+         +------------------+
```

* **Transport:** the AI client *starts the server as a child process* and communicates over standard input/output. The server never listens on a network socket.
* **Data path:** agent → local server → local filesystem. Documents are read from the folders you configure, and page images are written there.
* **Network use:** only at install time (nuget.org or ghcr.io/docker.io). With a license file the server makes no outbound calls at runtime; metered licensing is the exception (see below). Air-gapped: pre-pull the image or pre-cache the package and pin the version.
* **Telemetry:** none. The engine renders documents in-process.

## What does leave: the image

This server's output is a picture of the page, and it goes back to the agent. Whatever model the agent uses sees that image. With a hosted model, the rendered page travels to that provider as part of the conversation, just as quoted text would. With a locally-hosted model, nothing leaves at all.

Treat a rendered page like any other document content you paste into a chat, and render only the pages the task needs.

## Docker deployment inside the perimeter

```bash
docker run --rm -i \
  -v /srv/documents:/data \
  -v /srv/licenses:/license:ro \
  -e GROUPDOCS_MCP_STORAGE_PATH=/data \
  -e GROUPDOCS_MCP_OUTPUT_PATH=/data/pages \
  -e GROUPDOCS_LICENSE_PATH=/license/GroupDocs.Viewer.lic \
  ghcr.io/groupdocs-viewer/viewer-net-mcp:26.9.0
```

* Pin the tag (`:26.9.0`, not `:latest`).
* A separate output path keeps page images out of the source folder.
* Licence read-only; mount only the folders the agent should reach.

## License management

* **License file** — read from local disk by the local process. Fully offline, and the way to render without watermarks.
* **Metered (pay-per-use)** — reports *usage* to GroupDocs servers, so it needs outbound egress. Document content is never part of that report.

Both are covered in [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).

## What this fits — honestly

**A good fit:** letting agents read charts, scans, and layouts; page previews for reviews and tickets; any of those inside a network that does not allow document uploads.

**Not what this is:** a document converter or an OCR engine. It produces page images; turning them into verified text is a separate step.

## FAQ

**Does any document content leave the machine?** Not from the server. The rendered image goes to your agent, and from there to its model.

**Does it need internet at runtime?** Not with a license file. Metered licensing needs outbound access to report usage.

**What ports does it open?** None. stdio only.

**How do I prove that?** The [verification script]({{< ref "viewer/net/mcp/troubleshooting.md" >}}#verifying-an-installation-end-to-end) performs a real handshake and a real engine call so you can watch exactly what happens.
