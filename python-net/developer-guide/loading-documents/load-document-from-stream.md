---
id: load-document-from-stream
url: viewer/python-net/developer-guide/loading-documents/load-document-from-stream
title: Load document from stream
linkTitle: Load from stream
weight: 2
description: "Load documents directly from a file-like object — open file handle, BytesIO, or any stream — with GroupDocs.Viewer for Python via .NET."
keywords: document stream, BytesIO, viewer, GroupDocs.Viewer, load document, online viewer, document rendering, stream viewer
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/load-document-from-stream/
    - /viewer/python-net/loading-documents-from-stream/
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
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/loading-documents/load-document-from-stream/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "load-document-from-stream-outputs.zip" >}}  
```text
page_1.html (317 KB)
page_2.html (149 KB)
page_3.html (113 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/loading-documents/load-document-from-stream/load_document_from_stream/load-document-from-stream-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

See also [Load document from URL]({{< ref "/viewer/python-net/developer-guide/loading-documents/load-document-from-url.md" >}}) for a concrete example of downloading a document into a `BytesIO` stream and rendering it without ever writing it to disk.