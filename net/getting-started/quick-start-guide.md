---
id: quick-start-guide
url: viewer/net/getting-started/quick-start-guide
title: Quick Start Guide
linkTitle: Quick Start Guide
second_title: Get started with GroupDocs.Viewer for .NET
weight: 5
keywords: quick start, hello world, get started, first rendering, document rendering, DOCX to HTML, DOCX to PDF, DOCX to PNG, document viewer, NuGet, .NET CLI, C#, GroupDocs.Viewer
description: "Learn how to create a .NET console application, install GroupDocs.Viewer from NuGet, and render a DOCX document to HTML, PDF, and PNG with C#."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/hello-world/
---

This quick start guide shows you how to get started with **GroupDocs.Viewer for .NET**. You will create a .NET console application, install the GroupDocs.Viewer NuGet package, and render a DOCX document to HTML, PDF, and PNG using C#.

GroupDocs.Viewer is a .NET document rendering library that supports 190+ file formats and renders supported documents to HTML, PDF, PNG, or JPG without requiring Microsoft Office or other third-party applications.

## Prerequisites

To proceed, make sure you have:

1. Your environment meets the [System Requirements]({{< ref "viewer/net/getting-started/system-requirements.md" >}}).
2. The [.NET SDK](https://dotnet.microsoft.com/download) is installed.
3. Optionally, you have a [Temporary License](https://purchase.groupdocs.com/temporary-license/) to evaluate all GroupDocs.Viewer features without evaluation limitations.

## Create a .NET Application and Install GroupDocs.Viewer

Create a new .NET console application and add the **GroupDocs.Viewer** NuGet package.

Starting with version 26.8, **GroupDocs.Viewer** uses TFM-split packaging. Install a single package, and NuGet automatically restores the runtime package that matches your project's target framework. See [Installation]({{< ref "viewer/net/getting-started/installation.md" >}}) for details.

### Create a console app

```bash
dotnet new console -n DemoApp -o demo-app
cd demo-app
```

### Install the GroupDocs.Viewer package

Install GroupDocs.Viewer:

```bash
dotnet add package GroupDocs.Viewer
```

After the installation completes, your project file contains a package reference similar to the following:

```xml
<PackageReference Include="GroupDocs.Viewer" Version="26.8.0" />
```

## Example 1: Render a DOCX Document to HTML

The following example renders a Microsoft Word document to HTML with embedded resources.

You can download the complete example project [here](/viewer/net/sample-files/getting-started/quick-start-guide/render_docx_to_html.zip).

{{< tabs "demo_app_render_docx_to_html">}}
{{< tab "Program.cs" >}}
```csharp
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

// Get the absolute path to the license file
string licensePath = Path.GetFullPath("./GroupDocs.Viewer.lic");

if (File.Exists(licensePath))
{
    // Apply the license
    License license = new License();
    license.SetLicense(licensePath);
}

// Load the DOCX document
using (Viewer viewer = new Viewer("./sample.docx"))
{
    // Configure HTML view options
    HtmlViewOptions htmlOptions =
        HtmlViewOptions.ForEmbeddedResources("render_docx_to_html/page_{0}.html");

    // Render the DOCX document to HTML
    viewer.View(htmlOptions);
}
```
{{< /tab >}}
{{< tab "Source file" >}}
{{< tab-text >}}
`sample.docx` is the source document used in this example. Click [here](/viewer/net/sample-files/getting-started/quick-start-guide/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Output files" >}}
```text
render_docx_to_html/page_1.html (317 KB)
render_docx_to_html/page_2.html (149 KB)
render_docx_to_html/page_3.html (113 KB)
```
[Download the complete output](/viewer/net/_output_files/getting-started/quick-start-guide/render_docx_to_html/render-docx-to-html-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

Your project directory should look similar to the following:

```Directory
📂 demo-app
 ├──DemoApp.csproj
 ├──Program.cs
 ├──sample.docx
 └──GroupDocs.Viewer.lic (optional)
```

### Run the application

```bash
dotnet run
```

### How the code works

- `new Viewer("./sample.docx")`: loads the DOCX document.
- `HtmlViewOptions.ForEmbeddedResources("render_docx_to_html/page_{0}.html")`: configures HTML output with embedded resources.
- `viewer.View(htmlOptions)`: renders the document and saves the output HTML files `page_1.html`, `page_2.html`, etc.

## Example 2: Render a DOCX Document to PDF

The following example renders the same DOCX document to a single PDF file.

You can download the complete example project [here](/viewer/net/sample-files/getting-started/quick-start-guide/render_docx_to_pdf.zip).

{{< tabs "demo_app_render_docx_to_pdf">}}
{{< tab "Program.cs" >}}
```csharp
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

// Get the absolute path to the license file
string licensePath = Path.GetFullPath("./GroupDocs.Viewer.lic");

if (File.Exists(licensePath))
{
    // Apply the license
    License license = new License();
    license.SetLicense(licensePath);
}

// Load the DOCX document
using (Viewer viewer = new Viewer("./sample.docx"))
{
    // Configure PDF view options
    PdfViewOptions pdfOptions =
        new PdfViewOptions("render_docx_to_pdf/output.pdf");

    // Render the DOCX document to PDF
    viewer.View(pdfOptions);
}
```
{{< /tab >}}
{{< tab "Source file" >}}
{{< tab-text >}}
`sample.docx` is the source document used in this example. Click [here](/viewer/net/sample-files/getting-started/quick-start-guide/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Output file" >}}
```text
Binary file (PDF, 234 KB)
```
[Download full output](/viewer/net/_output_files/getting-started/quick-start-guide/render_docx_to_pdf/output.pdf)
{{< /tab >}}
{{< /tabs >}}

Your folder tree should look similar to the following directory structure:

```Directory
📂 demo-app
 ├──DemoApp.csproj
 ├──Program.cs
 ├──sample.docx
 └──GroupDocs.Viewer.lic (optional)
```

### Run the application

```bash
dotnet run
```

### How the code works

- `new Viewer("./sample.docx")`: loads the DOCX document.
- `new PdfViewOptions("render_docx_to_pdf/output.pdf")`: configures PDF output.
- `viewer.View(pdfOptions)`: renders the document and saves the result as a PDF file.

## Example 3: Render a DOCX Document to PNG

The following example renders each page of a DOCX document as a separate PNG image.

You can download the complete example project [here](/viewer/net/sample-files/getting-started/quick-start-guide/render_docx_to_png.zip).

{{< tabs "demo_app_render_docx_to_png">}}
{{< tab "Program.cs" >}}
```csharp
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

// Get the absolute path to the license file
string licensePath = Path.GetFullPath("./GroupDocs.Viewer.lic");

if (File.Exists(licensePath))
{
    // Apply the license
    License license = new License();
    license.SetLicense(licensePath);
}

// Load the DOCX document
using (Viewer viewer = new Viewer("./sample.docx"))
{
    // Configure PNG view options
    PngViewOptions pngOptions =
        new PngViewOptions("render_docx_to_png/output_{0}.png");

    // Render the DOCX document to PNG
    viewer.View(pngOptions);
}
```
{{< /tab >}}
{{< tab "Source file" >}}
{{< tab-text >}}
`sample.docx` is the source document used in this example. Click [here](/viewer/net/sample-files/getting-started/quick-start-guide/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Output files" >}}
```text
render_docx_to_png/output_1.png (89 KB)
render_docx_to_png/output_2.png (77 KB)
render_docx_to_png/output_3.png (50 KB)
```
[Download the complete output](/viewer/net/_output_files/getting-started/quick-start-guide/render_docx_to_png/render-docx-to-png-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

Your project directory should look similar to the following:

```Directory
📂 demo-app
 ├──DemoApp.csproj
 ├──Program.cs
 ├──sample.docx
 └──GroupDocs.Viewer.lic (optional)
```

### Run the application

```bash
dotnet run
```

### How the code works

- `new Viewer("./sample.docx")`: loads the DOCX document.
- `new PngViewOptions("render_docx_to_png/output_{0}.png")`: configures PNG output and specifies the output file name pattern.
- `viewer.View(pngOptions)`: renders each document page and saves it as a separate PNG image `output_1.png`, `output_2.png`, etc.

## Next Steps

You have now created a .NET application that renders a DOCX document to HTML, PDF, and PNG.

Explore the following topics to learn more about GroupDocs.Viewer:

- [Supported File Formats]({{< ref "viewer/net/getting-started/supported-document-formats.md" >}}): Review the full list of supported file types.
- [Installation]({{< ref "viewer/net/getting-started/installation.md" >}}) — learn about available installation methods and supported target frameworks.
- [Licensing]({{< ref "viewer/net/getting-started/licensing-and-subscription.md" >}}): Check details on licensing and evaluation.
- [How to run examples]({{< ref "viewer/net/getting-started/how-to-run-examples.md" >}}): Build the same app in Visual Studio or clone the GitHub examples.
- [Developer Guide]({{< ref "viewer/net/developer-guide" >}}) — explore advanced document viewing and rendering features.
- [Technical Support]({{< ref "viewer/net/technical-support" >}}): Contact support for assistance if you encounter issues.
