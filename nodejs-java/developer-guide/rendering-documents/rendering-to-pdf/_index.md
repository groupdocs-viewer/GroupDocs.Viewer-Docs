---
id: rendering-to-pdf
url: viewer/nodejs-java/rendering-to-pdf
title: Render to PDF
weight: 13
description: "Rendering files to PDF with GroupDocs.Viewer for Node.js via Java. It means that you can embed PDF in websites or applications by using this Java API"
keywords: embed pdf in website, rendering to pdf, c# api, rendering pdf
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
---  
When rendering to PDF, GroupDocs.Viewer renders all pages of the source document as a single PDF document.

To render files to PDF, follow these steps:

1. Create an instance of the [Viewer](#) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PdfViewOptions](#) object. Specify a path to save the rendered file.
3. Call the [View.view()](#) method of the [Viewer](#) object. Specify the [PdfViewOptions](#) object as the parameter.

The following code snippet shows how to render a .docx document to PDF:

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("sample.docx")
const viewOptions = groupdocs.viewer.PdfViewOptions(output-to-pdf.pdf)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
