---
id: mcp-uc-preview-documents-with-ai-agents
url: viewer/mcp/use-cases/preview-documents-with-ai-agents
title: How to let an AI agent see document pages
linkTitle: Preview with AI agents
weight: 1
description: "Let Claude, Cursor, or Copilot see pages of PDF, Word, Excel, and PowerPoint documents as images over MCP — rendered locally, returned straight to the agent."
keywords: AI agent see document page, render PDF page for Claude, document preview MCP, vision model read document page
productName: GroupDocs.Viewer MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to let an AI agent see document pages"
        description: "Let Claude, Cursor, or Copilot see pages of PDF, Word, Excel, and PowerPoint documents as images over MCP — rendered locally, returned straight to the agent."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Viewer MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "How many pages does the report have? Then show me the last one."
---

An agent that can read text still cannot see a chart, a stamp, a layout, or a scanned page. [`render_page`]({{< ref "viewer/mcp/tools-reference/render-page.md" >}}) turns any page into a PNG image and hands it to the agent, so a vision-capable model looks at the page the way you would.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "viewer/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The pattern

1. Put the document in the storage folder the server can see.
2. Ask: *"Show me page 3 of quarterly.pptx and tell me what the chart says."*
3. The agent calls [`get_view_info`]({{< ref "viewer/mcp/tools-reference/get-view-info.md" >}}) to learn the page count, then `render_page` for the page it needs.
4. The image comes back inline; a copy is saved as `quarterly_page3.png`.

## Always start with the page count

`render_page` does not check the page number. Ask for page 40 of a 12-page file and you still get an image — of a page that is not page 40. A good prompt makes the check explicit:

> How many pages does the report have? Then show me the last one.

## Pick the pages, not the document

Each page travels back as an inline PNG, typically a few hundred kilobytes. Rendering a 60-page document fills the agent's context with images it does not need. Ask for the pages that answer the question, or have the agent render a few and decide from there.

## Make sure the model can see

The image is only useful to a model that accepts image input. With a text-only model the agent still gets the saved file path, so it can pass the PNG on, but it cannot tell you what is on the page.

## The licence check

In evaluation mode every rendered page carries a watermark, and one server process opens at most 15 documents. Before rendering pages you will share:

> Is the viewer server licensed?

[`get_license_status`]({{< ref "viewer/mcp/tools-reference/get-license-status.md" >}}); see [Licensing]({{< ref "viewer/mcp/getting-started/licensing.md" >}}).

## Where to go next

* [Check a document before rendering]({{< ref "viewer/mcp/use-cases/inspect-a-document-before-rendering.md" >}}) — page counts, sizes, protected files.
* [Read charts and scans]({{< ref "viewer/mcp/use-cases/read-charts-and-scanned-pages.md" >}}) — the content text extraction misses.
* [Page images for reports and tickets]({{< ref "viewer/mcp/use-cases/page-images-for-reports-and-tickets.md" >}}) — saved PNGs as attachments.
* [On-premise architecture]({{< ref "viewer/mcp/use-cases/on-premise-document-viewing.md" >}}) — what leaves the machine.
