---
id: render-ebooks
url: viewer/python-net/render-ebooks
title: Render EBooks as HTML, PDF, and image files
linkTitle: Render EBooks
weight: 8
description: "Convert EBooks to HTML, PDF, PNG, or JPEG using GroupDocs.Viewer for Python. Learn how to render documents in various formats."
keywords: ebook conversion, PDF conversion, JPEG conversion, PNG conversion, ebook to PDF, ebook to image, GroupDocs
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-view-ebooks-using-csharp/
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render your EBooks (EPUB, MOBI) in HTML, PDF, PNG, and JPEG formats. You do not need to use any book reader to load and view EBooks within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass a book you want to view to the class constructor. You can load the book from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the EBook to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/ebook" >}} {{< icon "gdoc_person" >}} View EBookd online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported EBooks file formats

GroupDocs.Viewer supports the following EBooks file formats:

* [EPUB](https://docs.fileformat.com/ebook/epub/) (.EPUB)
* [MOBI](https://docs.fileformat.com/ebook/mobi/) (.MOBI)
* [AZW3](https://docs.fileformat.com/ebook/azw3/) (.AZW3)

GroupDocs.Viewer can detect the book format automatically based on information in the file header.

## Render EBooks as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an EBook file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_ebook_to_html():
    # Load EBook
    with Viewer("sample.epub") as viewer:
        # Create an HTML file for each document page.
        # {0} is replaced with the current page number in the file name.
        viewOptions = HtmlViewOptions.for_embedded_resources("render_ebook_to_html/pdf_page_{0}.html")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_ebook_to_html()
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an EBook to HTML](/viewer/python-net/images/rendering-basics/render-ebooks/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.for_external_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_ebook_to_html_external():
    # Load EBook
    with Viewer("sample.epub") as viewer:
        # Create an HTML file for each document page.
        # Specify the HTML file names and location of external resources.
        # {0} and {1} are replaced with the current page number and resource name, respectively.
        viewOptions = HtmlViewOptions.for_external_resources("render_ebook_to_html_external/pdf_page_{0}.html", "render_ebook_to_html_external/pdf_page_{0}/resource_{0}_{1}", "render_ebook_to_html_external/pdf_page_{0}/resource_{0}_{1}")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_ebook_to_html_external()
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/python-net/images/rendering-basics/render-ebooks/render-to-html-external-resources.png)

## Render EBooks as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an EBook to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_ebook_to_pdf():
    # Load EBook
    with Viewer("sample.epub") as viewer:
        # Create a PDF file for the document.
        # Specify the PDF file name.
        viewOptions = PdfViewOptions("render_ebook_to_pdf/ebook.pdf")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_ebook_to_pdf()
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an EBook to PDF](/viewer/python-net/images/rendering-basics/render-ebooks/render-to-pdf.png)

## Render EBooks as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an EBook to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

def render_ebook_to_png():
    # Load EBook
    with Viewer("sample.epub") as viewer:
        # Create a PNG image for each document page.
        # {0} is replaced with the current page number in the image name.
        viewOptions = PngViewOptions("render_ebook_to_png/ebook_page_0_{0}.png")
        # Set width and height.
        viewOptions.width = 800
        viewOptions.height = 900
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_ebook_to_png()
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render an EBook to PNG](/viewer/python-net/images/rendering-basics/render-ebooks/render-to-png-image.png)

## Render EBooks as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an EBook to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import JpgViewOptions

def render_ebook_to_jpg():
    # Load EBook
    with Viewer("sample.epub") as viewer:
        # Create a JPEG image for each document page.
        # {0} is replaced with the current page number in the image name.
        viewOptions = JpgViewOptions("render_ebook_to_jpg/ebook_to_jpg_{0}.jpg")
        # Set width and height.
        viewOptions.width = 800
        viewOptions.height = 900
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_ebook_to_jpg()
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

