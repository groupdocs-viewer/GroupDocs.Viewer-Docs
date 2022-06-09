---
id: how-to-view-pdf-documents-using-csharp
url: viewer/net/how-to-view-pdf-documents-using-csharp
title: How to view PDF documents using C#
weight: 1
description: "This guide describes how to build your PDF files viewer in C#. View PDF files to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer .NET API by GroupDocs."
keywords: PDF Viewer in CSharp, Convert PDF to HTML in CSharp, Convert PDF to JPG in CSharp, PDF Viewer using CSharp
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

PDF (Portable-Document-Format) document format is designed to create a common document standard that can be viewed on multiple platforms.
This format is used for saving documents and publications. PDF documents can be signed with the digital signature, embed fonts, vector and raster images, forms, and multimedia extensions.
Also, this format contains special technical formats for polygraphy such as PDF/X-1a and PDF/X-3.
In this article, we will discuss how to view PDF files using C# in .NET applications.

The following topics are covered below in brief:

* [.NET API for rendering PDF files](viewer/net/how-to-view-pdf-documents-using-csharp/#net-api-for-rendering-pdf-files)
* [How to render PDF files into HTML, JPG, PNG, or PDF](viewer/net/how-to-view-pdf-documents-using-csharp/#how-to-render-pdf-files-into-html-jpg-png-or-pdf)
* [Getting information about PDF file](viewer/net/how-to-view-pdf-documents-using-csharp/#getting-information-about-pdf-file)
* [How to extract text from PDF](viewer/net/how-to-view-pdf-documents-using-csharp/#how-to-extract-text-from-pdf)

## .NET API for rendering PDF files

[GroupDocs.Viewer for .NET](#https://products.groupdocs.com/viewer/net) provides API to render PDF documents formats to PNG, PDF, JPEG, and HTML. Also, API includes special options for additional result image processing and [many other supported formats](https://docs.groupdocs.com/viewer/net/supported-document-formats/).

Use the [downloads section](https://downloads.groupdocs.com/viewer/net) to download API DLLs or MSI installer or NuGet:

```nuget
PM> Install-Package GroupDocs.Viewer
```

![Source PDF document preview](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/source_image_preview.jpg)

## How to render PDF files into HTML, JPG, PNG, or PDF

### Rendering PDF to HTML with Embedded Resources in C\#

To render your file to HTML file(s) with embedded resources do the following steps:

* With Viewer class load your document.
* With the ForEmbeddedResources method create the HtmlViewOptions instance and type output file name.
* Call View method to render your document to HTML, resources will be embedded in to file.

```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```

![Rendering PDF document to HTML](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/rendering_to_html_with_embed.jpg)

### Rendering PDF to HTML with External Resources in C\#

To render your file to HTML file(s) with external resources do the following steps:

* With Viewer class load your document.
* with ForExternalResources method create HtmlViewOptions instance and type:
  * the output file name mask
  * external resources folder file path mask
  * URL for resources mask format

* Call View method to render your document to HTML.

Resources will be placed in a separate folder.

![Resources placed into separate folder](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/resources_placed_to_separate_folder.jpg)

```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.View(viewOptions);
}
```

### Rendering PDF to JPEG in C\#

To render your file to a JPEG file do the following steps:

* With Viewer class load your document.
* Сreate JpegViewOptions instance and type output file name.
* Call View method to render your document to JPEG.

```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewer.View(viewOptions);
}
```

![Rendering PDF into JPEG](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/rendering_pdf_to_jpeg.jpg)

### Rendering PDF to PNG in C\#

To render your file to a PNG file do the following steps:

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PNG.

```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewer.View(viewOptions);
}
```

![Rendering PDF document to PNG](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/rendering_pdf_to_png.jpg)

## Getting information about PDF file

You can get the following information about PDF file: number of pages, page size, and printing permission.
To do it please do the following steps:

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PDF.
* Call GetViewInfo to get PDF file information and get PdfViewInfo object result.

```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    PdfViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as PdfViewInfo;

    Console.WriteLine($"File type: {viewInfo.FileType}, pages count {viewInfo.Pages.Count}.");
    
    Console.WriteLine("Pages information");
    foreach (Page page in viewInfo.Pages)
    {
        // ToString method is overriden and will display: "Page {Number} ({visibility}) {Width}x{Height}px with {Lines.Count} line(s)."
        Console.WriteLine(page);
    }
}
```

You can use this information to specify what layers/layouts render in the output file.

![Get information about PDF file](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/get-information-about-pdf-file.jpg)

## How to extract text from PDF

To extract text to PDF you should set ExtractText property to True. You can access the result text in a list of text lines on the Page.Lines property.

To do it:

* With Viewer class load your document.
* Сreate ViewInfoOptions instance with ViewInfoOptions.ForHtmlView()/ViewInfoOptions.ForJpgView()/ViewInfoOptions.ForPngView() method.
* Initialize viewOptions.ExtractText property to true.
* Call GetViewInfo method to get PDF file information with extracted text.

```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();


    // To extract text from PDF, please set ExtractText to true.    
    viewInfo.ExtractText = true;
    PdfViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as PdfViewInfo;
    
    Console.WriteLine($"File type: {viewInfo.FileType}, pages count {viewInfo.Pages.Count}.");
    
    Console.WriteLine("Pages information");
    foreach (Page page in viewInfo.Pages)
    foreach (Line line in page.Lines)
    {
        Console.WriteLine(line.Value);
    }
}
```

![PDF text extraction results](viewer/net/images/viewer-use-cases/how-to-view-pdf-using-csharp/pdf-text-extraction-results.jpg)

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view PDF files in C# with .NET applications, n this article you have seen how to convert Word to PDF, how to convert Word to jpg, and other formats in your application.
Also, you can use [Online Applications to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/net/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [How to view Word documents using C#](viewer/net/how-to-view-word-documents-using-csharp/)
