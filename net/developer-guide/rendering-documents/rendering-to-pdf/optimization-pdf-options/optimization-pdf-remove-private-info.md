---
id: optimization-pdf-remove-private-info
url: viewer/net/optimization-pdf-remove-private-info
title: Remove private information
linkTitle: Remove private information
weight: 6
description: "This topic describes how to remove private information from a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, remove private information
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A PDF file may contain private information. To remove private information from a PDF file, set the `RemovePrivateInfo` property to `true`.

The following code snippet shows how to remove private information from a PDF file:

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
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemovePrivateInfo = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

