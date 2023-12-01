---
id: how-to-check-if-file-is-encrypted
url: viewer/python-net/how-to-check-if-file-is-encrypted
title: Check if a file is encrypted
weight: 3
description: "This article explains how to check if a file is encrypted using Python with GroupDocs.Viewer for Python via .NET."
keywords: check, file, encrypted, .NET
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. So, only those who have an encryption key (such as a password) can open and view a file.

If you want to check if a file is encrypted, use the _GetFileInfo()_ method that returns the file type and flag that indicates if the file is encrypted. The following code snippet shows how to check if a file is encrypted. Also, you can find this example [on GitHub](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/BasicUsage/CheckFileIsEncrypted.cs).

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_encrypted_pdf) as viewer:
    # Get file information.
    file_info = viewer.get_file_info() 

    # Display the file type and flag if the file is encrypted.
    print("File type is: " + fileInfo.file_type);
    print("File encrypted: " + fileInfo.encrypted);

```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-check-if-file-is-encrypted.png)

To learn how to open an encrypted file, please refer to [Load password-protected document]({{< ref "/viewer/python-net/developer-guide/loading-documents/load-password-protected-document.md" >}}) page.
