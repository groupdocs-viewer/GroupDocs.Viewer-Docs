---
id: skip-rendering-of-empty-columns
url: viewer/net/skip-rendering-of-empty-columns
title: Skip rendering of empty columns
weight: 6
description: "This article explains how to hide empty columns when rendering Spreadsheets with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Sometimes Excel document contains information at the beginning of the worksheet and after that, it contains some count of empty (blank) columns. In case, if the number of empty columns is considerably huge, the rendering time increases and hence, it affects the performance.

## The Solution

To skip rendering of empty columns GroupDocs.Viewer provides [SkipEmptyColumns](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/skipemptycolumns) property of [SpreadsheetOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions) class, which allow omitting to render empty columns as shown in the sample below.

```csharp
using (Viewer viewer = new Viewer("sample.xlsx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.SkipEmptyColumns = true;
    viewer.View(viewOptions);
}
```

