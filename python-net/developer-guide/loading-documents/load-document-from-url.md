---
id: load-document-from-url
url: viewer/python-net/developer-guide/loading-documents/load-document-from-url
title: Load document from URL
linkTitle: Load from URL
weight: 3
description: "Fetch a document over HTTP with the requests library and render it from the in-memory stream using GroupDocs.Viewer for Python via .NET."
keywords: download file, GroupDocs.Viewer, Python, URL, HTTP, requests, document loading, BytesIO, raw file
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/load-document-from-url/
---
The following code snippet shows how to load a document from a URL:

{{< tabs "demo_app_load_document_from_url">}}
{{< tab "load_document_from_url.py" >}}
```python
import requests
import io
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def download_file(url):
    response = requests.get(url, stream=True, timeout=10)
    response.raise_for_status()
    return io.BytesIO(response.content)

def load_document_from_url():
    url = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles/sample.docx?raw=true"

    stream = download_file(url)

    with Viewer(stream) as viewer:
        options = HtmlViewOptions.for_embedded_resources("load_document_from_url/page_{0}.html")
        viewer.view(options)

if __name__ == "__main__":
    load_document_from_url()
```
{{< /tab >}}
{{< tab "load-document-from-url-outputs.zip" >}}  
```text
load_document_from_url/page_1.html (317 KB)
load_document_from_url/page_2.html (149 KB)
load_document_from_url/page_3.html (113 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/loading-documents/load-document-from-url/load_document_from_url/load-document-from-url-outputs.zip)
{{< /tab >}}
{{< /tabs >}}
