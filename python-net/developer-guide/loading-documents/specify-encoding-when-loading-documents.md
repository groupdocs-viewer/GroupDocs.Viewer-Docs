---
id: specify-encoding-when-loading-documents
url: viewer/python-net/specify-encoding-when-loading-documents
title: Specify encoding when loading documents
weight: 4
description: "This article explains how to specify encoding when loading documents with GroupDocs.Viewer within your Python applications."
keywords: set encoding
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
You can specify the encoding using [LoadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions).

This feature is supported for the following documents:

* [Plain-text (.txt) files](https://docs.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://docs.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://docs.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://docs.fileformat.com/email/eml/)

The following code snippet shows how to specify the document encoding:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Specify an encoding.
load_options = gvo.LoadOptions()
load_options.encoding = "shift_jis"
# Render a file.
with gv.Viewer(file_path, load_options) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources(page_file_path_format)

    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}
