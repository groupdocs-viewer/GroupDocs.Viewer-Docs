---
id: how-to-list-attachments
url: viewer/java/how-to-list-attachments
title: List attachments
weight: 1
description: "How to list PDF embedded files, Outlook data file or email attachments with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, list attachments"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer for Java enables you to retrieve a list of document attachments from your emails, Outlook data files, archives and PDF documents.

Follow these steps to get a list of all attachments:

* Instantiate [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object for the file that contains attachment(s);
* Call [getAttachments()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getAttachments()) method which will return document attachments collection;
* Iterate through attachments collection.

Following example demonstrates on how to get all attachments from MSG file.

```java
try (Viewer viewer = new Viewer("sample.msg")) {
    List<Attachment> attachments = viewer.getAttachments();

    System.out.println("\nAttachments:");
    for (Attachment attachment : attachments) {
        System.out.println(attachment);
    }
}
```

After running the code above you will see an output like this:

```bash
Attachments:
attachment-image.png - Portable Network Graphic (.png); ID: 07c90715-040d-09c8-100a-c6040e05c507; Path: attachment-image.png; Size: 26754B
attachment-word.doc - Microsoft Word Document (.doc); ID: 01c90715-040d-01c8-100a-c6010e05c501; Path: attachment-word.doc; Size: 224768B
```

{{< alert style="info" >}}

Provided code example is actual for all document types that support attachments - Email documents, Outlook data files, Archives and PDF documents.

{{< /alert >}}
