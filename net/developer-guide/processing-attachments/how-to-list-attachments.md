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
    IList<Attachment> attachments = viewer.GetAttachments();
    Console.WriteLine("\nAttachments:");
    foreach(Attachment attachment in attachments)
        Console.WriteLine(attachment);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-list-attachments.png)
