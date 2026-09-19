---
id: mcp-supported-formats
url: viewer/mcp/supported-formats
title: Supported formats
weight: 4
description: "The MCP server exposes the full GroupDocs.Viewer engine: PDF, Word, Excel, PowerPoint, OpenDocument, email, CAD, images and 170+ formats render to PNG."
keywords: MCP server supported formats, render PDF page MCP, docx to image agent, pptx slide to png, email to image MCP
productName: GroupDocs.Viewer MCP Server
toc: True
---

The MCP server exposes the **full GroupDocs.Viewer engine** for reading documents: every format the .NET library can open — 170+ document, spreadsheet, presentation, email, CAD, and image formats — can be rendered through [`render_page`]({{< ref "viewer/mcp/tools-reference/render-page.md" >}}) and inspected with [`get_view_info`]({{< ref "viewer/mcp/tools-reference/get-view-info.md" >}}). The canonical list lives in the library documentation: [supported file formats]({{< ref "viewer/net/getting-started/supported-document-formats.md" >}}).

What changes by family:

* **PDF, Word, RTF, OpenDocument text** — one image per printed page, exactly as the document paginates.
* **Excel, OpenDocument spreadsheets, CSV** — the engine splits a sheet into pages; `get_view_info` shows how many there are before you render.
* **PowerPoint, OpenDocument presentations** — one image per slide.
* **Email (EML, MSG)** — the message with its headers, rendered as a page.
* **Images and CAD** — rendered to PNG, which is also a simple way to let an agent see a format it cannot open itself.

**The output is PNG only through MCP.** The library also renders to HTML, JPG, and PDF, but those are not exposed as tools today.
