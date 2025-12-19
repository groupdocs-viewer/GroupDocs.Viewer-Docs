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
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def load_document_from_local_disk():
    # Load document from local disk
    with Viewer("sample.docx") as viewer:
        html_options = HtmlViewOptions.for_embedded_resources("load_document_from_local_disk/document_from_local_disk_{0}.html")
        viewer.view(html_options)

if __name__ == "__main__":
    load_document_from_local_disk()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/loading-documents/loading-documents-from-different-sources/load-document-from-local-disk/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
