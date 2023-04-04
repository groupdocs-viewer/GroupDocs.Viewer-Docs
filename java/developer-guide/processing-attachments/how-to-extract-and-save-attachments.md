---
id: how-to-extract-and-save-attachments
url: viewer/java/how-to-extract-and-save-attachments
title: Save attachments
weight: 2
description: "Save attachments and embedded files from PDF, Outlook data file or email"
keywords: Save attachments, embedded files from PDF, Outlook data file
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To get and save attachments, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify a file that contains attachments.
2. Call the [getAttachments](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getAttachments--) method. It returns the attachment collection.
3. Iterate through the collection. To save an attachment, call the [saveAttachment](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#saveAttachment-com.groupdocs.viewer.results.Attachment-java.io.OutputStream-) method.

The following code snippet shows how to get and save all attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.results.Attachment;
// ...

try (Viewer viewer = new Viewer("with_attachments.msg")) {
    List<Attachment> attachments = viewer.getAttachments();

    for (Attachment attachment : attachments) {
        FileOutputStream fileStream = new FileOutputStream(attachment.getFileName());

        viewer.saveAttachment(attachment, fileStream);
    }
}         
```
{{< /tab >}}
{{< /tabs >}}
