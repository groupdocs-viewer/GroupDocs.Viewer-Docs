---
id: how-to-extract-and-save-attachments
url: viewer/python-net/how-to-extract-and-save-attachments
title: Save attachments
weight: 2
description: "Retrieve and save attachments from emails, Outlook files, archives, and PDFs."
keywords: attachments, get attachments, save attachments, GroupDocs.Viewer, MSG files, PDF attachments, email attachments
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
To get and save attachments, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) object. Specify a file that contains attachments.
2. Call the [get_attachments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method. It returns the attachment collection.
3. Iterate through the collection. To save an attachment, call the [save_attachment](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

The following code snippet shows how to get and save all attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("with_attachments.msg") as viewer:
        attachments = viewer.get_attachments()

        print("\nAttachments:")
        for attachment in attachments:
            print(attachment)

    print(f"\nAttachments retrieved successfully.")
```
{{< /tab >}}
{{< /tabs >}}
