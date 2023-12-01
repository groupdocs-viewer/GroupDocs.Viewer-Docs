---
id: load-document-from-azure-blob-storage
url: viewer/python-net/load-document-from-azure-blob-storage
title: Load from Azure Blob Storage
weight: 6
description: "This article explains how to load a document from Azure Blob Storage with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
The following code snippet shows how to load a document from Azure Blob Storage:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
def download_file(blob_name):
    container_client = get_container_client()

    # Get a reference to a blob
    blob_client = container_client.get_blob_client(blob_name)
    
    memory_stream = BytesIO()
    blob_client.download_blob().readinto(memory_stream)
    memory_stream.seek(0)

    return memory_stream

def get_container_client():
    account_name = "***"
    account_key = "***"
    endpoint_suffix = "core.windows.net"
    container_name = "***"

    connection_string = f"DefaultEndpointsProtocol=https;AccountName={account_name};AccountKey={account_key};EndpointSuffix={endpoint_suffix}"

    # Create a BlobContainerClient object which will be used to create a container client
    blob_service_client = BlobServiceClient.from_connection_string(connection_string)
    container_client = blob_service_client.get_container_client(container_name)

    return container_client

blob_name = "sample.docx"
stream = download_file(blob_name)

# Using the viewer with the downloaded stream
with gv.Viewer(stream) as viewer:
    # Specify view options for HTML view
    view_options =gvo.HtmlViewOptions.for_embedded_resources()

    # View the document
    viewer.view(view_options)

```
{{< /tab >}}
{{< /tabs >}}
