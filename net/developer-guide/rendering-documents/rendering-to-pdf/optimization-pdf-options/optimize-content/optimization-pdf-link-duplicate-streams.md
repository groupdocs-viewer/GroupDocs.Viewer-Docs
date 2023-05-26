---
id: optimization-pdf-link-duplicate-streams
url: viewer/net/optimization-pdf-link-duplicate-streams
title: Link duplicate streams
linkTitle: Link duplicate streams
weight: 3
description: "This topic describes how to link duplicate streams in a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, link duplicate streams
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A PDF file can contain multiple identical resource streams (such as images). GroupDocs.Viewer analyzes and compares all resource streams. If it finds copies of an existing stream, it removes them and changes references accordingly.

To remove duplicate streams from a PDF file, set the `LinkDuplicateStreams` property to `true`.

The following code snippet shows how to remove duplicate streams from a PDF file:

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
           LinkDuplicateStreams = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}