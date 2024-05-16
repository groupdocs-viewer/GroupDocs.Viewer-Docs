---
id: load-document-from-url
url: viewer/python-net/load-document-from-url
title: Load from URL
weight: 3
description: "This article explains how to load a document from a URL with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
The following code snippet shows how to load a document from a URL:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import requests
import io

def download_file(url):
    response = requests.get(url, stream=True, headers={"User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0"}, timeout=10)
    # Check if the request was successful (status code 200)
    response.raise_for_status()
    # Create a BytesIO stream from the content
    stream = io.BytesIO(response.content)
    return stream


url = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles/sample.docx?raw=true";
 
stream = download_file(url)

with gv.Viewer(stream) as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(options)


```
{{< /tab >}}
{{< /tabs >}}
