---
id: adjust-text-overflow-in-cells
url: viewer/net/adjust-text-overflow-in-cells
title: Adjust text overflow in cells
weight: 1
description: "This article explains how to adjust text-overflow in cells when rendering Spreadsheets with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
![](viewer/net/images/adjust-text-overflow-in-cells.png)

When Spreadsheet is rendered overflowed text inside the cell overlays subsequent cells until it meets non-empty cell. GroupDocs.Viewer provides a setting to configure the mode which will be used for rendering overflowed text:

1. To set the overflowed text to be hidden, set [SpreadsheetOptions.TextOverflowMode](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class to *HideText* as shown in the example below.
2. To set the overflowed text to overlay subsequent cells until it meets non empty cell, set [SpreadsheetOptions.TextOverflowMode](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object to *OverlayIfNextIsEmpty*. This is a default value.
3. To set the overflowed text to overlay subsequent cells even they are not empty, set [SpreadsheetOptions.TextOverflowMode](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) objectto *Overlay*.
4. To expand the cell width to fit overflowed text, set [SpreadsheetOptions.TextOverflowMode](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object to *AutoFitColumn*.

NOTE: The same workflow is applicable for [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), and [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) classes;

## How to adjust text overflow in cells

The following steps are required to manage text-overflow:

* Instantiate the [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
* Set [HtmlViewOptions.SpreadsheetOptions.TextOverflowMode](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/spreadsheetoptions/properties/textoverflowmode) to *HideText;*
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code sample shows how to hide text in case it overflows cell.

```csharp
using (Viewer viewer = new Viewer("sample.xlsx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.TextOverflowMode = TextOverflowMode.HideText;
    viewer.View(viewOptions);
}
```
