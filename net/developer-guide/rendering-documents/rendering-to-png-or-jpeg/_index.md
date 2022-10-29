---
id: rendering-to-png-or-jpeg
url: viewer/net/rendering-to-png-or-jpeg
title: Render to PNG or JPEG
weight: 12
description: "With GroupDocs.Viewer for .NET you can render documents to PNG and JPEG formats."
productName: GroupDocs.Viewer for .NET
hideChildren: True
toc: True
---

Image Viewer provides [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) and [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) classes to set specific options for rendering the document into desired image format.

Here are the steps for rendering documents into image with GroupDocs.Viewer API:

* Create new instance of [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class and pass source document path as a constructor parameter.
* Instantiate the [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions ](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) object according to your requirements and specify saving path format for rendered document pages.
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class instance and pass [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions ](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) to it.

## Rendering to PNG

This example shows how to render each document page into PNG image.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    PngViewOptions viewOptions = new PngViewOptions();
    viewer.View(viewOptions);
}
```

## Rendering to JPEG

This example shows how to render each document page into JPG image.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    JpgViewOptions viewOptions= new JpgViewOptions();                  
    viewer.View(viewOptions);
}
```
