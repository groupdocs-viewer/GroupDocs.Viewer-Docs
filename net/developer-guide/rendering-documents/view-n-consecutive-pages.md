---
id: view-n-consecutive-pages
url: viewer/net/view-n-consecutive-pages
title: Render N consecutive pages
weight: 2
description: "This article explains how to view n consecutive pages when processing documents with GroupDocs.Viewer within your .NET applications."
keywords: view n consecutive pages, consecutive pages
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer provides the feature to render N consecutive pages. Follow the below steps to render N consecutive pages.

* Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
* Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
* Pass page numbers array to [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code sample shows how to render N consecutive pages of a document.

```csharp
 int[] pageNumbers = new int[] { 1, 2, 3 };
 
 using (Viewer viewer = new Viewer("sample.docx"))
 {
     HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
     viewer.View(viewOptions, pageNumbers);
 }
```
