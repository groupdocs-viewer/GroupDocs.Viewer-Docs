---
id: how-to-determine-file-type
url: viewer/java/how-to-determine-file-type
title: How to determine file type
weight: 4
description: "This article explains how to get a type of a file with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, get file type"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

**File type** or **file format** is the way to classify and differentiate one kind of file from another. For example, Microsoft Excel and Adobe PDF are two different **file types**. The common way to determine the file type is by its extension, so when you have a file e.g. sample.docx you expect that this file will be opened by some text processing application like Microsoft Word. But there are the cases when you don't know the file type e.g. when the file came from the Internet but you don't know its name or filename doesn't have an extension.

## Determine file-type

**GroupDocs.Viewer** enables you to determine the file type by file extension, media-type, or raw bytes.

{{< alert style="info" >}}

The code snippets provided in this article can be found in [our public examples at GitHub](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/blob/master/Examples/src/main/java/com/groupdocs/viewer/examples/howto/HowToDetermineFileType.java).

{{< /alert >}}

### Determine file-type by the file extension

To determine file type from the file extension use [fromExtension()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType#fromExtension(java.lang.String)) method of [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class.

```java
String extension = ".docx";
FileType fileType = FileType.fromExtension(extension);

System.out.println("\nExtension " + extension + "; File type: " + fileType);
```

The output would be similar to:

```bash
> Extension .docx; File type: Microsoft Word Open XML Document (.docx)
```

### Determine file-type by media-type

In case you receive a file from the Internet and you have only its media-type use [fromMediaType()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType#fromMediaType(java.lang.String)) method of [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class.

```java
String mediaType = "application/pdf";
FileType fileType = FileType.fromMediaType(mediaType);

System.out.println("\nMedia-type " + mediaType + "; File type: " + fileType);
```

The output would be similar to:

```bash
Extension .pdf; File type: Portable document Format File (.pdf)
```

### Determine file type by stream

When you don't know the name of a file or media-type you can try determining file type by passing stream to [fromStream()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType#fromStream(java.io.InputStream)) method of [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType). GroupDocs.Viewer will try reading the file signature and map it to the file type.

```java
 try (InputStream inputStream = new FileInputStream("sample.docx")) {
     FileType fileType = FileType.fromStream(inputStream);

     System.out.println("\nFile path " + TestFiles.SAMPLE_DOCX + "; File type: " + fileType);
 }
```

A similar output would be printed in case of GroupDocs.Viewer detected the file type successfully.

```bash
Extension .docx; File type: Microsoft Word Open XML Document (.docx)
```
