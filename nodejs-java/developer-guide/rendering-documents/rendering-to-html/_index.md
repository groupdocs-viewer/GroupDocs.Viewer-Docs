---
id: rendering-to-html
url: viewer/nodejs-java/rendering-to-html
title: Render to HTML
weight: 11
description: "With GroupDocs.Viewer for Node.js you can render files to HTML format. As a simple usecase please see how easily you can convert Microsoft Word to clean html."
keywords: render files, rendering pdf, convert word to clean html
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
---
When rendering to HTML, GroupDocs.Viewer renders each page of the source document as a separate HTML document.

GroupDocs.Viewer for Node.js provides two options to manage CSS, fonts, images, and other resources:

1. HTML with external resources stores page resources as separate files. This allows reusing common resources and results in reducing page size and loading speed.
2. HTML with embedded resources integrates page resources into HTML. This makes each document page self-sufficient but results in increasing page size and loading speed.

To render files to HTML, follow these steps:

1. Create an instance of the [Viewer](#) class. Specify the source document path as a constructor parameter.
2. Instantiate the [HtmlViewOptions](#) object. Specify a path to save the rendered  pages.
3. Call the [View.view()](#) method of the [Viewer](#) object. Specify the [HtmlViewOptions](#) object as the parameter.

## Rendering to HTML with external resources

The following code snippet shows how to render a .docx document to HTML with external resources: 

{{< tabs "render-to-html-external-resources">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.docx")
// Create an HTML file for each page.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the current page number and resource name, respectively.
const viewOptions = HtmlViewOptions.forExternalResources("render-to-html-external-resources/docx-to-html-page_{0}.html", "render-to-html-external-resources/docx-to-html-page_{0}/resource_{0}_{1}", "render-to-html-external-resources/docx-to-html-page_{0}/resource_{0}_{1}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/developer-guide/rendering-documents/rendering-to-html/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Rendering to HTML with embedded resources

The following code snippet shows how to render a .docx document to HTML with embedded resources:

{{< tabs "render-to-html-embedded-resources">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.docx")
// Create an HTML files.
// {0} is replaced with the current page number in the file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-to-html-embedded-resources/docx-to-html-page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/developer-guide/rendering-documents/rendering-to-html/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
