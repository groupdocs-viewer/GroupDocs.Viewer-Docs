---
id: set-image-size-limits-when-rendering-to-pdf
url: viewer/python-net/set-image-size-limits-when-rendering-to-pdf
title: Set image size limits
weight: 4
description: "Control image size in PDF output: set width, height, or maximum dimensions."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
keywords: PdfViewOptions, image width, image height, image resizing, GroupDocs.Viewer, Python, PDF viewer
---
The [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class has the following properties to set the image width or/and height:

{{< tabs "example2">}}
{{< tab "Python">}}
```python
""" 
<summary>
    Max width of an output image in pixels.
</summary>
"""
image_max_width # int

"""
<summary>
    Max height of an output image in pixels.
</summary>
"""
image_max_height # int

"""
<summary>
    The width of the output image in pixels.
</summary>
"""
image_width # int

"""
<summary>
    The height of an output image in pixels.
</summary>
"""
image_height # int

```
{{< /tab >}}
{{< /tabs >}}

You can set the width and/or height of the output images. Use one of the following methods: 

* To render a single image, set image_width/image_height options.
* To render multiple images, set image_max_width/image_max_height options. If an image exceeds these limits, it is resized proportionally.

{{< alert style="warning" >}}
If you set the image_width/image_height options, the image_max_width/image_max_height options are ignored.
{{< /alert >}}

To set the image_max_width/image_max_height options, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) object.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object.
3. Set the image_max_width and/or image_max_height values;
4. Call the [view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

The following code snippet shows how to set the output image size limits:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.jpg") as viewer:
    # Create a PDF file.
    viewOptions = gvo.PdfViewOptions()

    # Specify the maximum width and height.
    viewOptions.image_max_width = 800
    viewOptions.image_max_height = 600
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}