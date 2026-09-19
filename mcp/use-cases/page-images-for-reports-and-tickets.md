---
id: mcp-uc-page-images-for-reports-and-tickets
url: viewer/mcp/use-cases/page-images-for-reports-and-tickets
title: How to create page images of documents for reports and tickets
linkTitle: Page images for reports
weight: 4
description: "Create PNG images of selected document pages with an AI agent over MCP, for bug reports, review notes, and presentations — saved locally with predictable names."
keywords: document page to PNG, create page screenshots AI, PDF page image for report, slide thumbnail MCP
productName: GroupDocs.Viewer MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to create page images of documents for reports and tickets"
        description: "Create PNG images of selected document pages with an AI agent over MCP, for bug reports, review notes, and presentations — saved locally with predictable names."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Viewer MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "Render pages 1, 4, and 9 of the specification and tell me where the files are."
---

Every rendered page is also saved to your output folder as `<document>_page<N>.png`. That makes the server a quick way to get page images for a ticket, a review note, or a slide.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "viewer/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The prompt

> Render pages 1, 4, and 9 of the specification and tell me where the files are.

The agent calls [`render_page`]({{< ref "viewer/mcp/tools-reference/render-page.md" >}}) three times. The files are named `specification_page1.png`, `specification_page4.png`, and `specification_page9.png`, so you can find them without asking.

## Typical uses

* **Bug reports** — attach the page of the manual or the invoice that shows the problem.
* **Document reviews** — a thumbnail of each changed page in the review notes.
* **Slides** — a picture of the one diagram you want to show, without reformatting it.

## Keep the set small

Rendering is one page per call, and each image also travels back to the agent inline. Ask for the pages you need. If you only want the files, say so, so the agent does not describe every image:

> Just save the images; you do not need to describe them.

## Check the numbers

Page numbers past the end still produce an image, named with the number you asked for. Check the page count with [`get_view_info`]({{< ref "viewer/mcp/tools-reference/get-view-info.md" >}}) first so a file called `_page12.png` really is page 12.

## Licence before sharing

Evaluation-mode images carry a watermark. If the images leave your team, check [`get_license_status`]({{< ref "viewer/mcp/tools-reference/get-license-status.md" >}}) first.
