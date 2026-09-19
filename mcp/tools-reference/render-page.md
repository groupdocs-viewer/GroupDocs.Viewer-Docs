---
id: mcp-tool-render-page
url: viewer/mcp/tools-reference/render-page
title: render_page
weight: 1
description: "The render_page MCP tool renders one page of a PDF, Word, Excel, PowerPoint or 170+ other formats as a PNG image, returned inline to the agent and saved to storage."
keywords: render_page MCP tool, render document page to PNG AI, preview PDF page agent, document page image MCP
productName: GroupDocs.Viewer MCP Server
generated: true
serverVersion: 26.9.0
toc: True
---

`render_page` renders **one page** of a document as a **PNG image**. The image goes straight back to the agent, so a vision-capable model can look at the page itself, and a copy is saved to storage as `<name>_page<N>.png`. PDF, Word, Excel, PowerPoint, OpenDocument, HTML, email, and 170+ more formats are supported. Example prompt: *"Show me page 3 of the quarterly deck."*

**Tool description (as the AI agent sees it):**

> Renders a single document page as a PNG image and returns it inline (plus saves a copy to storage). Supports PDF, DOCX, XLSX, PPTX, ODT, RTF, HTML, EML, MSG, and 170+ more document formats. Call this tool immediately whenever the user asks to render, preview, or get a page image from a document. Do NOT pre-check whether files exist — just pass the filename the user provided. The tool resolves files from storage and returns an error with available files if a name is not found. Returns a CallToolResult containing both a TextContentBlock (saved file path under `<source-stem>_page<N>.png`) and an ImageContentBlock (the PNG bytes inline as `image/png`). On failure, IsError is set and the response text starts with 'Rendering failed for' followed by the underlying exception type, message, and inner-exception chain.

## Parameters

| Name | Type | Required | Description |
|---|---|---|---|
| `file` | object | yes |  — [FileInput shape]({{< ref "viewer/mcp/tools-reference/_index.md#the-fileinput-shape" >}}) |
| `page` | integer | no | Page number to render (1-based) |
| `password` | string | no | Password for protected documents |

## Example call

```json
{
  "name": "render_page",
  "arguments": {
    "file": {
      "filePath": "report.pdf"
    },
    "page": 1
  }
}
```

## Result

Two content blocks:

* **Text** — `Page 1 of 'report.pdf' Saved to: <output folder>/report_page1.png`. In evaluation mode it starts with `[Evaluation mode] Output may include watermarks.`
* **Image** — the PNG bytes inline as `image/png`, which the agent can read directly.

| Parameter | Default | Notes |
|---|---|---|
| `page` | `1` | 1-based. **Not checked against the page count**: a number past the last page still returns an image. Call `get_view_info` first. |
| `password` | none | For password-protected documents |

On failure `isError` is set and the text starts with `Rendering failed for`, followed by the exception type and message.

## Example prompts

* *"Show me page 1 of report.pdf."*
* *"Render the title slide of quarterly.pptx."*
* *"What does the chart on page 4 of the annual report show?"*
* *"Render page 2 of the protected contract; the password is in my notes."*

See it used end-to-end: [Preview documents with AI agents]({{< ref "viewer/mcp/use-cases/preview-documents-with-ai-agents.md" >}}).
