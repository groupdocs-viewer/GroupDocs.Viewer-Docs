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
from groupdocs.viewer import Viewer

def extract_and_save_attachments():
    # Load document with attachments
    with Viewer("with_attachments.msg") as viewer:
        attachments = viewer.get_attachments()

        print("\nAttachments:")
        for attachment in attachments:
            print(attachment)
            # Save attachment to disk
            viewer.save_attachment(attachment, f"./attachments/{attachment.file_name}")

    print(f"\nAttachments retrieved successfully.")

if __name__ == "__main__":
    extract_and_save_attachments()
```
{{< /tab >}}
{{< tab "with_attachments.msg" >}}
{{< tab-text >}}
`with_attachments.msg` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/processing-attachments/with_attachments.msg) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
