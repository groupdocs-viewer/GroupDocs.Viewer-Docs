---
id: mcp-uc-inspect-a-document-before-rendering
url: viewer/mcp/use-cases/inspect-a-document-before-rendering
title: How to check a document's pages before rendering them
linkTitle: Check before rendering
weight: 2
description: "Get a document's page count, page sizes, and file type with an AI agent over MCP before rendering any page — and handle password-protected files up front."
keywords: document page count AI agent, check page size PDF MCP, inspect document before preview, password protected document agent
productName: GroupDocs.Viewer MCP Server
toc: True
structuredData:
    showOrganization: True
    howTo:
        name: "How to check a document's pages before rendering them"
        description: "Get a document's page count, page sizes, and file type with an AI agent over MCP before rendering any page — and handle password-protected files up front."
        steps:
        - name: "Install the server"
          text: "Run the GroupDocs.Viewer MCP server with Docker or dnx and register it in your AI client."
        - name: "Put the documents in the storage folder"
          text: "Point GROUPDOCS_MCP_STORAGE_PATH at the folder that holds the files the agent should use."
        - name: "Ask the agent"
          text: "What is contract.docx — how many pages, and what page size?"
---

[`get_view_info`]({{< ref "viewer/mcp/tools-reference/get-view-info.md" >}}) answers the questions that decide what to render: what kind of file this is, how many pages it has, and how big each page is. It renders nothing, so it is fast and cheap.

{{< alert style="info" >}}
The commands and config snippets on this page are for the **.NET** build of the server — the only platform available today. Installation and client setup: [MCP server for .NET]({{< ref "viewer/net/mcp/_index.md" >}}). Other platforms will expose the same tools with their own launch command; everything else on this page applies unchanged.
{{< /alert >}}

## The prompt

> What is contract.docx — how many pages, and what page size?

The result names the file type, the page count, and the width and height of every page. The sizes are in points: 612 × 792 is US Letter, about 595 × 842 is A4.

## Why it matters

* **Page numbers.** `render_page` accepts any number, so the page count is the only guard against rendering a page that does not exist.
* **Mixed layouts.** A document with one landscape page among portrait pages shows it in the sizes. That is often the table or the drawing someone is asking about.
* **Spreadsheets.** A sheet can paginate into many more pages than you expect. Knowing the number first keeps the agent from rendering all of them.

## Protected documents

A password-protected file needs its password on every call. Give it up front:

> The password for contract.pdf is in my message. Check how many pages it has, then show me page 2.

Without it the call fails, and the agent can ask you for the password instead of guessing.

## When the file is not found

Pass the file name, not a full path from your machine. If the name does not match, the response lists the files the server can see, so the agent can correct itself.
