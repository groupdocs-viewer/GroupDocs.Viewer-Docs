---
id: load-document-from-amazon-s3-storage
url: viewer/java/load-document-from-amazon-s3-storage
title: Load from Amazon S3 Storage
weight: 5
description: "This article explains how to load a document from Amazon S3 Storage with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

{{< alert style="info" >}}

Install the [AWS Java SDK for Amazon S3 module](https://mvnrepository.com/artifact/com.amazonaws/aws-java-sdk-s3/1.12.430) to use the Amazon S3 client.

{{< /alert >}}

The following code snippet shows how to load a document from Amazon S3 Storage:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// …

AmazonS3Client client = new AmazonS3Client();
GetObjectRequest request = new GetObjectRequest("my-bucket-name", "sample.docx");
S3Object response = client.getObject(request);

try (final InputStream inputStream = response.getObjectContent();
     Viewer viewer = new Viewer(inputStream)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

