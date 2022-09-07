---
id: set-filename-when-viewing-archive-files
url: viewer/java/set-filename-when-viewing-archive-files
title: Set filename when rendering archive files
weight: 3
description: "This article explains how to specify a filename when viewing archive files GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
![](/viewer/java/images/set-filename-when-viewing-archive-files.png)

When viewing the archive files [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) displays an archive filename in the header of each page, like it is shown on the screenshot above. By default, the name of the original file is used. The GroupDocs.Viewer for Java enables you to change or hide filename by setting [setFileName()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ArchiveOptions#setFileName(com.groupdocs.viewer.options.FileName)) option of the [ArchiveOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ArchiveOptions) class. The [setFileName()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ArchiveOptions#setFileName(com.groupdocs.viewer.options.FileName)) option can be set to:

* [FileName.SOURCE](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/FileName#SOURCE) - the default value, the name of the source file will be used;
* [FileName.EMPTY](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/FileName#EMPTY) - empty filename, use it when you want to hide filename;
* [new FileName("my filename")](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/FileName) - custom filename.

The following code snippet shows how to set "my filename" instead of source filename when viewing an archive file.

```java
try (Viewer viewer = new Viewer("sample.zip")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.getArchiveOptions().setFileName(new FileName("my filename"));

    viewer.view(viewOptions);
}
```
