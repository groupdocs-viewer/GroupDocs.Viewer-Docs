---
id: rendering-to-png-or-jpeg
url: viewer/net/rendering-to-png-or-jpeg
title: Render to PNG or JPEG
weight: 12
description: "With GroupDocs.Viewer for .NET you can render documents to PNG and JPEG formats."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
When rendering to PNG/JPG, GroupDocs.Viewer renders each page of the source document as a separate PNG or JPG image.

To render files to PNG/JPG, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions ](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) object. Specify a path to save the rendered  pages.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions ](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) object as the parameter.

## Rendering to PNG

The following code snippet shows how to render a .docx document to PNG image:

{{< tabs "render-to-png-images">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a PNG file.
    PngViewOptions viewOptions = new PngViewOptions();
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
            ' Create a PNG file.
            Dim viewOptions As PngViewOptions = New PngViewOptions()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-png-or-jpeg/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-to-png-images.zip" >}}  
```text
p_1.png (287 KB)
p_2.png (33 KB)
p_3.png (33 KB)
p_4.png (430 KB)
p_5.png (21 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-png-or-jpeg/_index/RenderToPngImages/render-to-png-images.zip)
{{< /tab >}}
{{< /tabs >}}

## Rendering to JPEG

The following code snippet shows how to render a .docx document to JPG image:

{{< tabs "render-to-jpeg-images">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a JPG file.
    JpgViewOptions viewOptions= new JpgViewOptions();                  
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
            ' Create a JPG file.
            Dim viewOptions As JpgViewOptions = New JpgViewOptions()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-png-or-jpeg/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-to-jpeg-images.zip" >}}  
```text
p_1.jpg (82 KB)
p_2.jpg (112 KB)
p_3.jpg (104 KB)
p_4.jpg (104 KB)
p_5.jpg (72 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-png-or-jpeg/_index/RenderToJpegImages/render-to-jpeg-images.zip)
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages: