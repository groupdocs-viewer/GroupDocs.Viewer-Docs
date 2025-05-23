---
id: split-worksheet-into-pages
url: viewer/python-net/split-worksheet-into-pages
title: Split a worksheet into pages
weight: 2
description: "Split worksheets into pages when rendering spreadsheets to HTML, PDF, and image formats using GroupDocs.Viewer Python API."
keywords: excel to pdf, xlsx to pdf, split worksheet, page breaks, print area, excel to html, xls to pdf
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/split-worksheets-into-pages/
    - /viewer/python-net/render-spreadsheets-by-page-breaks/
    - /viewer/python-net/render-print-areas/
---

GroupDocs.Viewer uses page breaks to split a worksheet into separate pages. Microsoft Excel adds automatic page breaks based on paper size and page settings, but you can also insert manual horizontal and vertical page breaks. Switch to **Page Break Preview** in Microsoft Excel to see where page breaks appear on a worksheet.

In the image below, the vertical page break is inserted after the column **E**, and the horizontal page break is located under the row **30**.

![Preview page breaks in Microsoft Excel](/viewer/python-net/images/rendering-basics/render-spreadsheets/excel-page-break-preview.png)

To render a worksheet based on the inserted page breaks, call the [SpreadsheetOptions.for_rendering_by_page_breaks](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/#methods) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.spreadsheet_options](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property of your view (depending on the output file format).

The following example converts a worksheet to PDF and uses the page breaks to split this worksheet into pages:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("products.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Split using page breaks.
    viewOptions.spreadsheet_options = gvo.SpreadsheetOptions.for_rendering_by_page_breaks()
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render a worksheet to PDF based on page breaks](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-by-page-breaks.png)

## Split a worksheet into pages by rows

The following code snippet splits a worksheet into two pages and renders them to PDF:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("two-pages.xlsx") as viewer:
    # Specify number of rows for every page.
    rows_per_page = 15
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Split by number of rows.
    viewOptions.spreadsheet_options = gvo.SpreadsheetOptions.for_split_sheet_into_pages(rows_per_page)
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the output PDF file.

![Break a worksheet into two pages](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-two-pages.png)

## Split a worksheet into pages by rows and columns

The following code snippet splits a worksheet into four pages and renders them to PDF:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("four-pages.xlsx") as viewer:
    # Specify number of rows and columns for every page.
    rows_per_page = 15
    column_per_page = 7
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Split by number of rows.
    viewOptions.spreadsheet_options = gvo.SpreadsheetOptions.for_split_sheet_into_pages(rows_per_page, column_per_page)
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the output PDF file.

![Break a worksheet into four pages](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-four-pages.png)

## Render a print area

In Microsoft Excel, you can designate one or more cell ranges in a worksheet as the only region to print (a _print area_). A worksheet can contain multiple print areas. Each print area prints on its own page.

![Specify a print area in Microsoft Excel](/viewer/python-net/images/rendering-basics/render-spreadsheets/excel-set-print-area.png)

GroupDocs.Viewer also supports this option. Call the [SpreadsheetOptions.for_rendering_print_area](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/#methods) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.spreadsheet_options](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property to display only the worksheet's print area in the output HTML, PDF, or image file.

The following example renders the print area displayed in the image above to PDF:

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("invoice.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Render the print area only.
    viewOptions.spreadsheet_options = gvo.SpreadsheetOptions.for_rendering_print_area()
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render the print area to PDF](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-print-area.png)

## Render a worksheet on one page

If you want to display all worksheet data on one page, call the [SpreadsheetOptions.for_one_page_per_sheet](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/#methods) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.spreadsheet_options](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property for a target view.

The following example converts each worksheet to one page in the PDF file:

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Products.xlsx") as viewer:
    # Convert the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Render each worksheet to one page.
    viewOptions.spreadsheet_options = gvo.SpreadsheetOptions.for_one_page_per_sheet()
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result. The output PDF file contains one page that displays all worksheet data.

![Fit sheet on one page](/viewer/python-net/images/rendering-basics/render-spreadsheets/render-on-one-page.png)

## Render worksheet by page breaks and print area

GroupDocs.Viewer uses page breaks to split a worksheet into separate pages. Microsoft Excel adds automatic page breaks based on paper size and page settings, but you can also insert manual horizontal and vertical page breaks. Switch to **Page Break Preview** in Microsoft Excel to see where page breaks appear on a worksheet.

Also, you can designate one or more cell ranges in a worksheet as the only region to print (a _print area_). A worksheet can contain multiple print areas. Each print area prints on its own page.

When printing, Microsoft Excel splits a worksheet into pages using both page breaks and print areas. In the following image the red line shows the print area, and the blue line shows page breaks:

![Specify page breaks and a print area in Microsoft Excel](/viewer/python-net/images/rendering-basics/render-spreadsheets/page-breake-vs-print-area.png)

GroupDocs.Viewer also supports this option. Call the [SpreadsheetOptions.for_rendering_print_area_and_page_breaks](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/spreadsheetoptions/#methods) static method and assign the returned `SpreadsheetOptions` instance to the [ViewOptions.spreadsheet_options](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property to display only the worksheet's print area in the output HTML, PDF, or image file.

The following example renders the Microsoft Excel spreadsheet using page breaks and print areas displayed in the image above to PDF:

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Products.xlsx") as viewer:
    # Render the spreadsheet to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewOptions.spreadsheet_options = gvo.SpreadsheetOptions.for_rendering_print_area_and_page_breaks()
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result:

![Render page breaks and a print area to PDF](/viewer/python-net/images/rendering-basics/render-spreadsheets/pdf-result.png)

