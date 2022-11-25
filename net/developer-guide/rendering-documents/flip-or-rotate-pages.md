---
id: flip-or-rotate-pages
url: viewer/net/flip-or-rotate-pages
title: Rotate pages
weight: 6
description: "This article explains how to flip or rotate PDF, HTML or Image pages when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: rotate pdf, rotate pages
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
![Flip or rotate pages](/viewer/net/images/flip-or-rotate-pages.png)

The GroupDocs.Viewer enables you to rotate individual pages when rendering documents in HTML/PDF/JPG/PNG formats. To flip/rotate pages use the [RotatePage](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/methods/rotatepage) method of [ViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions) class.  The method accepts page number as the first parameter and rotation angle as the second parameter. There are three options that you can pass as the second parameter into [RotatePage](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/methods/rotatepage) method:

* [Rotation.On90Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) - instructs to rotate page on 90-degree clockwise;
* [Rotation.On180Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) - instructs to rotate page on 180-degree clockwise;
* [Rotation.On270Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) - instructs to rotate page on 270-degree clockwise;

The following code snippet shows how to rotate output pages when rendering a document as PDF (t[his example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/FlipRotatePages.cs) can be also found in our public [repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET). at GitHub)

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.RotatePage(1, Rotation.On90Degree);

    viewer.View(viewOptions);
}
```
