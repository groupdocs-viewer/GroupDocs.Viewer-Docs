---
id: how-to-view-word-documents-using-csharp
url: viewer/net/how-to-view-word-documents-using-csharp
title: How to view Word documents using C#
weight: 2
description: "This guide describes how to build your Word files viewer in C#. View Word files to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer .NET API by GroupDocs."
keywords: convert word to pdf, convert doc to pdf, convert docx to pdf, convert word to jpg, convert word into jpeg,
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

Word document formats are documents formats of Microsoft Word. It might contain text, images, excel diagrams, and also OLE (Object Linking and Embedding) objects.
In this article, we will discuss how to convert Word to pdf and other formats using C# in .NET applications.

The following topics are covered below in brief:

* [.NET API for rendering Word files](viewer/net/how-to-view-word-documents-using-csharp/#net-api-for-rendering-word-files)
* [How to render Word files into HTML, JPG, PNG, or PDF](viewer/net/how-to-view-word-documents-using-csharp/#how-to-render-word-files-into-html-jpg-png-or-pdf)

## .NET API for rendering Word files

[GroupDocs.Viewer for .NET](#https://products.groupdocs.com/viewer/net) provides API to render Word document formats to PNG, PDF, JPEG, and HTML. Supported formats are DOC, DOCX, DOCM, DOT, DOTM, DOTX,
RTF, TXT documents, and [many others](https://docs.groupdocs.com/viewer/net/supported-document-formats/).

Use the [downloads section](https://downloads.groupdocs.com/viewer/net) to download API DLLs or MSI installer or NuGet:

```nuget
PM> Install-Package GroupDocs.Viewer
```

Here is a sample document to demonstrate rendering results:

![Source Word preview](viewer/net/images/viewer-use-cases/how-to-view-word-using-csharp/source_docx_preview.jpg)

## How to render Word files into HTML, JPG, PNG, or PDF

### Rendering to HTML with Embedded Resources in C\#

To render your file to HTML file(s) with embedded resources do the following steps:

* With Viewer class load your document.
* With the ForEmbeddedResources method create the HtmlViewOptions instance and type output file name.
* Call View method to render your document to HTML, resources will be embedded in to file.

```cs
using (Viewer viewer = new Viewer("sample.doc"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```

![Rendering Word to HTML](viewer/net/images/viewer-use-cases/how-to-view-word-using-csharp/rendering_to_html_with_embed.jpg)

### Rendering to HTML with External Resources in C\#

To render your file to HTML file(s) with external resources do the following steps:

* With Viewer class load your document.
* with ForExternalResources method create HtmlViewOptions instance and type:
  * the output file name mask
  * external resources folder file path mask
  * URL for resources mask format

* Call View method to render your document to HTML.

Resources will be placed in a separate folder.

![Resources placed into separate folder](viewer/net/images/viewer-use-cases/how-to-view-word-using-csharp/resources_placed_to_separate_folder.jpg)

```cs
using (Viewer viewer = new Viewer("sample.doc"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.View(viewOptions);
}
```

### Rendering Word to JPEG in C\#

To render your file to JPEG file do the following steps:

* With Viewer class load your document.
* Сreate JpegViewOptions instance and type output file name.
* Call View method to render your document to JPEG.

```cs
using (Viewer viewer = new Viewer("sample.doc"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewer.View(viewOptions);
}
```

![Rendering Word to JPEG](viewer/net/images/viewer-use-cases/how-to-view-word-using-csharp/rendering_word_to_jpeg.jpg)

### Rendering to PNG in C\#

To render your file to PNG file do the following steps:

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PNG.

```cs
using (Viewer viewer = new Viewer("sample.doc"))
{
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewer.View(viewOptions);
}
```

![Rendering Word to PNG](viewer/net/images/viewer-use-cases/how-to-view-word-using-csharp/rendering_word_to_png.jpg)

### Rendering Word to PDF in C\#

You can render your Word documents such as DOCX, RTF or DOC to pdf.
To render your file to a PDF file do the following steps:

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PDF.

```cs
using (Viewer viewer = new Viewer("sample.doc"))
{
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view Word files in C# with .NET applications, in this article you have seen how to convert Word to PDF, how to convert Word to jpg, and other formats in your application.
Also, you can use [Online Applications to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/net/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [View CAD document preview](net/viewer-use-cases/how-to-view-cad-documents-using-csharp.md)
* How to view DOCX using C#
* How to view PDF using C#
