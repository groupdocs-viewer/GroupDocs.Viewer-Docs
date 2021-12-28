---
id: skip-rendering-of-empty-rows
url: viewer/net/skip-rendering-of-empty-rows
title: Skip rendering of empty rows
weight: 7
description: "This article explains how to hide empty rows when rendering Spreadsheets with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Sometimes Excel document contains information at the beginning of the worksheet and after that, it contains some count of empty (blank) rows. In case, if the number of empty rows is considerably huge, the rendering time increases and hence, it affects the performance.

## The Solution

To skip rendering of empty rows GroupDocs.Viewer provides [SkipEmptyRows](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/skipemptyrows) property of [SpreadsheetOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions) class, which allow omitting to render empty rows as shown in the sample below:

```csharp
using (Viewer viewer = new Viewer("sample.xlsx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.SkipEmptyRows = true;
    viewer.View(viewOptions);
}
```

