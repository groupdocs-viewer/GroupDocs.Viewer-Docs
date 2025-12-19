---
id: render-presentations
url: viewer/python-net/render-presentations
title: Render PowerPoint presentations as HTML, PDF, and image files
linkTitle: Render PowerPoint presentations
weight: 4
description: "Convert PowerPoint presentations to HTML, PDF, PNG, or JPEG using the GroupDocs.Viewer Python API."
keywords: pptx to pdf, pptx to html, presentation to pdf, ppt to pdf, pptx to image, presentation to image, convert pptx
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
[GroupDocs.Viewer for Python](https://products.groupdocs.com/viewer/python-net) allows you to render your presentations in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft PowerPoint or other software to load and view presentations within your Python application (web or desktop). 

Create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) class instance to get started with the GroupDocs.Viewer API. Pass a presentation you want to view to the class constructor. You can load the presentation from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the presentation to HTML, PDF, or image format. These methods allow you to render the entire presentation or specific slides.

{{< button style="primary" link="https://products.groupdocs.app/viewer/powerpoint" >}} {{< icon "gdoc_person" >}} View PowerPoint files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Presentation file formats

GroupDocs.Viewer supports the following file formats:

* {{% closedlink title="Microsoft PowerPoint Presentation" href="https://docs.fileformat.com/presentation/pptx/" %}} (.PPTX)
* {{% closedlink title="Microsoft PowerPoint 97-2003 Presentation" href="https://docs.fileformat.com/presentation/ppt/" %}} (.PPT)
* {{% closedlink title="Microsoft PowerPoint Template" href="https://docs.fileformat.com/presentation/potx" %}} (.POTX)
* {{% closedlink title="Microsoft PowerPoint 97-2003 Template" href="https://docs.fileformat.com/presentation/pot" %}} (.POT)
* {{% closedlink title="Microsoft PowerPoint Macro-Enabled Template" href="https://docs.fileformat.com/presentation/potm" %}} (.POTM)
* {{% closedlink title="Microsoft PowerPoint Slide Show" href="https://docs.fileformat.com/presentation/ppsx" %}} (.PPSX)
* {{% closedlink title="Microsoft PowerPoint Macro-Enabled Slide Show" href="https://docs.fileformat.com/presentation/ppsm" %}} (.PPSM)
* {{% closedlink title="Microsoft PowerPoint 97-2003 Slide Show" href="https://docs.fileformat.com/presentation/pps" %}} (.PPS)
* {{% closedlink title="Microsoft PowerPoint Macro-Enabled Presentation" href="https://docs.fileformat.com/presentation/pptmx" %}} (.PPTM)
* {{% closedlink title="OpenDocument Presentation" href="https://docs.fileformat.com/presentation/odp" %}} (.ODP)
* {{% closedlink title="OpenDocument Presentation Template" href="https://docs.fileformat.com/presentation/otp" %}} (.OTP)
* {{% closedlink title="OpenDocument Flat XML Presentation" href="https://docs.fileformat.com/" %}} (.FODP)

## Render presentations as HTML

Create an [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a presentation file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_presentation_to_html():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        # Create an HTML file for each slide.
        # {0} is replaced with the current page number in the file name.
        options = HtmlViewOptions.for_embedded_resources("render_presentation_to_html/pdf_page_{0}.html")
        viewer.view(options)

if __name__ == "__main__":
    render_presentation_to_html()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to HTML](/viewer/python-net/images/rendering-basics/render-presentations/render-to-html-embedded-resources.png)

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

def render_presentation_to_html_external():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        # Create an HTML file for each slide.
        # Specify the HTML file names and location of external resources.
        # {0} and {1} are replaced with the current page number and resource name, respectively.
        viewOptions = HtmlViewOptions.for_external_resources("render_presentation_to_html_external/pdf_page_{0}.html", "render_presentation_to_html_external/pdf_page_{0}/resource_{0}_{1}", "render_presentation_to_html_external/pdf_page_{0}/resource_{0}_{1}")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_to_html_external()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/python-net/images/rendering-basics/render-presentations/render-to-html-external-resources.png)

## Render presentations as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a presentation file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_presentation_to_pdf():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        viewOptions = PdfViewOptions("render_presentation_to_pdf/presentation.pdf")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_to_pdf()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to PDF](/viewer/python-net/images/rendering-basics/render-presentations/render-to-pdf.png)

## Render presentations as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a presentation file to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

def render_presentation_to_png():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        # Create a PNG image for each slide.
        # {0} is replaced with the current page number in the image name.
        viewOptions = PngViewOptions("render_presentation_to_png/presentation_page_0_{0}.png")
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_to_png()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to PNG](/viewer/python-net/images/rendering-basics/render-presentations/render-to-png-image.png)

## Render presentations as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a presentation file to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) methods to specify the output image size in pixels.


{{< tabs "example5">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import JpgViewOptions

def render_presentation_to_jpg():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        # Create a JPG image for each slide.
        # {0} is replaced with the current page number in the image name.
        viewOptions = JpgViewOptions("render_presentation_to_jpg/presentation_to_jpg_{0}.jpg")
        viewOptions.width = 950
        viewOptions.height = 550
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_to_jpg()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render hidden slides

If your presentation contains hidden slides, use the [ViewOptions.render_hidden_pages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewoptions/#properties) method for a target view to display these slides in the output HTML, PDF, or image files.

The following code example uses this option to display hidden slides in the generated PDF file:

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_presentation_with_hidden_slides():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        viewOptions = PdfViewOptions("render_presentation_with_hidden_slides/presentation_with_hidden_slides.pdf")
        viewOptions.render_hidden_pages = True
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_with_hidden_slides()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render comments

Use the [ViewOptions.render_comments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewoptions/#properties) method for a target view to display comments in the output file when you convert your presentation to HTML, PDF, PNG, or JPEG format.

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_presentation_with_comments():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        viewOptions = PdfViewOptions("render_presentation_with_comments/presentation_with_comments.pdf")
        viewOptions.render_comments = True
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_with_comments()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation with comments](/viewer/python-net/images/rendering-basics/render-presentations/render-presentation-comments-to-pdf.png)

## Render speaker notes

A presentation file can contain speaker notes that help presenters recall important information during the presentation. Speaker notes appear in the **Notes** pane below each slide.

![Speaker notes in Microsoft PowerPoint](/viewer/python-net/images/rendering-basics/render-presentations/presentation-speaker-notes.png)

Use the [ViewOptions.render_notes](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewoptions/#properties) method for a target view to display speaker notes in the output HTML, PDF, or image files.

The following code sample renders a presentation with speaker notes to PDF:

{{< tabs "example9">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_presentation_with_notes():
    # Load presentation
    with Viewer("sample.pptx") as viewer:
        viewOptions = PdfViewOptions("render_presentation_with_notes/presentation_with_notes.pdf")
        viewOptions.render_notes = True
        viewer.view(viewOptions)

if __name__ == "__main__":
    render_presentation_with_notes()
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Render a presentation with notes](/viewer/python-net/images/rendering-basics/render-presentations/render-presentation-notes-to-pdf.png)
