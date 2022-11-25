---
id: render-excel-and-apple-numbers-spreadsheets
url: viewer/java/render-excel-and-apple-numbers-spreadsheets
title: Render Excel and Apple Numbers spreadsheets as HTML, PDF, and image files
linkTitle: Render Excel and Apple Numbers spreadsheets
weight: 10
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert Excel workbooks and Apple Numbers spreadsheets to HTML, PDF, PNG, and JPEG formats."
keywords: excel to pdf, excel to html, excel to jpg, xlsx to pdf, xls to pdf, excel to pdf online, convert xls to pdf, convert xlsx to pdf
productName: GroupDocs.Viewer for Java
toc: True
hideChildren: False
aliases:
    - /viewer/java/view-excel-spreadsheets/
    - /viewer/java/how-to-convert-and-view-apple-numbers-files/
    - /viewer/java/how-to-convert-and-view-excel-spreadsheetml-files/
    - /viewer/java/separator-detection/
    - /viewer/java/how-to-get-the-names-of-the-worksheets/
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows you to render your spreadsheet files in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Excel or other spreadsheet programs to load and view Excel documents within your Java application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class instance. Pass a spreadsheet file you want to view to the class constructor. You can load the document from a file or stream. Call one of the [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/excel" >}} {{< icon "gdoc_person" >}} View Excel files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Spreadsheet file formats

GroupDocs.Viewer supports the following file formats:

* {{% closedlink title="Microsoft Excel Workbook" href="https://docs.fileformat.com/spreadsheet/xlsx" %}} (.XLSX)
* {{% closedlink title="Microsoft Excel 97-2003 Workbook" href="https://docs.fileformat.com/spreadsheet/xls" %}} (.XLS)
* {{% closedlink title="Microsoft Excel Binary Workbook" href="https://docs.fileformat.com/spreadsheet/xlsb" %}} (.XLSB)
* {{% closedlink title="Microsoft Excel Macro-Enabled Workbook" href="https://docs.fileformat.com/spreadsheet/xlsm" %}} (.XLSM)
* {{% closedlink title="Microsoft Excel Template" href="https://docs.fileformat.com/spreadsheet/xltx" %}} (.XLTX)
* {{% closedlink title="Microsoft Excel 97-2003 Template" href="https://docs.fileformat.com/spreadsheet/xlt" %}} (.XLT)
* {{% closedlink title="Microsoft Excel Macro-Enabled Template" href="https://docs.fileformat.com/spreadsheet/xltm" %}} (.XLTM)
* {{% closedlink title="Microsoft Excel Add-In" href="https://docs.fileformat.com/spreadsheet/xlam/" %}} (.XLAM)
* {{% closedlink title="XML Spreadsheet 2003" href="https://en.wikipedia.org/wiki/SpreadsheetML" %}} (.XML)
* {{% closedlink title="OpenDocument Spreadsheet" href="https://docs.fileformat.com/spreadsheet/ods" %}} (.ODS)
* {{% closedlink title="OpenDocument Spreadsheet Template" href="https://docs.fileformat.com/spreadsheet/ots/" %}} (.OTS)
* {{% closedlink title="OpenDocument Flat XML Spreadsheet" href="https://docs.fileformat.com/spreadsheet/fods/" %}} (.FODS)
* {{% closedlink title="Comma Separated Values File" href="https://docs.fileformat.com/spreadsheet/csv" %}} (.CSV)
* {{% closedlink title="Tab Separated Values File" href="https://docs.fileformat.com/spreadsheet/tsv" %}} (.TSV)
* {{% closedlink title="StarOffice Calc Spreadsheet" href="https://docs.fileformat.com/spreadsheet/sxc/" %}} (.SXC)
* {{% closedlink title="Apple Numbers Spreadsheet" href="https://docs.fileformat.com/spreadsheet/numbers" %}} (.NUMBERS)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render spreadsheets as HTML

Create a [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) class instance and pass it to the [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method to convert a spreadsheet file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#forEmbeddedResources()) method and specify the output file name.

**Example  1: Convert an Excel workbook to HTML**

{{< tabs "example1">}}
{{< tab "Java" >}}
```Java
try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to HTML.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file to HTML](/viewer/java/images/rendering-basics/render-spreadsheets/convert-excel-to-html.png)

**Example  2: Convert an Apple Numbers spreadsheet to HTML**

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("Products.numbers")) {
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to HTML](/viewer/java/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#forExternalResources(java.lang.String,%20java.lang.String,%20java.lang.String)) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

**Example  1: Convert an Excel workbook to HTML**

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
try(Viewer viewer = new Viewer("invoice.xlsx")){
    // Convert the spreadsheet to HTML.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html","page_{0}/resource_{0}_{1}","page_{0}/resource_{0}_{1}");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

**Example  2: Convert an Apple Numbers spreadsheet to HTML**

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
try(Viewer viewer = new Viewer("Products.numbers")){
    // Convert the spreadsheet to HTML.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html","page_{0}/resource_{0}_{1}","page_{0}/resource_{0}_{1}");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/java/images/rendering-basics/render-spreadsheets/render-excel-to-html-external-resources.png)

## Render spreadsheets as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class instance and pass it to the [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method to convert a spreadsheet file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "/viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-pdf-documents/_index.md" >}}).

**Example  1: Convert an Excel workbook to PDF**

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
try(Viewer viewer = new Viewer("invoice.xlsx")){
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Excel file to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/render-excel-to-pdf.png)

**Example  2: Convert an Apple Numbers spreadsheet to PDF**

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
try(Viewer viewer = new Viewer("Products.numbers")) {
    // Convert the spreadsheet to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-pdf.png)

## Render spreadsheets as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) class instance and pass it to the [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method to convert a spreadsheet file to PNG. Use the [PngViewOptions.setHeight(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions#setHeight(int)) and [PngViewOptions.setWidth(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions#setWidth(int)) properties to specify the output image size in pixels.

**Example  1: Convert an Excel workbook to PNG**

{{< tabs "example7">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to PNG.
    // {0} is replaced with the current page number in the file names.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.setWidth(800);
    viewOptions.setHeight(900);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render an Excel file to PNG](/viewer/java/images/rendering-basics/render-spreadsheets/render-excel-to-png.png)

**Example  2: Convert an Apple Numbers spreadsheet to PNG**

{{< tabs "example8">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("Products.numbers")) {
    // Convert the spreadsheet to PNG.
    // {0} is replaced with the current page number in the file names.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.setWidth(800);
    viewOptions.setHeight(900);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an Apple Numbers spreadsheet to PNG](/viewer/java/images/rendering-basics/render-spreadsheets/render-apple-numbers-to-png.png)

## Render spreadsheets as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) class instance and pass it to the [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method to convert a spreadsheet file to JPEG. Use the [JpgViewOptions.setHeight(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setHeight(int)) and [JpgViewOptions.setWidth(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setWidth(int)) properties to specify the output image size in pixels.

**Example  1: Convert an Excel workbook to JPEG**

{{< tabs "example9">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("invoice.xlsx")) {
    // Convert the spreadsheet to JPEG.
    // {0} is replaced with the current page number in the file names.
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.setWidth(800);
    viewOptions.setHeight(900);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

**Example  2: Convert an Apple Numbers spreadsheet to JPEG**

{{< tabs "example10">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("Products.numbers")) {
    // Convert the spreadsheet to JPEG.
    // {0} is replaced with the current page number in the file names.
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.setWidth(800);
    viewOptions.setHeight(900);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Detect a CSV/TSV separator

If you load a CSV/TSV file to convert it to another format, enable the [SpreadsheetOptions.setDetectSeparator(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setDetectSeparator(boolean)) property for a target view to automatically detect a delimiter used to separate values in the source file.

GroupDocs.Viewer can detect the following separators:

* A comma (the default separator)
* A semicolon

{{< tabs "example11">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.csv")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewOptions.getSpreadsheetOptions().setDetectSeparator(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Obtain worksheet names

GroupDocs.Viewer allows you to obtain information about the source spreadsheet file. For example, you can retrieve worksheet names, as described below:

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions) instance for a specific view.
2. Call the [Viewer.getViewInfo(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method and pass the `ViewInfoOptions` instance to this method as a parameter.
3. Use the [getPages()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/ViewInfo#getPages()) method of the returned [ViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/ViewInfo) object to iterate through the list of worksheets and retrieve the worksheet names.

{{< tabs "example12">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.xlsx")) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    // Call this method to create a single page for each worksheet.
    viewInfoOptions.setSpreadsheetOptions(SpreadsheetOptions.forOnePagePerSheet());

    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    // Print the worksheet names in the console window.
    System.out.println("The document contains the following worksheets:");
    for (Page page : viewInfo.getPages()) {
        System.out.println(" - Worksheet {page.Number}: '" + page.getName() + "'");
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![Retrieve worksheet names](/viewer/java/images/rendering-basics/render-spreadsheets/retrieve-worksheet-names.png)

