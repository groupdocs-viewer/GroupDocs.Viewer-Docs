---
id: specify-rendering-options
url: viewer/python-net/specify-rendering-options
title: Specify spreadsheet rendering options
linkTitle: Specify rendering options
weight: 3
description: "This topic describes how to use the GroupDocs.Viewer Python API to specify various options for rendering spreadsheet files to HTML, PDF, and image formats."
keywords: show column headings, show row headings, show gridlines, render comments, set margin, excel to pdf, xlsx to pdf, xls to pdf, excel to html, xlsx to html, xls to html
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/adjust-text-overflow-in-cells/
    - /viewer/python-net/how-to-show-spreadsheet-column-and-row-headings/
    - /viewer/python-net/render-grid-lines/
    - /viewer/python-net/render-hidden-columns-and-rows/
    - /viewer/python-net/skip-rendering-of-empty-columns/
    - /viewer/python-net/skip-rendering-of-empty-rows/
---
GroupDocs.Viewer ships with the [SpreadsheetOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions) class that allows you to specify different spreadsheet rendering options (for example, you can display row and column headings in the output file, render grid lines, or adjust cell text overflow). To access these options, use the [SpreadsheetOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/spreadsheetoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

## Render row and column headings

Rows and columns in a worksheet have unique names displayed on the worksheet's left and top side. Rows are numbered (1, 2, 3, ..., 1048576), and columns are lettered (A, B, C, ..., XFD).

![Row and column headings in a worksheet](/viewer/python-net/images/rendering-basics/render-spreadsheets/excel-row-and-column-headings.png)

Enable the [SpreadsheetOptions.RenderHeadings](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/properties/renderheadings) property to display row and column headings in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

The following example demonstrates how to convert an Excel workbook to PDF and display row and column headings in the output PDF file:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Render row and column headings.
    viewOptions.spreadsheet_options.render_headings = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file with row and column headings to PDF](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-row-and-column-headings-to-pdf.png)

## Render worksheet gridlines

Use the [SpreadsheetOptions.RenderGridLines](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/rendergridlines) property to display gridlines (lines that separate worksheet rows and columns) in the output file.

The following code example demonstrates how to convert an Excel workbook to PDF and display gridlines in the output PDF file:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Render grid lines.
    viewOptions.spreadsheet_options.render_grid_lines = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file with gridlines to PDF](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-excel-gridlines-to-pdf.png)

## Control cell text overflow

The [SpreadsheetOptions.TextOverflowMode](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) option allows you to prevent text overflow in worksheet cells (see the image below) when you convert your spreadsheet file to HTML, PDF, or image format.

![Text overflow in a cell](/viewer/python-net/images/rendering-basics/render-spreadsheets/excel-text-overflow.png)

You can set the [TextOverflowMode](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) property to one of the following values:

* [TextOverflowMode.OverlayIfNextIsEmpty](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/textoverflowmode) (default) --- Allows text to overflow into adjacent cells if these cells have no data. If adjacent cells are not empty, the overflowing text is truncated.

    ![TextOverflowMode.OverlayIfNextIsEmpty](/viewer/python-net/images/rendering-basics/render-spreadsheets/text-overflow-mode-overlay-if-empty.png)

* [TextOverflowMode.Overlay](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/textoverflowmode) --- Text always overflows into adjacent cells even if these cells contain data.

    ![TextOverflowMode.Overlay](/viewer/python-net/images/rendering-basics/render-spreadsheets/text-overflow-mode-overlay.png)

* [TextOverflowMode.AutoFitColumn](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/textoverflowmode) --- Increases the column width to fit cell text.

    ![TextOverflowMode.AutoFitColum](/viewer/python-net/images/rendering-basics/render-spreadsheets/text-overflow-mode-autofit-column.png)

* [TextOverflowMode.HideText](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/textoverflowmode) --- Hides text that overflows the cell boundaries.
  
    ![TextOverflowMode.HideText](/viewer/python-net/images/rendering-basics/render-spreadsheets/text-overflow-mode-hide-text.png)

The following example demonstrates how to set this option in code:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Specify the AutoFitColumn mode.
    viewOptions.spreadsheet_options.text_overflow_mode = gvo.TextOverflowMode.AutoFitColumn 
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Render hidden rows and columns

Use the [ViewOptions.SpreadsheetOptions.RenderHiddenRows](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/renderhiddenrows) and [ViewOptions.SpreadsheetOptions.RenderHiddenColumns](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/renderhiddencolumns) properties to display hidden rows and columns in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

The example below demonstrates how to set this option in code. The rows **20** and **21** and the column **E** are hidden in the source Excel workbook. 

![Hidden rows and columns in a worksheet](/viewer/python-net/images/rendering-basics/render-spreadsheets/excel-hidden-columns-and-rows.png)

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Enable rendering hidden rows and columns.
    viewOptions.spreadsheet_options.render_hidden_columns = True
    viewOptions.spreadsheet_options.render_hidden_rows = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. Hidden rows and columns appear in the generated PDF file.

![Hidden rows and columns in a worksheet](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-excel-with-hidden-columns-and-rows-to-pdf.png)

## Render hidden worksheets

If your spreadsheet file contains hidden worksheets, enable the [ViewOptions.RenderHiddenPages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/renderhiddenpages) property to display data from hidden worksheets in the output HTML, PDF, or image files.

The following example demonstrates how to set this option in code:

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Enable rendering hidden pages.
    viewOptions.render_hidden_pages = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Skip empty rows and columns

GroupDocs.Viewer supports the [SpreadsheetOptions.SkipEmptyRows](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/properties/skipemptyrows) and [SpreadsheetOptions.SkipEmptyColumns](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/properties/skipemptycolumns) properties that allow you to skip blank rows and columns when you convert your spreadsheet file to HTML, PDF, or image format.

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Enable skipping blank rows and columns.
    viewOptions.spreadsheet_options.skip_empty_columns = True
    viewOptions.spreadsheet_options.skip_empty_rows = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Skip empty columns and rows](/viewer/python-net/images/rendering-basics/render-spreadsheets/excel-skip-empty-columns-and-rows.png)

## Render cell comments

Use the [ViewOptions.RenderComments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) option to display cell comments in the output file when you render your spreadsheet in HTML, PDF, PNG, or JPEG format.

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PNG.
    # {0} is replaced with the current page number in the file names.
    viewOptions = gvo.PngViewOptions("output_{0}.png")
    # Enable rendering comments.
    viewOptions.render_comments = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render cell comments](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-excel-comments-to-png.png)

## Set worksheet margins in the output pdf pages

Use the [SpreadsheetOptions.RenderGridLines](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/rendergridlines) properties to set margins for worksheets in the output pdf. If margins are set to value less than 0 or not set then default value will be used.

The following code example demonstrates how to convert an Excel workbook to PDF and set optional margins for worksheets in the output PDF file:

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    viewOptions = gvo.PdfViewOptions("output.pdf")

    # Set margins for worksheets in the output pdf pages
    viewOptions.spreadsheet_options.left_margin = 0;
    viewOptions.spreadsheet_options.right_margin = 0.5;
    viewOptions.spreadsheet_options.top_margin = 1;
    viewOptions.spreadsheet_options.bottom_margin = -10; # set to default value
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file with worksheet margins on page to PDF](/viewer/python-net/images/rendering-basics/render-spreadsheets/set-worksheet-margins-in-the-output-pdf-pages.png)
