---
id: how-to-convert-and-view-attachments
url: viewer/net/how-to-convert-and-view-attachments
title: Render attachments
weight: 3
description: "Render email attachments with GroupDocs.Viewer for .NET in the same way as you would render any other documents"
keywords: Render email attachments
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

Rendering email/file attachments in the same way as you would render any other documents.

There are many different use cases when you need to view/preview attachments form an emails, save attachments to specific location, parse or extract attachments. So we made this process easy and simple with GroupDocs.Viewer for .NET API.

GroupDocs.Viewer supports attachments from following formats:

* Email attachments
* Outlook attachments
* Archives
* PDF

To view attachments just follow steps below:

* Instantiate [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object for the file that contains attachment(s);
* Call [SaveAttachment](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method and save attachment (to local disk, memory stream, etc);
* Instantiate new [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object with previously saved attachment;
* Specify view options depending on desired output format - [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) / [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) / [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) / [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions);
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

Following code snippet demonstrates on how to view attachments from MSG file.

```csharp
Attachment attachment = new Attachment("attachment-word.doc");           
MemoryStream attachmentStream = new MemoryStream();

using (Viewer viewer = new Viewer("sample.msg"))
{
    viewer.SaveAttachment(attachment, attachmentStream); 
}

using (Viewer viewer = new Viewer(attachmentStream))
{
    HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(options);
}
```

{{< alert style="info" >}}NOTE: provided code example is actual for all document types that support attachments - Email documents, Outlook data files, Archives and PDF documents.{{< /alert >}}
