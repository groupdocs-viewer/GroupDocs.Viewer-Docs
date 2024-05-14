---
id: how-to-check-if-file-is-encrypted
url: viewer/java/how-to-check-if-file-is-encrypted
title: Check if a file is encrypted
weight: 3
description: "This article explains how to check if a file is encrypted using Java with GroupDocs.Viewer for Java."
keywords: check, file, encrypted, Java
productName: GroupDocs.Viewer for Java
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. So, only those who have an encryption key (such as a password) can open and view a file.

## Check if a file is encrypted online

1. Navigate to the [GroupDocs.Viewer App](https://products.groupdocs.app/viewer/total). 

![GroupDocs.Viewer App](/viewer/java/images/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted/viewe-app-upload-file.png)

2. Upload your file. If you are prompted to enter a password to open the file, it is encrypted.

![GroupDocs.Viewer App password prompt](/viewer/java/images/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted/viewe-app-password-prompt.png)

{{< alert style="warning" >}}
It's important to be cautious about uploading sensitive files to online services. For critical files, we recommend using a programmatic method.
{{< /alert >}}

## Programmatically check for file encryption

Use the _getFileInfo()_ method that returns the file type and flag that indicates if the file is encrypted. The following code snippet shows how to check if a file is encrypted. 

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.results.FileInfo;
// ...

try (Viewer viewer = new Viewer("protected.pdf")) {
    FileInfo fileInfo = viewer.getFileInfo();

    System.out.println("File type is: " + fileInfo.getFileType());
    System.out.println("File encrypted: " + fileInfo.isEncrypted());
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="tip" >}}

Download a [sample application](/viewer/java/sample-apps/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted/how-to-check-if-file-is-encrypted.zip) written in Java that uses this code snippet. You can run the application locally using the `mvn exec:java` command. Ensure you have the [Java](https://www.oracle.com/java/technologies/downloads/) and [Maven](https://maven.apache.org/download.cgi) installed beforehand.

{{< /alert >}}

The following image shows a sample console output:

![](/viewer/java/images/how-to-check-if-file-is-encrypted.png)

To learn how to open an encrypted file, please refer to [Load password-protected document]({{< ref "/viewer/java/developer-guide/loading-documents/load-password-protected-document.md" >}}) documentation topic.
