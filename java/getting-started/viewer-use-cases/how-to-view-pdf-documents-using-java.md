---
id: how-to-view-pdf-documents-using-java
url: viewer/java/how-to-view-pdf-documents-using-java
title: How to view PDF documents using Java
weight: 1
description: "This guide describes how to build your PDF files viewer in Java. View PDF files to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer Java API by GroupDocs."
keywords: pdf view, pdf to html, pdf to jpeg, pdf to jpg, pdf to png 
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

PDF (Portable-Document-Format) document format is designed to create a common document standard that can be viewed on multiple platforms.
This format is used for saving documents and publications. PDF documents can be signed with the digital signature, embed fonts, vector and raster images, forms, and multimedia extensions.
Also, this format contains special technical formats for polygraphy such as PDF/X-1a and PDF/X-3.
In this article, we will discuss how to view PDF files using Java.

The following topics are covered below in brief:

* [Java API for rendering PDF files](/viewer/java/how-to-view-pdf-documents-using-java/#java-api-for-rendering-pdf-files)
* [How to render PDF files into HTML, JPG, PNG, or PDF](/viewer/java/how-to-view-pdf-documents-using-java/#how-to-render-pdf-files-into-html-jpg-png-or-pdf)
* [Getting information about PDF file](/viewer/java/how-to-view-pdf-documents-using-java/#getting-information-about-pdf-file)
* [How to extract text from PDF](/viewer/java/how-to-view-pdf-documents-using-java/#how-to-extract-text-from-pdf)

## Java API for rendering PDF files

[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) provides API to render PDF documents formats to PNG, PDF, JPEG, and HTML. Also, API includes special options for additional result image processing and [many other supported formats](https://docs.groupdocs.com/viewer/java/supported-document-formats/).

Follow one of the ways as described in the [Installation]({{< ref "/viewer/java/getting-started/installation" >}}) section to install and reference GroupDocs.Viewer for Java.

![Source PDF document preview](/viewer/java/images/viewer-use-cases/how-to-view-pdf-using-java/source_image_preview.jpg)

## How to render PDF files into HTML, JPG, PNG, or PDF

### Rendering PDF to HTML with Embedded Resources in Java

To render your file to HTML file(s) with embedded resources do the following steps:

* With `Viewer` class load your document.
* With the `forEmbeddedResources` method create the `HtmlViewOptions` instance and type output file name.
* Call `view` method to render your document to HTML, resources will be embedded in to file.

```java
try (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```

![Rendering PDF document to HTML](/viewer/java/images/viewer-use-cases/how-to-view-pdf-using-java/rendering_to_html_with_embed.jpg)

### Rendering PDF to HTML with External Resources in Java

To render your file to HTML file(s) with external resources do the following steps:

* With Viewer class load your document.
* with `forExternalResources` method create `HtmlViewOptions` instance and type:
  * the output file name mask
  * external resources folder file path mask
  * URL for resources mask format

* Call `view` method to render your document to HTML.

Resources will be placed in a separate folder.

![Resources placed into separate folder](/viewer/java/images/viewer-use-cases/how-to-view-pdf-using-java/resources_placed_to_separate_folder.jpg)

```java
try (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.view(viewOptions);
}
```

### Rendering PDF to JPEG in Java

To render your file to a JPEG file do the following steps:

* With `Viewer` class load your document.
* Сreate `JpegViewOptions` instance and type output file name.
* Call `view` method to render your document to JPEG.

```java
try (Viewer viewer = new Viewer("sample.pdf"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewer.view(viewOptions);
}
```

![Rendering PDF into JPEG](/viewer/java/images/viewer-use-cases/how-to-view-pdf-using-java/rendering_pdf_to_jpeg.jpg)

### Rendering PDF to PNG in Java

To render your file to a PNG file do the following steps:

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `view` method to render your document to PNG.

```java
try (Viewer viewer = new Viewer("sample.pdf"))
{
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewer.view(viewOptions);
}
```

![Rendering PDF document to PNG](/viewer/java/images/viewer-use-cases/how-to-view-pdf-using-java/rendering_pdf_to_png.jpg)

## Getting information about PDF file

You can get the following information about PDF file: number of pages, page size, and printing permission.
To do it please do the following steps:

* With `Viewer` class load your document.
* Сreate `ViewInfoOptions` instance using `ViewInfoOptions.forHtmlView()` method.
* Call `getViewInfo` to get PDF file information and get `PdfViewInfo` object result.

```java
using (Viewer viewer = new Viewer("sample.pdf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    PdfViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as PdfViewInfo;

    system.out.println("File type: " + viewInfo.getFileType());
    system.out.println("Pages count: " + viewInfo.getPages().getCount());
}
```

```bash 
File type: Portable Document Format File (.pdf)
Pages count: 1
```

## How to extract text from PDF

To extract text to PDF you should set ExtractText property to True. You can access the result text in a list of text lines on the Page.Lines property.

To do it:

* With Viewer class load your document.
* Сreate ViewInfoOptions instance with `ViewInfoOptions.forHtmlView()/ViewInfoOptions.forJpgView()/ViewInfoOptions.forPngView()` method.
* Enable text extraction `viewOptions.setExtractText(true)`.
* Call GetViewInfo method to get PDF file information with extracted text.

```java
try (Viewer viewer = new Viewer("sample.pdf")) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forPngView(true);
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    for (Page page : viewInfo.getPages()) {
        System.out.println("Page: " + page.getNumber());
        System.out.println("Text lines/words/characters:");

        for (Line line : page.getLines()) {
            System.out.println(line);
            for (Word word : line.getWords()) {
                System.out.println("\t" + word);
                for (com.groupdocs.viewer.results.Character character : word.getCharacters()) {
                    System.out.println("\t\t" + character);
                }
            }
        }
    }
}
```

The following will be printed to the console (output is truncated):

```bash
Page: 1
Text lines/words/characters:
Line 'Notices and Licenses required for redistribution of GroupDocs.Viewer for .NET' X=110.235 Y=71 374.53x11px with 10 word(s).
	Word 'Notices' X=110.235 Y=71 36.12x11px with 7 character(s).
		Character 'N' X=110.235 Y=71 7.22x11px.
		Character 'o' X=117.455 Y=71 6.11x11px.
		Character 't' X=123.565 Y=71 3.33x11px.
		Character 'i' X=126.895 Y=71 2.78x11px.
		Character 'c' X=129.675 Y=71 5.56x11px.
		Character 'e' X=135.235 Y=71 5.56x11px.
		Character 's' X=140.795 Y=71 5.56x11px.
	Word 'and' X=149.135 Y=71 17.78x11px with 3 character(s).
		Character 'a' X=149.135 Y=71 5.56x11px.
		Character 'n' X=154.695 Y=71 6.11x11px.
		Character 'd' X=160.805 Y=71 6.11x11px.
	Word 'Licenses' X=169.695 Y=71 42.8x11px with 8 character(s).
		Character 'L' X=169.695 Y=71 6.11x11px.
		Character 'i' X=175.805 Y=71 2.78x11px.
		Character 'c' X=178.585 Y=71 5.56x11px.
		Character 'e' X=184.145 Y=71 5.56x11px.
		Character 'n' X=189.705 Y=71 6.11x11px.
		Character 's' X=195.815 Y=71 5.56x11px.
		Character 'e' X=201.375 Y=71 5.56x11px.
		Character 's' X=206.935 Y=71 5.56x11px.
	Word 'required' X=215.275 Y=71 40.01x11px with 8 character(s).
[TRUNCATED]
```

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view PDF files in Java with Java applications, n this article you have seen how to convert Word to PDF, how to convert Word to JPG, and other formats in your application.
Also, you can use [Online apps to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/java/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [How to view Word documents using Java](/viewer/java/how-to-view-word-documents-using-java/)
* [How to view CAD documents using Java](/viewer/java/how-to-view-cad-documents-using-java/)
