---
id: add-text-watermark
url: viewer/nodejs-java/add-text-watermark
title: Add text watermarks
weight: 9
description: "This article explains how to add text watermark when rendering documents with GroupDocs.Viewer within your JavaScript applications."
keywords: add text watermark, rendering documents
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
---
To add a watermark to the HTML/JPG/PNG/PDF output, follow these steps:

1. Create an instance of the [HtmlViewOptions](#) class (or [PngViewOptions](#), or [JpgViewOptions](#), or [PdfViewOptions](#));
2. Create a [Watermark](#) object and populate its properties;
3. Call the [setWatermark](#) method of the [HtmlViewOptions](#) (or [PngViewOptions](#), or [JpgViewOptions](#), or [PdfViewOptions](#)) class and specify the object created on step 2;
4. Call the [Viewer.view()](#) method.

The following code snippet shows how to apply the watermark to the output pages.

{{< tabs "add-text-watermark">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions, Watermark } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.docx")
// Create an HTML file.
const viewOptions = HtmlViewOptions.forEmbeddedResources("add-text-watermark/docx-to-html-watermark.html")
// Add watermark.
const watermark = new Watermark('This is a watermark')
viewOptions.setWatermark(watermark);
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/developer-guide/rendering-documents/add-text-watermark/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}