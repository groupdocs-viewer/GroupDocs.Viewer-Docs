---
id: link-duplicate-streams
url: viewer/net/link-duplicate-streams
title: Link duplicate streams
linkTitle: Link duplicate streams
weight: 6
description: "This topic describes how to link duplicate streams in a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Sometimes a document contains several identical resource streams, like images. GroupDocs.Viewers can compare all resource streams. If streams are duplicated, it merges them leaving only one copy, changes the references appropriately, and removes copies of the object. This can significantly decrease the document size.

To link duplicate streams in a PDF file, set the [LinkDuplicateStreams](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/linkduplicatestreams/) property to `true`.

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
        LinkDuplicateStreams = true
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}


