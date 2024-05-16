---
id: how-to-get-page-width-and-height
url: viewer/net/how-to-get-page-width-and-height
title: Get the width and height of the document pages
weight: 5
description: "This article explains how to get the width and height of the document pages using .NET / C# with GroupDocs.Viewer for .NET."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

You can get the width and height of each document page using the [GetViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object. The object contains the [Pages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo/pages/) collection that represents each [Page](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/page/) of the document.

The following code snippet shows how to get the width and height of each document page:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (Viewer viewer = new Viewer("sample.pdf"))
{
    // Get file information.
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

    // Display width and height of each page.
    foreach (Page page in viewInfo.Pages)
    {
        Console.WriteLine($"Page: {page.Number}; Width: {page.Width}, pixels");
        Console.WriteLine($"Page: {page.Number}; Height: {page.Height}, pixels");
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.pdf")
            ' Get file information.
            Dim viewInfoOptions As ViewInfoOptions = ViewInfoOptions.ForHtmlView()
            Dim viewInfo As ViewInfo = viewer.GetViewInfo(viewInfoOptions)
        
            ' Display width and height of each page.
            For Each page As Page In viewInfo.Pages
                Console.WriteLine($"Page: {page.Number}; Width: {page.Width}, pixels")
                Console.WriteLine($"Page: {page.Number}; Height: {page.Height}, pixels")
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-get-page-width-and-height.png)