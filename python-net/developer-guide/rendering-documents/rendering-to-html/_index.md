---
id: rendering-to-html
url: viewer/python-net/rendering-to-html
title: Render to HTML
weight: 11
description: "With GroupDocs.Viewer for Python via .NET you can render files to HTML format. As a simple usecase please see how easily you can convert Microsoft Word to clean html."
keywords: render files, rendering pdf, convert word to clean html
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
When rendering to HTML, GroupDocs.Viewer renders each page of the source document as a separate HTML document.

GroupDocs.Viewer for Python via .NET provides two options to manage CSS, fonts, images, and other resources:

1. HTML with external resources stores page resources as separate files. This allows reusing common resources and results in reducing page size and loading speed.
2. HTML with embedded resources integrates page resources into HTML. This makes each document page self-sufficient but results in increasing page size and loading speed.

To render files to HTML, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object. Specify a path to save the rendered  pages.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object as the parameter.

## Rendering to HTML with external resources

The following code snippet shows how to render a .docx document to HTML with external resources: 

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_docx) as viewer:
    # Create an HTML file.
    info = gvo.HtmlViewOptions.for_external_resources()
    viewer.View(info);
```
{{< /tab >}}
{{< /tabs >}}

## Rendering to HTML with embedded resources

The following code snippet shows how to render a .docx document to HTML with embedded resources:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_docx) as viewer:
    # Create an HTML file.
    info = gvo.HtmlViewOptions.for_embedded_resources()
    viewer.View(info);
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
