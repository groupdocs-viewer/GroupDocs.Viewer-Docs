---
id: product-overview
url: viewer/net/product-overview
title: GroupDocs.Viewer for .NET overview
linkTitle: Product overview
weight: 1
description: "GroupDocs.Viewer for .NET allows you to render documents in various formats as HTML, PDF, JPEG, and PNG files. You do not need to use third-party software to view files within your .NET application."
keywords: convert files, render files, view files, HTML, PDF, PNG, JPEG
productName: GroupDocs.Viewer for .NET
toc: True
---

## What is GroupDocs.Viewer?

GroupDocs.Viewer for .NET is a **.NET document viewer and rendering API for C#** that enables developers to view and render **190+ document and image formats** without installing Microsoft Office or other third-party applications. It supports popular formats such as **DOCX, PDF, XLSX, PPTX, CAD drawings, email messages, archives, eBooks, HTML, and raster images**.

GroupDocs.Viewer can render documents to **HTML, PDF, PNG, or JPG**, making it suitable for document previews, web-based viewers, PDF generation, thumbnails, and server-side document processing. The library runs on-premises on supported Windows, Linux, and macOS environments.

Starting with version [26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/), GroupDocs.Viewer for .NET is distributed as a NuGet metapackage. Install the GroupDocs.Viewer package, and NuGet automatically restores the runtime package that matches your project's target framework. See [Installation]({{< ref "viewer/net/getting-started/installation.md" >}}) for details.

Common use cases:

- **Document viewing and preview** - render DOCX, PDF, XLSX, PPTX, CAD, email, and other files as HTML, PDF, or images and display them directly in web or desktop applications.
- **Server-side document rendering** - convert documents to PDF or render individual pages as PNG or JPG images for previews, thumbnails, and document-processing workflows.
- **Web document viewers** - generate HTML pages from documents and integrate document viewing into ASP.NET Core and other .NET applications.
- **Document conversion and publishing** - render documents to PDF, HTML, or images for publishing, archiving, and content distribution.
- **AI and document processing workflows** - render supported documents to page-level images or HTML for downstream processing, indexing, and analysis.
- **Document security and presentation** - add text watermarks and configure PDF output options while rendering documents.

## Key Capabilities

| Capability | Description |
|---|---|
| **190+ file formats** | Render Word, Excel, PowerPoint, PDF, CAD, email, archive, eBook, HTML, image, and many other formats. See [supported formats]({{< ref "viewer/net/getting-started/supported-document-formats.md" >}}). |
| **Multiple output formats** | Render supported documents to **HTML, PDF, PNG, or JPG**. |
| **HTML rendering** | Generate HTML with embedded resources or separate CSS, fonts, and images using `ForEmbeddedResources(...)` or `ForExternalResources(...)`. |
| **Format-specific loading options** | Configure passwords, fonts, encodings, spreadsheet settings, email options, and other input-specific parameters. See [Loading]({{< ref "viewer/net/developer-guide/loading-documents" >}}). |
| **Rendering options** | Configure page size, DPI, image dimensions, rotation, watermarks, PDF permissions, and other output-specific settings. |
| **Page selection** | Render an entire document, selected pages, or individual pages. |
| **Text watermarks** | Add text watermarks during document rendering and configure their size, position, opacity, and other properties. See [Add Text Watermark]({{< ref "viewer/net/developer-guide/rendering-documents/add-text-watermark.md" >}}). |
| **PDF output options** | Configure PDF security, page order, image quality, and optimization when rendering to PDF. |
| **Attachments** | Extract and save attachments from supported email, archive, and PDF documents. |
| **Document information** | Get information such as file type and page count without rendering the entire document. |
| **Stream-based processing** | Load documents from `Stream`, which is useful when processing files from cloud storage, databases, HTTP requests, or other sources. |
| **Logging and diagnostics** | Configure logging through `ViewerSettings` and `ConsoleLogger` to help diagnose document-processing issues. See [Logging]({{< ref "viewer/net/developer-guide/logging.md" >}}). |
| **Caching** | Cache rendered results to improve performance when the same documents or pages are viewed repeatedly. See [Caching Results]({{< ref "viewer/net/developer-guide/caching-results" >}}). |
| **On-premises deployment** | Process documents locally without sending files to a cloud-based document-rendering service or requiring Microsoft Office. |

## Quick Example

{{< tabs "quick-example">}}
{{< tab "QuickExample.cs" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

// Render a DOCX document to HTML - the hello-world example.
using (Viewer viewer = new Viewer("./sample.docx"))
{
    HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(options);
}
```
{{< /tab >}}
{{< tab "RenderWithOptions.cs" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

// Open a password-protected DOCX, render to PDF with a watermark.
LoadOptions loadOptions = new LoadOptions();
loadOptions.Password = "secret";

using (Viewer viewer = new Viewer("./protected.docx", loadOptions))
{
    PdfViewOptions options = new PdfViewOptions("./protected.pdf");
    options.Watermark = new Watermark("CONFIDENTIAL");
    viewer.View(options);
}
```
{{< /tab >}}
{{< tab "quick-outputs.zip" >}}  
```text
page_1.html (317 KB)
page_2.html (149 KB)
page_3.html (113 KB)
```
[Download full output](/viewer/net/_output_files/product-overview/quick_example/quick-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

## Where to next

1. **Install GroupDocs.Viewer** - follow the [Installation guide]({{< ref "viewer/net/getting-started/installation.md" >}}) to add the NuGet package or install GroupDocs.Viewer using the available distribution options.
2. **Render your first document** - use [Quick Start Guide]({{< ref "viewer/net/getting-started/quick-start-guide.md" >}}) to build and run a sample .NET application.
3. **Run GroupDocs.Viewer in Docker** - see [How to run GroupDocs.Viewer in Docker]({{< ref "viewer/net/getting-started/how-to-run-in-docker.md" >}}) for a containerized .NET application.
4. **Learn document rendering** - explore the [Developer Guide]({{< ref "viewer/net/developer-guide" >}}) for loading documents, rendering pages, retrieving document information, selecting pages, adding watermarks, and working with attachments.
5. **Render specific file formats** - see [Rendering Basics]({{< ref "viewer/net/rendering-basics" >}}) for examples covering PDF, Word, Excel, presentations, CAD, email, and other formats.
6. **Build a web-based document viewer** - follow [Integrate GroupDocs.Viewer in an ASP.NET Core Web App]({{< ref "viewer/net/showcases/how-to-integrate-groupdocs-viewer-in-asp-net-core-web-app.md" >}}) to build a self-hosted document viewer with a web UI, storage, and caching.
