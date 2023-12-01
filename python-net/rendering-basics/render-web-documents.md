---
id: render-web-documents
url: viewer/python-net/render-web-documents
title: Render web documents as PDF, PNG, and JPEG files
linkTitle: Render web documents
weight: 9
description: "This topic describes how to use the GroupDocs.Viewer Python API to convert web documents to PDF, PNG, and JPEG formats."
keywords: convert html, html to pdf, html to jpeg, html to png, html to image
productName: GroupDocs.Viewer for Python via .NET 
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-web-documents
    - /viewer/python-net/how-to-convert-and-view-chm-files
    - /viewer/python-net/how-to-convert-and-view-html-files-with-margins
---
[GroupDocs.Viewer for Python via .NET ](https://products.groupdocs.com/viewer/python-net) allows you to render web documents as PDF, PNG, and JPEG files. Use this library to view web files within your .NET application. 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass a web document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to PDF or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/web" >}} {{< icon "gdoc_person" >}} View web files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported web file formats

GroupDocs.Viewer supports the following web file formats:

* [Hypertext Markup Language Format](https://docs.fileformat.com/web/html/) (.HTML / .HTM)
* [MIME HTML Format](https://docs.fileformat.com/web/mhtml/) (.MHTML)
* [MHTML Web Archive](https://docs.fileformat.com/web/mht/) (.MHT)
* [Compiled HTML Help Format](https://docs.fileformat.com/web/chm/) (.CHM)

GroupDocs.Viewer can detect the document format automatically by analyzing file contents.

## Render web documents as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a web file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a PDF file for the document.
    # Specify the PDF file name.
    with gv.Viewer(test_files.sample_mhtml) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        viewer.view(viewOptions)

```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PDF](/viewer/python-net/images/rendering-basics/render-web-documents/render-web-to-pdf.png)

## Render web documents as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a web file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Convert the web file to PNG.
    # {0} is replaced with the page numbers in the output image names.
    with gv.Viewer(test_files.sample_mhtml) as viewer:
        png_options = gvo.PngViewOptions("output_{0}.png")
        viewer.view(png_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PNG](/viewer/python-net/images/rendering-basics/render-web-documents/render-web-to-png.png)

## Render web documents as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a web file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Convert the web file to JPEG.
    # {0} is replaced with the page numbers in the output image names.
    with gv.Viewer(test_files.sample_mhtml) as viewer:
        jpg_options = gvo.JpgViewOptions("output_{0}.jpg")
        viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}

## Convert CHM files to HTML

[CHM](https://docs.fileformat.com/web/chm/) is a Microsoft proprietary online help format that is often used for software documentation. With GroupDocs.Viewer, you can convert a CHM file to HTML to display this file in a web browser. To do this, create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
// ...

    # Convert the CHM file to HTML.
    # {0} is replaced with the page numbers in the output file names.
    with gv.Viewer(test_files.sample_chm) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        # Enable the following option to display all CHM content on a single HTML page.
        # html_options.render_to_single_page = true;
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to HTML](/viewer/python-net/images/rendering-basics/render-web-documents/render-chm-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Convert the CHM file to HTML.
    # Specify the HTML file names and location of external resources.
    # {0} and {1} are replaced with the current page number and resource name, respectively.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        html_options = gvo.HtmlViewOptions.for_external_resources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
        viewer.view(html_options)

```
{{< /tab >}}
{{< /tabs >}}


## Specify rendering options

GroupDocs.Viewer supports the [WebDocumentOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/webdocumentoptions) class that allows you to specify different options for rendering web files. To access these options, use the [WebDocumentOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/webdocumentoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Adjust page margins

Use the following properties to specify the size of page margins in the output files when you convert your web documents to HTML, PDF, and image formats: 

* [WebDocumentOptions.TopMargin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/webdocumentoptions/properties/topmargin)---Specifies the distance (in points) between the top edge of the page and the top boundary of the body text. The default value is 72 points.
* [WebDocumentOptions.BottomMargin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/webdocumentoptions/properties/bottommargin)---Specifies the distance (in points) between the bottom edge of the page and the bottom boundary of the body text. The default value is 72 points.
* [WebDocumentOptions.LeftMargin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/webdocumentoptions/properties/leftmargin)---Specifies the distance (in points) between the left edge of the page and the left boundary of the body text. The default value is 5 points.
* [WebDocumentOptions.RightMargin](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/webdocumentoptions/properties/rightmargin)---Specifies the distance (in points) between the right edge of the page and the right boundary of the body text. The default value is 5 points.

The example below converts a web document to PDF and specifies page margins for the output file. 

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Convert the document to PDF.
    with gv.Viewer(test_files.sample_mhtml) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Specify the size of page margins in points.
        viewOptions.word_document_options.left_margin = 40.0
        viewOptions.word_document_options.right_margin = 40.0
        viewOptions.word_document_options.top_margin = 40.0
        viewOptions.word_document_options.bottom_margin = 40.0
        viewer.view(viewOptions)

```
{{< /tab >}}
{{< /tabs >}}

### Set the output page size

GroupDocs.Viewer allows you to specify page size for the output file when you convert your web document to another format. Assign a [PageSize](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pagesize) enumeration member to the [WebDocumentOptions.PageSize](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/webdocumentoptions/properties/pagesize) property to select one of the predefined page sizes (Letter, Ledger, A0, A1, A2, A3, or A4).

The following example specifies page size for the output PDF file:

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Convert the document to PDF.
    with gv.Viewer(test_files.sample_mhtml) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Specify the page size.
        viewOptions.word_document_options.page_size = gvo.PageSize.A3
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
