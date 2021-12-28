---
id: render-print-areas
url: viewer/java/render-print-areas
title: Render print areas
weight: 5
description: "This article explains how to view Spreadsheet print areas with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Spreadsheet document allows to set a print area if you want to print a specific section on a worksheet. To set print area in Excel click at _Page Layout > Print Area > Set Print Area_ menu item as it shown on the screenshot below.

![Setting print area in Excel](viewer/java/images/render-print-areas/set-print-area-in-excel.png)

Than you can print the workbook by clicking at _File > Print_ and the print area we selected at the previous step will be printed as it shown in the print preview.

![Printing print area in Excel](viewer/java/images/render-print-areas/printing-print-area-in-excel.png)

To perform the same action programmatically with [GroupDocs.Viewer](https://products.groupdocs.com/viewer) set `SpreadsheetOptions` to `SpreadsheetOptions.forRenderingPrintArea()` and call [view(...)](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method. Let's take [monthly-budget.xlsx](viewer/java/sample-files/render-print-areas/monthly-budget.xlsx) and render print area by running the following code.

```java
    try (Viewer viewer = new Viewer("monthly-budget.xlsx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setSpreadsheetOptions(SpreadsheetOptions.forRenderingPrintArea());
        viewer.view(viewOptions);
    }
```

The Viewer will produce single HTML file with the print area we selected at the beginning.

![Rendered print area](viewer/java/images/render-print-areas/rendered-print-area.png)

The same applies when rendering to PNG, JPG, and PDF formats.

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