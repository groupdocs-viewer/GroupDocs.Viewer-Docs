---
id: split-worksheet-into-pages
url: viewer/net/split-worksheet-into-pages
title: Split a worksheet into pages
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to split worksheets into pages when rendering spreadsheet files to HTML, PDF, and image formats."
keywords: split worksheet, add page breaks, break worksheet into pages, print area, excel to pdf, xlsx to pdf, xls to pdf, excel to html, xlsx to html, xls to html
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/split-worksheets-into-pages/
    - /viewer/net/render-spreadsheets-by-page-breaks/
    - /viewer/net/render-print-areas/
---

GroupDocs.Viewer uses page breaks to split a worksheet into separate pages. Microsoft Excel adds automatic page breaks based on paper size and page settings, but you can also insert manual horizontal and vertical page breaks. Switch to **Page Break Preview** in Microsoft Excel to see where page breaks appear on a worksheet.

In the image below, the vertical page break is inserted after the column **E**, and the horizontal page break is located under the row **30**.

![Preview page breaks in Microsoft Excel](/viewer/net/images/rendering-basics/render-spreadsheets/excel-page-break-preview.png)

To render a worksheet based on the inserted page breaks, call the [SpreadsheetOptions.ForRenderingByPageBreaks](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/methods/forrenderingbypagebreaks) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.SpreadsheetOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/spreadsheetoptions) property of your view (depending on the output file format).

The following example converts a worksheet to PDF and uses the page breaks to split this worksheet into pages:

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("products.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    // Split using page breaks.
    viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForRenderingByPageBreaks();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render a worksheet to PDF based on page breaks](/viewer/net/images/rendering-basics/render-spreadsheets/render-by-page-breaks.png)

## Split a worksheet into pages by rows

The following code snippet splits a worksheet into two pages and renders them to PDF:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("two-pages.xlsx"))
{
    // Specify number of rows for every page.
    int rowsPerPage = 15;
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    // Split by number of rows.
    viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForSplitSheetIntoPages(rowsPerPage);
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the output PDF file.

![Break a worksheet into two pages](/viewer/net/images/rendering-basics/render-spreadsheets/render-two-pages.png)

## Split a worksheet into pages by rows and columns

The following code snippet splits a worksheet into four pages and renders them to PDF:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("four-pages.xlsx"))
{
    // Specify number of rows and columns for every page.
    int rowsPerPage = 15;
    int columnsPerPage = 7;
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    // Split by number of rows and columns.
    viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForSplitSheetIntoPages(rowsPerPage, columnsPerPage);
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the output PDF file.

![Break a worksheet into four pages](/viewer/net/images/rendering-basics/render-spreadsheets/render-four-pages.png)

## Render a print area

In Microsoft Excel, you can designate one or more cell ranges in a worksheet as the only region to print (a _print area_). A worksheet can contain multiple print areas. Each print area prints on its own page.

![Specify a print area in Microsoft Excel](/viewer/net/images/rendering-basics/render-spreadsheets/excel-set-print-area.png)

GroupDocs.Viewer also supports this option. Call the [SpreadsheetOptions.ForRenderingPrintArea](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/methods/forrenderingprintarea) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.SpreadsheetOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/spreadsheetoptions) property to display only the worksheet's print area in the output HTML, PDF, or image file.

The following example renders the print area displayed in the image above to PDF:

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    // Render the print area only.
    viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForRenderingPrintArea();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render the print area to PDF](/viewer/net/images/rendering-basics/render-spreadsheets/render-print-area.png)

## Render a worksheet on one page

If you want to display all worksheet data on one page, call the [SpreadsheetOptions.ForOnePagePerSheet](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/foronepagepersheet/) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.SpreadsheetOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/spreadsheetoptions) property for a target view.

The following example converts each worksheet to one page in the PDF file:

{{< tabs "example5">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Products.xlsx"))
{
    // Convert the spreadsheet to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    // Render each worksheet to one page.
    viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForOnePagePerSheet();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result. The output PDF file contains one page that displays all worksheet data.

![Fit sheet on one page](/viewer/net/images/rendering-basics/render-spreadsheets/render-on-one-page.png)

## Render worksheet by page breaks and print area

GroupDocs.Viewer uses page breaks to split a worksheet into separate pages. Microsoft Excel adds automatic page breaks based on paper size and page settings, but you can also insert manual horizontal and vertical page breaks. Switch to **Page Break Preview** in Microsoft Excel to see where page breaks appear on a worksheet.

Also, you can designate one or more cell ranges in a worksheet as the only region to print (a _print area_). A worksheet can contain multiple print areas. Each print area prints on its own page.

When printing, Microsoft Excel splits a worksheet into pages using both page breaks and print areas. In the following image the red line shows the print area, and the blue line shows page breaks:

![Specify page breaks and a print area in Microsoft Excel](/viewer/net/images/rendering-basics/render-spreadsheets/page-breake-vs-print-area.png)

GroupDocs.Viewer also supports this option. Call the [SpreadsheetOptions.ForRenderingPrintAreaAndPageBreaks](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/methods/forrenderingprintareaandpagebreaks) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.SpreadsheetOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/spreadsheetoptions) property to display only the worksheet's print area in the output HTML, PDF, or image file.

The following example renders the Microsoft Excel spreadsheet using page breaks and print areas displayed in the image above to PDF:

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

//render spreadsheet to PDF
using (var viewer = new Viewer("products.xlsx"))
{
  var viewOptions = new PdfViewOptions("output.pdf");
  viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForRenderingPrintAreaAndPageBreaks();
  viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result:

![Render page breaks and a print area to PDF](/viewer/net/images/rendering-basics/render-spreadsheets/pdf-result.png)

