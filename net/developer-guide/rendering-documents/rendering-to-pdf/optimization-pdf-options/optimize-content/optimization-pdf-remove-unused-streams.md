---
id: optimization-pdf-remove-unused-streams
url: viewer/net/optimization-pdf-remove-unused-streams
title: Remove unused streams
linkTitle: Remove unused streams
weight: 6
description: "This topic describes how to remove unused streams from a PDF file using the GroupDocs.Viewer .NET API (C#)"
keywords: convert to pdf, optimize size, pdf reduce size, remove unused streams
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A PDF file can contain unused resource streams. These streams are not the same as [unused objects](viewer/net/optimization-pdf-remove-unused-objects) because the resource dictionary of the page references them. Such may happen if you remove an image from the page but not from the page resources.

GroupDocs.Viewer analyzes all resource streams. If it finds unused stream, it removes this one.

To remove unused streams from a PDF file, set the `RemoveUnusedStreams` property to `true`.

The following code snippet shows how to remove unused streams from a PDF file:

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
           RemoveUnusedStreams = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

