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

{{< tabs "list-attachments">}}
{{< tab "C#" >}}
```csharp
using System;
using System.Collections.Generic;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Results;
// ...

using (Viewer viewer = new Viewer("sample.msg"))
{
    // Get list of attachments.
    IList<Attachment> attachments = viewer.GetAttachments();

    // Display list of attachments.
    Console.WriteLine("\nAttachments:");
    foreach (Attachment attachment in attachments)
        Console.WriteLine(attachment);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports System.Collections.Generic
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.msg")
            ' Get list of attachments.
            Dim attachments As IList(Of Attachment) = viewer.GetAttachments()
        
            ' Display list of attachments.
            Console.WriteLine(Global.Microsoft.VisualBasic.Constants.vbLf & "Attachments:")
            For Each attachment As Attachment In attachments
                Console.WriteLine(attachment)
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.msg" >}}
{{< tab-text >}}
`sample.msg` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/processing-attachments/how-to-list-attachments/sample.msg) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "list-attachments.txt" >}}  
```text
Attachments:
invoice-NWR-2026-0912.pdf - Portable Document Format File (.pdf); ID: beef1f0b-cf7a-5f11-9a96-c45164d87592; Path: invoice-NWR-2026-0912.pdf; Size: 198531B
delivery-note-0912.xlsx - Microsoft Excel Open XML Spreadsheet (.xlsx); ID: 27d8bb8f-7c88-592f-8967-72831e28e818; Path: delivery-note-0912.xlsx; Size: 7643B
```
[Download full output](/viewer/net/_output_files/developer-guide/processing-attachments/how-to-list-attachments/ListAttachments/list-attachments.txt)
{{< /tab >}}
{{< /tabs >}}
