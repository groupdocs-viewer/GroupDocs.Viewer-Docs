---
id: render-print-areas
url: viewer/net/render-print-areas
title: Render print areas
weight: 5
description: "This article explains how to render Spreadsheet print areas with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Spreadsheet document allows to set a print area if you want to print a specific section on a worksheet. To set print area in Excel click at _Page Layout > Print Area > Set Print Area_ menu item as it shown on the screenshot below.

![Setting print area in Excel](viewer/net/images/render-print-areas/set-print-area-in-excel.png)

Than you can print the workbook by clicking at _File > Print_ and the print area we selected at the previous step will be printed as it shown in the print preview.

![Printing print area in Excel](viewer/net/images/render-print-areas/printing-print-area-in-excel.png)

To perform the same action programmatically with GroupDocs.Viewer set _SpreadsheetOptions_ to _SpreadsheetOptions.ForRenderingPrintArea()_ and call _View_ method. Let's take [monthly-budget.xlsx](viewer/net/sample-files/render-print-areas/monthly-budget.xlsx) and render print area by running the following code.

```csharp
using (Viewer viewer = new Viewer("monthly-budget.xlsx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions = SpreadsheetOptions.ForRenderingPrintArea();

    viewer.View(viewOptions);
}
```

The Viewer will produce single HTML file with the print area we selected at the beginning.

![Rendered print area](viewer/net/images/render-print-areas/rendered-print-area.png)

The same applies when rendering to PNG, JPG, and PDF formats.

