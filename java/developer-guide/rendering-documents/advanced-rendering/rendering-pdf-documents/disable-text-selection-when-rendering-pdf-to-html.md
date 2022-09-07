---
id: disable-text-selection-when-rendering-pdf-to-html
url: viewer/java/disable-text-selection-when-rendering-pdf-to-html
title: Disable text selection when rendering PDF to HTML
weight: 9
description: "This article explains how to disable text selection by rendering text as image when viewing PDF Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering PDF documents to HTML with GroupDocs.Viewer you can disable text selection by rendering text as an image. When rendering text as an image the output HTML will look close to the source PDF document. To disable text selection set `viewOptions.getPdfOptions().setRenderTextAsImage(true)`.

## Example

To let's take [one-page-text.pdf](/viewer/java/sample-files/disable-text-selection/one-page-text.pdf), convert it to HTML with default options and check output HTML document source. To convert PDF to HTML we'll be running the following code:

```java
    try (Viewer viewer = new Viewer("one-page-text.pdf")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("default-options.html");

        viewer.view(viewOptions);
    }
```

As a result, Viewer will produce a single HTML document [default-options.html](/viewer/java/sample-files/disable-text-selection/default-options.html). If we open this document in a browser we'll be able to select the text as is shown on the screenshot below:

![Output HTML document and it's source when rendering with default options](/viewer/java/images/disable-text-selection/default-options.png)

As you can see we can select the text because it is actually a text inside `span` element.

Let's now run the following code and check the output, the differences here are the new line `viewOptions.getPdfOptions().setRenderTextAsImage(true)` and output file name `text-as-images.html`:

```java
    try (Viewer viewer = new Viewer("one-page-text.pdf")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("text-as-images.html");
        viewOptions.getPdfOptions().setRenderTextAsImage(true);

        viewer.view(viewOptions);
    }
```

We'll get [text-as-images.html](/viewer/java/sample-files/disable-text-selection/text-as-images.html) on the output that will look similar to the previous result, but as you can see the text is replaced with an image that makes it impossible to select the text and copy it.

![Output HTML document and it's source when rendering with RenderTextAsImage set to true](/viewer/java/images/disable-text-selection/text-as-images.png)
