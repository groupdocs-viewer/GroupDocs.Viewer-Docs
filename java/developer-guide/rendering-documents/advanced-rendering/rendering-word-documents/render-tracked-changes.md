---
id: render-tracked-changes
url: viewer/java/render-tracked-changes
title: Rendering tracked changes
weight: 1
description: "This article explains how to show tracked changes when viewing Word Processing Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer does not render tracked changes of Word Processing documents by default. If you want to see tracked changes in your rendering result, use [setRenderTrackedChanges()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/WordProcessingOptions#setRenderTrackedChanges(boolean)) property of [WordProcessingOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/WordProcessingOptions) that can be set using property [setWordProcessingOptions()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setWordProcessingOptions(com.groupdocs.viewer.options.WordProcessingOptions)) of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class and pass it to [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object constructor.

Follow below steps to render WordProcessing document with tracked changes.

* Initialize the [WordProcessingOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/WordProcessingOptions) object.
* Set [setRenderTrackedChanges()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/WordProcessingOptions#setRenderTrackedChanges(boolean)) to `true`.
* Initialize the [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) object.
* Pass [WordProcessingOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/WordProcessingOptions) object to [setWordProcessingOptions()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setWordProcessingOptions(com.groupdocs.viewer.options.WordProcessingOptions)) property.
* Pass [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) object to [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to render a Word document including tracked changes.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getWordProcessingOptions().setRenderTrackedChanges(true);
        viewer.view(viewOptions);
    }
```
