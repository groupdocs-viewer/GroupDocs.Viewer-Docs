---
id: render-web-documents
url: viewer/python-net/render-web-documents
title: Render web documents as PDF, PNG, and JPEG files
linkTitle: Render Web documents
weight: 9
description: "Convert web documents (CHM, HTML) to PDF, PNG, or JPEG using the GroupDocs.Viewer Python API."
keywords: html conversion, CHM to HTML, HTML to PDF, HTML to image, CHM to image, HTML rendering, online help
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-web-documents
    - /viewer/python-net/how-to-convert-and-view-chm-files
    - /viewer/python-net/how-to-convert-and-view-html-files-with-margins
---
[GroupDocs.Viewer for Python](https://products.groupdocs.com/viewer/python-net) allows you to render web documents as PDF, PNG, and JPEG files. Use this library to view web files within your Java application. 

To start using the GroupDocs.Viewer API, create a [Viewer](#) class instance. Pass a web document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the document to PDF or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/web" >}} {{< icon "gdoc_person" >}} View web files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported web file formats

GroupDocs.Viewer supports the following web file formats:

* [Hypertext Markup Language Format](https://docs.fileformat.com/web/html/) (.HTML / .HTM)
* [MIME HTML Format](https://docs.fileformat.com/web/mhtml/) (.MHTML)
* [MHTML Web Archive](https://docs.fileformat.com/web/mht/) (.MHT)
* [Compiled HTML Help Format](https://docs.fileformat.com/web/chm/) (.CHM)

## Render web documents as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a web file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_web_to_pdf():
    # Load web document
    with Viewer("groupdocs-documentation.mhtml") as viewer:
        # Create a PDF file for the document.
        # Specify the PDF file name.
        viewOptions = PdfViewOptions("render_web_to_pdf/optimized_for_web.pdf")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_web_to_pdf()
```
{{< /tab >}}
{{< tab "groupdocs-documentation.mhtml" >}}
{{< tab-text >}}
`groupdocs-documentation.mhtml` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-web-documents/groupdocs-documentation.mhtml) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "optimized_for_web.pdf" >}}  
```text
Binary file (PDF, 47 KB)
```
[Download full output](/viewer/python-net/_output_files/rendering-basics/render-web-documents/render_web_to_pdf/optimized_for_web.pdf)
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PDF](/viewer/python-net/images/rendering-basics/render-web-documents/render-web-to-pdf.png)

## Render web documents as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a web file to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) methods to specify the output image size in pixels.

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

def render_web_to_png():
    # Load web document
    with Viewer("groupdocs-documentation.mhtml") as viewer:
        # Convert the web file to PNG.
        # {0} is replaced with the page numbers in the output image names.
        viewOptions = PngViewOptions("render_web_to_png/optimized_for_web_{0}.pdf")
        # Set width and height.
        viewOptions.width = 950
        viewOptions.height = 800
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_web_to_png()
```
{{< /tab >}}
{{< tab "groupdocs-documentation.mhtml" >}}
{{< tab-text >}}
`groupdocs-documentation.mhtml` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-web-documents/groupdocs-documentation.mhtml) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-web-to-png-outputs.zip" >}}  
```text
render_web_to_png/optimized_for_web_1.pdf (111 KB)
render_web_to_png/optimized_for_web_2.pdf (195 KB)
render_web_to_png/optimized_for_web_3.pdf (24 KB)
```
[Download full output](/viewer/python-net/_output_files/rendering-basics/render-web-documents/render_web_to_png/render-web-to-png-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PNG](/viewer/python-net/images/rendering-basics/render-web-documents/render-web-to-png.png)

## Render web documents as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a web file to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) methods to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import JpgViewOptions

def render_web_to_jpg():
    # Load web document
    with Viewer("groupdocs-documentation.mhtml") as viewer:
        # Create a JPEG image for each page.
        # {0} is replaced with the current page number in the image name.
        viewOptions = JpgViewOptions("render_web_to_jpg/web_to_jpg_{0}.jpg")
        # Set width and height.
        viewOptions.width = 1600
        viewOptions.height = 650
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_web_to_jpg()
```
{{< /tab >}}
{{< tab "groupdocs-documentation.mhtml" >}}
{{< tab-text >}}
`groupdocs-documentation.mhtml` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-web-documents/groupdocs-documentation.mhtml) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-web-to-jpg-outputs.zip" >}}  
```text
render_web_to_jpg/web_to_jpg_1.jpg (95 KB)
render_web_to_jpg/web_to_jpg_2.jpg (183 KB)
render_web_to_jpg/web_to_jpg_3.jpg (31 KB)
```
[Download full output](/viewer/python-net/_output_files/rendering-basics/render-web-documents/render_web_to_jpg/render-web-to-jpg-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

## Convert CHM files to HTML

[CHM](https://docs.fileformat.com/web/chm/) is a Microsoft proprietary online help format that is often used for software documentation. With GroupDocs.Viewer, you can convert a CHM file to HTML to display this file in a web browser. To do this, create an [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and specify the output file name.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_chm_to_html():
    # Load CHM file
    with Viewer("sample.chm") as viewer:
        # Convert the CHM file to HTML.
        # {0} is replaced with the page numbers in the output file names.
        viewOptions = HtmlViewOptions.for_embedded_resources("render_chm_to_html/chm_result_{0}.html")
        # Enable the following option to display all CHM content on a single HTML page.
        # viewOptions.render_to_single_page = True
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_chm_to_html()
```
{{< /tab >}}
{{< tab "sample.chm" >}}
{{< tab-text >}}
`sample.chm` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-web-documents/sample.chm) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-chm-to-html-outputs.zip" >}}  
```text
render_chm_to_html/chm_result_1.html (86 KB)
render_chm_to_html/chm_result_10.html (84 KB)
render_chm_to_html/chm_result_100.html (99 KB)
render_chm_to_html/chm_result_101.html (89 KB)
render_chm_to_html/chm_result_102.html (101 KB)
render_chm_to_html/chm_result_103.html (98 KB)
render_chm_to_html/chm_result_104.html (120 KB)
render_chm_to_html/chm_result_105.html (114 KB)
render_chm_to_html/chm_result_106.html (81 KB)
render_chm_to_html/chm_result_107.html (75 KB)
[TRUNCATED] (123 files total)
```
[Download full output](/viewer/python-net/_output_files/rendering-basics/render-web-documents/render_chm_to_html/render-chm-to-html-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to HTML](/viewer/python-net/images/rendering-basics/render-web-documents/render-chm-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.for_external_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_chm_to_html_external():
    # Load CHM file
    with Viewer("sample.chm") as viewer:
        # Convert the CHM file to HTML.
        # Specify the output file names and location of external resources.
        viewOptions = HtmlViewOptions.for_external_resources("render_chm_to_html_external/pdf_page_{0}.html", "render_chm_to_html_external/pdf_page_{0}/resource_{0}_{1}", "render_chm_to_html_external/pdf_page_{0}/resource_{0}_{1}")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_chm_to_html_external()
```
{{< /tab >}}
{{< tab "sample.chm" >}}
{{< tab-text >}}
`sample.chm` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-web-documents/sample.chm) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-chm-to-html-external-outputs.zip" >}}  
```text
render_chm_to_html_external/pdf_page_1.html (30 KB)
render_chm_to_html_external/pdf_page_10.html (17 KB)
render_chm_to_html_external/pdf_page_100.html (16 KB)
render_chm_to_html_external/pdf_page_100/resource_100_f.woff (12 KB)
render_chm_to_html_external/pdf_page_100/resource_100_f1.woff (16 KB)
render_chm_to_html_external/pdf_page_100/resource_100_f2.woff (12 KB)
render_chm_to_html_external/pdf_page_100/resource_100_f3.woff (7 KB)
render_chm_to_html_external/pdf_page_100/resource_100_f4.woff (15 KB)
render_chm_to_html_external/pdf_page_100/resource_100_s.css (2 KB)
render_chm_to_html_external/pdf_page_101.html (17 KB)
[TRUNCATED] (713 files total)
```
[Download full output](/viewer/python-net/_output_files/rendering-basics/render-web-documents/render_chm_to_html_external/render-chm-to-html-external-outputs.zip)
{{< /tab >}}
{{< /tabs >}}