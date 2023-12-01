---
id: view-specific-pages
url: viewer/python-net/view-specific-pages
title: Render specific pages
weight: 1
description: "This article explains how to view specific pages when processing documents with GroupDocs.Viewer within your Python applications."
keywords: specific pages, view specific pages
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
You can render part of the document pages only. You can specify a list of the document pages in the following ways:
* [Specify a list of pages as parameters of the View method](#specify-pages-as-parameters)
* [Specify a list of pages by using an array](#specify-pages-by-using-an-array)

## Specify pages as parameters

To specify pages as the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method parameters, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object.
2. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method. Specify the page numbers as the last parameters.

The following code snippet shows how to render the first and third pages of a document:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python

with gv.Viewer(test_files.sample_docx) as viewer:
    # Create an HTML file.
    info = gvo.HtmlViewOptions.for_embedded_resources()
    # Specify the page numbers.
    viewer.View(info, 1, 3);
```
{{< /tab >}}
{{< /tabs >}}

## Specify pages by using an array

To specify pages by using an array, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
2. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method. Specify the page numbers array as the second parameter.

The following code snippet shows how to render the 1st, 2nd, and 4th pages of a document:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
# Create an array and specify page numbers.
pageNumbers = [1, 2, 4];

with gv.Viewer(test_files.sample_docx) as viewer:
    # Create an HTML file.
    info = gvo.HtmlViewOptions.for_embedded_resources()
    # Use array to render specific pages.
    viewer.View(info, pageNumbers);
```
{{< /tab >}}
{{< /tabs >}}