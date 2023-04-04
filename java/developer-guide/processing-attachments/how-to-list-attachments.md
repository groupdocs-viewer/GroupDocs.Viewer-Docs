---
id: how-to-list-attachments
url: viewer/java/how-to-list-attachments
title: List attachments
weight: 1
description: "Retrieve a list of document attachments from your emails, Outlook data files, archives and PDF documents with GroupDocs.Viewer for Java"
keywords: document attachments, Outlook data files, archives, PDF documents
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To get a list of all attachments to a source file, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify a file that contains attachments.
2. Call the [getAttachments](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getAttachments--) method. It returns the attachment collection.
3. Iterate through the collection.

The following code snippet shows how to get a list of attachments from the MSG file:


{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.results.Attachment;
// ...

try (Viewer viewer = new Viewer("sample.msg")) {
    List<Attachment> attachments = viewer.getAttachments();

    System.out.println("\nAttachments:");
    for (Attachment attachment : attachments) {
        System.out.println(attachment);
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/how-to-list-attachments.png)
