---
id: add-text-watermark
url: viewer/python-net/add-text-watermark
title: Add text watermarks
weight: 9
description: "Add text watermarks to rendered documents using GroupDocs.Viewer in your Python applications."
keywords: watermark, document rendering, GroupDocs.Viewer, HTML watermark, PDF watermark, image watermark, Python viewer
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
To add a watermark to the HTML/JPG/PNG/PDF output, follow these steps:

1. Create an instance of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) class (or [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/), or [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/), or [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/));
2. Create a [Watermark](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/watermark/) object and populate its properties;
3. Call the [watermark](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewoptions/#properties) method of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) (or [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/), or [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/), or [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/)) class and specify the object created on step 2;
4. Call the [Viewer.view()](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

The following code snippet shows how to apply the watermark to the output pages.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output-watermark.html")
    # Add watermark.
    viewOptions.watermark = gvo.Watermark("This is a watermark")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}