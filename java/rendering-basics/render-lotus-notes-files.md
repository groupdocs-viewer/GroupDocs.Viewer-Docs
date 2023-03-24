---
id: render-lotus-notes-database-files
url: viewer/java/render-lotus-notes-database-files
title: Render Lotus Notes database files as HTML, PDF, and image files
linkTitle: Render Lotus Notes database files
weight: 14
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert Lotus Notes database files (NSF) to HTML, PDF, PNG, and JPEG formats."
keywords: convert nsf to pdf, convert nsf to html, convert nsf to png, convert nsf to jpeg
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/view-lotus-notes-data-files
    - /viewer/java/filter-nsf-messages
    - /viewer/java/how-to-convert-and-view-nsf-files
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows you to render [Lotus Notes Storage Facility (NSF)](https://docs.fileformat.com/database/nsf/) files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of NSF files within your Java application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/nsf" >}} {{< icon "gdoc_person" >}} View NSF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Render Lotus Notes database files as HTML

To convert an NSF file to HTML, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.nsf")) {
    // Specify the HTML file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("output.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to HTML](/viewer/java/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-html.png)

## Render Lotus Notes database files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert an NSF file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.nsf")) {
    // Create a PDF file.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PDF](/viewer/java/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-pdf.png)

## Render Lotus Notes database files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert an NSF file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.nsf")) {
    // Convert the NSF file to PNG.
    // {0} is replaced with the page numbers in the output image names.
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

![Render an NSF file to PNG](/viewer/java/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-png.png)

## Render Lotus Notes database files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert an NSF file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.nsf")) {
    // Convert the NSF file to JPG.
    // {0} is replaced with the page numbers in the output image names.
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.setWidth(950);
    viewOptions.setHeight(550);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [MailStorageOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/mailstorageoptions) class that allows you to specify different options for rendering Lotus Notes database files. To access these options, use the [setMailStorageOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setMailStorageOptions-com.groupdocs.viewer.options.MailStorageOptions-) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

### Limit the number of items to render

When you load large Lotus Notes database files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [MailStorageOptions.setMaxItems](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/mailstorageoptions/#setMaxItems-int-) method to limit the number of rendered items. The default property value is **0** (all existing items appear in the output file). 

The following example demonstrates how to specify the maximum number of items to render:

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.nsf")) {
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("output.html");
    // Specify the maximum items to render.
    viewOptions.getMailStorageOptions().setMaxItems(20);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Filter messages

IBM Notes allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in IBM Notes](/viewer/java/images/rendering-basics/render-lotus-notes-data-files/filter-nsf-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering a Lotus Notes database file to HTML, PDF, or image format. To do this, use the following properties:

* [MailStorageOptions.setTextFilter](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/mailstorageoptions/#setTextFilter-java.lang.String-)---Allows you to render all messages that contain specific text in the subject or body.
* [MailStorageOptions.setAddressFilter](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/mailstorageoptions/#setAddressFilter-java.lang.String-)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in an NSF file before rendering this file to HTML:

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.nsf")) {
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("output.html");
    // Set filters.
    viewOptions.setTextFilter("April 2015");
    viewOptions.setAddressFilter("test@test.com");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
