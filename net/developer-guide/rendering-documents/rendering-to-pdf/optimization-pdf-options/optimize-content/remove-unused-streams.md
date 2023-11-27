---
id: remove-unused-streams
url: viewer/net/remove-unused-streams
title: Remove unused streams
linkTitle: Remove unused streams
weight: 7
description: "This topic describes how to remove unused streams from a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Sometimes a PDF document contains unused resource streams. These streams are not “unused objects” because they are referenced from a page’s resource dictionary. This may happen if an image has been removed from the page, but not from the page resources. 

GroupDocs.Viewer analyze the page contents to determine if a resource stream is used or not. Then it removes the unused streams. This can significantly decrease the document size.

To remove unused streams from a PDF file, set the [RemoveUnusedStreams](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/removeunusedstreams/) property to `true`.

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
        RemoveUnusedStreams = true
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}


