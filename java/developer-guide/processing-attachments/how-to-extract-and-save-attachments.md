---
id: how-to-extract-and-save-attachments
url: viewer/java/how-to-extract-and-save-attachments
title: Save attachments
weight: 2
description: "How to save PDF document embedded files, Outlook data file or email attachments with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, save attachments, save embedded files"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
You can save/export attachments from Email documents, Outlook data files, Archives and PDF documents with only a few lines of code using GroupDocs.Viewer for Java API.

Follow these steps to get and save (export) attachments:

* Instantiate [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object for the file that contains attachment(s);
* Call [getAttachments()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getAttachments()) method which will return document attachments collection;
* Iterate through attachments collection and save attachment by calling [saveAttachment(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#saveAttachment(com.groupdocs.viewer.results.Attachment,%20java.io.OutputStream)) method.

Following example demonstrates on how to get and save all attachments contained by a MSG file.

```java
try (Viewer viewer = new Viewer("sample.msg")) {
    List<Attachment> attachments = viewer.getAttachments();

    for (Attachment attachment : attachments) {
        FileOutputStream fileStream = 
            new FileOutputStream(attachment.getFileName());

        viewer.saveAttachment(attachment, fileStream);
    }
}
```

After running the code above all the attachments will be saved to the current directory.

{{< alert style="info" >}}

Provided code example is actual for all document types that support attachments - Email documents, Outlook data files, Archives and PDF documents.

{{< /alert >}}
