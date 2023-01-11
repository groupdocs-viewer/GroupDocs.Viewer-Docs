---
id: render-with-responsive-layout
url: viewer/net/render-with-responsive-layout
title: Render with responsive layout
weight: 1
description: "Learn how to render your document with responsive HTML layout that looks great on mobile and desktop devices."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

Responsive design aims to make web pages render well on a variety of devices. GroupDocs.Viewer provides the [RenderResponsive](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions/properties/renderresponsive) property of [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class to render HTML pages with responsive layout. 

The following code snippet shows how to render a .docx document to HTML with responsive layout:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    // Render the file with responsive layout.
    viewOptions.RenderResponsive = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}