---
id: how-to-list-and-print-all-supported-file-types
url: viewer/java/how-to-list-and-print-all-supported-file-types
title: List and print all supported file types
weight: 5
description: "This article explains how to list and print file types supported by GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: False
---

The [Supported file formats]({{< ref "viewer/java/getting-started/supported-document-formats.md" >}}) page lists all file formats supported by GroupDocs.Viewer.

To list or print out all the supported file formats within your application, follow these steps:

1. Call the [getSupportedFileTypes](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/filetype/#getSupportedFileTypes--) method of the [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class.
2. Enumerate the collection of the [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) objects.

The following code snippet shows how to list supported file formats in the console:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.FileType;
// ...

List<FileType> supportedFileTypes = FileType.getSupportedFileTypes();

for (FileType fileType : supportedFileTypes) {
    System.out.println(fileType);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/how-to-list-and-print-all-supported-file-types.png)
