---
id: render-tracked-changes
url: viewer/net/render-tracked-changes
title: Render tracked changes
weight: 1
description: "This article explains how to show tracked changes when rendering Word Processing Documents with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer does not render tracked changes of Word Processing documents by default. If you want to see tracked changes in your rendering result, use [WordProcessingOptions.RenderTrackedChanges](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/wordprocessingoptions/properties/rendertrackedchanges) property of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) class and pass it to [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object constructor.

Follow below steps to render WordProcessing document with tracked changes.

* Initialize the [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object.
* Set [WordProcessingOptions.RenderTrackedChanges](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/wordprocessingoptions/properties/rendertrackedchanges) to *true.*
* Pass [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object to [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code sample shows how to render a Word document including tracked changes.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.WordProcessingOptions.RenderTrackedChanges = true;
    viewer.View(viewOptions);
}
```
