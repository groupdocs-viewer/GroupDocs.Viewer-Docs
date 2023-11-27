---
id: allow-reuse-page-content
url: viewer/net/allow-reuse-page-content
title: Reuse page content
linkTitle: Reuse page content
weight: 9
description: "This topic describes how to reuse page content in a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
This property allows you to reuse the content for identical pages when optimizing the document.

To allow reusing page content in a PDF file, set the [AllowReusePageContent](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/linkduplicatestreams/) property to `true`.

The following code snippet shows how to link duplicate streams in a PDF file:

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
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions 
    {
        AllowReusePageContent = true
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}


