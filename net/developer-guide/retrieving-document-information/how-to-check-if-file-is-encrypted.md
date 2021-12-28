---
id: how-to-check-if-file-is-encrypted
url: viewer/net/how-to-check-if-file-is-encrypted
title: How to check if file is encrypted
weight: 5
description: "This article explains how to check if a file is encrypted using .NET / C# with GroupDocs.Viewer for .NET."
keywords: check, file, encrypted, C#, .NET
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

The encryption is used to protect the file, so the only people with an encryption key (such as a password) can open and view a file.
In case you want to check if a file is encrypted, you can use _GetFileInfo()_ method that returns file type and flag that indicates if the file is encrypted as it is shown in the next example ([this example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/BasicUsage/CheckFileIsEncrypted.cs) can be found in our examples at GitHub.)

```csharp
using (Viewer viewer = new Viewer("encrypted.pdf"))
{
    FileInfo fileInfo = viewer.GetFileInfo();

    Console.WriteLine("File type is: " + fileInfo.FileType);
    Console.WriteLine("File encrypted: " + fileInfo.Encrypted);
}
```

After running the code above you will see an output like this:

```bash
File type is: Portable Document Format File (.pdf)
File encrypted: True
```

To learn how to open an encrypted file please refer to [Load password-protected document]({{< ref "/viewer/net/developer-guide/loading-documents/load-password-protected-document.md" >}}) documentation article.
