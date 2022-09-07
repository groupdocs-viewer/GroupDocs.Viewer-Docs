---
id: how-to-view-word-documents-using-java
url: viewer/java/how-to-view-word-documents-using-java
title: How to view Word documents using Java
weight: 2
description: "This guide describes how to build your Word files viewer in Java. View Word files to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer Java API by GroupDocs."
keywords: convert word to pdf, convert word to jpeg, convert doc to pdf, convert docx to pdf, convert word to jpg, convert word into jpeg
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

Word document formats are documents formats of Microsoft Word. It might contain text, images, excel diagrams, and also OLE (Object Linking and Embedding) objects.
In this article, we will discuss how to convert Word to pdf and other formats in Java applications.

The following topics are covered below in brief:

* [Java API for rendering Word files](/viewer/java/how-to-view-word-documents-using-java/#java-api-for-rendering-word-files)
* [How to render Word files into HTML, JPG, PNG, or PDF](/viewer/java/how-to-view-word-documents-using-java/#how-to-render-word-files-into-html-jpg-png-or-pdf)

## Java API for rendering Word files

[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) provides API to render Word document formats to PNG, PDF, JPEG, and HTML. Supported formats are DOC, DOCX, DOCM, DOT, DOTM, DOTX,
RTF, TXT documents, and [many others](https://docs.groupdocs.com/viewer/java/supported-document-formats/).

Follow one of the ways as described in the [Installation]({{< ref "/viewer/java/getting-started/installation" >}}) section to install and reference GroupDocs.Viewer for Java.

Here is a sample document to demonstrate rendering results:

![Source Word preview](/viewer/java/images/viewer-use-cases/how-to-view-word-using-java/source_docx_preview.jpg)

## How to render Word files into HTML, JPG, PNG, or PDF

### Rendering to HTML with Embedded Resources in Java

To render your file to HTML file(s) with embedded resources do the following steps:

* With `Viewer` class load your document.
* With the `forEmbeddedResources` method create the `HtmlViewOptions` instance and type output file name.
* Call `view` method to render your document to HTML, resources will be embedded in to file.

```java
try (Viewer viewer = new Viewer("sample.doc"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```

![Rendering Word to HTML](/viewer/java/images/viewer-use-cases/how-to-view-word-using-java/rendering_to_html_with_embed.jpg)

### Rendering to HTML with External Resources in Java

To render your file to HTML file(s) with external resources do the following steps:

* With `Viewer` class load your document.
* with `forExternalResources` method create `HtmlViewOptions` instance and type:
  * the output file name mask
  * external resources folder file path mask
  * URL for resources mask format

* Call `view` method to render your document to HTML.

Resources will be placed in a separate folder.

![Resources placed into separate folder](/viewer/java/images/viewer-use-cases/how-to-view-word-using-java/resources_placed_to_separate_folder.jpg)

```java
try (Viewer viewer = new Viewer("sample.doc"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.view(viewOptions);
}
```

### Rendering Word to JPEG in Java

To render your file to JPEG file do the following steps:

* With `Viewer` class load your document.
* Сreate `JpegViewOptions` instance and type output file name.
* Call `view` method to render your document to JPEG.

```java
try (Viewer viewer = new Viewer("sample.doc"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewer.view(viewOptions);
}
```

![Rendering Word to JPEG](/viewer/java/images/viewer-use-cases/how-to-view-word-using-java/rendering_word_to_jpeg.jpg)

### Rendering to PNG in Java

To render your file to PNG file do the following steps:

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `view` method to render your document to PNG.

```java
try (Viewer viewer = new Viewer("sample.doc"))
{
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewer.view(viewOptions);
}
```

![Rendering Word to PNG](/viewer/java/images/viewer-use-cases/how-to-view-word-using-java/rendering_word_to_png.jpg)

### Rendering Word to PDF in Java

You can render your Word documents such as DOCX, RTF or DOC to pdf.
To render your file to a PDF file do the following steps:

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `view` method to render your document to PDF.

```java
try (Viewer viewer = new Viewer("sample.doc"))
{
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view Word files in Java applications, in this article you have seen how to convert Word to PDF, how to convert Word to jpg, and other formats in your application.
Also, you can use [Online apps to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/java/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [How to view CAD documents using Java](/viewer/java/how-to-view-cad-documents-using-java/)
* [How to view PDF documents using Java](/viewer/java/how-to-view-pdf-documents-using-java/)
