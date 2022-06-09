---
id: rendering-to-html
url: viewer/net/rendering-to-html
title: Rendering to HTML
weight: 11
description: "With GroupDocs.Viewer for .NET you can render files to HTML format. As a simple usecase please see how easily you can convert Microsoft Word to clean html."
keywords: render files, rendering pdf, convert word to clean html
productName: GroupDocs.Viewer for .NET
hideChildren: True
toc: True
---

When rendering to HTML  all pages of the source documents are rendered as separate HTML documents.

GroupDocs.Viewer for .NET provides two resources management options for CSS, fonts, images, etc.:

* Rendering to **HTML with external resources** - stores page resources near to HTML which allows to reuse common resources across separate pages and dramatically reduce page size and loading speed.
* Rendering to **HTML with embedded resources** - integrates page resources into HTML and makes each document page self-sufficient. The drawback is that page size and loading speed may decrease.

## Rendering to HTML with external resources

The following code shows how to render DOCX to HTML with external resources.  

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
   HtmlViewOptions viewOptions = HtmlViewOptions.ForExternalResources();
   viewer.View(viewOptions);
}
```

## Rendering to HTML with embedded resources

The following code shows how to render document to HTML with embedded resources.  

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
