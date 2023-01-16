---
id: flip-or-rotate-pages
url: viewer/net/flip-or-rotate-pages
title: Rotate pages
weight: 6
description: "This article explains how to rotate PDF, HTML or Image pages when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: rotate pdf, rotate pages
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
![Flip or rotate pages](/viewer/net/images/flip-or-rotate-pages.png)

To rotate a page when rendering document, use the [RotatePage](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/methods/rotatepage) method of the [ViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions) class. This method has the following two parameters:

1. page number
2. rotation angle

The rotation angle is one of the following:

* [Rotation.On90Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 90-degree clockwise
* [Rotation.On180Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 180-degree clockwise
* [Rotation.On270Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 270-degree clockwise

The following code snippet shows how to rotate output pages when rendering a document as PDF:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a PDF file.
    PdfViewOptions viewOptions = new PdfViewOptions();
    // Rotate the first page.
    viewOptions.RotatePage(1, Rotation.On90Degree);
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/FlipRotatePages.cs) in our public GitHub repository .