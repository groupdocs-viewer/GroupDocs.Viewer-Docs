---
id: home
url: viewer/python-net
title: GroupDocs.Viewer for Python via .NET
weight: 1
description: "Native Python library that renders 170+ file formats — DOCX, PDF, XLSX, PPTX, CAD, email, archives, images — to HTML, PDF, PNG, or JPG on Windows, Linux, and macOS. No Microsoft Office or Adobe Acrobat required."
keywords: GroupDocs.Viewer, Python via .NET, document rendering, file viewer, PDF viewer, HTML rendering, DOCX, XLSX, PPTX, CAD, image, email, archive, eBook, on-premise, Windows, Linux, macOS
productName: GroupDocs.Viewer for Python via .NET
hideChildren: true
toc: True
structuredData:
    showOrganization: true
---

<img src="/logo/128x128/groupdocs-viewer-python.png" alt="groupdocs-viewer-python-via-net-home" align="left" style="width:110px; margin: 0 30px 30px 0"/>

<img src="https://img.shields.io/pypi/v/groupdocs-viewer-net?label=GroupDocs.Viewer%20PyPI" alt="PyPI package">
<img src="https://img.shields.io/pypi/dm/groupdocs-viewer-net?label=pypi%20downloads" alt="PyPI downloads">

{{< button style="primary" link="https://releases.groupdocs.com/viewer/python-net/release-notes/" >}} <svg class="gdoc-icon gdoc-product-doc__btn-icon"><use xlink:href="/img/groupdocs-stack.svg#document"></use></svg> Release notes {{< /button >}}
{{< button style="primary" link="https://pypi.org/project/groupdocs-viewer-net/" >}} {{< icon "gdoc_download" >}} Download from PyPI {{< /button >}}
{{< button style="primary" link="https://products.groupdocs.app/viewer/family" >}} <svg class="gdoc-icon gdoc-product-doc__btn-icon"><use xlink:href="/img/groupdocs-stack.svg#app"></use></svg> Online app {{< /button >}}

[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net/) is a high-performance document rendering library that lets you view 170+ file formats — including DOCX, XLSX, PPTX, PDF, CAD drawings, emails, archives, and images — by rendering them to HTML, PDF, PNG, or JPG. No third-party software required.

<div style="clear:left"></div>

## Quick example

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

# Render a DOCX file to HTML with embedded resources
with Viewer("sample.docx") as viewer:
    viewer.view(HtmlViewOptions.for_embedded_resources("page_{0}.html"))
```

## Features

- **170+ File Formats**: Render Microsoft Office, PDF, HTML, CAD, email, archives, images, and more.
- **Multiple Output Formats**: Render documents to HTML, PDF, PNG, and JPG.
- **Embedded or External Resources**: Produce self-contained HTML pages or HTML with separate CSS, fonts, and images.
- **Format Detection**: Automatically detects the format of input files.
- **Cross-Platform**: Works on Windows, Linux, and macOS.

## Supported File Formats

GroupDocs.Viewer supports a wide range of file formats. For a complete list, see the [full list of supported formats]({{< ref "viewer/python-net/getting-started/supported-document-formats.md" >}}).

- **Microsoft Office** (Word, Excel, PowerPoint)
- **PDF** (Standard PDFs, PDF/A)
- **OpenDocument** (ODT, ODS, ODP)
- **Images** (JPEG, PNG, TIFF, GIF, BMP, PSD)
- **Email** (EML, MSG, PST, OST)
- **eBook** (EPUB, MOBI)
- **Text/Markdown** (TXT, MD)
- **HTML/Web** (HTML, MHTML, CHM)
- **AutoCAD** (DWG, DXF, DWF)
- **Archives** (ZIP, RAR, 7Z)

## Getting Started

To get started, refer to the [System Requirements]({{< ref "viewer/python-net/getting-started/system-requirements.md" >}}), [Supported File Formats]({{< ref "viewer/python-net/getting-started/supported-document-formats.md" >}}), [Installation]({{< ref "viewer/python-net/getting-started/installation" >}}), and [Quick Start Guide]({{< ref "viewer/python-net/getting-started/quick-start-guide" >}}) sections for setup instructions.

## Developer Guide

For practical code examples and explanations of basic and advanced rendering functions, see the [Developer Guide]({{< ref "viewer/python-net/developer-guide" >}}) section. This guide includes instructions on loading documents, retrieving document metadata, and performing document rendering.

## Technical Support

If you experience any issues or have suggestions, please refer to the [Technical Support]({{< ref "viewer/python-net/technical-support" >}}) topic. This topic provides multiple support channels tailored to your needs.
