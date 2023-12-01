---
id: how-to-convert-and-view-attachments
url: viewer/python-net/how-to-convert-and-view-attachments
title: Render attachments
weight: 3
description: "Render email attachments with GroupDocs.Viewer for Python via .NET in the same way as you would render any other documents"
keywords: Render email attachments
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

Render attachments in the same way as any other documents.

To view attachments, follow these steps:

1. Instantiate the first [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify a file that contains attachments.
2. Call the [SaveAttachment](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method to save the attachment (to local disk, memory stream, etc).
3. Instantiate the second [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the previously saved attachment.
4. Specify the view options depending on the output format - [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions)/[PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)/[JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)/[PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions).
5. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to render attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Specify attachment.
attachment = gva.Attachment("attachment-word.doc", "path/to/your/attachment-word.doc")

# Create a stream for attachment
attachment_stream = BytesIO()

# Save attachment
with gv.Viewer("path/to/your/sample.msg") as viewer:
    viewer.save_attachment(attachment, attachment_stream)

attachment_stream.seek(0)  # Reset the stream position to the beginning
with gv.Viewer(attachment_stream) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources()
    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}
