---
id: how-to-check-if-file-is-encrypted
url: viewer/net/how-to-check-if-file-is-encrypted
title: Check if a file is encrypted
weight: 3
description: "This article explains how to check if a file is encrypted using .NET / C# with GroupDocs.Viewer for .NET."
keywords: check, file, encrypted, C#, .NET
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. So, only those who have an encryption key (such as a password) can open and view a file.

## Check if a file is encrypted online

1. Navigate to the [GroupDocs.Viewer App](https://products.groupdocs.app/viewer/total). 

![GroupDocs.Viewer App](/viewer/net/images/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted/viewe-app-upload-file.png)

2. Upload your file. If you are prompted to enter a password to open the file, it is encrypted.

![GroupDocs.Viewer App password prompt](/viewer/net/images/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted/viewe-app-password-prompt.png)

{{< alert style="warning" >}}
It's important to be cautious about uploading sensitive files to online services. For critical files, we recommend using a programmatic method.
{{< /alert >}}

## Programmatically check for file encryption

Use the _GetFileInfo()_ method that returns the file type and flag that indicates if the file is encrypted. The following code snippet shows how to check if a file is encrypted. 

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Results;
// ...

using (Viewer viewer = new Viewer("protected.pdf"))
{
    // Get file information.
    FileInfo fileInfo = viewer.GetFileInfo();

    // Display the file type and flag if the file is encrypted.
    Console.WriteLine("File type is: " + fileInfo.FileType);
    Console.WriteLine("File encrypted: " + fileInfo.Encrypted);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("protected.pdf")
            ' Get file information.
            Dim fileInfo As FileInfo = viewer.GetFileInfo()
        
            ' Display the file type and flag if the file is encrypted.
            Console.WriteLine("File type is: " & fileInfo.FileType.ToString())
            Console.WriteLine("File encrypted: " & fileInfo.Encrypted.ToString())
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="tip" >}}

Download a [sample application](/viewer/net/sample-apps/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted/how-to-check-if-file-is-encrypted.zip) written in C# that uses this code snippet. You can run the application locally using the `dotnet run` command. Ensure you have the [.NET SDK](https://dotnet.microsoft.com/download) installed beforehand.

{{< /alert >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-check-if-file-is-encrypted.png)

To learn how to open an encrypted file, please refer to [Load password-protected document]({{< ref "/viewer/net/developer-guide/loading-documents/load-password-protected-document.md" >}}) documentation topic.
