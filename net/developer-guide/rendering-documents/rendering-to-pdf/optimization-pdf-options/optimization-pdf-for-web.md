---
id: optimization-pdf-for-web
url: viewer/net/optimization-pdf-for-web
title: Optimize a PDF file for a browser
linkTitle: Optimize a PDF file for a browser
weight: 1
description: "This topic describes how to optimize PDF file using the GroupDocs.Viewer .NET API (C#) for web browser or to reduce size."
keywords: convert to pdf, optimize browser, optimize web
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
This optimization allows a browser to display the first pages of a PDF file when you open the document, instead of waiting for the entire file to download.

The following code snippet shows how to optimize a PDF file for browser:
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
           Lineriaze = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}


