---
id: optimization-pdf-reduce-image-quality
url: viewer/net/optimization-pdf-reduce-image-quality
title: Reduce image quality
linkTitle: Reduce image quality
weight: 1
description: "This topic describes how to compress images in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, compress images
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

If the output PDF file contains images, you can reduce its size using image compression.

To enable image compression, set the `CompressImages` property to `true`. The GroupDocs.Viewer compresses all images in the file.

The `ImageQuality` property determines the compression ratio. It is a quality value in percent. 100% means original quality.

The following code snippet shows how to compress images in the file:

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
           CompressImages = true,
           ImageQuality = 50
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}


