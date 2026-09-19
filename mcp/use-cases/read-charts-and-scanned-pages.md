---
id: mcp-uc-read-charts-and-scanned-pages
url: viewer/mcp/use-cases/read-charts-and-scanned-pages
title: How to have an AI agent read charts, diagrams, and scanned pages
linkTitle: Read charts and scans
weight: 3
description: "Let an AI agent read charts, diagrams, stamps, handwriting, and scanned pages by rendering them as images over MCP — locally, one page at a time."
keywords: AI read chart in PDF, scanned document to AI agent, read diagram from document MCP, vision model scanned page
productName: GroupDocs.Viewer MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to have an AI agent read charts, diagrams, and scanned pages"
        description: "Let an AI agent read charts, diagrams, stamps, handwriting, and scanned pages by rendering them as images over MCP — locally, one page at a time."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Viewer MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "On page 7 of the annual report there is a revenue chart. What were the figures for each quarter?"
---

Text extraction sees characters. It does not see a bar chart, a signature stamp, a diagram, or a scanned page that is only a picture. Rendering the page and giving the image to a vision-capable model covers exactly that gap.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "viewer/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The prompt

> On page 7 of the annual report there is a revenue chart. What were the figures for each quarter?

The agent renders page 7 with [`render_page`]({{< ref "viewer/mcp/tools-reference/render-page.md" >}}) and reads the values from the image.

## What works well

* **Charts and graphs** — values, trends, labels, and legends.
* **Scanned pages** — a PDF made from a scanner has no text layer; the image is the only way in.
* **Stamps, signatures, and handwriting** — whether a page is signed, and what the stamp says.
* **Layout questions** — "is the logo in the header?", "does this slide overflow?".

## Be honest about accuracy

A model reading an image can misread a small number or a faint scan. For figures that matter, ask the agent to say how sure it is, and check against the source when the answer goes into a decision. Rendering does not turn a scan into verified text.

## Find the page first

For a long document, find the page before rendering:

> How many pages does the report have? Render the contents page and tell me where the revenue chart is.

Two small renders instead of fifty.

## Watermarks get in the way

In evaluation mode the watermark sits on top of the page, which can hide exactly the detail you asked about. Check [`get_license_status`]({{< ref "viewer/mcp/tools-reference/get-license-status.md" >}}) before relying on what the agent reads.
