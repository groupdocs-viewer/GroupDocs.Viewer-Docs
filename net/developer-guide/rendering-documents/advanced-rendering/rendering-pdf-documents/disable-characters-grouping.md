---
id: disable-characters-grouping
url: viewer/net/disable-characters-grouping
title: Disable characters grouping
weight: 2
description: "This article explains how to disable characters grouping when rendering PDF Documents with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
To improve content positioning when rendering into PDF GroupDocs.Viewer provides [PdfOptions.DisableCharsGrouping](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/disablecharsgrouping) as shown below:

```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.PdfOptions.DisableCharsGrouping = true;

    viewer.View(viewOptions);
}
```
