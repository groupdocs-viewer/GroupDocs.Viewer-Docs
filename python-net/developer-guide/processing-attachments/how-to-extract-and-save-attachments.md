---
id: how-to-extract-and-save-attachments
url: viewer/python-net/how-to-extract-and-save-attachments
title: Save attachments
weight: 2
description: "Save attachments and embedded files from PDF, Outlook data file or email"
keywords: Save attachments, embedded files from PDF, Outlook data file
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
To get and save attachments, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify a file that contains attachments.
2. Call the [GetAttachments](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getattachments) method. It returns the attachment collection.
3. Iterate through the collection. To save an attachment, call the [SaveAttachment](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/saveattachment) method.

The following code snippet shows how to get and save all attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Using the viewer to get a list of attachments and save each attachment
with gv.Viewer("path/to/your/with_attachments.msg") as viewer:
    # Get the list of attachments
    attachments = viewer.get_attachments()

    # Save each attachment
    for attachment in attachments:
        file_path = os.path.join("C:/output", attachment.file_name)
        with open(file_path, "wb") as file:
            viewer.save_attachment(attachment, file)        
```
{{< /tab >}}
{{< /tabs >}}
