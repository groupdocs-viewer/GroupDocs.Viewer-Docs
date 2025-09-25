---
id: render-xml-documents
url: viewer/java/render-xml-documents
title: Render XML documents as HTML, PDF, PNG, and JPEG files
linkTitle: Render XML documents
weight: 10
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert XML documents to HTML (with and without pagination), PDF documents, PNG, and JPEG raster formats."
keywords: convert xml to html, xml to html, xml to pdf, xml to jpeg, xml to png, xml to image, xml correcter, fix xml structure
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/view-xml-documents
    - /viewer/java/how-to-convert-and-view-xml-files
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) started to support XML format a long time ago, but XML documents were treated as plain text, and thus it was not as useful as it might be. Starting from [version 24.12](https://releases.groupdocs.com/viewer/java/release-notes/2024/groupdocs-viewer-for-java-24-12-release-notes/#new-xml-converter), the completely new XML processing module was implemented, and now XML documents are processed differently, not as plain text documents. This article explains this new XML processing module.

## Opening the XML document

First of all need to emphasize that the new XML processing module had not touched the public API at all — no new options, classes, properties or methods were added or modified. In order to process input XML document properly using the new XML processing module, need to either specify the [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) class instance with [`FileType.XML`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/filetype/#XML) in its [constructor](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/#LoadOptions-com.groupdocs.viewer.FileType-) or just pass the XML document as filename with `*.xml` extension. Code example below shows all possible ways:

{{< tabs "Loading example">}}
{{< tab "Java" >}}
```java
// 1. Specify by filename
String inputXmlDocument = "Sample.xml";
try (Viewer viewer = new Viewer(inputXmlDocument)) {
    // do some work...
}

// 2. Specify by filename and FileStream
String inputXmlPath = "path/Sample.xml";
try (FileInputStream inputXmlFileStream = new FileInputStream(inputXmlPath);
    Viewer viewer = new Viewer(inputXmlFileStream)) {
    // do some work...
}

// 3. Specify by load options
// fill ByteArrayOutputStream with content of XML document
LoadOptions loadOptions = new LoadOptions(FileType.XML);
try (Viewer viewer = new Viewer(new ByteArrayInputStream(xmlContent.toByteArray()), loadOptions)) {
    // do some work...
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kitlin
// 1. Specify by filename
val inputXmlDocument = "Sample.xml"
Viewer(inputXmlDocument).use { viewer ->
    // do some work...
}

// 2. Specify by filename and FileStream
val inputXmlPath = "path/Sample.xml"
FileInputStream(inputXmlPath).use { inputXmlFileStream ->
    Viewer(inputXmlFileStream).use { viewer ->
        // do some work...
    }
}

// 3. Specify by load options
// fill ByteArrayOutputStream with content of XML document
val loadOptions = LoadOptions(FileType.XML)
ByteArrayInputStream(xmlContent.toByteArray()).use { inputStream ->
    Viewer(inputStream, loadOptions).use { viewer ->
        // do some work...
    }
}
```
{{< /tab >}}
{{< /tabs >}}


If the instance of the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class is initialized using one of the ways described above, the new XML processing module will be used.

By default, all XML documents must have an [XML declaration](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction#xml_declaration), which is located in the very beginning of the XML document and which stores the encoding of the consecutive content, for example: 

`<?xml version="1.1" encoding="UTF-8" ?>`

By default, GroupDocs.Viewer uses it. But there is a possibility to override this character encoding, if needed. In order to do this the [`loadOptions.setCharset(...)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/#setCharset-java.nio.charset.Charset-) property should be set while initializing the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class, as it is shown below:

{{< tabs "Custom encoding example">}}
{{< tab "Java" >}}
```java
LoadOptions loadOpts = new LoadOptions(FileType.XML);
loadOpts.setCharset(java.nio.charset.StandardCharsets.US_ASCII);
try (Viewer viewer = new Viewer(new ByteArrayInputStream(xmlContent.getBytes(java.nio.charset.StandardCharsets.US_ASCII)), loadOpts)) {
    // do some work...
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val loadOpts = LoadOptions(FileType.XML)
loadOpts.charset = Charsets.US_ASCII
Viewer(ByteArrayInputStream(xmlContent.toByteArray(Charsets.US_ASCII)), loadOpts).use { viewer ->
    // do some work...
}
```
{{< /tab >}}
{{< /tabs >}}


The rest of this article explains features of this new XML processing module.

### XML detection

All XML documents with no exceptions may be threatened (interpreted) as the plain text documents (TXT). GroupDocs.Viewer allows for users to explicitly specify the format of the loaded document with the [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) class and its [`FileType`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/filetype/) property. But when the [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) instance is not specified in the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) constructor, the GroupDocs.Viewer tries to detect the format of the loaded document automatically. First of all, the GroupDocs.Viewer tries to recognize the extension of the file name, if the document is specified by the file path or [`InputStream`](https://docs.oracle.com/javase/8/docs/api/java/io/InputStream.html). And if the extension is recognized, the loaded document will be processed according to it.

This algorithm also has a drawback — if the file extension is incorrect, for example, the loaded file is actually of the PDF format, but has an extension “.docx”, its processing will be failed and exception will be thrown. In the context of document processing all is even more complicated, because the current XML processor can successfully handle pure plain text files without even a single XML tag inside. But this is highly inefficient — the resultant quality with such plain text documents, processed as XML by the XML processor, will be the same as processed by the text processor, but the performance will be significantly worse.

Starting from the [version 25.9](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-9-release-notes/), if the document is loaded to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) instance by file path or [`InputStream`](https://docs.oracle.com/javase/8/docs/api/java/io/InputStream.html), and no [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) with [`FileType`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/filetype/) is specified, and the extension is “.xml”, the GroupDocs.Viewer additionally checks whether the loaded document is a truly XML. If yes, it will be processed as XML, but if it does not contain even a single XML tag, it will be processed as a plain text.

## Representation

The main task of the new XML processing module is to represent the XML markup, obtained from the user, in a structured, formatted, hierarchical view, with highlighting of every distinct entity of this XML structure. For the GroupDocs.Viewer there is no matter how human-friendly is represented the XML markup in original document: it may be divided by line breaks onto separate lines per every element, or the whole document may be stored in a single line of text; it may have indents or not, — all of this does not matter. The GroupDocs.Viewer parses the input XML document and creates a hierarchical Document Object Model (DOM), and then serializes it to the HTML, PDF, PNG or JPEG depending on user options.

In particular, when serializing, GroupDocs.Viewer puts every XML element (node) on a new line, and with left indent, which indicates nesting of a certain element. Every entity of the XML document, — XML element, attribute, its value, text node, XML comment, CDATA section, — has its own highlighting: font style, type, color, size and so on. All quotes, used for unquoting the attribute values, are unified.

The screenshot below shows such scenario. On the left side there is a [sample XML document](/viewer/java/sample-files/render-xml-documents/books-single-line.xml), where all content is stored within a single line, with no indents, line breaks, horizontal tabs, or even extra whitespaces. On the right side the resultant HTML file, generated by the GroupDocs.Viewer, is shown. There can be seen structured view with correct line breaks and indents, valid highlighting of every XML entity, and recognition of the URIs and email addresses.

![Generate HTML view for input XML](/viewer/java/images/rendering-basics/render-xml-documents/XML-to-HTML.png)

## Fix incorrect XML structure

The World Wide Web Consortium has clearly defined what is a valid XML document, and what is not. The term “[well-formed document](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction#correct_xml_valid_and_well-formed)” defines a those XML document, which "adheres to the syntax rules specified by the XML 1.0 specification in that it must satisfy both physical and logical structures"([ref](http://www.csdservices.com/articles/csdservices)). In particular, a valid XML document must contain only valid characters, its start tags and end tags must be matched, correctly opened and closed, elements must be properly nested, and so on. Unfortunately, not all existing XML documents are well-formed and sometimes there is a necessity to view them. Different XML markup viewers often are unable to properly show invalid XML documents.

GroupDocs.Viewer with its new XML processing module is able to correctly parse, process, format, highlight and view even the heavily distorted XML documents. There is partial list of different damages in XML structure, which GroupDocs.Viewer can fix and process:

- Invalid and illegal characters, including `<` and `&` characters in wrong places.
- Start tags, which are not closed.
- End tags, which are not opened.
- Interleaved (overlapped) tags.
- Start and end tags with unmatched letter cases.
- Truncated (cut from end) markup.
- Attribute names without values.
- Unquoted attribute values (without enclosing quotes).
- Attribute values, which are unquoted partially, with only opening or only closing quote.
- Attribute values, which have redundant quote inside.

GroupDocs.Viewer detects and fixes all these and even more issues in XML markup and also writes them to the log.

Screenshot below demonstrates this in action. [Sample XML file "InvalidXml.xml"](/viewer/java/sample-files/render-xml-documents/InvalidXml.xml) contains all possible damages, described above. In cannot be correctly formatted and highlighted by most popular XML viewing and editing applications. But with the new XML processing module the GroupDocs.Viewer fixes its structure and displays it absolutely correct.

![Generate HTML view for input XML](/viewer/java/images/rendering-basics/render-xml-documents/XML-fixed.png)

## Recognition of URIs and email addresses

While processing the XML markup, the GroupDocs.Viewer scans the XML content for any valid URI, if found, represents them as external links in the resultant HTML format: by using the [A element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a). GroupDocs.Viewer is searching for URIs in: text nodes, CDATA sections, XML comments, attribute values, DocType definitions.

Regarding the email addresses, the GroupDocs.Viewer searches them only in attribute values, and if found, represents them with [mailto](https://en.wikipedia.org/wiki/Mailto) scheme and [A element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a).

If the XML document is saved not to the HTML format, but to the PDF, the URIs and email addresses will be interactive too. But if the output format is PNG or JPEG, the output will be a raster image without any interactive links, of course.

## Saving to HTML format

For saving the documents to the HTML format the GroupDocs.Viewer provides a [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class. There are two ways of creating an instance of this class: using either [`forExternalResources`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) or [`forEmbeddedResources`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) static methods. First method is designed for saving HTML document in a such way, that all its resources (stylesheets, images, fonts etc) are stored separately, while second method stores all resources of the HTML document inside its content: stylesheets are saved inside the STYLE elements, SVG graphics is inlined inside HTML markup, while all other resources (mostly raster images and fonts) are stored according to the [data URI scheme](https://en.wikipedia.org/wiki/Data_URI_scheme) and converted to the [base64](https://en.wikipedia.org/wiki/Base64) format.

But in the context of the XML documents the way of creating the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) instance is not important, because the XML documents cannot have resources, which may be stored externally or embedded. So, when saving XML documents to the HTML, you can create the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) instance in both ways — the result will be the same, no external resources will be produced.

Another important thing is that the XML format by its nature has no pages — it is a hierarchical structure, where some elements are nested inside another, and there is no even similar to pages here. So the best way to represent them in HTML format is to generate a single-page HTML document, so all XML content will be represented in a single HTML document. In order to do this the option [`htmlViewOptions.setRenderToSinglePage(...)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setRenderToSinglePage-boolean-) needs to be set up to the true value. By default, this option has a false value, so the output HTML document will be paginated — split into multiple chunks.

Code example below shows rendering of input XML file to the HTML in both ways:

{{< tabs "Saving to HTML example">}}
{{< tab "Java" >}}
```java
HtmlViewOptions paginatedHtmlOptions = HtmlViewOptions.forEmbeddedResources("page-{0}.html");
HtmlViewOptions singleHtmlOptions = HtmlViewOptions.forEmbeddedResources("single-page.html");
singleHtmlOptions.setRenderToSinglePage(true);

String inputXmlDocument = "Sample.xml";

try (Viewer viewer = new Viewer(inputXmlDocument)) {
    viewer.view(paginatedHtmlOptions);
    viewer.view(singleHtmlOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val paginatedHtmlOptions = HtmlViewOptions.forEmbeddedResources("page-{0}.html")
val singleHtmlOptions = HtmlViewOptions.forEmbeddedResources("single-page.html").apply {
    isRenderToSinglePage = true
}

val inputXmlDocument = "Sample.xml"
Viewer(inputXmlDocument).use { viewer ->
    viewer.view(paginatedHtmlOptions)
    viewer.view(singleHtmlOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

All other options, which are present in the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class, have no effect when saving XML to HTML, except the [`setRenderToSinglePage(...)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setRenderToSinglePage-boolean-) flag.

## Saving to PDF format

PDF format by its nature has pages, so if the XML content because of its big size cannot fit in the single PDF page, then it will be paginated. Unlike the HTML, PNG, or JPEG, the GroupDocs.Viewer generates only a single PDF file for a single input XML document, with one or more pages. [`PdfViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) class is responsible for saving XML to the PDF, and example below shows this:

{{< tabs "Saving to PDF example">}}
{{< tab "Java" >}}
```java
PdfViewOptions pdfOptions = new PdfViewOptions("output.pdf");
String inputXmlDocument = "Sample.xml";
try (Viewer viewer = new Viewer(inputXmlDocument)) {
    viewer.view(pdfOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val pdfOptions = PdfViewOptions("output.pdf")
val inputXmlDocument = "Sample.xml"
Viewer(inputXmlDocument).use { viewer ->
    viewer.view(pdfOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

As for the version 24.12 all options, which are present in the [`PdfViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) class, have no effect when saving XML to PDF.

## Saving to raster PNG and JPEG formats

[`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) are responsible for saving XML to the PNG and JPEG raster image formats. Like for the PDF, if XML content cannot fit into the area of one image, it will be paginated and spread across multiple images.

Size of the output images will be calculated automatically based on the XML content, as for the version 24.12 there is no possibility to set the size forcibly, and `setWidth(...)`, `setHeight(...)`, `setMaxWidth(...)`, and `setMaxHeight(...)` properties of the [`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) classes have no effect when saving XML to PNG or JPEG.

There is a possibility to set a quality of output JPEG image by setting a [`jpgViewOptions.setQuality(...)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setQuality-byte-) instance property, which has a default value `90`.

Example below shows saving input XML to the output PNG and JPEG:

{{< tabs "Saving to PNG and JPEG example">}}
{{< tab "Java" >}}
```java
PngViewOptions pngOptions = new PngViewOptions("page-{0}.png");
JpgViewOptions jpegOptions = new JpgViewOptions("page-{0}.jpeg");
jpegOptions.setQuality((byte) 80); // setting output JPEG quality explicitly

String inputXmlDocument = "Sample.xml";
try (Viewer viewer = new Viewer(inputXmlDocument)) {
    viewer.view(pngOptions);
    viewer.view(jpegOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kitlin
val pngOptions = PngViewOptions("page-{0}.png")
val jpegOptions = JpgViewOptions("page-{0}.jpeg").apply {
    quality = 80
}

val inputXmlDocument = "Sample.xml"
Viewer(inputXmlDocument).use { viewer ->
    viewer.view(pngOptions)
    viewer.view(jpegOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

## Retrieving information about XML view

Like for all other supported formats, GroupDocs.Viewer supports returning information about specific XML documents. Like for all other formats, for doing this you need to call the [`getViewInfo(...)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) instance method of the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class, which returns an instance of [`ViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) class. This [`ViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) instance contains all information about the view depending on [`ViewInfoOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions/), passed to the [`getViewInfo(...)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method.

Example below shows obtaining [`ViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) for a single XML document for HTML, PDF, and PNG formats.

{{< tabs "Retrieving information about XML view example">}}
{{< tab "Java" >}}
```java
ViewInfoOptions viewInfoOptionsHtmlSingle = ViewInfoOptions.forHtmlView(true);
ViewInfoOptions viewInfoOptionsPdf = ViewInfoOptions.forPdfView();
ViewInfoOptions viewInfoOptionsPng = ViewInfoOptions.forPngView();

String inputXmlDocument = "Sample.xml";

try (Viewer viewer = new Viewer(inputXmlDocument)) {
    ViewInfo resultHtmlSingle = viewer.getViewInfo(viewInfoOptionsHtmlSingle);
    ViewInfo resultPdf = viewer.getViewInfo(viewInfoOptionsPdf);
    ViewInfo resultPng = viewer.getViewInfo(viewInfoOptionsPng);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val viewInfoOptionsHtmlSingle = ViewInfoOptions.forHtmlView(true)
val viewInfoOptionsPdf = ViewInfoOptions.forPdfView()
val viewInfoOptionsPng = ViewInfoOptions.forPngView()

val inputXmlDocument = "Sample.xml"

Viewer(inputXmlDocument).use { viewer ->
    val resultHtmlSingle = viewer.getViewInfo(viewInfoOptionsHtmlSingle)
    val resultPdf = viewer.getViewInfo(viewInfoOptionsPdf)
    val resultPng = viewer.getViewInfo(viewInfoOptionsPng)
}
```
{{< /tab >}}
{{< /tabs >}}

## Conclusion

Before the release of the [version 24.12](https://releases.groupdocs.com/viewer/java/release-notes/2024/groupdocs-viewer-for-java-24-12-release-notes/#new-xml-converter) the XML format was supported by the GroupDocs.Viewer, but XML files were treated as the plain text, without any XML-specific features like structure formatting, highlighting, proper pagination, and so on.

Starting from the version 24.12, the new dedicated XML processing module makes XML support to be a truly powerful and useful feature, and ability to fix and display even the heavily corrupted XML documents allows to use the GroupDocs.Viewer for viewing XML documents in those cases, when all other competitors failed.











