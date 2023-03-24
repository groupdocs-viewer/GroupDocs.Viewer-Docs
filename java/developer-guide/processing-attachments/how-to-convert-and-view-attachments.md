---
id: how-to-convert-and-view-attachments
url: viewer/java/how-to-convert-and-view-attachments
title: Render attachments
weight: 3
description: "Render email attachments with GroupDocs.Viewer for Java in the same way as you would render any other documents"
keywords: Render email attachments
productName: GroupDocs.Viewer for Java
hideChildren: False
---

Render attachments in the same way as any other documents.

To view attachments, follow these steps:

1. Instantiate the first [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify a file that contains attachments.
2. Call the [saveAttachment](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#saveAttachment-com.groupdocs.viewer.results.Attachment-java.io.OutputStream-) method to save the attachment (to local disk, memory stream, etc).
3. Instantiate the second [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the previously saved attachment.
4. Specify the view options depending on the output format - [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/)/[PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/)/[JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/)/[PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/).
5. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

The following code snippet shows how to render attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;
import com.groupdocs.viewer.results.Attachment;
// ...

try (ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
    Attachment firstAttachment;

    // Save attachment
    try (Viewer viewer = new Viewer("sample.msg")) {
        firstAttachment = viewer.getAttachments().get(0);
        viewer.saveAttachment(firstAttachment, outputStream);
    }
    
    LoadOptions loadOptions = new LoadOptions(firstAttachment.getFileType());

    // Render attachment
    try (ByteArrayInputStream inputStream = new ByteArrayInputStream(outputStream.toByteArray());
         Viewer viewer = new Viewer(inputStream, loadOptions)) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources();
        viewer.view(options);
    }
}
```
{{< /tab >}}
{{< /tabs >}}
