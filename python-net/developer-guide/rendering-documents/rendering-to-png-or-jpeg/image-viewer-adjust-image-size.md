---
id: image-viewer-adjust-image-size
url: viewer/python-net/image-viewer-adjust-image-size
title: Adjust the image size
weight: 2
description: "Check this guide to learn how to adjust PNG and JPG images size when rendering documents with Image Viewer by GroupDocs for .NET."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
To specify the output image size, set the [Width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/width) and [Height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/height) properties of the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) or [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) classes. Specify the value in pixels.

{{< alert style="info" >}}
GroupDocs.Viewer applies the aspect ratio automatically applied when you set the [Width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/width) or [Height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/height) value.
{{< /alert >}}

The following code snippet shows how to set the image width or height.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create a JPG file.
    with gv.Viewer(test_files.sample_docx) as viewer:
        jpg_options = gvo.JpgViewOptions()
        # Set width and height.
        jpg_options.width = 600
        jpg_options.height = 800
        viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}
