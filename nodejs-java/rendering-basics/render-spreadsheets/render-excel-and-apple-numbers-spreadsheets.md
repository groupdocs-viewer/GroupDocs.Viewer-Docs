---
id: render-excel-and-apple-numbers-spreadsheets
url: viewer/nodejs-java/render-excel-and-apple-numbers-spreadsheets
title: Render Excel and Apple Numbers spreadsheets as HTML, PDF, and image files
linkTitle: Render Excel and Apple Numbers spreadsheets
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer API for Node.js to convert Excel workbooks and Apple Numbers spreadsheets to HTML, PDF, PNG, and JPEG formats."
keywords: excel to pdf, excel to html, excel to jpg, xlsx to pdf, xls to pdf, excel to pdf online, convert xls to pdf, convert xlsx to pdf
productName: GroupDocs.Viewer for Node.js via Java
toc: True
hideChildren: False
aliases:
    - /viewer/nodejs-java/view-excel-spreadsheets/
    - /viewer/nodejs-java/how-to-convert-and-view-apple-numbers-files/
    - /viewer/nodejs-java/how-to-convert-and-view-excel-spreadsheetml-files/
    - /viewer/nodejs-java/separator-detection/
    - /viewer/nodejs-java/how-to-get-the-names-of-the-worksheets/
---
[GroupDocs.Viewer for Node.js](https://products.groupdocs.com/viewer/nodejs-java) allows you to render your spreadsheet files in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Excel or other spreadsheet programs to load and view Excel documents within your JavaScript application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](#) class instance. Pass a spreadsheet file you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](#) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/excel" >}} {{< icon "gdoc_person" >}} View Excel files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

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

## Render spreadsheets as HTML

Create an [HtmlViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a spreadsheet file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](#) method and specify the output file name.

#### Convert an Excel workbook to HTML

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("invoice.xlsx")
// Convert the spreadsheet to HTML.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file to HTML](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/convert-excel-to-html.png)

#### Convert an Apple Numbers spreadsheet to HTML

{{< tabs "example2">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("Products.numbers")
// Convert the spreadsheet to HTML.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to HTML](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](#) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

#### Convert an Excel workbook to HTML

{{< tabs "example3">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("invoice.xlsx")
// Convert the spreadsheet to HTML.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the current page number and resource name, respectively.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

#### Convert an Apple Numbers spreadsheet to HTML

{{< tabs "example4">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("Products.numbers")
// Convert the spreadsheet to HTML.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the current page number and resource name, respectively.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/render-excel-to-html-external-resources.png)


### Convert all Excel worksheets to one HTML file

To convert all worksheets to one HTML file, use the [HtmlViewOptions.setRenderToSinglePage](#) method. This feature is supported in both cases - when converting to HTML with embedded and external resources.

{{< tabs "example5">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("Personal_net_worth_calculator.xlsx")
// Convert all Excel worksheets to one HTML file.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page.html")
// Enable converting all worksheets to one file.
viewOptions.setRenderToSinglePage(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Convert all Excel worksheets to one HTML file](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/convert-all-excel-worksheets-to-html.png)


## Render spreadsheets as PDF

Create a [PdfViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a spreadsheet file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

### Convert an Excel workbook to PDF

{{< tabs "example6">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("invoice.xlsx")
// Convert the spreadsheet to PDF.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file to PDF](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/render-excel-to-pdf.png)

### Convert an Apple Numbers spreadsheet to PDF

{{< tabs "example7">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("Products.numbers")
// Convert the spreadsheet to PDF.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to PDF](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-pdf.png)

## Render spreadsheets as PNG

Create a [PngViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a spreadsheet file to PNG. Use the [PngViewOptions.setHeight](#) and [PngViewOptions.setWidth](#) methods to specify the output image size in pixels.

### Convert an Excel workbook to PNG

{{< tabs "example8">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("invoice.xlsx")
// Convert the spreadsheet to PNG.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.PngViewOptions("output_{0}.png")
// Set width and height.
viewOptions.setWidth(800)
viewOptions.setHeight(900)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render an Excel file to PNG](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/render-excel-to-png.png)

### Convert an Apple Numbers spreadsheet to PNG

{{< tabs "example9">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("Products.numbers")
// Convert the spreadsheet to PNG.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.PngViewOptions("output_{0}.png")
// Set width and height.
viewOptions.setWidth(800)
viewOptions.setHeight(900)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to PNG](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-png.png)

## Render spreadsheets as JPEG

Create a [JpgViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a spreadsheet file to JPEG. Use the [JpgViewOptions.setHeight](#) and [JpgViewOptions.setWidth](#) methods to specify the output image size in pixels.

### Convert an Excel workbook to JPEG

{{< tabs "example10">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("invoice.xlsx")
// Convert the spreadsheet to JPEG.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.JpgViewOptions("output_{0}.jpg")
// Set width and height.
viewOptions.setWidth(800)
viewOptions.setHeight(900)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Convert an Apple Numbers spreadsheet to JPEG

{{< tabs "example11">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("Products.numbers")
// Convert the spreadsheet to JPEG.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.JpgViewOptions("output_{0}.jpg")
// Set width and height.
viewOptions.setWidth(800)
viewOptions.setHeight(900)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Detect a CSV/TSV separator

If you load a CSV/TSV file to convert it to another format, use the [SpreadsheetOptions.setDetectSeparator](#) method for a target view to automatically detect a delimiter used to separate values in the source file.

GroupDocs.Viewer can detect the following separators:

* A comma (the default separator)
* A semicolon

{{< tabs "example12">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("sample.csv")
// Convert the spreadsheet to JPEG.
// {0} is replaced with the current page number in the file names.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html")
// Detect a CSV/TSV separator.
viewOptions.getSpreadsheetOptions().setDetectSeparator(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Get worksheet names

GroupDocs.Viewer allows you to obtain information about the source spreadsheet file. For example, you can retrieve worksheet names, as described below:

1. Create a [ViewInfoOptions](#) instance for a specific view.
2. Call the [Viewer.getViewInfo](#) method and pass the `ViewInfoOptions` instance to this method as a parameter.
3. Use the [getPages](#) method of the returned [ViewInfo](#) object to access to the list of worksheets and retrieve the worksheet names.

{{< tabs "example13">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("sample.xlsx")
const viewInfoOptions = ViewInfoOptions.forHtmlView()
// Call this method to create a single page for each worksheet.
viewInfoOptions.setSpreadsheetOptions(SpreadsheetOptions.forOnePagePerSheet())
const ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions)
// Print the worksheet names in the console window.
console.log("The document contains the following worksheets:")
console.log(info.toString())
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Retrieve worksheet names](/viewer/nodejs-java/images/rendering-basics/render-spreadsheets/retrieve-worksheet-names.png)

## See also

* [Split a worksheet into pages](/viewer/nodejs-java/split-worksheet-into-pages/)
* [Specify spreadsheet rendering options](/viewer/nodejs-java/specify-rendering-options/)
