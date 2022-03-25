---
id: show-document-notes
url: viewer/net/show-document-notes
title: Render notes
weight: 5
description: "This article explains how to show document notes when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: notes,document notes,Show notes when viewer documents with GroupDocs.Viewer .NET API
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
![Notes in PowerPoint](viewer/net/images/show-document-notes.png)

GroupDocs.Viewer does not include document notes in the rendering results. If you want to see notes in your rendering result, use `RenderNotes` property of the `ViewOptions` object.

The following are the steps to include the notes in the rendering result.

* Initialize the object of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions)
* Set [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object[RenderNotes](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/baseviewoptions/properties/rendernotes) property to *true*
* Pass [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object to [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method

The following code sample renders Presentation with notes.

```csharp
using (Viewer viewer = new Viewer("sample.pptx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.RenderNotes = true;
    viewer.View(viewOptions);
}
```
