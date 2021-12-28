---
id: separator-detection
url: viewer/net/separator-detection
title: Detect CSV/TSV separator
weight: 100
description: "This article explains how to use separator detection for CSV/TSV files with GroupDocs.Viewer within your .NET applications."
keywords: csv tsv separator
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Since 21.7 version GroupDocs.Viewer enables you to auto-detect separator for TSV/CSV files:

When [DetectSeparator](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/detectseparator) property is enabled (disabled by default) GroupDocs.Viewer examines your TSV/CSV files for the right separator. \
This feature testing two separators: \
, - by default \
; - alternative separator

The following code snippet shows how to set default font name.

```csharp
using (Viewer viewer = new Viewer(@"sample.csv"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.DetectSeparator = true;
    viewer.View(viewOptions);
}          
```

