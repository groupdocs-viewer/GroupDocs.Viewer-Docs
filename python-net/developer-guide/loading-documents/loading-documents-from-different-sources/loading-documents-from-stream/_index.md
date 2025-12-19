---
id: load-document-from-stream
url: viewer/python-net/load-document-from-stream
title: Load from stream
weight: 2
description: "Load documents directly from streams (URLs, FTP, etc.) in your Python applications using GroupDocs.Viewer."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
keywords: document stream, viewer, GroupDocs.Viewer, load document, online viewer, document rendering, stream viewer
---
You can load a document from a stream without saving it as a file on a disk. You can use this feature to load a document from different sources like a URL, FTP, and so on.

To load a document from a stream, follow these steps:

1. Implement a method to get the document stream.
2. Call the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class constructor. Specify the method implemented in the previous step.

The following code snippet shows how to load a document from a stream:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def load_document_from_stream():
    # Open document stream
    stream = open("sample.docx", "rb")

    # Render a document from the stream.
    with Viewer(stream) as viewer:
        options = HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(options)

if __name__ == "__main__":
    load_document_from_stream()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/loading-documents/loading-documents-from-different-sources/loading-documents-from-stream/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Please refer to the following pages for examples: