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

{{< tabs "extract-and-save-attachments">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using System.Collections.Generic;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Results;
// ...

using (Viewer viewer = new Viewer("with_attachments.msg"))
{
    // Get list of attachments.
    IList<Attachment> attachments = viewer.GetAttachments();
    // Save each attachment to the output folder.
    Directory.CreateDirectory("output");
    foreach (Attachment attachment in attachments)
    {
        string filePath = Path.Combine("output", attachment.FileName);
        using (FileStream stream = File.Create(filePath))
        {
            viewer.SaveAttachment(attachment, stream);
        }
    }
}      
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports System.Collections.Generic
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("with_attachments.msg")
            ' Get list of attachments.
            Dim attachments As IList(Of Attachment) = viewer.GetAttachments()
            ' Save each attachment to the output folder.
            Directory.CreateDirectory("output")
            For Each attachment As Attachment In attachments
                Dim filePath As String = Path.Combine("output", attachment.FileName)
                Using stream As FileStream = File.Create(filePath)
                    viewer.SaveAttachment(attachment, stream)
                End Using
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "with_attachments.msg" >}}
{{< tab-text >}}
`with_attachments.msg` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/processing-attachments/how-to-extract-and-save-attachments/with_attachments.msg) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "extract-and-save-attachments.zip" >}}  
```text
output/delivery-note-0912.xlsx (7 KB)
output/invoice-NWR-2026-0912.pdf (194 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/processing-attachments/how-to-extract-and-save-attachments/ExtractAndSaveAttachments/extract-and-save-attachments.zip)
{{< /tab >}}
{{< /tabs >}}
