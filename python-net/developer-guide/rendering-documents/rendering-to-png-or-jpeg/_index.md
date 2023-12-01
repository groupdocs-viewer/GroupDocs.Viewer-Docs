---
id: rendering-to-png-or-jpeg
url: viewer/python-net/rendering-to-png-or-jpeg
title: Render to PNG or JPEG
weight: 12
description: "With GroupDocs.Viewer for Python via .NET you can render documents to PNG and JPEG formats."
productName: GroupDocs.Viewer for Python via .NET
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
{{< tab "Python" >}}
```python
file_path = "sample.docx"

# Render a document to a PNG file
with gv.Viewer(file_path) as viewer:
    view_options = gvo.PngViewOptions()
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

## Rendering to JPEG

The following code snippet shows how to render a .docx document to JPG image:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
# Create a JPG file.
with gv.Viewer("sample.docx") as viewer:
    view_options = gvo.JpgViewOptions()
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages: