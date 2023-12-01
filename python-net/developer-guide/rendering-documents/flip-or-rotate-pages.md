---
id: flip-or-rotate-pages
url: viewer/python-net/flip-or-rotate-pages
title: Rotate pages
weight: 6
description: "This article explains how to rotate PDF, HTML or Image pages when rendering documents with GroupDocs.Viewer within your Python applications."
keywords: rotate pdf, rotate pages
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
![Flip or rotate pages](/viewer/python-net/images/flip-or-rotate-pages.png)

To rotate a page when rendering document, use the [RotatePage](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/methods/rotatepage) method of the [ViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions) class. This method has the following two parameters:

1. page number
2. rotation angle

The rotation angle is one of the following:

* [Rotation.On90Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 90-degree clockwise
* [Rotation.On180Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 180-degree clockwise
* [Rotation.On270Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 270-degree clockwise

The following code snippet shows how to rotate output pages when rendering a document as PDF:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_docx) as viewer:
    # Create a PDF file.
    info = viewer.get_view_info(gvo.ViewInfoOptions.for_html_view())
    info = gvo.PdfViewOptions()
    # Rotate the first page.
    info.rotate_page(1, rotation.Rotation.on_90_degree)
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/FlipRotatePages.cs) in our public GitHub repository .