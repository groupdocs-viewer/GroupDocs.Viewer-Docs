---
id: show-hidden-pages
url: viewer/net/show-hidden-pages
title: Render hidden pages
weight: 4
description: "Rendering hidden pages with GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Hidden pages are not rendered by default. In order to include them into the rendering GroupDocs.Viewer provides ``RenderHiddenPages` property of the `ViewOptions` class.

This feature is supported for:

* Diagrams with hidden pages.
* Presentations with hidden slides.
* Spreadsheets with hidden worksheets.

The following code sample shows how enable rendering of hidden pages.

```csharp
using (Viewer viewer = new Viewer("sample.pptx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.RenderHiddenPages = true;
    viewer.View(viewOptions); 
}
```
