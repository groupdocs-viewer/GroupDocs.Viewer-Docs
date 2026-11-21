---
id: image-viewer-adjust-image-size
url: viewer/net/image-viewer-adjust-image-size
title: Adjust the image size
weight: 2
description: "Check this guide to learn how to adjust PNG and JPG images size when rendering documents with Image Viewer by GroupDocs for .NET."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
To specify the output image size, set the [Width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/width) and [Height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/height) properties of the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) or [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) classes. Specify the value in pixels.

{{< alert style="info" >}}
GroupDocs.Viewer applies the aspect ratio automatically applied when you set the [Width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/width) or [Height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/height) value.
{{< /alert >}}

The following code snippet shows how to set the image width or height.

{{< tabs "adjust-image-size">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a JPG file.
    JpgViewOptions viewOptions = new JpgViewOptions();
    
    // Specify the width and height.
    viewOptions.Width = 600;
    viewOptions.Height = 800;
    
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
        
            ' Specify the width and height.
            viewOptions.Width = 600
            viewOptions.Height = 800
        
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-png-or-jpeg/image-viewer-adjust-image-size/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "adjust-image-size.zip" >}}  
```text
p_1.jpg (54 KB)
p_2.jpg (62 KB)
p_3.jpg (65 KB)
p_4.jpg (65 KB)
p_5.jpg (44 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-png-or-jpeg/image-viewer-adjust-image-size/AdjustImageSize/adjust-image-size.zip)
{{< /tab >}}
{{< /tabs >}}
