---
id: show-document-notes
url: viewer/java/show-document-notes
title: Render document notes
weight: 5
description:"This article explains how to show document notes when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: notes,document notes,Show notes when viewer documents with GroupDocs.Viewer Java API
hideChildren: False
---
GroupDocs.Viewer does not include document notes in the rendering results. However, you can choose between to show or hide the notes in the output. If you want to see notes in your rendering result, use [setRenderNotes()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setRenderNotes(boolean)) property of the [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class and pass it to [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method of [Viewer](https://apireference.groupdocs.com/java/viewer/groupdocs.viewer/viewer) object. 

![](viewer/java/images/show-document-notes.png)

The following are the steps to include the notes in the rendering result.

* Initialize the object of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions)
* Set [setRenderNotes()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setRenderNotes(boolean)) property of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) to `true`
* Pass [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) object to [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method

The following code sample renders Presentation with notes.

```java
    try (Viewer viewer = new Viewer("sample.pptx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setRenderNotes(true);
        viewer.view(viewOptions);
    }
```
