---
id: load-document-from-stream
url: viewer/python-net/load-document-from-stream
title: Load from stream
weight: 2
description: "This article explains how to load a document from a Stream with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
You can load a document from a stream without saving it as a file on a disk. You can use this feature to load a document from different sources like a URL, FTP, and so on.

To load a document from a stream, follow these steps:

1. Implement a method to get the document stream.
2. Call the [Viewer](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer/viewer) class constructor. Specify the method implemented in the previous step.

The following code snippet shows how to load a document from a stream:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
stream = open("sample.docx", "rb")

# Render a document from the stream.
with gv.Viewer(stream) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

Please refer to the following pages for examples: