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
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions, Watermark

def add_text_watermark():
    # Load document
    with Viewer("sample.docx") as viewer:
        # Create an HTML file for each document page.
        # {0} is replaced with the current page number in the file name.
        viewOptions = HtmlViewOptions.for_embedded_resources("add_text_watermark/output-watermark_{0}.html")
        # Add watermark.
        viewOptions.watermark = Watermark("This is a watermark")
        viewer.view(viewOptions)

if __name__ == "__main__":
    add_text_watermark()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/add-text-watermark/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "add-text-watermark-outputs.zip" >}}  
```text
add_text_watermark/output-watermark_1.html (254 KB)
add_text_watermark/output-watermark_2.html (111 KB)
add_text_watermark/output-watermark_3.html (149 KB)
add_text_watermark/output-watermark_4.html (1003 KB)
add_text_watermark/output-watermark_5.html (88 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/add-text-watermark/add_text_watermark/add-text-watermark-outputs.zip)
{{< /tab >}}
{{< /tabs >}}