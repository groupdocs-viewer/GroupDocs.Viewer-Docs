---
id: render-excel-and-apple-numbers-spreadsheets
url: viewer/net/render-excel-and-apple-numbers-spreadsheets
title: Render Excel and Apple Numbers spreadsheets as HTML, PDF, and image files
linkTitle: Render Excel and Apple Numbers spreadsheets
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert Excel workbooks and Apple Numbers spreadsheets to HTML, PDF, PNG, and JPEG formats."
keywords: excel to pdf, excel to html, excel to jpg, xlsx to pdf, xls to pdf, excel to pdf online, convert xls to pdf, convert xlsx to pdf
productName: GroupDocs.Viewer for .NET
toc: True
hideChildren: False
aliases:
    - /viewer/net/view-excel-spreadsheets/
    - /viewer/net/how-to-convert-and-view-apple-numbers-files/
    - /viewer/net/how-to-convert-and-view-excel-spreadsheetml-files/
    - /viewer/net/separator-detection/
    - /viewer/net/how-to-get-the-names-of-the-worksheets/
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your spreadsheet files in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Excel or other spreadsheet programs to load and view Excel documents within your .NET application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a spreadsheet file you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/excel" >}} {{< icon "gdoc_person" >}} View Excel files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported spreadsheet file formats

GroupDocs.Viewer supports the following spreadsheet file formats:

