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

{{< tabs "example1">}}
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
{{< /tabs >}}
