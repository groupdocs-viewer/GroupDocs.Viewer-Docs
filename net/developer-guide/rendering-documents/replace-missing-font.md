---
id: replace-missing-font
url: viewer/net/replace-missing-font
title: Replace missing font
weight: 7
description: "This article explains how to replace missing font when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: missing font,rendering documents
productName: GroupDocs.Viewer for .NET
hideChildren: False
aliases:
    - /viewer/net/how-to-substitute-missing-font-when-converting-presentations/
---
GroupDocs.Viewer enables you to set default font name which may be useful in following cases:

1. You want to generally specify the default font to fall back on if a particular font in a document cannot be found during rendering;
2. The document uses a font that contains non-English characters and the you want to make sure that any missing font is replaced with one which has the same character set available.

Following code snippet shows how to set default font name.

```csharp
using (Viewer viewer = new Viewer(@"sample.pptx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.DefaultFontName = "Courier New";
    viewer.View(viewOptions);
}          
```
