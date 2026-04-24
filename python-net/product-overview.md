---
id: product-overview
url: viewer/python-net/product-overview
title: GroupDocs.Viewer for Python via .NET Overview
linkTitle: Product overview
weight: 1
description: "GroupDocs.Viewer for Python via .NET renders 170+ file formats — DOCX, PDF, XLSX, PPTX, CAD, email, archives, images — to HTML, PDF, PNG, or JPG with embedded or external resources, watermarks, page selection, and AI-pipeline friendly output."
keywords: viewer, render, view, document, HTML, PDF, PNG, JPG, DOCX, XLSX, PPTX, image, CAD, email, archive, python, LLM, RAG
productName: GroupDocs.Viewer for Python via .NET
toc: True
---

## What is GroupDocs.Viewer?

GroupDocs.Viewer for Python via .NET is a native Python library that renders **170+ file formats** — DOCX, PDF, XLSX, PPTX, CAD drawings, email messages, compressed archives, eBooks, and raster images — into HTML, PDF, PNG, or JPG output. It runs entirely on-premise, requires no Microsoft Office installation, and ships as a pre-built wheel on Windows, Linux, and macOS.

Typical uses include:

- **In-app document preview** — embed HTML rendering into desktop or web applications so users can read any document format without leaving the app.
- **Server-side rendering pipelines** — convert user uploads to PDF for archival or to per-page PNG for thumbnail generation.
- **AI / RAG preprocessing** — render DOCX, XLSX, EML, and scanned PDFs into page-level PNG images or structured HTML that LLMs can consume. See [Agents and LLM Integration]({{< ref "viewer/python-net/agents-and-llm-integration" >}}).
- **Redaction and watermarking** — apply text watermarks during rendering, or produce password-protected PDFs from unprotected sources.
- **Accessibility and search** — generate semantic HTML from PDFs, DWGs, and legacy office formats for indexing and screen readers.

## Key Capabilities

| Capability | Description |
|---|---|
| **170+ file formats** | DOCX, PDF, XLSX, PPTX, CAD, email, archives, eBooks, HTML, images, and more. See [supported formats]({{< ref "viewer/python-net/getting-started/supported-document-formats.md" >}}). |
| **Four output targets** | HTML (embedded or external resources), PDF, PNG, and JPG. Every source format renders to every target. |
| **Load options per format** | [Passwords, fonts, encodings, sheet indexes, email fields]({{< ref "viewer/python-net/developer-guide/loading-documents" >}}). |
| **View options per target** | DPI, page size, watermarks, rotation, image size limits, PDF permissions — tuned per output format. |
| **Page selection** | Render the entire document, a subset of pages, or a single page at a time. |
| **Embedded or external HTML resources** | `for_embedded_resources(...)` produces self-contained pages; `for_external_resources(...)` emits separate CSS, font, and image files for indexing systems. |
| **Watermarks** | [Add text watermarks]({{< ref "viewer/python-net/developer-guide/rendering-documents/add-text-watermark" >}}) during rendering — color, size, position, opacity. |
| **PDF rendering options** | [Protect]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/protect-pdf-document" >}}) output PDFs, [reorder pages]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/reorder-pages" >}}), adjust image quality, and apply optimization. |
| **Attachments** | [Extract attachments]({{< ref "viewer/python-net/developer-guide/processing-attachments/how-to-extract-and-save-attachments" >}}) from emails, archives, and PDFs. |
| **Document inspection** | [Read file type, page count, and attachment list]({{< ref "viewer/python-net/developer-guide/get-document-info" >}}) without rendering. |
| **Streams** | Load input from file-like objects — handy for cloud blobs and HTTP bodies. |
| **Logging and diagnostics** | Wire `ConsoleLogger` through `ViewerSettings` for production traces. |
| **On-premise** | No cloud calls, no Microsoft Office install, no network traffic. |

## Quick Example

{{< tabs "quick-example">}}
{{< tab "quick_example.py" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def quick_example():
    """Render a DOCX document to HTML — the hello-world example."""
    with Viewer("./sample.docx") as viewer:
        options = HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(options)

if __name__ == "__main__":
    quick_example()
```
{{< /tab >}}
{{< tab "render_with_options.py" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import LoadOptions, PdfViewOptions, Watermark

def render_with_options():
    """Open a password-protected DOCX, render to PDF with a watermark."""
    load_options = LoadOptions()
    load_options.password = "secret"

    with Viewer("./protected.docx", load_options) as viewer:
        options = PdfViewOptions("./protected.pdf")
        options.watermark = Watermark("CONFIDENTIAL")
        viewer.view(options)

if __name__ == "__main__":
    render_with_options()
```
{{< /tab >}}
{{< tab "quick-outputs.zip" >}}  
```text
page_1.html (317 KB)
page_2.html (149 KB)
page_3.html (113 KB)
```
[Download full output](/viewer/python-net/_output_files/product-overview/quick_example/quick-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

## Where to next

1. **Install the package** — [Installation]({{< ref "viewer/python-net/getting-started/installation" >}}) walks through PyPI and offline wheel installation for Windows, Linux, and macOS.
2. **Run your first rendering** — [Quick Start Guide]({{< ref "viewer/python-net/getting-started/quick-start-guide" >}}) renders a DOCX to HTML, PDF, and PNG in five minutes.
3. **Explore the examples** — [Running Examples]({{< ref "viewer/python-net/getting-started/how-to-run-examples" >}}) clones the runnable repository and runs every documented scenario locally or in Docker.
4. **Use it in depth** — the [Developer Guide]({{< ref "viewer/python-net/developer-guide" >}}) covers loading, rendering, inspecting, page selection, watermarks, and attachments.
5. **Render per format** — the [Rendering Basics]({{< ref "viewer/python-net/rendering-basics" >}}) section has per-format guides for PDF, Word, Excel, presentations, CAD, email, and more.
6. **Plug it into AI pipelines** — [Agents and LLM Integration]({{< ref "viewer/python-net/agents-and-llm-integration" >}}) explains the MCP server, `AGENTS.md`, and how to chain GroupDocs.Viewer with GroupDocs.Conversion for exotic inputs.
