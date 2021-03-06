---
id: render-with-responsive-layout
url: viewer/net/render-with-responsive-layout
title: Render with responsive layout
weight: 1
description: "Learn how to render your document with responsive HTML layout that looks great on mobile and desktop devices."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

GroupDocs.Viewer also enables you to make your rendering into HTML look well across all types of devices. To achieve this, the API provides [RenderResponsive](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions/properties/renderresponsive) property of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class as shown in below sample code.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.RenderResponsive = true;
    viewer.View(viewOptions);
}
```
