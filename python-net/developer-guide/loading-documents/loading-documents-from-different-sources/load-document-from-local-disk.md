---
id: load-document-from-local-disk
url: viewer/python-net/load-document-from-local-disk
title: Load document using the local path string
weight: 1
description: "Load documents from your local disk using a file path with GroupDocs.Viewer in Python."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
keywords: GroupDocs Viewer, local file loading, document viewing, read-only mode, Python, GroupDocs.Viewer, file path
---
You can load a document from a local disk using a path to a file. GroupDocs.Viewer opens the file in the read-only mode.

The following code snippet shows how to load a document using the local path string:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:
    html_options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
    viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}
