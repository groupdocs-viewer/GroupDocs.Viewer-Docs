---
id: enable-font-hinting
url: viewer/net/enable-font-hinting
title: Font hinting
weight: 3
description: "This article explains how to enable font hinting when rendering PDF Documents with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
To adjust the display of an outline font ([learn more about font hinting](https://en.wikipedia.org/wiki/Font_hinting)) when rendering PDF documents into image GroupDocs.Viewer provides [PdfOptions.EnableFontHinting](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/enablefonthinting) setting as shown below:

NOTE: this option is supported when rendering into PNG and JPG.

```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    PngViewOptions viewOptions = new PngViewOptions();
    viewOptions.PdfOptions.EnableFontHinting = true;

    viewer.View(viewOptions);
}
```
