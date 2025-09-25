---
id: render-word-documents
url: viewer/java/render-word-documents
title: Render Word documents as HTML, PDF, and image files
linkTitle: Render Word documents
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert Word documents to HTML, PDF, PNG, and JPEG formats."
keywords: convert word to pdf, convert word to jpeg, convert doc to pdf, convert docx to pdf, convert word to jpg, convert word to jpeg
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/how-to-view-word-documents-using-java/
    - /viewer/java/show-document-comments
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows you to render your Microsoft Word documents in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Word or other word processors to load and view Word documents within your Java application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/word" >}} {{< icon "gdoc_person" >}} View Word files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

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

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a Word file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Create an HTML files.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to HTML](/viewer/java/images/rendering-basics/render-word-documents/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
   // Create an HTML file for each page.
   // Specify the HTML file names and location of external resources.
   // {0} and {1} are replaced with the current page number and resource name, respectively.
   HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/java/images/rendering-basics/render-word-documents/render-to-html-external-resources.png)

## Render Word documents as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a Word file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Create a PDF file for the document.
    // Specify the PDF file name.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to PDF](/viewer/java/images/rendering-basics/render-word-documents/render-to-pdf.png)

## Render Word documents as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a Word file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Create a PNG image for each document page.
    // {0} is replaced with the current page number in the image name.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    // Set width and height.
    viewOptions.setWidth(950);
    viewOptions.setHeight(550);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render a Word file to PNG](/viewer/java/images/rendering-basics/render-word-documents/render-to-png-image.png)

## Render Word documents as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a Word file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Create a JPG image for each document page.
    // {0} is replaced with the current page number in the image name.
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.setWidth(950);
    viewOptions.setHeight(550);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Define page margins

Use the following methods to specify the size of page margins in the output files when you convert your Word documents to HTML, PDF, and image formats: 

* [WordProcessingOptions.setTopMargin](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setTopMargin-float-) specifies the distance (in points) between document content and the top edge of the page.
* [WordProcessingOptions.setBottomMargin](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setBottomMargin-float-) specifies the distance (in points) between document content and the bottom edge of the page.
* [WordProcessingOptions.setLeftMargin](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setLeftMargin-float-) specifies the distance (in points) between document content and the left edge of the page.
* [WordProcessingOptions.setRightMargin](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setRightMargin-float-) specifies the distance (in points) between document content and the right edge of the page.

You can access these methods for the following classes:

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions)
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) 

The example below converts a Word document to HTML and specifies page margins for the output file. 

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    // Specify the size of page margins in points.
    viewOptions.getWordProcessingOptions().setTopMargin(72);
    viewOptions.getWordProcessingOptions().setBottomMargin(72);
    viewOptions.getWordProcessingOptions().setLeftMargin(54);
    viewOptions.getWordProcessingOptions().setRightMargin(54);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render tracked changes

GroupDocs.Viewer does not render tracked changes (revisions made to a Word document) by default. If you want to display tracked changes in the output file, use the [WordProcessingOptions.setRenderTrackedChanges](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setRenderTrackedChanges-boolean-) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

The following code example demonstrates how to render a Word document with tracked changes:

