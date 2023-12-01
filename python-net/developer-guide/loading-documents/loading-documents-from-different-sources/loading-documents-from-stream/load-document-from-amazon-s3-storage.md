---
id: load-document-from-amazon-s3-storage
url: viewer/python-net/load-document-from-amazon-s3-storage
title: Load from Amazon S3 Storage
weight: 5
description: "This article explains how to load a document from Amazon S3 Storage with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
The following code snippet shows how to load a document from Amazon S3 Storage:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python

def download_file(key):
    s3_client = boto3.client('s3')
    bucket_name = 'my-bucket'
    
    response = s3_client.get_object(Bucket=bucket_name, Key=key)
    
    stream = BytesIO()
    response['Body'].readinto(stream)
    stream.seek(0)
    
    return stream

key = 'sample.docx'
stream = download_file(key)

# Using the viewer with the downloaded stream
with gv.Viewer(stream) as viewer:
    # Specify view options for HTML view
    view_options = gvo.HtmlViewOptions.for_embedded_resources()

    # View the document
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

