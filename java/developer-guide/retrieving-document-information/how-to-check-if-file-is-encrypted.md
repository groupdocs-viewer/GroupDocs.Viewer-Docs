---
id: how-to-check-if-file-is-encrypted
url: viewer/java/how-to-check-if-file-is-encrypted
title: How to check if file is encrypted
weight: 5
description: "This article explains how to check if a file is encrypted with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, check, file, encrypted"
productName: GroupDocs.Viewer for Java
hideChildren: False
---

The encryption is used to protect the file, so the only users with an encryption key (such as a password) can open and view a file.
In case you want to check if a file is encrypted, you can use `getFileInfo()` method that returns file type and flag that indicates if the file is encrypted as it is shown in the next example:

```java
try (Viewer viewer = new Viewer("encrypted.pdf")) {
    FileInfo fileInfo = viewer.getFileInfo();

    System.out.println("File type is: " + fileInfo.getFileType());
    System.out.println("File encrypted: " + fileInfo.isEncrypted());
}
```

After running the code above you will see an output like this:

```bash
File type is: Portable Document Format File (.pdf)
File encrypted: True
```

{{< alert style="info" >}}

To learn how to open an encrypted file please refer to [Load password-protected document]({{< ref "/viewer/java/developer-guide/loading-documents/load-password-protected-document.md" >}}) documentation article.

{{< /alert >}}
