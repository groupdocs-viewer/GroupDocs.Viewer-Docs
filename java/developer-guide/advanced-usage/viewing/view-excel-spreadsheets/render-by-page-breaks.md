---
id: render-spreadsheets-by-page-breaks
url: viewer/java/render-spreadsheets-by-page-breaks
title: Render spreadsheets by page breaks
weight: 9
description: "This article explains how to render Spreadsheet by page breaks with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When printing spreadsheets with a lot of data sheets are automatically broken into pages to fit the paper size and keep printed content readable. To preview the page breaks in Excel navigate to `View` and click `Page Break Preview` as it shown on the screenshot.

![Page break preview in Excel](viewer/java/images/render-spreadsheets-by-page-breaks/page-break-preview-in-excel.png)

In case you print the workbook by clicking at `File > Print` and there would be two pages in the print preview.

![Printing spreadsheet in Excel](viewer/java/images/render-spreadsheets-by-page-breaks/printing-spreadsheet-in-excel.png)

To perform the same action programmatically with [GroupDocs.Viewer](https://products.groupdocs.com/viewer) set `SpreadsheetOptions` to `SpreadsheetOptions.forRenderingByPageBreaks()` and call [view(...)](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method. Let's take [page-breaks.xlsx](viewer/java/sample-files/render-spreadsheets-by-page-breaks/page-breaks.xlsx) and render it to PDF by running the following code.

```java
    try (Viewer viewer = new Viewer("page-breaks.xlsx")) {
        PdfViewOptions viewOptions = new PdfViewOptions();
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingByPageBreaks());

        // Enable rendering gird lines and headings to check that proper areas are rendered
        viewOptions.getSpreadsheetOptions().setRenderGridLines(true);
        viewOptions.getSpreadsheetOptions().setRenderHeadings(true);

        viewer.view(viewOptions);
    }
```

We'll get one PDF file with two pages that are corresponds to pages highlighted by Excel on the first screenshot.

![PDF rendered by page breaks](viewer/java/images/render-spreadsheets-by-page-breaks/rendered-by-page-breaks.png)

The same applies when rendering to HTML, JPEG, and PNG formats.

## More resources
### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
*   [GroupDocs.Viewer for .NET samples, plugins and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-MVC)

### Free Online App
Along with full-featured Java library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.