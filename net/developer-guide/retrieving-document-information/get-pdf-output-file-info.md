---
id: get-pdf-output-file-info
url: viewer/net/get-pdf-output-file-info
title: Get the PDF output file information
weight: 6
description: "This article explains how to get the PDF output file information using .NET / C# with GroupDocs.Viewer for .NET."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

You can get the information about the PDF output file using the [GetViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object. The object contains the [Pages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo/pages/) collection that represents each [Page](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/page/) of the document.

The following code snippet shows how to get the page count and the width and height of each document page:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    // Get file information.
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForPdfView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

    // Display page count.
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);

    // Display width and height of each page.
    foreach (Page page in viewInfo.Pages)
    {
        Console.WriteLine($"Page: {page.Number}; Width: {page.Width}, pixels");
        Console.WriteLine($"Page: {page.Number}; Height: {page.Height}, pixels");
    }
}
```
{{< /tab >}}
{{< /tabs >}}