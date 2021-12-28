---
id: enable-layered-rendering
url: viewer/net/enable-layered-rendering
title: Layered rendering
weight: 4
description: "This article explains how to enable layered rendering when rendering PDF Documents with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When rendering into HTML GroupDocs.Viewer renders text and graphics as a single layer that improves performance and reduces HTML document size. To improve content positioning wen rendering multi-layered PDF document GroupDocs.Viewer provides [EnableLayeredRendering](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/enablelayeredrendering) option that enables rendering of text and graphics according to z-order in original PDF document when rendering into HTML.

{{< alert style="info" >}}This option is supported when rendering to HTML only.{{< /alert >}}

Following code sample demonstrates how to enable layered rendering.

```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.PdfOptions.EnableLayeredRendering = true;

    viewer.View(viewOptions);
}
```
