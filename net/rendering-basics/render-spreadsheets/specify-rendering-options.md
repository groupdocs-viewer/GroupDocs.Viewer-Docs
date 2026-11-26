---
id: specify-rendering-options
url: viewer/net/specify-rendering-options
title: Specify spreadsheet rendering options
linkTitle: Specify rendering options
weight: 3
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to specify various options for rendering spreadsheet files to HTML, PDF, and image formats."
keywords: show column headings, show row headings, show gridlines, render comments, set margin, excel to pdf, xlsx to pdf, xls to pdf, excel to html, xlsx to html, xls to html
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/adjust-text-overflow-in-cells/
    - /viewer/net/how-to-show-spreadsheet-column-and-row-headings/
    - /viewer/net/render-grid-lines/
    - /viewer/net/render-hidden-columns-and-rows/
    - /viewer/net/skip-rendering-of-empty-columns/
    - /viewer/net/skip-rendering-of-empty-rows/
---
GroupDocs.Viewer ships with the [SpreadsheetOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions) class that allows you to specify different spreadsheet rendering options (for example, you can display row and column headings in the output file, render grid lines, or adjust cell text overflow). To access these options, use the [SpreadsheetOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/spreadsheetoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

## Render row and column headings

Rows and columns in a worksheet have unique names displayed on the worksheet's left and top side. Rows are numbered (1, 2, 3, ..., 1048576), and columns are lettered (A, B, C, ..., XFD).

![Row and column headings in a worksheet](/viewer/net/images/rendering-basics/render-spreadsheets/excel-row-and-column-headings.png)

Enable the [SpreadsheetOptions.RenderHeadings](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/renderheadings) property to display row and column headings in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

The following example demonstrates how to convert an Excel workbook to PDF and display row and column headings in the output PDF file:

{{< tabs "render-headings">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("render-headings.pdf");
    // Render row and column headings.
    viewOptions.SpreadsheetOptions.RenderHeadings = true;
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
            Dim viewOptions = New PdfViewOptions("render-headings.pdf")
            ' Render row and column headings.
            viewOptions.SpreadsheetOptions.RenderHeadings = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 85 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/RenderHeadings/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render worksheet gridlines

Use the [SpreadsheetOptions.RenderGridLines](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/rendergridlines) property to display gridlines (lines that separate worksheet rows and columns) in the output file.

The following code example demonstrates how to convert an Excel workbook to PDF and display gridlines in the output PDF file:

{{< tabs "render-grid-lines">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("render-grid-lines.pdf");
    // Render grid lines.
    viewOptions.SpreadsheetOptions.RenderGridLines = true;
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
            Dim viewOptions = New PdfViewOptions("render-grid-lines.pdf")
            ' Render grid lines.
            viewOptions.SpreadsheetOptions.RenderGridLines = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 81 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/RenderGridLines/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Control cell text overflow

The [SpreadsheetOptions.TextOverflowMode](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) option allows you to prevent text overflow in worksheet cells (see the image below) when you convert your spreadsheet file to HTML, PDF, or image format.

![Text overflow in a cell](/viewer/net/images/rendering-basics/render-spreadsheets/excel-text-overflow.png)

You can set the [TextOverflowMode](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) property to one of the following values:

* [TextOverflowMode.OverlayIfNextIsEmpty](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoverflowmode) (default) --- Allows text to overflow into adjacent cells if these cells have no data. If adjacent cells are not empty, the overflowing text is truncated.

    ![TextOverflowMode.OverlayIfNextIsEmpty](/viewer/net/images/rendering-basics/render-spreadsheets/text-overflow-mode-overlay-if-empty.png)

* [TextOverflowMode.Overlay](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoverflowmode) --- Text always overflows into adjacent cells even if these cells contain data.

    ![TextOverflowMode.Overlay](/viewer/net/images/rendering-basics/render-spreadsheets/text-overflow-mode-overlay.png)

* [TextOverflowMode.AutoFitColumn](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoverflowmode) --- Increases the column width to fit cell text.

    ![TextOverflowMode.AutoFitColum](/viewer/net/images/rendering-basics/render-spreadsheets/text-overflow-mode-autofit-column.png)

* [TextOverflowMode.HideText](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoverflowmode) --- Hides text that overflows the cell boundaries.
  
    ![TextOverflowMode.HideText](/viewer/net/images/rendering-basics/render-spreadsheets/text-overflow-mode-hide-text.png)

The following example demonstrates how to set this option in code:

{{< tabs "set-text-overflow-mode">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("set-text-overflow-mode.pdf");
    // Specify the AutoFitColumn mode.
    viewOptions.SpreadsheetOptions.TextOverflowMode = TextOverflowMode.AutoFitColumn;
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
            Dim viewOptions = New PdfViewOptions("set-text-overflow-mode.pdf")
            ' Specify the AutoFitColumn mode.
            viewOptions.SpreadsheetOptions.TextOverflowMode = TextOverflowMode.AutoFitColumn
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 80 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/SetTextOverflowMode/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render hidden rows and columns

Use the [ViewOptions.SpreadsheetOptions.RenderHiddenRows](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/renderhiddenrows) and [ViewOptions.SpreadsheetOptions.RenderHiddenColumns](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/renderhiddencolumns) properties to display hidden rows and columns in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

The example below demonstrates how to set this option in code. The rows **20** and **21** and the column **E** are hidden in the source Excel workbook. 

![Hidden rows and columns in a worksheet](/viewer/net/images/rendering-basics/render-spreadsheets/excel-hidden-columns-and-rows.png)

{{< tabs "render-hidden-rows-and-columns">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("render-hidden-rows-and-columns.pdf");
    // Enable rendering hidden rows and columns.
    viewOptions.SpreadsheetOptions.RenderHiddenRows = true;
    viewOptions.SpreadsheetOptions.RenderHiddenColumns = true;
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
            Dim viewOptions = New PdfViewOptions("render-hidden-rows-and-columns.pdf")
            ' Enable rendering hidden rows and columns.
            viewOptions.SpreadsheetOptions.RenderHiddenRows = True
            viewOptions.SpreadsheetOptions.RenderHiddenColumns = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 81 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/RenderHiddenRowsAndColumns/output.pdf)
{{< /tab >}}
{{< /tabs >}}

Hidden rows and columns appear in the generated PDF file.

## Render hidden worksheets

If your spreadsheet file contains hidden worksheets, enable the [ViewOptions.RenderHiddenPages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/renderhiddenpages) property to display data from hidden worksheets in the output HTML, PDF, or image files.

The following example demonstrates how to set this option in code:

{{< tabs "render-hidden-pages">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("render-hidden-pages.pdf");
    // Enable rendering hidden pages.
    viewOptions.RenderHiddenPages = true;
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
            Dim viewOptions = New PdfViewOptions("render-hidden-pages.pdf")
            ' Enable rendering hidden pages.
            viewOptions.RenderHiddenPages = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 83 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/RenderHiddenPages/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Skip empty rows and columns

GroupDocs.Viewer supports the [SpreadsheetOptions.SkipEmptyRows](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/skipemptyrows) and [SpreadsheetOptions.SkipEmptyColumns](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/skipemptycolumns) properties that allow you to skip blank rows and columns when you convert your spreadsheet file to HTML, PDF, or image format.

{{< tabs "skip-empty-rows-and-columns">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("skip-empty-rows-and-columns.pdf");
    // Enable skipping blank rows and columns.
    viewOptions.SpreadsheetOptions.SkipEmptyRows = true;
    viewOptions.SpreadsheetOptions.SkipEmptyColumns = true;
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
            Dim viewOptions = New PdfViewOptions("skip-empty-rows-and-columns.pdf")
            ' Enable skipping blank rows and columns.
            viewOptions.SpreadsheetOptions.SkipEmptyRows = True
            viewOptions.SpreadsheetOptions.SkipEmptyColumns = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 80 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/SkipEmptyRowsAndColumns/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render cell comments

Cell comments are rendered by default: the [ViewOptions.RenderComments](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) property is `true` unless you change it. The example below sets it explicitly; set it to `false` to hide the comments when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

{{< tabs "render-comments">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("with_comments.xlsx"))
{
    // Convert the spreadsheet to PNG.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    // Enable rendering comments.
    viewOptions.RenderComments = true;
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
        Using viewer = New Viewer("with_comments.xlsx")
            ' Convert the spreadsheet to PNG.
            ' {0} is replaced with the current page number in the file names.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            ' Enable rendering comments.
            viewOptions.RenderComments = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "with_comments.xlsx" >}}
{{< tab-text >}}
`with_comments.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/with_comments.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-comments.zip" >}}  
```text
output_1.png (25 KB)
output_2.png (101 KB)
output_3.png (30 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/RenderComments/render-comments.zip)
{{< /tab >}}
{{< /tabs >}}

## Set worksheet margins in the output pdf pages

Use the [SpreadsheetOptions.LeftMargin, RightMargin, TopMargin and BottomMargin](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/) properties to set margins for worksheets in the output pdf. If margins are set to value less than 0 or not set then default value will be used.

The following code example demonstrates how to convert an Excel workbook to PDF and set optional margins for worksheets in the output PDF file:

{{< tabs "set-worksheet-margins">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    var viewOptions = new PdfViewOptions("set-worksheet-margins.pdf");
	
    // Set margins for worksheets in the output pdf pages
    viewOptions.SpreadsheetOptions.LeftMargin = 0;
    viewOptions.SpreadsheetOptions.RightMargin = 0.5;
    viewOptions.SpreadsheetOptions.TopMargin = 1;
    viewOptions.SpreadsheetOptions.BottomMargin = -10; // set to default value
	
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
            Dim viewOptions = New PdfViewOptions("set-worksheet-margins.pdf")
        
            ' Set margins for worksheets in the output pdf pages
            viewOptions.SpreadsheetOptions.LeftMargin = 0
            viewOptions.SpreadsheetOptions.RightMargin = 0.5
            viewOptions.SpreadsheetOptions.TopMargin = 1
            viewOptions.SpreadsheetOptions.BottomMargin = -10 ' set to default value
        
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-spreadsheets/specify-rendering-options/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 81 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-spreadsheets/specify-rendering-options/SetWorksheetMargins/output.pdf)
{{< /tab >}}
{{< /tabs >}}
