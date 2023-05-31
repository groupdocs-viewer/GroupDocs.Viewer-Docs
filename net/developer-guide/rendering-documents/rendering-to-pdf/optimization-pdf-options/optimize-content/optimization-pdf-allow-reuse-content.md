---
id: optimization-pdf-allow-reuse-content
url: viewer/net/optimization-pdf-allow-reuse-content
title: Allow reusing page content
linkTitle: Allow reusing page content
weight: 4
description: "This topic describes how to allow reusing page content in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, reuse content
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A PDF file can contain multiple identical pages. GroupDocs.Viewer analyzes and compares all pages. If it finds copies of an existing page, it removes them and reuses the original page.

To reuse page content in a PDF file, set the `AllowReusePageContent` property to `true`.

The following code snippet shows how to reuse page content in a PDF file:

{{< tabs "Example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions()
         {
           AllowReusePageContent = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