* [Microsoft Excel Workbook](https://docs.fileformat.com/spreadsheet/xlsx) (.XLSX)
* [Microsoft Excel 97-2003 Workbook](https://docs.fileformat.com/spreadsheet/xls) (.XLS)
* [Microsoft Excel Binary Workbook](https://docs.fileformat.com/spreadsheet/xlsb) (.XLSB)
* [Microsoft Excel Macro-Enabled Workbook](https://docs.fileformat.com/spreadsheet/xlsm) (.XLSM)
* [Microsoft Excel Template](https://docs.fileformat.com/spreadsheet/xltx) (.XLTX)
* [Microsoft Excel 97-2003 Template](https://docs.fileformat.com/spreadsheet/xlt) (.XLT)
* [Microsoft Excel Macro-Enabled Template](https://docs.fileformat.com/spreadsheet/xltm) (.XLTM)
* [Microsoft Excel Add-In](https://docs.fileformat.com/spreadsheet/xlam/) (.XLAM)
* [XML Spreadsheet 2003](https://en.wikipedia.org/wiki/SpreadsheetML) (.XML)
* [OpenDocument Spreadsheet](https://docs.fileformat.com/spreadsheet/ods) (.ODS)
* [OpenDocument Spreadsheet Template](https://docs.fileformat.com/spreadsheet/ots/) (.OTS)
* [OpenDocument Flat XML Spreadsheet](https://docs.fileformat.com/spreadsheet/fods/) (.FODS)
* [Comma Separated Values File](https://docs.fileformat.com/spreadsheet/csv) (.CSV)
* [Tab Separated Values File](https://docs.fileformat.com/spreadsheet/tsv) (.TSV)
* [StarOffice Calc Spreadsheet](https://docs.fileformat.com/spreadsheet/sxc/) (.SXC)
* [Apple Numbers Spreadsheet](https://docs.fileformat.com/spreadsheet/numbers) (.NUMBERS)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render spreadsheets as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a spreadsheet file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

<a name="unique-ID"></a>
When rendering spreadsheets to HTML format, regardless of the exact rendering mode (one HTML file per one worksheet, or single HTML for all worksheets, embedded or external resources), there always is an HTML `<table>`, that contains all the data from a worksheet, and a set of different CSS properties, which are applied to different parts of this table (rows, cells, or their ranges) and decorate them. There always is a CSS stylesheet (embedded or external) with a set of rulesets and at-rules, which are binded with a HTML table and its content by different selectors.

In some cases it is required to embed the GroupDocs.Viewer into the other web-application. In this scenario may occur an issue, when the styles from the GroupDocs.Viewer interfere with the styles of the parent web application. In particular, when GroupDocs.Viewer converts the spreadsheet to the HTML, it creates several rulesets with `<TR>`, `<TD>`, `<COL>`, `<BR>` type-selector, and these rulesets may corrupt the behavior of the parent web-page.

It was a problem in the GroupDocs.Viewer before the version 24.3. Starting from [version 24.3](https://releases.groupdocs.com/viewer/net/release-notes/2024/groupdocs-viewer-for-net-24-3-release-notes/), when rendering spreadsheet documents, the GroupDocs.Viewer adds the unique ID value to every HTML element and CSS selector in order to eliminate any interference with styles of the parent application. So now all the type-selectors are replaced to be the combined id-type descendant selectors like `#gdt-id-1 td`, `#gdt-id-2 tr`, and so on. This excludes any style conflicts once and for all.


### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

#### Convert an Excel workbook to HTML

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("invoice.xlsx")
            ' Convert the spreadsheet to HTML.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file to HTML](/viewer/net/images/rendering-basics/render-spreadsheets/convert-excel-to-html.png)

#### Convert an Apple Numbers spreadsheet to HTML

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Products.numbers"))
{
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Products.numbers")
            ' Convert the spreadsheet to HTML.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to HTML](/viewer/net/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

#### Convert an Excel workbook to HTML

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to HTML.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("invoice.xlsx")
            ' Convert the spreadsheet to HTML.
            ' Specify the HTML file names and location of external resources.
            ' {0} and {1} are replaced with the current page number and resource name, respectively.
            Dim viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

#### Convert an Apple Numbers spreadsheet to HTML

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Products.numbers"))
{
    // Convert the spreadsheet to HTML.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Products.numbers")
            ' Convert the spreadsheet to HTML.
            ' Specify the HTML file names and location of external resources.
            ' {0} and {1} are replaced with the current page number and resource name, respectively.
            Dim viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-spreadsheets/render-excel-to-html-external-resources.png)


### Convert all Excel worksheets to one HTML file

To convert all worksheets to one HTML file, set the [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/rendertosinglepage/) property to `true`. This feature is supported in both cases - when converting to HTML with embedded and external resources.

{{< tabs "example5">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Personal_net_worth_calculator.xlsx"))
{
    // Convert all Excel worksheets to one HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page.html");
    // Enable converting all worksheets to one file.
    viewOptions.RenderToSinglePage = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Personal_net_worth_calculator.xlsx")
            ' Convert all Excel worksheets to one HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page.html")
            ' Enable converting all worksheets to one file.
            viewOptions.RenderToSinglePage = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Convert all Excel worksheets to one HTML file](/viewer/net/images/rendering-basics/render-spreadsheets/convert-all-excel-worksheets-to-html.png)


## Render spreadsheets as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a spreadsheet file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

### Convert an Excel workbook to PDF

{{< tabs "example6">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("invoice.xlsx")
            ' Convert the spreadsheet to PDF.
            Dim viewOptions = New PdfViewOptions("output.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file to PDF](/viewer/net/images/rendering-basics/render-spreadsheets/render-excel-to-pdf.png)

### Convert an Apple Numbers spreadsheet to PDF

{{< tabs "example7">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Products.numbers"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Products.numbers")
            ' Convert the spreadsheet to PDF.
            Dim viewOptions = New PdfViewOptions("output.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to PDF](/viewer/net/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-pdf.png)

## Render spreadsheets as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a spreadsheet file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

### Convert an Excel workbook to PNG

{{< tabs "example8">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PNG.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("invoice.xlsx")
            ' Convert the spreadsheet to PNG.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render an Excel file to PNG](/viewer/net/images/rendering-basics/render-spreadsheets/render-excel-to-png.png)

### Convert an Apple Numbers spreadsheet to PNG

{{< tabs "example9">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Products.numbers"))
{
    // Convert the spreadsheet to PNG.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Products.numbers")
            ' Convert the spreadsheet to PNG.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to PNG](/viewer/net/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-png.png)

## Render spreadsheets as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a spreadsheet file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

### Convert an Excel workbook to JPEG

{{< tabs "example10">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to JPEG.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("invoice.xlsx")
            ' Convert the spreadsheet to JPEG.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = New JpgViewOptions("output_{0}.jpg")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

### Convert an Apple Numbers spreadsheet to JPEG

{{< tabs "example11">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Products.numbers"))
{
    // Convert the spreadsheet to JPEG.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Products.numbers")
            ' Convert the spreadsheet to JPEG.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = New JpgViewOptions("output_{0}.jpg")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

## Detect a CSV/TSV separator

If you load a CSV/TSV file to convert it to another format, enable the [SpreadsheetOptions.DetectSeparator](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/detectseparator) property for a target view to automatically detect a delimiter used to separate values in the source file.

GroupDocs.Viewer can detect the following separators:

* A comma (the default separator)
* A semicolon

{{< tabs "example12">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.csv"))
{
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    // Detect a CSV/TSV separator.
    viewOptions.SpreadsheetOptions.DetectSeparator = true;
    viewer.View(viewOptions);
}          
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.csv")
            ' Convert the spreadsheet to HTML.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            ' Detect a CSV/TSV separator.
            viewOptions.SpreadsheetOptions.DetectSeparator = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

## Get worksheet names

GroupDocs.Viewer allows you to obtain information about the source spreadsheet file. For example, you can retrieve worksheet names, as described below:

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method and pass the `ViewInfoOptions` instance to this method as a parameter.
3. Use the [Pages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo/properties/pages) property of the returned [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object to iterate through the list of worksheets and retrieve the worksheet names.

{{< tabs "example13">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("sample.xlsx"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    // Call this method to create a single page for each worksheet.
    viewInfoOptions.SpreadsheetOptions = SpreadsheetOptions.ForOnePagePerSheet();

    var viewInfo = viewer.GetViewInfo(viewInfoOptions);

    // Print the worksheet names in the console window.
    Console.WriteLine("The document contains the following worksheets:");
    foreach (Page page in viewInfo.Pages)
    {
        Console.WriteLine($" - Worksheet {page.Number}: '{page.Name}'");
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.xlsx")
            Dim viewInfoOptions = ViewInfoOptions.ForHtmlView()
            ' Call this method to create a single page for each worksheet.
            viewInfoOptions.SpreadsheetOptions = SpreadsheetOptions.ForOnePagePerSheet()
        
            Dim viewInfo = viewer.GetViewInfo(viewInfoOptions)
        
            ' Print the worksheet names in the console window.
            Console.WriteLine("The document contains the following worksheets:")
            For Each page As Page In viewInfo.Pages
                Console.WriteLine($" - Worksheet {page.Number}: '{page.Name}'")
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Retrieve worksheet names](/viewer/net/images/rendering-basics/render-spreadsheets/retrieve-worksheet-names.png)

## See also

* [Split a worksheet into pages](/viewer/net/split-worksheet-into-pages/)
* [Specify spreadsheet rendering options](/viewer/net/specify-rendering-options/)
