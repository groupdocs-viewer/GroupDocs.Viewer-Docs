---
id: render-pdf-documents
url: viewer/python-net/render-pdf-documents
title: Render PDF documents as HTML and image files
linkTitle: Render PDF documents
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer for Python via .NET API to convert PDF files to HTML, PNG, and JPEG formats."
keywords: view pdf, pdf viewer, pdf to html, pdf to jpeg, pdf to jpg, pdf to png, pdf to image, convert pdf
productName: GroupDocs.Viewer for Python via .NET 
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-view-pdf-documents-using-python/
---
[GroupDocs.Viewer for Python via .NET ](https://products.groupdocs.com/viewer/python-net) allows you to render your PDF files in HTML, PNG, and JPEG formats. Use this library to implement a simple PDF viewer within your Python application (web or desktop).

Create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/pdf" >}} {{< icon "gdoc_person" >}} View PDF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}
<!-- TODO demos to python? -->
## Supported Page Layout file formats

GroupDocs.Viewer supports the following PDF and Page Layout file formats:

* [Portable Document Format](https://docs.fileformat.com/pdf/) (.PDF)
* [Microsoft XML Paper Specification](https://docs.fileformat.com/page-description-language/xps/) (.XPS)
* [Open XML Paper Specification](https://docs.fileformat.com/page-description-language/oxps/) (.OXPS)
* [LaTeX Source Document](https://docs.fileformat.com/page-description-language/tex/) (.TEX)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render PDF files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a PDF file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create an HTML file for each PDF page.
    # {0} is replaced with the current page number in the file name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PDF file to HTML](/viewer/python-net/images/rendering-basics/render-pdf-documents/render-pdf-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create an HTML file for each PDF page.
    # Specify the HTML file names and location of external resources.
    # {0} and {1} are replaced with the current page number and resource name, respectively.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        html_options = gvo.HtmlViewOptions.for_external_resources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
        viewer.view(html_options)

```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/python-net/images/rendering-basics/render-pdf-documents/render-to-html-external-resources.png)

### Adjust image quality in the output HTML file

The [HtmlViewOptions.PdfOptions.ImageQuality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/imagequality) option allows you to specify the quality of images in the output HTML file. You can set this property to one of the following values:

* [ImageQuality.Low](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/imagequality) --- The image resolution is low (96 DPI), and the image size is small. Use this value to increase the conversion performance.
* [ImageQuality.Medium](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/imagequality) --- The image resolution is medium (192 DPI), and the image size is larger compared to the low quality images.
* [ImageQuality.High](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/imagequality) --- The image resolution is high (300 DPI), and the image size is big. Use of this value may decrease the conversion performance.

The following code snippet shows how to set the medium image quality when rendering a PDF document to HTML:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
# ...
    # Create an HTML file for each document page.
    # {0} is replaced with the current page number in the file name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        # Set image quality to medium.
        options.pdf_options.image_quality = gvo.ImageQuality.MEDIUM 
        viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

### Render text as an image

GroupDocs.Viewer supports the [HtmlViewOptions.PdfOptions.RenderTextAsImage](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptions/properties/rendertextasimage) option that allows you to render text as an image when you convert a PDF file to HTML. In this case, the layout of the output HTML file closely mirrors the layout of the source PDF document.

The following code snippet shows how to enable this option in code:

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
# ...
    # Create an HTML file for each document page.
    # {0} is replaced with the current page number in the file name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("text-as-image_{0}.html")
        # Enable rendering text as image.
        options.pdf_options.render_text_as_image = True
        viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result. PDF content is exported to HTML as an image, so users cannot select or copy document text.  

![Render PDF content as an image in the output HTML file](/viewer/python-net/images/rendering-basics/render-pdf-documents/render-pdf-to-html-as-image.png)

### Enable multi-layer rendering

When you convert a PDF file to HTML, GroupDocs.Viewer creates an HTML document with a single layer (the `z-index` is not specified for document elements). This helps increase performance and reduce the output file size. If you convert a PDF document with multiple layers and want to improve the position of document elements in the output HTML file, activate the [HtmlViewOptions.PdfOptions.EnableLayeredRendering](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/enablelayeredrendering) property to render text and graphics in the HTML file according to their z-order in the source PDF document.

The following code snippet shows how to enable the multi-layer rendering:

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create an HTML file for each document page.
    # {0} is replaced with the current page number in the file name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        # Enable the multi-layer rendering.
        options.pdf_options.enable_layered_rendering = True
        viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

## Render PDF files as images

### Convert PDF files to PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a PDF file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a PNG image for each PDF page.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        png_options = gvo.PngViewOptions("output_{0}.png")
        # Set width and height.
        png_options.width = 800
        png_options.height = 900
        viewer.view(png_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PDF file to PNG](/viewer/python-net/images/rendering-basics/render-pdf-documents/render-pdf-to-png.png)

### Convert PDF files to JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a PDF file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a JPEG image for each PDF page.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        jpg_options = gvo.JpgViewOptions("output_{0}.jpg")
        # Set width and height.
        jpg_options.width = 600
        jpg_options.height = 800

        viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}

### Preserve the size of document pages

When you render PDF documents as images, GroupDocs.Viewer calculates the optimal image size to achieve better rendering quality. If you want the generated images to be the same size as pages in the source PDF document, enable the [PdfOptions.RenderOriginalPageSize](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/renderoriginalpagesize) property for the [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class (depending on the output image format).

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create a PNG image for each PDF page.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        options = gvo.PngViewOptions("output_{0}.png")
        # Preserve the size of document pages.
        options.pdf_options.render_original_page_size = True
        viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

### Enable font hinting

To adjust the display of outline fonts when you convert PDF documents to PNG or JPEG, activate the [PdfOptions.EnableFontHinting](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/enablefonthinting) option, as shown below:

{{< tabs "example9">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create a PNG image for each PDF page.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        options = gvo.PngViewOptions("output_{0}.png")
        # Enable font hinting
        options.pdf_options.enable_font_hinting = True
        viewer.view(options)

```
{{< /tab >}}
{{< /tabs >}}

Refer to the following article for more information on font hinting: [Font hinting](https://en.wikipedia.org/wiki/Font_hinting).

## Disable character grouping

When you render PDF files in other formats, GroupDocs.Viewer groups individual characters into words to improve rendering performance. If your document contains hieroglyphic or special symbols, you may need to disable character grouping to generate a more precise layout. To do this, use the [PdfOptions.DisableCharsGrouping](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/disablecharsgrouping) option, as shown below:

{{< tabs "example10">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create an HTML file for each document page.
    # {0} is replaced with the current page number in the file name.
    with gv.Viewer(test_files.sample_pdf) as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        # Disable character grouping
        options.pdf_options.disable_chars_grouping = True
        viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

## Render text comments

Enable the [ViewOptions.RenderComments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) option for a target view to display textual annotations (such as text comments, sticky notes, text boxes and callouts) in the output HTML, PNG, or JPEG files.

The code example below renders a PDF file with text comments as an image.

{{< tabs "example11">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create a PNG image for each PDF page.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_docx_with_comment) as viewer:
        options = gvo.PngViewOptions("output_{0}.png")
        # Enable comments rendering.
        options.render_comments = True
        viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render PDF comments to PNG](/viewer/python-net/images/rendering-basics/render-pdf-documents/render-pdf-comments.png)

## Get information about a PDF file

Follow the steps below to obtain information about a PDF file (the number of pages, page size, and printing permissions): 

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [PdfViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/pdfviewinfo) type.
3. Use the `PdfViewInfo` class properties to retrieve document-specific information.

{{< tabs "example12">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    with gv.Viewer(test_files.sample_pdf) as viewer:
        view_info_options = gvo.ViewInfoOptions.for_html_view()
        view_info = viewer.get_view_info(view_info_options)

        # Display information about the PDF document.
        print(f"File type: {view_info.file_type}")
        print(f"The number of pages: {len(view_info.pages)}")
        print(f"Is printing allowed: {view_info.printing_allowed}")

        # Display information about all document pages.
        print("Page information:")
        for page in view_info.pages:
            # The str(page) method is overridden to display the following page information:
            # "Page {Number} ({visibility}) {Width}x{Height}px with {Lines.Count} line(s)."
            print(page)

```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about a PDF file](/viewer/python-net/images/rendering-basics/render-pdf-documents/retrieve-pdf-file-information.png)

### Extract text from a PDF file

Set the [ViewInfoOptions.ExtractText](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewinfooptions/properties/extracttext) property to `true` to enable PDF text extraction. Use the [PdfViewInfo.Pages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/properties/pages) property to obtain the list of all document pages, and iterate through the collection of lines on each page ([Page.Lines](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/page/properties/lines)) to retrieve text for each line.

{{< tabs "example13">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    with gv.Viewer(test_files.sample_pdf) as viewer:
        view_info_options = gvo.ViewInfoOptions.for_html_view()
        view_info_options.extract_text = True
        view_info = viewer.get_view_info(view_info_options)
        
        # Retrieve text from the PDF file.
        print("Extracted document text:")
        for page in view_info.pages:
            for line in page.lines:
                print(line.value)
```
{{< /tab >}}
{{< /tabs >}}

![Extract and display PDF text](/viewer/python-net/images/rendering-basics/render-pdf-documents/extract-pdf-text.png)

## Skip font license verification when rendering XPS and OXPS files

If an XPS or OXPS file contains a font that cannot be embedded due to licensing restrictions, GroupDocs.Viewer throws an exception at runtime. If you have a license for this font, enable the [PdfOptions.DisableFontLicenseVerifications](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptions/disablefontlicenseverifications) option to skip font license verification.

{{< tabs "example14">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_oxps) as viewer:
    view_options = HtmlViewOptions.for_embedded_resources()
    view_options.pdf_options.disable_font_license_verifications = True
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

## Enclose images in SVG when rendering PDF and Page Layout files

By default, when rendering to the PDF and Page Layout file formats, all images are combined into a single PNG file, which serves as the background for the output HTML document.

The [PdfOptions.WrapImagesInSvg](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptions/wrapimagesinsvg) option allows you to wrap each image in the output HTML document with an SVG tag to improve output quality.

This option is available when rendering PDF and Page Layout file formats to HTML with embedded or external resources. 

{{< tabs "example15">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.pdf) as viewer:
    view_options = HtmlViewOptions.for_embedded_resources()
    view_options.pdf_options.wrap_images_in_svg = True
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image shows the rendering [resume.pdf](/viewer/python-net/images/rendering-basics/render-pdf-documents/resume.pdf) with the disabled (left) and enabled (right) `WrapImagesInSvg` option:

![Images as background vs embedded in SVG](/viewer/python-net/images/rendering-basics/render-pdf-documents/wrap-images-in-svg.png)
