---
id: render-presentations
url: viewer/python-net/render-presentations
title: Render PowerPoint presentations as HTML, PDF, and image files
linkTitle: Render PowerPoint presentations
weight: 4
description: "This topic describes how to use the GroupDocs.Viewer Python API to convert PowerPoint presentations to HTML, PDF, PNG, and JPEG formats."
keywords: convert pptx to pdf, convert pptx to html, convert pptx to jpeg, convert ppt to pdf, convert presentation to pdf, convert ppt to html, convert presentation to html, convert presentation to image
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-powerpoint-presentations/
    - /viewer/python-net/how-to-set-resolution-for-images-when-rendering-presentations-to-html/
    - /viewer/python-net/how-to-convert-and-view-fodp-and-odp-files/
    - /viewer/python-net/converting-presentations-with-shapes-and-text-with-3-d-effects/
    - /viewer/python-net/show-document-notes
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render your presentations in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft PowerPoint or other software to load and view presentations within your .NET application (web or desktop). 

Create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a presentation you want to view to the class constructor. You can load the presentation from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the presentation to HTML, PDF, or image format. These methods allow you to render the entire presentation or specific slides.

{{< button style="primary" link="https://products.groupdocs.app/viewer/powerpoint" >}} {{< icon "gdoc_person" >}} View PowerPoint files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported presentation file formats

GroupDocs.Viewer supports the following presentation file formats:

* [Microsoft PowerPoint Presentation](https://docs.fileformat.com/presentation/pptx/) (.PPTX)
* [Microsoft PowerPoint 97-2003 Presentation](https://docs.fileformat.com/presentation/ppt/) (.PPT)
* [Microsoft PowerPoint Template](https://docs.fileformat.com/presentation/potx) (.POTX)
* [Microsoft PowerPoint 97-2003 Template](https://docs.fileformat.com/presentation/pot) (.POT)
* [Microsoft PowerPoint Macro-Enabled Template](https://docs.fileformat.com/presentation/potm) (.POTM)
* [Microsoft PowerPoint Slide Show](https://docs.fileformat.com/presentation/ppsx) (.PPSX)
* [Microsoft PowerPoint Macro-Enabled Slide Show](https://docs.fileformat.com/presentation/ppsm) (.PPSM)
* [Microsoft PowerPoint 97-2003 Slide Show](https://docs.fileformat.com/presentation/pps) (.PPS)
* [Microsoft PowerPoint Macro-Enabled Presentation](https://docs.fileformat.com/presentation/pptmx) (.PPTM)
* [OpenDocument Presentation](https://docs.fileformat.com/presentation/odp) (.ODP)
* [OpenDocument Presentation Template](https://docs.fileformat.com/presentation/otp) (.OTP)
* [OpenDocument Flat XML Presentation](https://docs.fileformat.com/) (.FODP)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render presentations as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
// ...

    # Create an HTML file for each slide.
    # {0} is replaced with the current page number in the file name.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to HTML](/viewer/python-net/images/rendering-basics/render-presentations/render-to-html-embedded-resources.png)

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

    # Create an HTML file for each slide.
    # Specify the HTML file names and location of external resources.
    # {0} and {1} are replaced with the current page number and resource name, respectively.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        html_options = gvo.HtmlViewOptions.for_external_resources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
        viewer.view(html_options)

```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/python-net/images/rendering-basics/render-presentations/render-to-html-external-resources.png)

## Render presentations as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a PDF file for the presentation.
    # Specify the PDF file name.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        viewer.view(viewOptions)

```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to PDF](/viewer/python-net/images/rendering-basics/render-presentations/render-to-pdf.png)

## Render presentations as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a PNG image for each slide.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        png_options = gvo.PngViewOptions("output_{0}.png")
        # Set width and height.
        png_options.width = 950
        png_options.height = 950
        viewer.view(png_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to PNG](/viewer/python-net/images/rendering-basics/render-presentations/render-to-png-image.png)

## Render presentations as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.


{{< tabs "example5">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a JPEG image for each slide.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        jpg_options = gvo.JpgViewOptions("output_{0}.jpg")
        # Set width and height.
        jpg_options.width = 950
        jpg_options.height = 550
        viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}

## Specify image resolution

When you convert presentations with high-resolution images to other formats, you may need to lower image resolution to reduce the output file size. GroupDocs.Viewer supports the [PresentationOptions.Resolution](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/presentationoptions/properties/resolution) option that allows you to compress images in the output HTML and PDF files. To access this option, use the [HtmlViewOptions.PresentationOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/presentationoptions) or [PdfViewOptions.PresentationOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/presentationoptions) property (depending on the output file format).

You can set the [PresentationOptions.Resolution](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/presentationoptions/properties/resolution) property to one of the following [Resolution](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/resolution) field values:

| Resolution field | DPI | Remarks |
| --- | --- | --- |
| DocumentResolution | As in the source file | This is the default value.|
| Dpi72 | 72 | Maximum image compression and minimum file size. |
| Dpi96 | 96 | Good for web pages and projectors. |
| Dpi150 | 150 | Good for web pages and projectors. |
| Dpi220 | 220 | Excellent quality on most printers and screens. |
| Dpi330 | 330 | Good quality for high-definition (HD) displays. |

The following example shows how to specify image resolution in code: 

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create a JPEG image for each slide.
    # {0} is replaced with the current page number in the image name.
    with gv.Viewer(test_files.sample_pptx) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Specify resolution.
        viewOptions.presentation_options.resolution = Resolution.dpi_150;
        viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}

## Render hidden slides

If your presentation contains hidden slides, enable the [ViewOptions.RenderHiddenPages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/renderhiddenpages) property for a target view to display these slides in the output HTML, PDF, or image files.

The following code example uses this option to display hidden slides in the generated PDF file:

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Convert the presentation to PDF.
    with gv.Viewer(test_files.sample_pptx_hidden_page) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Enable hidden slides rendering.
        viewOptions.render_hidden_pages = True
        viewer.view(viewOptions)

```
{{< /tab >}}
{{< /tabs >}}

## Render comments

Enable the [ViewOptions.RenderComments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) option for a target view to display comments in the output file when you convert your presentation to HTML, PDF, PNG, or JPEG format.

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Convert the presentation to PDF.
    with gv.Viewer(test_files.sample_docx_with_comment) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Enable comments rendering.
        viewOptions.render_comments = True
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation with comments](/viewer/python-net/images/rendering-basics/render-presentations/render-presentation-comments-to-pdf.png)

## Render speaker notes

A presentation file can contain speaker notes that help presenters recall important information during the presentation. Speaker notes appear in the **Notes** pane below each slide.

![Speaker notes in Microsoft PowerPoint](/viewer/python-net/images/rendering-basics/render-presentations/presentation-speaker-notes.png)

Enable the [ViewOptions.RenderNotes](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/rendernotes) property for a target view to display speaker notes in the output HTML, PDF, or image files.

The following code sample renders a presentation with speaker notes to PDF:

{{< tabs "example9">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Convert the presentation to PDF.
    with gv.Viewer(test_files.pptx_with_notes) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Enable speaker notes rendering.
        viewOptions.render_notes = True
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Render a presentation with notes](/viewer/python-net/images/rendering-basics/render-presentations/render-presentation-notes-to-pdf.png)
