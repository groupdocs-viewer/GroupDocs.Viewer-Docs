---
id: how-to-check-if-file-is-encrypted
url: viewer/net/how-to-check-if-file-is-encrypted
title: Check if a file is encrypted
weight: 5
description: "This article explains how to check if a file is encrypted using .NET / C# with GroupDocs.Viewer for .NET."
keywords: check, file, encrypted, C#, .NET
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. So, only those who have an encryption key (such as a password) can open and view a file.

If you want to check if a file is encrypted, use the _GetFileInfo()_ method that returns the file type and flag that indicates if the file is encrypted. The following code snippet shows how to check if a file is encrypted. Also, you can find this example [on GitHub](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/BasicUsage/CheckFileIsEncrypted.cs).

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using (Viewer viewer = new Viewer("encrypted.pdf"))
{
    FileInfo fileInfo = viewer.GetFileInfo();

    Console.WriteLine("File type is: " + fileInfo.FileType);
    Console.WriteLine("File encrypted: " + fileInfo.Encrypted);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![](/viewer/net/images/how-to-check-if-file-is-encrypted.png)

To learn how to open an encrypted file, please refer to [Load password-protected document]({{< ref "/viewer/net/developer-guide/loading-documents/load-password-protected-document.md" >}}) page.
