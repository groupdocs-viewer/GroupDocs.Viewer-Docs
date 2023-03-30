---
id: how-to-check-if-file-is-encrypted
url: viewer/java/how-to-check-if-file-is-encrypted
title: Check if a file is encrypted
weight: 5
description: "This article explains how to check if a file is encrypted using Java with GroupDocs.Viewer for Java."
keywords: check, file, encrypted, Java
productName: GroupDocs.Viewer for Java
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. So, only those who have an encryption key (such as a password) can open and view a file.

If you want to check if a file is encrypted, use the `getFileInfo()` method that returns the file type and flag that indicates if the file is encrypted. The following code snippet shows how to check if a file is encrypted.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.results.FileInfo;
// …

try (Viewer viewer = new Viewer("encrypted.pdf")) {
    FileInfo fileInfo = viewer.getFileInfo();

    System.out.println("File type is: " + fileInfo.getFileType());
    System.out.println("File encrypted: " + fileInfo.isEncrypted());
}

```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/how-to-check-if-file-is-encrypted.png)

To learn how to open an encrypted file, please refer to [Load password-protected document]({{< ref "/viewer/java/developer-guide/loading-documents/load-password-protected-document.md" >}}) page.
