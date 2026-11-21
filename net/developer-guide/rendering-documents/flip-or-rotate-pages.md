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
To rotate a page when rendering document, use the [RotatePage](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/methods/rotatepage) method of the [ViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions) class. This method has the following two parameters:

1. page number
2. rotation angle

The rotation angle is one of the following:

* [Rotation.On90Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 90-degree clockwise
* [Rotation.On180Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 180-degree clockwise
* [Rotation.On270Degree](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/rotation) rotate page on 270-degree clockwise

![GroupDocs.Viewer renders a three-page DOCX to PDF with RotatePage(1, Rotation.On90Degree): page 1 is turned 90 degrees clockwise, pages 2 and 3 are unchanged. Below, the original page and what On90Degree, On180Degree and On270Degree do to it](/viewer/net/images/developer-guide/rendering-documents/rotate-pages.svg)

The following code snippet shows how to rotate output pages when rendering a document as PDF:

{{< tabs "flip-or-rotate-pages">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

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
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create a PDF file.
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()
            ' Rotate the first page.
            viewOptions.RotatePage(1, Rotation.On90Degree)
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/flip-or-rotate-pages/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 719 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/flip-or-rotate-pages/FlipOrRotatePages/output.pdf)
{{< /tab >}}
{{< /tabs >}}

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/FlipRotatePages.cs) in our public GitHub repository .