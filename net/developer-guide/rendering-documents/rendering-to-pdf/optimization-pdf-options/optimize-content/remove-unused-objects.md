---
id: remove-unused-objects
url: viewer/net/remove-unused-objects
title: Remove unused objects
linkTitle: Remove unused objects
weight: 8
description: "This topic describes how to remove unused objects from a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Sometimes a PDF document may have objects that aren't referenced by any other part of the document. For instance, if a page may be removed from the document page tree but its object remains. Removing these unused objects does not affect the document's validity but can significantly reduce its size.

To remove unused objects from a PDF file, set the [RemoveUnusedObjects](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/removeunusedobjects/) property to `true`.

The following code snippet shows how to link duplicate objects in a PDF file:

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
        RemoveUnusedObjects = true
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}


