---
id: load-document-from-amazon-s3-storage
url: viewer/net/load-document-from-amazon-s3-storage
title: Load from Amazon S3 Storage
weight: 5
description: "This article explains how to load a document from Amazon S3 Storage with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The following code snippet shows how to load a document from Amazon S3 Storage.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
string key = "sample.docx";
Stream stream = DownloadFile(key);

using (Viewer viewer = new Viewer(stream))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();                
    viewer.View(viewOptions);
}

static Stream DownloadFile(string key)
{
    AmazonS3Client client = new AmazonS3Client();
    string bucketName = "my-bucket";
    GetObjectRequest request = new GetObjectRequest
    {
        Key = key,
        BucketName = bucketName
    };
    using (GetObjectResponse response = client.GetObject(request))
    {
        MemoryStream stream = new MemoryStream();
        response.ResponseStream.CopyTo(stream);
        stream.Position = 0;
        return stream;
    }
}
```
{{< /tab >}}
{{< /tabs >}}

