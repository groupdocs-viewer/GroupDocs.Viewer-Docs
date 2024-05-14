---
id: add-text-watermark
url: viewer/python-net/add-text-watermark
title: Add text watermarks
weight: 9
description: "This article explains how to add text watermark when rendering documents with GroupDocs.Viewer within your Python applications."
keywords: add text watermark, rendering documents
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
To add a watermark to the HTML/JPG/PNG/PDF output, follow these steps:

1. Create an instance of the [HtmlViewOptions](#) class (or [PngViewOptions](#), or [JpgViewOptions](#), or [PdfViewOptions](#));
2. Create a [Watermark](#) object and populate its properties;
3. Call the [setWatermark](#) method of the [HtmlViewOptions](#) (or [PngViewOptions](#), or [JpgViewOptions](#), or [PdfViewOptions](#)) class and specify the object created on step 2;
4. Call the [Viewer.view()](#) method.

The following code snippet shows how to apply the watermark to the output pages.

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("sample.docx")
// Create an HTML file.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources(output-watermark.html)
// Add watermark.
const watermark = new groupdocs.viewer.Watermark('This is a watermark')
viewOptions.setWatermark(watermark);
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}