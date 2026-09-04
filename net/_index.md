---
id: home
url: viewer/net
title: GroupDocs.Viewer for .NET
weight: 1
description: "GroupDocs.Viewer for .NET allows you to render documents in various formats as HTML, PDF, JPEG, and PNG files. You do not need to use third-party software to view files within your .NET application."
keywords: render files, view files, HTML, PDF, JPEG, PNG
productName: GroupDocs.Viewer for .NET
hideChildren: True
toc: True
structuredData:
    showOrganization: true
---
<img src="/logo/128x128/groupdocs-viewer-net.png" alt="groupdocs-viewer-net-home" align="left" style="width:110px; margin: 0 30px 30px 0"/>

<img src="https://img.shields.io/nuget/v/groupdocs.viewer?label=GroupDocs.Viewer%20for%20.NET%20NuGet" alt="NuGet package">
<img src="https://img.shields.io/nuget/dt/GroupDocs.Viewer?label=nuget%20downloads" alt="NuGet downloads">

{{< button style="primary" link="https://releases.groupdocs.com/viewer/net/release-notes/" >}} <svg class="gdoc-icon gdoc-product-doc__btn-icon"><use xlink:href="/img/groupdocs-stack.svg#document"></use></svg> Release notes {{< /button >}}
{{< button style="primary" link="https://releases.groupdocs.com/viewer/net/" >}} {{< icon "gdoc_download" >}} Download ZIP or MSI {{< /button >}}
{{< button style="primary" link="https://www.nuget.org/packages/GroupDocs.Viewer" >}} {{< icon "gdoc_download" >}} Download from NuGet {{< /button >}}
{{< button style="primary" link="https://products.groupdocs.app/viewer/family" >}} <svg class="gdoc-icon gdoc-product-doc__btn-icon"><use xlink:href="/img/groupdocs-stack.svg#app"></use></svg> Online app {{< /button >}}

[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net/) is a **.NET document viewer and rendering API for C#** that lets developers view and render **190+ document and image formats** without installing Microsoft Office or other third-party software. It supports popular formats such as **DOCX, XLSX, PPTX, PDF, CAD drawings, emails, archives, and images**, and can render documents to **HTML, PDF, PNG, or JPG**.

<div style="clear:left"></div>

## Quick example

The following C# example shows how to render a DOCX document to HTML with embedded resources:

```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

// Render a DOCX file to HTML with embedded resources
using (Viewer viewer = new Viewer("sample.docx"))
{
    viewer.View(HtmlViewOptions.ForEmbeddedResources("page_{0}.html"));
}
```

Starting with version 26.8, **GroupDocs.Viewer** is distributed as a NuGet metapackage. Install the **GroupDocs.Viewer** package and NuGet automatically restores the runtime package that matches your project's target framework, such as `net462`, `net6.0`, or `net6.0-windows`. See [Installation]({{< ref "viewer/net/getting-started/installation.md" >}}) for details.

## Features

- **190+ Supported File Formats**: Render Microsoft Office, PDF, HTML, CAD, email, archives, images, and more.
- **Multiple Rendering Formats**: Render documents to HTML, PDF, PNG, and JPG.
- **Embedded or External Resources**: Produce self-contained HTML pages or HTML with separate CSS, fonts, and images.
- **Document Format Detection**: Automatically detects the format of input files.
- **Windows, Linux, and macOS**: One package covers .NET Framework 4.6.2+, .NET 6, and .NET 6 Windows.

## Supported File Formats

GroupDocs.Viewer supports 190+ file formats across documents, spreadsheets, presentations, images, emails, CAD files, archives, and other commonly used file types. See the [full list of supported formats]({{< ref "viewer/net/getting-started/supported-document-formats.md" >}}).

- **Microsoft Office**: Word, Excel, PowerPoint
- **PDF**: PDF, PDF/A
- **OpenDocument**: ODT, ODS, ODP
- **Images**: JPEG, PNG, TIFF, GIF, BMP, PSD
- **Email**: EML, MSG, PST, OST
- **eBook**: EPUB, MOBI
- **Text/Markdown**: TXT, MD
- **HTML/Web**: HTML, MHTML, CHM
- **AutoCAD**: DWG, DXF, DWF
- **Archives**: ZIP, RAR, 7Z

## Getting Started

To start viewing documents in a .NET application, check [System Requirements]({{< ref "viewer/net/getting-started/system-requirements.md" >}}), [install the GroupDocs.Viewer]({{< ref "viewer/net/getting-started/installation.md" >}}), and review the [Supported File Formats]({{< ref "viewer/net/getting-started/supported-document-formats.md" >}}) and [How to Run Examples guides]({{< ref "viewer/net/getting-started/how-to-run-examples.md" >}}).

## Developer Guide

The [Developer Guide]({{< ref "viewer/net/developer-guide" >}}) provides practical C# examples for working with GroupDocs.Viewer for .NET. Learn how to load documents, view and render files, retrieve document information, render specific pages, configure HTML/PDF/image output, and customize document rendering.

## Technical Support
If you encounter an issue while using GroupDocs.Viewer for .NET or have a question about document rendering, visit the [Technical Support page]({{< ref "viewer/net/technical-support" >}}). It provides available support channels, troubleshooting resources, and ways to report issues or request assistance.

