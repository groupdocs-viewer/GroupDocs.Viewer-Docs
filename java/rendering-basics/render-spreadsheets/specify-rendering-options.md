---
id: specify-rendering-options
url: viewer/java/specify-rendering-options
title: Specify spreadsheet rendering options
linkTitle: Specify rendering options
weight: 3
description: "This topic describes how to use the GroupDocs.Viewer Java API to specify various options for rendering spreadsheet files to HTML, PDF, and image formats."
keywords: show column headings, show row headings, show gridlines, render comments, excel to pdf, xlsx to pdf, xls to pdf, excel to html, xlsx to html, xls to html
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/adjust-text-overflow-in-cells/
    - /viewer/java/how-to-show-spreadsheet-column-and-row-headings/
    - /viewer/java/render-grid-lines/
    - /viewer/java/render-hidden-columns-and-rows/
    - /viewer/java/skip-rendering-of-empty-columns/
    - /viewer/java/skip-rendering-of-empty-rows/
---
GroupDocs.Viewer ships with the [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions) class that allows you to specify different spreadsheet rendering options (for example, you can display row and column headings in the output file, render grid lines, or adjust cell text overflow). To access these options, use the [setSpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setSpreadsheetOptions-com.groupdocs.viewer.options.SpreadsheetOptions-) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

## Render row and column headings

Rows and columns in a worksheet have unique names displayed on the worksheet's left and top side. Rows are numbered (1, 2, 3, ..., 1048576), and columns are lettered (A, B, C, ..., XFD).

![Row and column headings in a worksheet](/viewer/java/images/rendering-basics/render-spreadsheets/excel-row-and-column-headings.png)

Use the [SpreadsheetOptions.setRenderHeadings](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setRenderHeadings-boolean-) method to display row and column headings in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

The following example demonstrates how to convert an Excel workbook to PDF and display row and column headings in the output PDF file:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Render row and column headings.
    viewOptions.getSpreadsheetOptions().setRenderHeadings(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file with row and column headings to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/render-row-and-column-headings-to-pdf.png)

## Render worksheet gridlines

Use the [SpreadsheetOptions.setRenderGridLines](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setRenderGridLines-boolean-) method to display gridlines (lines that separate worksheet rows and columns) in the output file.

The following code example demonstrates how to convert an Excel workbook to PDF and display gridlines in the output PDF file:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Render gridlines.
    viewOptions.getSpreadsheetOptions().setRenderGridLines(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file with gridlines to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/render-excel-gridlines-to-pdf.png)

## Control cell text overflow

The [SpreadsheetOptions.setTextOverflowMode](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setTextOverflowMode-com.groupdocs.viewer.options.TextOverflowMode-) method allows you to prevent text overflow in worksheet cells (see the image below) when you convert your spreadsheet file to HTML, PDF, or image format.

![Text overflow in a cell](/viewer/java/images/rendering-basics/render-spreadsheets/excel-text-overflow.png)

You can set the [TextOverflowMode](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/textoverflowmode) property to one of the following values:

* [TextOverflowMode.OVERLAY_IF_NEXT_IS_EMPTY](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/textoverflowmode/#OVERLAY-IF-NEXT-IS-EMPTY) (default) --- Allows text to overflow into adjacent cells if these cells have no data. If adjacent cells are not empty, the overflowing text is truncated.

    ![TextOverflowMode.OVERLAY_IF_NEXT_IS_EMPTY](/viewer/java/images/rendering-basics/render-spreadsheets/text-overflow-mode-overlay-if-empty.png)

* [TextOverflowMode.OVERLAY](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/textoverflowmode/#OVERLAY) --- Text always overflows into adjacent cells even if these cells contain data.

    ![TextOverflowMode.OVERLAY](/viewer/java/images/rendering-basics/render-spreadsheets/text-overflow-mode-overlay.png)

* [TextOverflowMode.AUTO_FIT_COLUMN](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/textoverflowmode/#AUTO-FIT-COLUMN) --- Increases the column width to fit cell text.

    ![TextOverflowMode.AUTO_FIT_COLUMN](/viewer/java/images/rendering-basics/render-spreadsheets/text-overflow-mode-autofit-column.png)

* [TextOverflowMode.HIDE_TEXT](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/textoverflowmode/#HIDE-TEXT) --- Hides text that overflows the cell boundaries.
  
    ![TextOverflowMode.HIDE_TEXT](/viewer/java/images/rendering-basics/render-spreadsheets/text-overflow-mode-hide-text.png)

The following example demonstrates how to set this option in code:

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Specify the AutoFitColumn mode.
    viewOptions.getSpreadsheetOptions().setTextOverflowMode(TextOverflowMode.AUTO_FIT_COLUMN);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render hidden rows and columns

Use the [ViewOptions.getSpreadsheetOptions().setRenderHiddenRows](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setRenderHiddenRows-boolean-) and [ViewOptions.getSpreadsheetOptions().setRenderHiddenColumns](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setRenderHiddenColumns-boolean-) properties to display hidden rows and columns in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

The example below demonstrates how to set this option in code. The rows **20** and **21** and the column **E** are hidden in the source Excel workbook. 

![Hidden rows and columns in a worksheet](/viewer/java/images/rendering-basics/render-spreadsheets/excel-hidden-columns-and-rows.png)

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Enable rendering hidden rows and columns.
    viewOptions.getSpreadsheetOptions().setRenderHiddenRows(true);
    viewOptions.getSpreadsheetOptions().setRenderHiddenColumns(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. Hidden rows and columns appear in the generated PDF file.

![Hidden rows and columns in a worksheet](/viewer/java/images/rendering-basics/render-spreadsheets/render-excel-with-hidden-columns-and-rows-to-pdf.png)

## Render hidden worksheets

If your spreadsheet file contains hidden worksheets, use the [ViewOptions.setRenderHiddenPages](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderHiddenPages-boolean-) method to display data from hidden worksheets in the output HTML, PDF, or image files.

The following example demonstrates how to set this option in code:

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Enable rendering hidden pages.
    viewOptions.setRenderHiddenPages(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Skip empty rows and columns

GroupDocs.Viewer supports the [SpreadsheetOptions.setSkipEmptyRows](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setSkipEmptyRows-boolean-) and [SpreadsheetOptions.setSkipEmptyColumns](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#setSkipEmptyColumns-boolean-) methods that allow you to skip blank rows and columns when you convert your spreadsheet file to HTML, PDF, or image format.

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Enable skipping blank rows and columns.
    viewOptions.getSpreadsheetOptions().setSkipEmptyRows(true);
    viewOptions.getSpreadsheetOptions().setSkipEmptyColumns(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Skip empty columns and rows](/viewer/java/images/rendering-basics/render-spreadsheets/excel-skip-empty-columns-and-rows.png)

## Render cell comments

Use the [ViewOptions.setRenderComments](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderComments-boolean-) method to display cell comments in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

{{< tabs "example7">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Enable rendering comments.
    viewOptions.setRenderComments(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render cell comments](/viewer/java/images/rendering-basics/render-spreadsheets/render-excel-comments-to-png.png)
