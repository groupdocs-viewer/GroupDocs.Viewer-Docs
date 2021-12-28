---
id: render-grid-lines
url: viewer/net/render-grid-lines
title: Render grid lines
weight: 3
description: "This article explains how to show grid-lines when rendering Spreadsheets with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer does not render grid lines of Spreadsheets by default. To enable rendering of grid lines you just need to set [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object [SpreadsheetOptions.RenderGridLines](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/rendergridlines) property to true in order to render the grid lines.

The following code sample shows how to enable rendering of grid lines.

```csharp
using (Viewer viewer = new Viewer("sample.xlsx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.RenderGridLines = true;
    viewer.View(viewOptions);
}
```

