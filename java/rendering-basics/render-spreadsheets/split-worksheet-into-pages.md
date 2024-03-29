---
id: split-worksheet-into-pages
url: viewer/java/split-worksheet-into-pages
title: Split a worksheet into pages
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer Java to split worksheets into pages when rendering spreadsheet files to HTML, PDF, and image formats."
keywords: split worksheet, add page breaks, break worksheet into pages, print area, excel to pdf, xlsx to pdf, xls to pdf, excel to html, xlsx to html, xls to html
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/split-worksheets-into-pages/
    - /viewer/java/render-spreadsheets-by-page-breaks/
    - /viewer/java/render-print-areas/
---

GroupDocs.Viewer uses page breaks to split a worksheet into separate pages. Microsoft Excel adds automatic page breaks based on paper size and page settings, but you can also insert manual horizontal and vertical page breaks. Switch to **Page Break Preview** in Microsoft Excel to see where page breaks appear on a worksheet.

In the image below, the vertical page break is inserted after the column **E**, and the horizontal page break is located under the row **30**.

![Preview page breaks in Microsoft Excel](/viewer/java/images/rendering-basics/render-spreadsheets/excel-page-break-preview.png)

To render a worksheet based on the inserted page breaks, call the [SpreadsheetOptions.forRenderingByPageBreaks](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forRenderingByPageBreaks--) static method and pass the returned `SpreadsheetOptions` instance to the [ViewOptions.setSpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setSpreadsheetOptions-com.groupdocs.viewer.options.SpreadsheetOptions-) method of your view (depending on the output file format).

The following example converts a worksheet to PDF and uses the page breaks to split this worksheet into pages:

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("products.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Split using page breaks.
    viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingByPageBreaks());

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render a worksheet to PDF based on page breaks](/viewer/java/images/rendering-basics/render-spreadsheets/render-by-page-breaks.png)

## Split a worksheet into pages by rows

The following code snippet splits a worksheet into two pages and renders them to PDF:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("two-pages.xlsx")) {
    // Specify number of rows for every page.
    int countRowsPerPage = 15;
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = PdfViewOptions("output.pdf");
    // Split by number of rows.
    viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forSplitSheetIntoPages(countRowsPerPage));

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the output PDF file.

![Break a worksheet into two pages](/viewer/java/images/rendering-basics/render-spreadsheets/render-two-pages.png)

## Split a worksheet into pages by rows and columns

The following code snippet splits a worksheet into four pages and renders them to PDF:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("four-pages.xlsx")) {
    // Specify number of rows and columns for every page.
    int countRowsPerPage = 15;
    int countColumnsPerPage = 7;
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = PdfViewOptions("output.pdf");
    // Split by number of rows and columns.
    viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forSplitSheetIntoPages(countRowsPerPage, countColumnsPerPage));

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the output PDF file.

![Break a worksheet into four pages](/viewer/java/images/rendering-basics/render-spreadsheets/render-four-pages.png)

## Render a print area

In Microsoft Excel, you can designate one or more cell ranges in a worksheet as the only region to print (a _print area_). A worksheet can contain multiple print areas. Each print area prints on its own page.

![Specify a print area in Microsoft Excel](/viewer/java/images/rendering-basics/render-spreadsheets/excel-set-print-area.png)

GroupDocs.Viewer also supports this option. Call the [SpreadsheetOptions.forRenderingPrintArea](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forRenderingPrintArea--) static method and assign the pass `SpreadsheetOptions` instance to the [ViewOptions.setSpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setSpreadsheetOptions-com.groupdocs.viewer.options.SpreadsheetOptions-) method to display only the worksheet's print area in the output HTML, PDF, or image file.

The following example renders the print area displayed in the image above to PDF:

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = PdfViewOptions("output.pdf");
    // Render the print area only.
    viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingPrintArea());

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render the print area to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/render-print-area.png)

## Render a worksheet on one page

If you want to display all worksheet data on one page, call the [SpreadsheetOptions.forOnePagePerSheet](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forOnePagePerSheet--) static method and pass the returned `SpreadsheetOptions` instance to the [ViewOptions.setSpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setSpreadsheetOptions-com.groupdocs.viewer.options.SpreadsheetOptions-) method for a target view.

The following example converts each worksheet to one page in the PDF file:

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("Products.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = PdfViewOptions("output.pdf");
    // Render each worksheet to one page.
    viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forOnePagePerSheet());

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result. The output PDF file contains one page that displays all worksheet data.

![Fit sheet on one page](/viewer/java/images/rendering-basics/render-spreadsheets/render-on-one-page.png)