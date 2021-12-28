---
id: render-hidden-columns-and-rows
url: viewer/net/render-hidden-columns-and-rows
title: Render hidden columns and rows
weight: 4
description: "This article explains how to show hidden rows and cells when rendering Spreadsheets with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Sometimes Excel document may contain hidden columns and rows (as shown in the image below). GroupDocs.Viewer doesn't render hidden columns and rows by default. However, there may be the case when you want to control the inclusion of hidden content in the rendering results.

![](viewer/net/images/render-hidden-columns-and-rows.png)

## The Solution

GroupDocs.Viewer provides [RenderHiddenRows](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/renderhiddenrows) and [RenderHiddenColumns](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/renderhiddencolumns)options in [SpreadsheetOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions) class which enables rendering hidden rows and columns as shown in the following code samples.

```csharp
using (Viewer viewer = new Viewer("sample.xlsx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.RenderHiddenColumns = true;
    viewOptions.SpreadsheetOptions.RenderHiddenRows = true;
    viewer.View(viewOptions);
}
```

