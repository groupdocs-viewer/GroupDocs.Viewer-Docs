---
id: render-word-documents
url: viewer/python-net/render-word-documents
title: Render Word documents as HTML, PDF, and image files
linkTitle: Render Word documents
weight: 1
description: "Convert Word documents to HTML, PDF, PNG, or JPEG using GroupDocs.Viewer and Python. Learn the basics of document rendering."
keywords: convert word to pdf, docx to pdf, word to jpg, doc to pdf, convert word, pdf conversion, word to image
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-view-word-documents-using-csharp/
    - /viewer/python-net/show-document-comments
---
[GroupDocs.Viewer for Python](https://products.groupdocs.com/viewer/python-net) allows you to render your Microsoft Word documents in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Word or other word processors to load and view Word documents within your Python application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](#) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/word" >}} {{< icon "gdoc_person" >}} View Word files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Word Processing file formats

GroupDocs.Viewer supports the following Word Processing file formats:

* [Microsoft Word Document](https://docs.fileformat.com/word-processing/docx) (.DOCX)
* [Microsoft Word 97-2003 Document](https://docs.fileformat.com/word-processing/doc) (.DOC)
* [Microsoft Word Macro-Enabled Document](https://docs.fileformat.com/word-processing/docm) (.DOCM)
* [Microsoft Word 97-2003 Template](https://docs.fileformat.com/word-processing/dot) (.DOT)
* [Microsoft Word Macro-Enabled Template](https://docs.fileformat.com/word-processing/dotm) (.DOTM)
* [Microsoft Word Template](https://docs.fileformat.com/word-processing/dotx) (.DOTX)
* [OpenDocument Text](https://docs.fileformat.com/word-processing/odt) (.ODT)
* [OpenDocument Text Template](https://docs.fileformat.com/word-processing/ott) (.OTT)
* [Rich Text Document](https://docs.fileformat.com/word-processing/rtf) (.RTF)
* [Plain Text Document](https://docs.fileformat.com/word-processing/txt) (.TXT)

## Render Word documents as HTML

Create an [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a Word file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_word_to_html():
    # Load Word document
    with Viewer("sample.docx") as viewer:
        # Create an HTML files.
        # {0} is replaced with the current page number in the file name.
        viewOptions = HtmlViewOptions.for_embedded_resources("render_word_to_html/pdf_page_{0}.html")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_to_html()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to HTML](/viewer/python-net/images/rendering-basics/render-word-documents/render-to-html-embedded-resources.png)

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

def render_word_to_html_external():
    # Load Word document
    with Viewer("sample.docx") as viewer:
        # Create an HTML file for each page.
        # Specify the HTML file names and location of external resources.
        # {0} and {1} are replaced with the current page number and resource name, respectively.
        viewOptions = HtmlViewOptions.for_external_resources("render_word_to_html_external/pdf_page_{0}.html", "render_word_to_html_external/pdf_page_{0}/resource_{0}_{1}", "render_word_to_html_external/pdf_page_{0}/resource_{0}_{1}")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_to_html_external()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/python-net/images/rendering-basics/render-word-documents/render-to-html-external-resources.png)

## Render Word documents as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a Word file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_word_to_pdf():
    # Load Word document
    with Viewer("sample.docx") as viewer:
        # Create a PDF file for the document.
        # Specify the PDF file name.
        viewOptions = PdfViewOptions("render_word_to_pdf/word_document.pdf")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_to_pdf()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to PDF](/viewer/python-net/images/rendering-basics/render-word-documents/render-to-pdf.png)

## Render Word documents as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a Word file to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

def render_word_to_png():
    # Load Word document
    with Viewer("sample.docx") as viewer:
        # Create a PNG image for each document page.
        # {0} is replaced with the current page number in the image name.
        viewOptions = PngViewOptions("render_word_to_png/word_page_0_{0}.png")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_to_png()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render a Word file to PNG](/viewer/python-net/images/rendering-basics/render-word-documents/render-to-png-image.png)

## Render Word documents as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a Word file to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import JpgViewOptions

def render_word_to_jpg():
    # Load Word document
    with Viewer("sample.docx") as viewer:
        # Create a JPG image for each document page.
        # {0} is replaced with the current page number in the image name.
        viewOptions = JpgViewOptions("render_word_to_jpg/word_to_jpg_{0}.jpg")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_to_jpg()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Define page margins

Use the following methods to specify the size of page margins in the output files when you convert your Word documents to HTML, PDF, and image formats: 

* [WordProcessingOptions.top_margin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/wordprocessingoptions/#properties) specifies the distance (in points) between document content and the top edge of the page.
* [WordProcessingOptions.bottom_margin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/wordprocessingoptions/#properties) specifies the distance (in points) between document content and the bottom edge of the page.
* [WordProcessingOptions.left_margin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/wordprocessingoptions/#properties) specifies the distance (in points) between document content and the left edge of the page.
* [WordProcessingOptions.right_margin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/wordprocessingoptions/#properties) specifies the distance (in points) between document content and the right edge of the page.

You can access these methods for the following classes:

* [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods)
* [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/)
* [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/) 

The example below converts a Word document to HTML and specifies page margins for the output file. 

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_word_with_margins():
    # Load Word document
    with Viewer("sample.docx") as viewer:
        # Create an HTML file for each document page.
        # {0} is replaced with the current page number in the file name.
        viewOptions = HtmlViewOptions.for_embedded_resources("render_word_with_margins/word_with_margins_{0}.html")
        # Specify the size of page margins in points.
        viewOptions.word_processing_options.left_margin = 54.0
        viewOptions.word_processing_options.right_margin = 54.0
        viewOptions.word_processing_options.top_margin = 72.0
        viewOptions.word_processing_options.bottom_margin = 72.0
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_with_margins()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render tracked changes

GroupDocs.Viewer does not render tracked changes (revisions made to a Word document) by default. If you want to display tracked changes in the output file, use the [WordProcessingOptions.render_tracked_changes](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/wordprocessingoptions/#properties) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/)
* [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/) 

The following code example demonstrates how to render a Word document with tracked changes:

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_word_with_tracked_changes():
    # Load Word document
    with Viewer("with_tracked_changes.docx") as viewer:
        # Convert the document to PDF.
        viewOptions = PdfViewOptions("render_word_with_tracked_changes/word_with_tracked_changes.pdf")
        # Enable tracked changes rendering.
        viewOptions.word_processing_options.render_tracked_changes = True
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_with_tracked_changes()
```
{{< /tab >}}
{{< tab "with_tracked_changes.docx" >}}
{{< tab-text >}}
`with_tracked_changes.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/with_tracked_changes.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render tracked changes to PDF](/viewer/python-net/images/rendering-basics/render-word-documents/render-track-changes-to-pdf.png)

## Render comments

Use the [ViewOptions.render_comments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewoptions/#properties) method for a target view to display comments in the output file when you convert your document to HTML, PDF, PNG, or JPEG format.

The code example below renders a Word document with comments to PDF.

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_word_with_comments():
    # Load Word document
    with Viewer("with_comment.docx") as viewer:
        # Convert the document to PDF.
        viewOptions = PdfViewOptions("render_word_with_comments/word_with_comments.pdf")
        # Enable rendering comments.
        viewOptions.render_comments = True
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_word_with_comments()
```
{{< /tab >}}
{{< tab "with_comment.docx" >}}
{{< tab-text >}}
`with_comment.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-word-documents/with_comment.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render comments to PDF](/viewer/python-net/images/rendering-basics/render-word-documents/render-comments-to-pdf.png)
