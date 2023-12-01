---
id: load-document-from-ftp
url: viewer/python-net/load-document-from-ftp
title: Load from FTP
weight: 4
description: "This article explains how to load a document from FTP storage with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
The following code snippet shows how to load a document from FTP:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
def get_file_from_ftp(file_path):
    uri = FTP_URI(file_path)
    ftp = FTP(uri.netloc)
    ftp.login()

    with BytesIO() as file_stream:
        ftp.retrbinary(f"RETR {uri.path}", file_stream.write)
        file_stream.seek(0)
        return file_stream

def FTP_URI(file_path):
    uri = urlparse(file_path)
    return uri

file_path = "sample.docx"
stream = get_file_from_ftp(file_path)

# Using the viewer with the downloaded stream
with gv.Viewer(stream) as viewer:
    # Specify view options for HTML view
    view_options = gvo.HtmlViewOptions.for_embedded_resources()

    # View the document
    viewer.view(view_options)

```
{{< /tab >}}
{{< /tabs >}}
