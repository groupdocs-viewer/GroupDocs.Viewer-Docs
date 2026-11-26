---
id: sdk-cloud-mcp
url: viewer/python-net/sdk-cloud-mcp
title: SDK, Cloud or MCP?
linkTitle: SDK, Cloud or MCP?
weight: 8
description: "Choose between GroupDocs.Viewer for Python via .NET (the on-premise SDK), GroupDocs.Viewer Cloud (a hosted REST API) and the GroupDocs.Viewer MCP server (page images for AI agents)."
keywords: GroupDocs.Viewer, Python, SDK, Cloud, REST API, MCP, Model Context Protocol, AI agents, document viewer, decision guide
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

GroupDocs.Viewer reaches Python code in three ways. They share the rendering engine but differ in where the documents are processed and who writes the code. This page helps you pick one.

## At a glance

| | GroupDocs.Viewer for Python via .NET (SDK) | GroupDocs.Viewer Cloud | GroupDocs.Viewer MCP server |
|---|---|---|---|
| **What it is** | A Python package (`pip install groupdocs-viewer-net`) | A hosted REST API with a Python SDK | A Model Context Protocol server with rendering tools |
| **Who calls it** | Your Python code | Your code, over HTTPS | An AI agent (Claude, Cursor, GitHub Copilot and other MCP clients) |
| **Where documents go** | Stay on your machine or server | Uploaded to GroupDocs Cloud storage | Stay on the machine that runs the server |
| **Internet access** | Not needed | Required | Not needed once installed |
| **What you can do** | The whole API: HTML, PDF, PNG and JPEG output, per-format options, page selection, watermarks, attachments, document info, rendering to memory, cancellation, and a browser viewer (`groupdocs-viewer`) | Rendering and document info through REST endpoints | Render one page as a PNG image (`render_page`), read the page count and sizes (`get_view_info`), check the license (`get_license_status`) |
| **Runs on** | Windows x64, Linux x64, macOS 12+ (Intel and Apple Silicon); Python 3.5 - 3.14 | Any platform that can make HTTPS calls | .NET tool (`dnx GroupDocs.Viewer.Mcp`), or its Docker image |
| **Licensing** | GroupDocs.Viewer license (evaluation mode without one) | GroupDocs Cloud subscription | GroupDocs.Viewer license |

## Choose the SDK when

- Documents must not leave your environment (compliance, air-gapped systems, on-premise deployments).
- You need the whole API: every output format and option, page selection, attachments, and rendering into your own storage.
- You build a document viewer into a web application: render pages on demand, or use the [GroupDocs.Viewer UI package for Python](https://pypi.org/project/groupdocs-viewer-net-ui/).
- You render many documents in batch jobs and want no network round trips.

Start with [Installation]({{< ref "viewer/python-net/getting-started/installation.md" >}}) and [Hello, World!]({{< ref "viewer/python-net/getting-started/hello-world.md" >}}). To look at documents without writing code, use the [`groupdocs-viewer` command]({{< ref "viewer/python-net/getting-started/view-documents-in-the-browser.md" >}}) that comes with the package.

## Choose GroupDocs.Viewer Cloud when

- You prefer a managed service to installing and updating a package.
- Your application already works with cloud storage, or runs where installing native packages is not possible.

See [GroupDocs.Viewer Cloud for Python](https://products.groupdocs.cloud/viewer/python/) and its [documentation](https://docs.groupdocs.cloud/viewer/).

## Choose the MCP server when

- An AI agent should see a document itself, as a step in a conversation or a workflow: read a chart, check a layout, describe a scanned page.
- You want local processing for an agent: the server runs next to your project, and documents stay on that machine.

See the [GroupDocs.Viewer MCP server]({{< ref "viewer/mcp/_index.md" >}}) documentation.

## Combine them

- **SDK + documentation MCP server**: when an AI coding assistant writes Python code against this package, connect it to the [documentation MCP server](https://docs.groupdocs.com/mcp) and let it read the `AGENTS.md` shipped inside the package. See [Agents and LLM Integration]({{< ref "viewer/python-net/agents-and-llm-integration.md" >}}).
- **SDK in production, MCP server for prototyping**: let an agent look at the documents through the MCP server, then implement the rendering you need with the SDK.
