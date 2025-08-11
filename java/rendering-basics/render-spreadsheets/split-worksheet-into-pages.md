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

**Spreadsheet** document, also known as a _workbook_, is basically a set of _worksheets_, represented as tabs in most table processing software like Microsoft Excel. Some spreadsheet formats may have only a single worksheet; this includes, for example, all text-based separator-delimited formats ([CSV](https://docs.fileformat.com/spreadsheet/csv/), [TSV](https://docs.fileformat.com/spreadsheet/tsv/) etc.).

Size (dimensions) of a worksheet may be big, and even huge. For example, the now obsolete [XLS](https://docs.fileformat.com/spreadsheet/xls/) format supports [max 256 columns and 65536 rows](https://superuser.com/questions/366468/what-is-the-maximum-allowed-rows-in-a-microsoft-excel-xls-or-xlsx). The newer [XLSX (Office Open XML Workbook)](https://docs.fileformat.com/spreadsheet/xlsx/) format and the Microsoft Excel both [support up to 16384 columns and 1048576 rows](https://support.microsoft.com/en-us/office/excel-specifications-and-limits-1672b34d-7043-467e-8e27-269d656771c3).

On the other hand, the principle of the GroupDocs.Viewer is to render (convert) input document formats (including the Spreadsheet documents) to the pages, where the page may be defined as a rectangular area of relatively small size, comparable to the area of display, or A4 paper. And here a potentially huge worksheet size has a conflict with relatively small page size. How to display a worksheet with 1 million rows on a single page? Maybe split it on several pages, but if yes, then how? This question has no single direct answer, there are different ways to solve that, and this article explains all the ways available using the GroupDocs.Viewer.

## Render a worksheet on one page

The most simple way — render the content of the whole worksheet on a single page, where page size will be adjusted to fit the whole amount of rows and columns. This is a good choice when it is already known that the worksheet has a small size. However, if a worksheet is really big, this approach may lead to awful results. In particular, when rendering to the HTML format, the resultant HTML document may be huge, tens or even hundreds of [MiB](https://en.wikipedia.org/wiki/Byte#Multiple-byte_units), which may cause troubles while viewing such big files in the web-browsers. When rendering to the JPEG format, things may be even worse if the width or height will overcome the max limit of 65535 pixels. So use this mode deliberately.

For displaying a whole worksheet in one page call the [`SpreadsheetOptions.forOnePagePerSheet()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forOnePagePerSheet--) static method, which returns an instance of the [`SpreadsheetOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/), already tuned for this. Then assign this instance to the [`ViewOptions.getSpreadsheetOptions()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#getSpreadsheetOptions--) property and view the spreadsheet using this view options instance.

The following example takes a spreadsheet on input, and converts it to the resultant PDF file, where every worksheet from input XLSX is rendered to one page in output PDF.

{{< tabs "code-example">}}
{{< tab "RenderAWorksheetOnOnePage.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.SpreadsheetOptions;

public class RenderAWorksheetOnOnePage {
    public static void render() {
    // Create PDF view options for rendering to PDF
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");

    // Create spreadsheet options to render each worksheet to one page
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forOnePagePerSheet());

    // Create a Viewer instance and specify the input XLSX
        try (Viewer viewer = new Viewer("Products.xlsx"))
        {
            // Render the XLSX to PDF
            viewer.view(viewOptions);
        }
    }

    public static void main(String[] args){
        render();
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The screenshot below illustrates the result. The output PDF file contains one page (because input XLSX has one worksheet) that displays all worksheet data.

![Fit sheet on one page](/viewer/java/images/rendering-basics/render-spreadsheets/render-on-one-page.png)

## Split worksheet by page breaks

Microsoft Excel itself adds automatic page breaks based on paper size and page settings, such as orientation and margins. If you switch to the _"View"_ tab and enter the _"Page Break Preview"_ mode, you can see blue lines that divide the whole worksheet area on rectangular chunks, each of them is labeled as "Page 1", "Page 2", and so on. This is how Microsoft Excel "suggests" to split a worksheet onto pages.

In the image below, the vertical page break is inserted after the column “**E**”, and the horizontal page break is located under the row “**30**”. If you go to the _“Page Layout”_ tab, and then change the values of _“Orientation”_ and/or _“Size”_ tiles, you can see how Microsoft Excel will recalculate page areas on the fly.

![Preview page breaks in Microsoft Excel](/viewer/java/images/rendering-basics/render-spreadsheets/excel-page-break-preview.png)

For achieving the same behavior with GroupDocs.Viewer call the [`SpreadsheetOptions.forRenderingByPageBreaks()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forRenderingByPageBreaks--) static method, and then assign its value to the [`ViewOptions.getSpreadsheetOptions()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#getSpreadsheetOptions--) property, as in the first example. The following code example shows this:

{{< tabs "code-example1">}}
{{< tab "SplitWorksheetByPageBreaks.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.SpreadsheetOptions;

public class SplitWorksheetByPageBreaks {
    public static void render() {
    // Create PDF view options for rendering to PDF
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");

    // Create spreadsheet options to split worksheet onto pages by page breaks
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingByPageBreaks());

    // Create a Viewer instance and specify the input XLSX
        try (Viewer viewer = new Viewer("Products.xlsx"))
        {
            // Render the XLSX to PDF
            viewer.view(viewOptions);
        }
    }

    public static void main(String[] args){
        render();
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result — you can compare it with a screenshot above and note that worksheet content is splitted exactly as Microsoft Excel suggests.

![Render a worksheet to PDF based on page breaks](/viewer/java/images/rendering-basics/render-spreadsheets/render-by-page-breaks.png)

## Render only print area

Along with the page breaks, the Microsoft Excel has a “Print Area” concept. Print Area is actually one or more cell ranges in a worksheet, which are designated for printing, while any content outside of the Print Area will not be printed at all. For adding some cell range to the Print Area, go to the “Page Layout" tab, click on the _“Print Area”_ button and then click on _“Set Print Area”_ item (see screenshot below). In order to add another cell range to the Print Area, select this new range, click on the _“Print Area”_ button and then click on _“Add to Print Area”_ item at this time. In the “Page Break Preview” mode you can see all cell ranges in the Print Area.

![Specify a print area in Microsoft Excel](/viewer/java/images/rendering-basics/render-spreadsheets/excel-set-print-area.png)

GroupDocs.Viewer also supports this option — in that case each cell range within the print area will be placed on a separate page. For achieving this call the [`SpreadsheetOptions.forRenderingPrintArea()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forRenderingPrintArea--) static method and assign the returned [`SpreadsheetOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/) instance to the [`ViewOptions.getSpreadsheetOptions()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#getSpreadsheetOptions--) property. The following example shows how to do this.

{{< tabs "code-example2">}}
{{< tab "RenderOnlyPrintArea.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.SpreadsheetOptions;

public class RenderOnlyPrintArea {
    public static void render() {
    // Create PDF view options for rendering to PDF
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");

    // Create spreadsheet options to render a Print Area only
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingPrintArea());

    // Create a Viewer instance and specify the input XLSX
        try (Viewer viewer = new Viewer("Invoice.xlsx"))
        {
            // Render the XLSX to PDF
            viewer.view(viewOptions);
        }
    }

    public static void main(String[] args){
        render();
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render the print area to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/render-print-area.png)

## Render print area and split by page breaks

GroupDocs.Viewer has a unique feature — combining the Print Area and page breaks in the single mode. In this case GroupDocs.Viewer takes into account all cell ranges of print area and page breaks in the worksheet and applies them simultaneously to split a worksheet onto pages.

For doing that call the [`SpreadsheetOptions.forRenderingPrintAreaAndPageBreaks()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forRenderingPrintAreaAndPageBreaks--) static method and assign the returned [`SpreadsheetOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/) instance to the [`ViewOptions.getSpreadsheetOptions()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#getSpreadsheetOptions--) property.

In the following screenshot the red line shows the print area, and the blue line shows page breaks.

![Specify page breaks and a print area in Microsoft Excel](/viewer/java/images/rendering-basics/render-spreadsheets/page-breake-vs-print-area.png)

The following example renders the Microsoft Excel spreadsheet using page breaks and print areas displayed in the screenshot above to PDF:

{{< tabs "code-example3">}}
{{< tab "RenderPrintAreaAndSplitByPageBreaks.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.SpreadsheetOptions;

public class RenderPrintAreaAndSplitByPageBreaks {
    public static void render() {
    // Create PDF view options for rendering to PDF
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");

    // Render a Print Area and split by page breaks
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingPrintAreaAndPageBreaks());

    // Create a Viewer instance and specify the input XLSX
        try (Viewer viewer = new Viewer("Products.xlsx"))
        {
            // Render the XLSX to PDF
            viewer.view(viewOptions);
        }
    }

    public static void main(String[] args){
        render();
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The screenshot below illustrates the result:

![Render page breaks and a print area to PDF](/viewer/java/images/rendering-basics/render-spreadsheets/pdf-result.png)

## Split worksheet into pages manually by rows and columns

Sometimes none of the splitting methods, described above, is acceptable, or the spreadsheet has a format that does not support page breaks and Print Areas, for example, the text-based CSV. For such cases GroupDocs.Viewer allows to manually specify the number of rows and/or number of columns that should be present on every page. In short, the difference between splitting by rows only vs. splitting by rows and columns is illustrated on screenshot below.

![Split by rows only vs. split by rows and columns](/viewer/java/sample-files/split-worksheets-into-pages/split-by-rows-and-split-by-rows-and-columns.png)

### Split worksheet into pages only by rows

When a worksheet is tall, but narrow, i.e. it has some moderate amount of columns, but huge amount of rows, it is ideal to split such a worksheet horizontally, by rows. In this case the user should specify a number of rows per single page in the [`SpreadsheetOptions.forSplitSheetIntoPages(int countRowsPerPage)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forSplitSheetIntoPages-int-) static method, and then all as usual. The number of rows per page must be strictly greater than zero. The code sample is below, it specifies 15 rows per one page.

{{< tabs "code-example4">}}
{{< tab "SplitWorksheetIntoPagesOnlyByRows.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.SpreadsheetOptions;

public class SplitWorksheetIntoPagesOnlyByRows {
    public static void render() {
    // Create PDF view options for rendering to PDF
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");

    // Specify number of rows for every page
        int rowsPerPage = 15;

    // Create spreadsheet options to split worksheet by number of rows
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forSplitSheetIntoPages(rowsPerPage));

    // Create a Viewer instance and specify the input XLSX
        try (Viewer viewer = new Viewer("two-pages.xlsx"))
        {
            // Render the XLSX to PDF
            viewer.view(viewOptions);
        }
    }

    public static void main(String[] args){
        render();
    }
}
```
{{< /tab >}}
{{< tab "two-pages.xlsx" >}}  
{{< tab-text >}}
`two-pages.xlsx` is sample file used in this example. Click [here](/viewer/java/sample-files/split-worksheets-into-pages/two-pages.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
{{< tab-text >}}
`output.pdf` is rendered Pdf document. Click [here](/viewer/java/sample-files/split-worksheets-into-pages/SplitWorksheetIntoPagesOnlyByRows/output.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The screenshot below demonstrates the original XLSX spreadsheet, conditionally divided onto chucks with 15 rows in each, and output PDF file, produced by the GroupDocs.Viewer.

![Break a worksheet into two pages](/viewer/java/images/rendering-basics/render-spreadsheets/render-two-pages.png)

### Split worksheet into pages by rows and columns

When a worksheet is tall and wide, i.e. it has a big amount of columns and rows, then need to split such a worksheet horizontally and vertically simultaneously. The previously mentioned [`forSplitSheetIntoPages`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forSplitSheetIntoPages-int-) static method has an overload, that obtained two arguments — number of rows and number of columns: [`forSplitSheetIntoPages(int countRowsPerPage, int countColumnsPerPage)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/spreadsheetoptions/#forSplitSheetIntoPages-int-int-). The number of rows and columns per page must be strictly greater than zero. The following sample demonstrates splitting the worksheets into pages with 15 rows and 7 columns per each. This code sample uses a file "`four-pages.xlsx`", that can be downloaded [here](/viewer/java/sample-files/split-worksheets-into-pages/four-pages.xlsx).

{{< tabs "code-example5">}}
{{< tab "SplitWorksheetIntoPagesByRowsAndColumns.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.SpreadsheetOptions;

public class SplitWorksheetIntoPagesByRowsAndColumns {
    public static void render() {
    // Create PDF view options for rendering to PDF
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");

    // Specify number of rows and columns for every page
        int rowsPerPage = 15;
        int columnsPerPage = 7;

    // Create spreadsheet options to split worksheet by number of rows and columns
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forSplitSheetIntoPages(rowsPerPage, columnsPerPage));

    // Create a Viewer instance and specify the input XLSX
        try (Viewer viewer = new Viewer("four-pages.xlsx"))
        {
            // Render the XLSX to PDF
            viewer.view(viewOptions);
        }
    }

    public static void main(String[] args){
        render();
    }
}
```
{{< /tab >}}
{{< tab "four-pages.xlsx" >}}  
{{< tab-text >}}
`four-pages.xlsx` is sample file used in this example. Click [here](/viewer/java/sample-files/split-worksheets-into-pages/four-pages.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
{{< tab-text >}}
`output.pdf` is rendered Pdf document. Click [here](/viewer/java/sample-files/split-worksheets-into-pages/SplitWorksheetIntoPagesByRowsAndColumns/output.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The screenshot below demonstrates the original XLSX spreadsheet, conditionally divided onto chucks with 15 rows and 7 columns (A-G and H-N) in each, and output PDF file, produced by the GroupDocs.Viewer.

![Break a worksheet into four pages](/viewer/java/images/rendering-basics/render-spreadsheets/render-four-pages.png)

## Conclusion

This article shows that GroupDocs.Viewer provides different ways to split a worksheet into pages in order to satisfy the widest variety of use-cases. Please note that all these features were added to the GroupDocs.Viewer gradually, piece by piece, so if you're using some obsolete version of the library, released before year 2023, some of the described features may be missing. Also keep in mind that we're open to new suggestions and ideas how a worksheet can be splitted on pages, so you are welcome to share your thoughts on our [forum](https://forum.groupdocs.com/c/viewer/9).