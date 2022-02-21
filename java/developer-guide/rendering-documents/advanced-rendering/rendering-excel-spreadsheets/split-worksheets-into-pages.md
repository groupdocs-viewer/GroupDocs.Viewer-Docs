---
id: split-worksheets-into-pages
url: viewer/java/split-worksheets-into-pages
title: Split worksheets into pages
weight: 8
description: "This article explains how to split worksheets into pages when viewing Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: excel, worksheet, partial, rendering
productName: GroupDocs.Viewer for Java
hideChildren: False
---

In case you want to achieve better experience in viewing large Excel worksheets you can split worksheets into pages instead of rendering the whole worksheet. There are two options here that are shown in the image below.

![Split worksheets into pages](viewer/java/images/split-worksheets-into-pages/split-by-rows-and-split-by-rows-and-columns.png)

Each option may be a better choice depending on how many rows and columns your spreadsheets have. When a spreadsheet has a lot of columns it is preferable to split worksheet by rows and columns.

## How to split worksheet by rows only

By default, we're splitting worksheets by rows only. The default "rows per page" value is 40. So, when you have a workbook with a single worksheet with 100 rows you'll get three pages where the first page will contain the first 40 rows, the second page next 40 rows, and the third page the last 20 rows.

In the next example, we'll split the worksheet into two pages. We'll be using [this sample file](viewer/java/sample-files/split-worksheets-into-pages/two-pages.xlsx) and the following code:

```java
    try (Viewer viewer = new Viewer("two-pages.xlsx")) {
        int countRowsPerPage = 15;
    
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forSplitSheetIntoPages(countRowsPerPage));
    
        viewer.view(viewOptions);
    }
```

The following screenshot shows two output pages.

![Output HTML two pages](viewer/java/images/split-worksheets-into-pages/output-html-two-pages.png)

## How to split worksheet by rows and columns

Now, let's use [this sample file](viewer/java/sample-files/split-worksheets-into-pages/four-pages.xlsx) and split worksheet by rows and columns.

```java
    try (Viewer viewer = new Viewer("four-pages.xlsx")) {
        int countRowsPerPage = 15;
        int countColumnsPerPage = 7;
    
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forSplitSheetIntoPages(countRowsPerPage, countColumnsPerPage));
    
        viewer.view(viewOptions);
    }
```

After executing the code above we'll get four pages on the output.

![Output HTML four pages](viewer/java/images/split-worksheets-into-pages/output-html-four-pages.png)