{{< tabs "example7">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Convert the document to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Enable tracked changes rendering.
    viewOptions.getWordProcessingOptions().setRenderTrackedChanges(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render tracked changes to PDF](/viewer/java/images/rendering-basics/render-word-documents/render-track-changes-to-pdf.png)

## Render comments

Use the [ViewOptions.setRenderComments](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderComments-boolean-) method for a target view to display comments in the output file when you convert your document to HTML, PDF, PNG, or JPEG format.

The code example below renders a Word document with comments to PDF.

{{< tabs "example8">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx")) {
    // Convert the document to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Enable rendering comments.
    viewOptions.setRenderComments(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render comments to PDF](/viewer/java/images/rendering-basics/render-word-documents/render-comments-to-pdf.png)

## Unlink table of contents

When rendering to HTML or PDF, you can set [WordProcessingOptions.setUnlinkTableOfContents()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setUnlinkTableOfContents-boolean-) to `true` to unlink table of contents. For HTML rendering, `<a>` tags with relative links will be replaced with `<span>` tags, removing functionality but preserving visual appearance. For PDF rendering, the table of contents will be rendered as plain text without links to document sections.

The code example below renders a Word document with table of contents as a plain text without links.

{{< tabs "example9">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.docx"))
{
    // Convert the document to HTML.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    // Unlink table of contents.
    viewOptions.getWordProcessingOptions().setUnlinkTableOfContents(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Unlink table of contens in Word files](/viewer/net/images/rendering-basics/render-word-documents/unlink-table-of-contents.png)

## Disable updating fields when saving

The most of formats inside the WordProcessing family of formats, like DOC, DOCX, ODT and so on, have the concept of [fields](https://support.microsoft.com/en-us/office/list-of-field-codes-in-word-1ad6d91a-55a7-4a8d-b535-cf7888659a51), which are processed when the document is opened in some viewer application like Microsoft Word. When the input WordProcessing document is loaded to the GroupDocs.Viewer and saved to the HTML (with embedded or external resources), PDF, PNG, or JPEG output formats, all the fields within the input document are updated while saving, and this mimics the Microsoft Word behavior. But in some scenarios, for example, when field values are incorrect, there is no necessary and even not desirable to update fields.

Starting from the version [25.9](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-9-release-notes/) the GroupDocs.Viewer for Java has obtained an ability to disable updating fields while saving the documents. The new public property [`setUpdateFields`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/#setUpdateFields-boolean-) of the [`java.lang.Boolean`](https://docs.oracle.com/javase/8/docs/api/java/lang/Boolean.html) type was added to the [`WordProcessingOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/wordprocessingoptions/) class. By default the value of this property is set to `true`, so fields are updated, as before. In order to turn fields updating off, please set this property to `false`. Code sample below shows opening a sample DOCX document and saving to the HTML with embedded resources and PDF formats without updating fields during saving.

{{< tabs "example-UpdateFields">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

HtmlViewOptions htmlViewOptions = HtmlViewOptions.forEmbeddedResources();
htmlViewOptions.getWordProcessingOptions().setUpdateFields(false);

PdfViewOptions pdfViewOptions = new PdfViewOptions("output.pdf");
pdfViewOptions.getWordProcessingOptions().setUpdateFields(false);

try (Viewer viewer = new Viewer("resume.docx"))
{    
    viewer.view(htmlViewOptions);
    viewer.view(pdfViewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Remove or preserve JavaScript when saving to HTML

Most of WordProcessing formats like DOC, DOCX, ODT and so on are able to store the scripts, usually written on VBA. When the output format is PDF, PNG, or JPEG, there is no problem at all. But when the output format is HTML, this may lead to the situations when malicious or harmful VBA script(s) from input DOCX, for example, will be translated to the resultant HTML document. Before the [version 25.9](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-9-release-notes/) the was no possibility for the GroupDocs.Viewer to disable scripts preserving and translation — all the VBA scripts were translated to the JavaScript in HTML. Starting from the version 25.9, for the security purposes script translation is disabled by default — all the links containing JavaScript are replaced with the harmless `"javascript:void(0)"` string in the resultant HTML markup. But it is possible to enable script translation, as it was present in the GroupDocs.Viewer before, by using a new public property `RemoveJavaScript` of the [`java.lang.Boolean`](https://docs.oracle.com/javase/8/docs/api/java/lang/Boolean.html) type in the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class. By default this property has a `true` value — JavaScript will be removed from the resultant HTML document. For preserving the JavaScript, as it was in the previous versions of the GroupDocs.Viewer, the `false` value should be assigned to this property. Code sample below shows opening a sample DOCX document and rendering it to the HTML with embedded resources with and without JavaScript.

{{< tabs "example-RemoveJavaScript">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

HtmlViewOptions htmlViewOptionsWithoutJavaScript = HtmlViewOptions.forEmbeddedResources("without-js-page{0}.html");

HtmlViewOptions htmlViewOptionsWithJavaScript = HtmlViewOptions.forEmbeddedResources("with-js-page{0}.html");
htmlViewOptionsWithJavaScript.setRemoveJavaScript(false);

try (Viewer viewer = new Viewer("Doc-with-VBA.docx"))
{
    viewer.view(htmlViewOptionsWithoutJavaScript);
    viewer.view(htmlViewOptionsWithJavaScript);
}
```
{{< /tab >}}
{{< /tabs >}}