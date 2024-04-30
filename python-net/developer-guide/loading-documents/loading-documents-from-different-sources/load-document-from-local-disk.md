---
id: load-document-from-local-disk
url: viewer/python-net/load-document-from-local-disk
title: Load document using the local path string
weight: 1
description: "This article explains how to load a document using the local path string with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
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
