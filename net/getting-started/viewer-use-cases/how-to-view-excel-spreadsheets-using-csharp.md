---
id: how-to-view-excel-spreadsheets-using-csharp
url: viewer/net/how-to-view-excel-spreadsheets-using-csharp
title: Render Excel spreadsheets as HTML, PDF, and image files
linkTitle: Render Excel spreadsheets
weight: 3
description: "This guide describes how to build your Excel spreadsheets files viewer in C#. View Excel spreadsheets to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer .--NET API by GroupDocs."
keywords: excel to pdf, excel to jpg, xlsx to pdf, xls to pdf, excel to pdf online, convert xls to pdf, convert xlsx to pdf
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

Excel spreadsheets are documents formats of Microsoft Excel. It contains tabular data and can contain embed images, diagrams, and also OLE (Object Linking and Embedding) objects. Also, this format provides the ability for calculations with formulas that are used often for business calculations on data.
In this article, we will discuss how to convert Excel to PDF and other formats using C# in .NET applications.

The following topics are covered below in brief:

* [.NET API for rendering Excel spreadsheets](viewer/net/how-to-view-excel-spreadsheets-using-csharp/#net-api-for-rendering-word-files)
* [How to render Excel spreadsheets into HTML, JPG, PNG, or PDF](viewer/net/how-to-view-excel-spreadsheets-using-csharp/#how-to-render-excel-spreadsheets-files-into-html-jpg-png-or-pdf)

## .NET API for rendering Excel spreadsheets

[GroupDocs.Viewer for .NET](#https://products.groupdocs.com/viewer/net) provides API to render Excel SpreadSheets document formats to PNG, PDF, JPEG, and HTML. Supported formats are XLS, XLSX, Excel 2003 XML, XLT, XLTM, XLTX documents, and [many others](https://docs.groupdocs.com/viewer/net/supported-document-formats/).

Use the [downloads section](https://downloads.groupdocs.com/viewer/net) to download API DLLs or MSI installer or NuGet:

```nuget
PM> Install-Package GroupDocs.Viewer
```

Here is a sample document to demonstrate rendering results:

![Source Excel preview](viewer/net/images/viewer-use-cases/how-to-view-excel-spreadsheets-using-csharp/source_xls_preview.jpg)

## How to render Excel spreadsheets into HTML, JPG, PNG, or PDF

### Rendering Excel to HTML with Embedded Resources in C\#

To render your file to HTML file(s) with embedded resources do the following steps:

* With `Viewer` class load your document.
* With the `ForEmbeddedResources` method create the `HtmlViewOptions` instance and type the output file name.
* Call `View` method to render your document to HTML, resources will be embedded in to file.

```cs
using (Viewer viewer = new Viewer("sample.xls"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```

![Rendering Excel to HTML](viewer/net/images/viewer-use-cases/how-to-view-excel-spreadsheets-using-csharp/rendering_to_html_with_embed.jpg)

### Rendering Excel to HTML with External Resources in C\#

To render your file to HTML file(s) with external resources do the following steps:

* With `Viewer` class load your document.
* with `ForExternalResources` method create `HtmlViewOptions` instance and type:
  * the output file name mask
  * external resources folder file path mask
  * URL for resources mask format

* Call `View` method to render your document to HTML.

Resources will be placed in a separate folder.

![Resources placed into separate folder](viewer/net/images/viewer-use-cases/how-to-view-excel-spreadsheets-using-csharp/resources_placed_to_separate_folder.jpg)

```cs
using (Viewer viewer = new Viewer("sample.xls"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.View(viewOptions);
}
```

### Rendering Excel to JPEG in C\#

To render Excel to JPG file do the following steps:

* With `Viewer` class load your document.
* Сreate the `pegViewOptions` instance and type the output file name.
* Call `View` method to render your document to JPEG.

```cs
using (Viewer viewer = new Viewer("sample.xls"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewer.View(viewOptions);
}
```

![Rendering Excel to JPEG](viewer/net/images/viewer-use-cases/how-to-view-excel-spreadsheets-using-csharp/rendering_xls_to_jpeg.jpg)

### Rendering Excel to PNG in C\#

To render your file to a PNG file do the following steps:

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type the output file name.
* Call `View` method to render your document to PNG.

```cs
using (Viewer viewer = new Viewer("sample.xls"))
{
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewer.View(viewOptions);
}
```

![Rendering Excel to PNG](viewer/net/images/viewer-use-cases/how-to-view-excel-spreadsheets-using-csharp/rendering_xls_to_png.jpg)

### Rendering Excel to PDF in C\#

In this example we are going to convert XLS to PDF.
For it do the following steps:

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type the output file name.
* Call `View` method to render your document to PDF.

```cs
using (Viewer viewer = new Viewer("sample.xls"))
{
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```

![Rendering Excel document to PDF](viewer/net/images/viewer-use-cases/how-to-view-excel-spreadsheets-using-csharp/rendering_xls_to_pdf.jpg)

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view Excel spreadsheets in C# with .NET applications, in this article you have seen how to convert Excel to PDF, how to convert Excel to jpg, and other formats in your application.
Also, you can use [Online Applications to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/net/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [How to view CAD documents using C#](viewer/net/how-to-view-cad-documents-using-csharp/)
* [How to view PDF documents using C#](viewer/net/how-to-view-pdf-documents-using-csharp/)
* [How to view Word documents using C#](viewer/net/how-to-view-word-documents-using-csharp/)
