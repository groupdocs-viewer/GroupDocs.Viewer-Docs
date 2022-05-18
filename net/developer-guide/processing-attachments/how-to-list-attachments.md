---
id: how-to-list-attachments
url: viewer/net/how-to-list-attachments
title: List attachments
weight: 1
description: "Retrieve a list of document attachments from your emails, Outlook data files, archives and PDF documents with GroupDocs.Viewer for .NET"
keywords: document attachments, Outlook data files, archives, PDF documents
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

GroupDocs.Viewer for .NET API enables you to retrieve a list of document attachments from your emails, Outlook data files, archives and PDF documents.

Follow these steps to get a list of all attachments:

* Instantiate [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object for the file that contains attachment(s);
* Call [GetAttachments](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getattachments) method which will return document attachments collection;
* Iterate through attachments collection.

Following example demonstrates on how to get all attachments from MSG file.

```csharp
using (Viewer viewer = new Viewer("sample.msg"))
{
    IList<Attachment> attachments = viewer.GetAttachments();
    Console.WriteLine("\nAttachments:");
    foreach(Attachment attachment in attachments)
        Console.WriteLine(attachment);
}
```

{{< alert style="info" >}}NOTE: provided code example is actual for all document types that support attachments - Email documents, Outlook data files, Archives and PDF documents.{{< /alert >}}
