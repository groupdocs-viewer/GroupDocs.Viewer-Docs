---
id: render-web-documents
url: viewer/python-net/render-web-documents
title: Render web documents as PDF, PNG, and JPEG files
linkTitle: Render Web documents
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
[GroupDocs.Viewer for Python](https://products.groupdocs.com/viewer/python-net) allows you to render web documents as PDF, PNG, and JPEG files. Use this library to view web files within your Java application. 

To start using the GroupDocs.Viewer API, create a [Viewer](#) class instance. Pass a web document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](#) method overloads to convert the document to PDF or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/web" >}} {{< icon "gdoc_person" >}} View web files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported web file formats

GroupDocs.Viewer supports the following web file formats:

* [Hypertext Markup Language Format](https://docs.fileformat.com/web/html/) (.HTML / .HTM)
* [MIME HTML Format](https://docs.fileformat.com/web/mhtml/) (.MHTML)
* [MHTML Web Archive](https://docs.fileformat.com/web/mht/) (.MHT)
* [Compiled HTML Help Format](https://docs.fileformat.com/web/chm/) (.CHM)

## Render web documents as PDF

Create a [PdfViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a web file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("groupdocs-documentation.mhtml") as viewer:
    # Create a PDF file for the document.
    # Specify the PDF file name.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PDF](/viewer/python-net/images/rendering-basics/render-web-documents/render-web-to-pdf.png)

## Render web documents as PNG

Create a [PngViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a web file to PNG. Use the [PngViewOptions.setHeight](#) and [PngViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("groupdocs-documentation.mhtml") as viewer:
    # Convert the web file to PNG.
    # {0} is replaced with the page numbers in the output image names.
    viewOptions = gvo.PngViewOptions("output_{0}.png")
    # Set width and height.
    viewOptions.width = 950
    viewOptions.height = 800
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PNG](/viewer/python-net/images/rendering-basics/render-web-documents/render-web-to-png.png)

## Render web documents as JPEG

Create a [JpgViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a web file to JPEG. Use the [JpgViewOptions.setHeight](#) and [JpgViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("groupdocs-documentation.mhtml") as viewer:
    # Create a JPEG image for each drawing page.
    # {0} is replaced with the current page number in the image name.
    viewOptions = gvo.JpgViewOptions("output_{0}.jpg")
    # Set width and height.
    viewOptions.width = 1600
    viewOptions.height = 650
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Convert CHM files to HTML

[CHM](https://docs.fileformat.com/web/chm/) is a Microsoft proprietary online help format that is often used for software documentation. With GroupDocs.Viewer, you can convert a CHM file to HTML to display this file in a web browser. To do this, create an [HtmlViewOptions](#) class instance and pass it to the [Viewer.view](#) method. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](#) method and specify the output file name.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.chm") as viewer:
    # Convert the CHM file to HTML.
    # {0} is replaced with the page numbers in the output file names.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("chm_result_{0}.html")
    # Enable the following option to display all CHM content on a single HTML page.
    # viewOptions.setRenderToSinglePage(true)
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to HTML](/viewer/python-net/images/rendering-basics/render-web-documents/render-chm-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](#) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.chm") as viewer:
    # Convert the CHM file to HTML.
    # Specify the output file names and location of external resources.
    viewOptions = gvo.HtmlViewOptions.for_external_resources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}