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

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a PNG file.
    PngViewOptions viewOptions = new PngViewOptions();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Rendering to JPEG

The following code snippet shows how to render a .docx document to JPG image:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a JPG file.
    JpgViewOptions viewOptions= new JpgViewOptions();                  
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages: