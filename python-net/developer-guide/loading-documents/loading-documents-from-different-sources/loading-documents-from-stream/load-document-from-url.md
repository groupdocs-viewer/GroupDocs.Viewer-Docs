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
def download_file(url):
    response = requests.get(url, stream=True)
    response.raise_for_status()
    
    with BytesIO() as file_stream:
        for chunk in response.iter_content(chunk_size=8192):
            file_stream.write(chunk)
        file_stream.seek(0)
        return file_stream

url = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles/sample.docx?raw=true"
stream = download_file(url)

# Using the viewer with the downloaded stream
with gv.Viewer(stream) as viewer:
    # Specify view options for HTML view
    view_options = gvo.HtmlViewOptions.for_embedded_resources()

    # View the document
    viewer.view(view_options)

```
{{< /tab >}}
{{< /tabs >}}
