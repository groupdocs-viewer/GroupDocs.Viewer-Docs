---
id: mcp-tool-get-view-info
url: viewer/mcp/tools-reference/get-view-info
title: get_view_info
weight: 2
description: "The get_view_info MCP tool returns a document's file type, page count, and per-page dimensions without rendering anything."
keywords: get_view_info MCP, document page count MCP, page dimensions AI agent, inspect document before rendering
productName: GroupDocs.Viewer MCP Server
generated: true
serverVersion: 26.9.0
toc: True
---

`get_view_info` returns the **file type, page count, and the size of every page** without rendering anything. It is the check before `render_page`: it tells the agent which page numbers exist. Example prompt: *"How many pages does contract.docx have?"*

**Tool description (as the AI agent sees it):**

> Gets document view information including file type, page count, and per-page dimensions — without rendering. Supports PDF, DOCX, XLSX, PPTX, ODT, RTF, HTML, EML, MSG, and 170+ more document formats. Call this tool whenever the user asks for view info, page dimensions, or wants to inspect a document before rendering. Do NOT pre-check whether files exist — just pass the filename the user provided. The tool resolves files from storage and returns an error with available files if a name is not found. Returns a JSON object with `fileName`, `fileType`, `pageCount`, and `pages` (array of `{number, width, height, name, visible}`). On failure, the response text starts with 'View-info lookup failed for' followed by the underlying exception type, message, and inner-exception chain.

## Parameters

| Name | Type | Required | Description |
|---|---|---|---|
| `file` | object | yes |  — [FileInput shape]({{< ref "viewer/mcp/tools-reference/_index.md#the-fileinput-shape" >}}) |
| `password` | string | no | Password for protected documents |

## Example call

```json
{
  "name": "get_view_info",
  "arguments": {
    "file": {
      "filePath": "report.pdf"
    }
  }
}
```

## Result

A JSON object:

```json
{
  "fileName": "report.pdf",
  "fileType": "Portable Document Format File (.pdf)",
  "pageCount": 2,
  "pages": [
    { "number": 1, "width": 612, "height": 792, "name": null, "visible": true },
    { "number": 2, "width": 612, "height": 792, "name": null, "visible": true }
  ]
}
```

`name` and `visible` are filled where the format has them — worksheet names, hidden slides or sheets — and are `null` / `true` otherwise.

On failure the text starts with `View-info lookup failed for`, followed by the exception type and message.

## Example prompts

* *"How many pages does contract.docx have?"*
* *"What size are the pages in this PDF — Letter or A4?"*
* *"Inspect report.pdf before rendering anything."*
