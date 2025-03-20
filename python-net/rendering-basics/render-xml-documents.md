---
id: render-xml-documents
url: viewer/python-net/render-xml-documents
title: Render XML documents as HTML, PDF, PNG, and JPEG files
linkTitle: Render XML documents
weight: 10
description: "Convert XML to HTML, PDF, PNG, or JPEG using GroupDocs.Viewer. Learn about options for pagination and image quality."
keywords: xml viewer, xml converter, xml to html, xml to pdf, xml repair, fix xml, xml processing
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-xml-documents
    - /viewer/python-net/how-to-convert-and-view-xml-files
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) started to support XML format a long time ago, but XML documents were treated as plain text, and thus it was not as useful as it might be. Starting from [version 24.9](https://releases.groupdocs.com/viewer/python-net/release-notes/2024/groupdocs-viewer-for-python-via-net-24-9-release-notes/#new-xml-converter), the completely new XML processing module was implemented, and now XML documents are processed differently, not as plain text documents. This article explains this new XML processing module.

## Opening the XML document

First of all need to emphasize that the new XML processing module had not touched the public API at all — no new options, classes, properties or methods were added or modified. In order to process input XML document properly using the new XML processing module, need to either specify the [`LoadOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions/) class instance with [`FileType.XML`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype/) in its [constructor](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions/#constructors) or just pass the XML document as filename with `*.xml` extension. Code example below shows all possible ways:

{{< tabs "Loading example">}}
{{< tab "Python" >}}
```python
# 1. Specify by filename
with gv.Viewer("Sample.xml") as viewer:
    # do some work...

# 2. Specify by load options
load_options = gvo.LoadOptions()
load_options.file_type = gv.FileType.XML

with gv.Viewer("Sample.xml", load_options) as viewer:
    # do some work...
```
{{< /tab >}}
{{< /tabs >}}


If the instance of the [`Viewer`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) class is initialized using one of the ways described above, the new XML processing module will be used.

By default all XML documents must have an [XML declaration](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction#xml_declaration), which is located in the very beginning of the XML document and which stores the encoding of the consecutive content, for example: 

`<?xml version="1.1" encoding="UTF-8" ?>`

By default GroupDocs.Viewer uses it. But there is a possibility to override this character encoding, if needed. In order to do this the [`LoadOptions.encoding`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions/#properties) property should be set while initializing the [`Viewer`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) class, as it is shown below:

{{< tabs "Custom encoding example">}}
{{< tab "Python" >}}
```python
load_options = gvo.LoadOptions(gv.FileType.XML)
load_options.encoding = "ASCII"

with gv.Viewer("Sample.xml", load_options) as viewer:
    # do some work...
```
{{< /tab >}}
{{< /tabs >}}


The rest of this article explains features of this new XML processing module.

## Representation

The main task of the new XML processing module is to represent the XML markup, obtained from the user, in a structured, formatted, hierarchical view, with highlighting of every distinct entity of this XML structure. For the GroupDocs.Viewer there is no matter how human-friendly is represented the XML markup in original document: it may be divided by line breaks onto separate lines per every element, or the whole document may be stored in a single line of text; it may have indents or not, — all of this does not matter. The GroupDocs.Viewer parses the input XML document and creates a hierarchical Document Object Model (DOM), and then serializes it to the HTML, PDF, PNG or JPEG depending on user options.

In particular, when serializing, GroupDocs.Viewer puts every XML element (node) on a new line, and with left indent, which indicates nesting of a certain element. Every entity of the XML document, — XML element, attribute, its value, text node, XML comment, CDATA section, — has its own highlighting: font style, type, color, size and so on. All quotes, used for enquoting the attribute values, are unified.

The screenshot below shows such scenario. On the left side there is a [sample XML document](/viewer/net/sample-files/render-xml-documents/books-single-line.xml), where all content is stored within a single line, with no indents, line breaks, horizontal tabs, or even extra whitespaces. On the right side the resultant HTML file, generated by the GroupDocs.Viewer, is shown. There can be seen structured view with corrent line breaks and indents, valid highlighting of every XML entity, and recognition of the URIs and email addresses.

![Generate HTML view for input XML](/viewer/net/images/rendering-basics/render-xml-documents/XML-to-HTML.png)

## Fix incorrect XML structure

The World Wide Web Consortium has clearly defined what is a valid XML document, and what is not. The term “[well-formed document](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction#correct_xml_valid_and_well-formed)” defines a those XML document, which "adheres to the syntax rules specified by the XML 1.0 specification in that it must satisfy both physical and logical structures"([ref](http://www.csdservices.com/articles/csdservices)). In particular, a valid XML document must contain only valid characters, its start tags and end tags must be matched, correctly opened and closed, elements must be properly nested, and so on. Unfortunately, not all existing XML documents are well-formed and sometimes there is a necessity to view them. Different XML markup viewers often are unable to properly show invalid XML documents.

GroupDocs.Viewer with its new XML processing module is able to correctly parse, process, format, highlight and view even the heavily distorted XML documents. There is partial list of different damages in XML structure, which GroupDocs.Viewer can fix and process:

- Invalid and illegal characters, including `<` and `&` characters in wrong places.
- Start tags, which are not closed.
- End tags, which are not opened.
- Interleaved (overlapped) tags.
- Start and end tags with unmatched letter cases.
- Truncated (cutted from end) markup.
- Attribute names without values.
- Un-enquoted attribute values (without enclosing quotes).
- Attribute values, which are enquoted partially, with only opening or only closing quote.
- Attribute values, which have redundant quote inside.

GroupDocs.Viewer detects and fixes all these and even more issues in XML markup and also writes them to the log.

Screenshot below demonstrates this in action. [Sample XML file "InvalidXml.xml"](/viewer/net/sample-files/render-xml-documents/InvalidXml.xml) contains all possible damages, described above. In cannot be correctly formatted and highlighted by most popular XML viewing and editing applications. But with the new XML processing module the GroupDocs.Viewer fixes its structure and displays it absolutely correct.

![Generate HTML view for input XML](/viewer/net/images/rendering-basics/render-xml-documents/XML-fixed.png)

## Recognition of URIs and email addresses

While processing the XML markup, the GroupDocs.Viewer scans the XML content for any valid URI, if found, represents them as external links in the resultant HTML format: by using the [A element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a). GroupDocs.Viewer is searching for URIs in: text nodes, CDATA sections, XML comments, attribute values, DocType definitions.

Regarding the email addresses, the GroupDocs.Viewer searches them only in attribute values, and if found, represents them with [mailto](https://en.wikipedia.org/wiki/Mailto) scheme and [A element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a).

If the XML document is saved not to the HTML format, but to the PDF, the URIs and email addresses will be interactive too. But if the output format is PNG or JPEG, the output will be a raster image without any interactive links, of course.

## Saving to HTML format

For saving the documents to the HTML format the GroupDocs.Viewer provides a [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) class. There are two ways of creating an instance of this class: using either [`for_external_resources`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) or [`for_embedded_resources`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) static methods. First method is designed for saving HTML document in a such way, that all its resources (stylesheets, images, fonts etc) are stored separately, while second method stores all resources of the HTML document inside its content: stylesheets are saved inside the STYLE elements, SVG graphics is inlined inside HTML markup, while all other resources (mostly raster images and fonts) are stored according to the [data URI scheme](https://en.wikipedia.org/wiki/Data_URI_scheme) and converted to the [base64](https://en.wikipedia.org/wiki/Base64) format.

But in the context of the XML documents the way of creating the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) instance is not important, because the XML documents cannot have resources, which may be stored externally or embedded. So, when saving XML documents to the HTML, you can create the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) instance in both ways — the result will be the same, no external resources will be produced.

Another important thing is that the XML format by its nature has no pages — it is a hierarchical structure, where some elements are nested inside another, and there is no even similar to pages here. So the best way to represent them in HTML format is to generate a single-page HTML document, so all XML content will be represented in a single HTML document. In order to do this the option [`HtmlViewOptions.render_to_single_page`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#properties) needs to be set up to the true value. By default this option has a false value, so the output HTML document will be paginated — splitted into multiple chunks.

Code example below shows rendering of input XML file to the HTML in both ways:

{{< tabs "Saving to HTML example">}}
{{< tab "Python" >}}
```python
paginated_html_options = gvo.HtmlViewOptions.for_embedded_resources("page-{0}.html")
single_html_options = gvo.HtmlViewOptions.for_embedded_resources("single-page.html")
single_html_options.render_to_single_page = True

with gv.Viewer("Sample.xml") as viewer:
    viewer.view(paginated_html_options)
    viewer.view(single_html_options)
```
{{< /tab >}}
{{< /tabs >}}

All other options, which are present in the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) class, have no effect when saving XML to HTML, except the [`render_to_single_page`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#properties) flag.

## Saving to PDF format

PDF format by its nature has pages, so if the XML content because of its big size cannot fit in the single PDF page, then it will be paginated. Unlike the HTML, PNG, or JPEG, the GroupDocs.Viewer generates only a single PDF file for a single input XML document, with one or more pages. [`PdfViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) class is responsible for saving XML to the PDF, and example below shows this:

{{< tabs "Saving to PDF example">}}
{{< tab "Python" >}}
```python
pdf_options = gvo.PdfViewOptions("output.pdf")
with gv.Viewer("Sample.xml") as viewer:
    viewer.view(pdf_options)
```
{{< /tab >}}
{{< /tabs >}}

As for the version 24.8 all options, which are present in the [`PdfViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) class, have no effect when saving XML to PDF.

## Saving to raster PNG and JPEG formats

[`PngViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/) are responsible for saving XML to the PNG and JPEG raster image formats. Like for the PDF, if XML content cannot fit into the area of one image, it will be paginated and spread across multiple images.

Size of the output images will be calculated automatically based on the XML content, as for the version 24.8 there is no possibility to set the size forcibly, and `width`, `height`, `max_width`, and `max_height` properties of the [`PngViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/) classes have no effect when saving XML to PNG or JPEG.

There is a possibility to set a quality of output JPEG image by setting a [`JpgViewOptions.quality`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) instance property, which has a default value `90`.

Example below shows saving input XML to the output PNG and JPEG:

{{< tabs "Saving to PNG and JPEG example">}}
{{< tab "Python" >}}
```python
pngOptions = gvo.PngViewOptions("page-{0}.png")
jpegOptions = gvo.JpgViewOptions("page-{0}.jpeg")
jpegOptions.quality = 80

with gv.Viewer("Sample.xml") as viewer:
    viewer.view(pngOptions)
    viewer.view(jpegOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Retrieving information about XML view

Like for all other supported formats, GroupDocs.Viewer supports returning information about specific XML documents. Like for all other formats, for doing this you need to call the [`get_view_info`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) instance method of the [`Viewer`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) class, which returns an instance of [`ViewInfo`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/) class. This [`ViewInfo`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/) instance contains all information about the view depending on [`ViewInfoOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewinfooptions/), passed to the [`get_view_info`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

Example below shows obtaining [`ViewInfo`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/) for a single XML document for HTML, PDF, and PNG formats.

{{< tabs "Retrieving information about XML view example">}}
{{< tab "Python" >}}
```python

view_info_options_html_single = gvo.ViewInfoOptions.for_html_view(True)
view_info_options_pdf = gvo.ViewInfoOptions.for_pdf_view()
view_info_options_png = gvo.ViewInfoOptions.for_png_view()

with gv.Viewer("Sample.xml") as viewer:
    result_html_single = viewer.get_view_info(view_info_options_html_single)  
    result_pdf = viewer.get_view_info(view_info_options_pdf) 
    result_png = viewer.get_view_info(view_info_options_png) 
```
{{< /tab >}}
{{< /tabs >}}

## Conclusion

Starting from the [version 24.9](https://releases.groupdocs.com/viewer/python-net/release-notes/2024/groupdocs-viewer-for-python-via-net-24-9-release-notes/), the new dedicated XML processing module makes XML support to be a truly powerful and useful feature, and ability to fix and display even the heavily corrupted XML documents allows to use the GroupDocs.Viewer for viewing XML documents in those cases, when all other competitors failed.











