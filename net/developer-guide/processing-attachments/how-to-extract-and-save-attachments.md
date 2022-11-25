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

You can save/export attachments from Email documents, Outlook data files, Archives and PDF documents with only a few lines of code using GroupDocs.Viewer for .NET API.

Follow these steps to get and save (export) attachments:

* Instantiate [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object  for the file that contains attachment(s);
* Call [GetAttachments](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getattachments) method which will return document attachments collection;
* Iterate through attachments collection and save attachment by calling [SaveAttachment](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method.

Following example demonstrates on how to get and save attachments from MSG files.

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

{{< alert style="info" >}}NOTE: provided code example is actual for all document types that support attachments - Email documents, Outlook data files, Archives and PDF documents.{{< /alert >}}
