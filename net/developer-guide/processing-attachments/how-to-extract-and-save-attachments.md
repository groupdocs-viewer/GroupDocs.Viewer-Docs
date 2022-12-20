---
id: how-to-extract-and-save-attachments
url: viewer/net/how-to-extract-and-save-attachments
title: Save attachments
weight: 2
description: "Save attachments and embedded files from PDF, Outlook data file or email"
keywords: Save attachments, embedded files from PDF, Outlook data file
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
To get and save attachments, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify a file that contains attachments.
2. Call the [GetAttachments](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getattachments) method. It returns the attachment collection.
3. Iterate through the collection. To save an attachment, call the [SaveAttachment](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method.

The following code snippet shows how to get and save all attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
string outputPath = @"C:\output";
using (Viewer viewer = new Viewer("with_attachments.msg"))
{
    IList<Attachment> attachments = viewer.GetAttachments();
    foreach(Attachment attachment in attachments)
    {
        string filePath = Path.Combine(outputPath, attachment.FileName);  
        viewer.SaveAttachment(attachment, File.OpenWrite(filePath)); 
    }
}          
```
{{< /tab >}}
{{< /tabs >}}
