---
id: working-with-attachments
url: viewer/net/working-with-attachments
title: Processing attachments
weight: 4
description: "Processing email attachments, embedded files, and compressed files with GroupDocs.Viewer for .NET"
keywords: email attachments, embedded files, compressed files
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

Using GroupDocs.Viewer, you can list and save the following attachments:

* Email attachments
* Files embedded in PDF files
* Email messages contained by Outlook, LotusNotes and other storage files
* Compressed files

## List attachments

To get a list of all attachments to a source file, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify a file that contains attachments.
2. Call the [GetAttachments](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getattachments) method. It returns the attachment collection.
3. Iterate through the collection.

The following code snippet shows how to get a list of attachments from the MSG file:


{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.msg"))
{
    // Get list of attachments.
    IList<Attachment> attachments = viewer.GetAttachments();
    // Display list of attachments.
    Console.WriteLine("\nAttachments:");
    foreach(Attachment attachment in attachments)
        Console.WriteLine(attachment);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-list-attachments.png)

## Save attachments
To get and save attachments, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify a file that contains attachments.
2. Call the [GetAttachments](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getattachments) method. It returns the attachment collection.
3. Iterate through the collection. To save an attachment, call the [SaveAttachment](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method.

The following code snippet shows how to get and save all attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("with_attachments.msg"))
{
    // Get list of attachments.
    IList<Attachment> attachments = viewer.GetAttachments();
    // Save each attachments.
    foreach(Attachment attachment in attachments)
    {
        string filePath = Path.Combine(@"C:\output", attachment.FileName);  
        viewer.SaveAttachment(attachment, File.OpenWrite(filePath)); 
    }
}          
```
{{< /tab >}}
{{< /tabs >}}

## Render attachments

Render attachments in the same way as any other documents.

To view attachments, follow these steps:

1. Instantiate the first [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify a file that contains attachments.
2. Call the [SaveAttachment](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method to save the attachment (to local disk, memory stream, etc).
3. Instantiate the second [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the previously saved attachment.
4. Specify the view options depending on the output format - [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions)/[PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)/[JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)/[PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions).
5. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to render attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
// Specify attachment.
Attachment attachment = new Attachment("attachment-word.doc", @"C:\Output\attachment-word.doc"); 
// Create a stream for attachment.
MemoryStream attachmentStream = new MemoryStream();
//Save attachment
using (Viewer viewer = new Viewer("sample.msg"))
{
    viewer.SaveAttachment(attachment, attachmentStream); 
}
// Render attachment
using (Viewer viewer = new Viewer(attachmentStream))
{
    HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(options);
}
```
{{< /tab >}}
{{< /tabs >}}
