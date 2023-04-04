---
id: how-to-determine-file-type
url: viewer/java/how-to-determine-file-type
title: Determine the file type
weight: 4
description: "This article explains how to get a type of a file with GroupDocs.Viewer for Java using Java."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
A file type is a standard way that information is encoded for storage in a computer file. For example, Microsoft Word (.docx) and Adobe PDF (.pdf) are two different file types.

Using GroupDocs.Viewer for Java, you can determine the file type using the file extension.

To determine the file type from the file extension, call the [fromExtension()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/filetype/#fromExtension-java.lang.String-) method of [FileType](https://reference.groupdocs.com/viewer/java/groupdocs.viewer/filetype/).

The following code snippet shows how to determine a file type using the file extension:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.FileType;
// ...

String extension = ".docx";
FileType fileType = FileType.fromExtension(extension);

System.out.println("\nExtension " + extension + "; File type: " + fileType);
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/how-to-determine-file-type.png)
