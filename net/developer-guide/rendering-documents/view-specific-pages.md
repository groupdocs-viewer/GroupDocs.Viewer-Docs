---
id: view-specific-pages
url: viewer/net/view-specific-pages
title: Render specific pages
weight: 1
description: "This article explains how to view specific pages when processing documents with GroupDocs.Viewer within your .NET applications."
keywords: View specific pages with GroupDocs.Viewer for .NET API
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
With GroupDocs.Viewer you can specify a list of the document pages to be rendered. Follow the below steps to achieve this functionality.

* Instantiate the [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
* Instantiate the [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
* Pass desired page numbers to [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.
* The following code sample shows how to render N consecutive pages of a document.

The following code sample shows how to render the first and third pages of a document.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions, 1, 3);
}
```
