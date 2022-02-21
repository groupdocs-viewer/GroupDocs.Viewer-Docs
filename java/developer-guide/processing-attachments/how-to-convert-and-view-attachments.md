---
id: how-to-convert-and-view-attachments
url: viewer/java/how-to-convert-and-view-attachments
title: Render attachments
weight: 3
description: "How to render PDF document embedded files, Outlook data file or Email attachments with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, render attachments, render embedded files"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
You can render email/file attachments in the same way as you would render any other documents.

There are many different use cases when you need to render attachments form an emails, save attachments to specific location, parse or extract attachments. So we made this process easy and simple with GroupDocs.Viewer for Java API.

Following code snippet demonstrates on how to render first attachment from MSG file.

```java
ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
Attachment firstAttachment = null;

// Save attachment
try (Viewer viewer = new Viewer("sample.msg")) {
    firstAttachment = viewer.getAttachments().get(0);
    viewer.saveAttachment(firstAttachment, outputStream);
}

ByteArrayInputStream inputStream = new ByteArrayInputStream(outputStream.toByteArray());
LoadOptions loadOptions = new LoadOptions(firstAttachment.getFileType());

// Render attachment
try (Viewer viewer = new Viewer(inputStream, loadOptions)) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources();
    viewer.view(options);
}
```

After running the code above output HTML files will be created in the current directory.

{{< alert style="info" >}}

Provided code example is actual for all document types that support attachments - Email documents, Outlook data files, Archives and PDF documents.

{{< /alert >}}
