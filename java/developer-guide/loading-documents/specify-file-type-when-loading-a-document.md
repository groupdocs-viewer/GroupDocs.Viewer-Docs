---
id: specify-file-type-when-loading-a-document
url: viewer/java/specify-file-type-when-loading-a-document
title: Set file type when loading a document
weight: 1
description: "Set file type when loading document with GroupDocs.Viewer using Java."
keywords: set file type
productName: GroupDocs.Viewer for Java
hideChildren: False
---

When passing file path or `InputStream` into [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class constructor the GroupDocs.Viewer determines file type by file extension but when file passed as a stream the GroupDocs.Viewer tries to detect file type by file signature or file content and this may affect application performance. The API enables you to specify the file type of the processing document by passing [LoadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LoadOptions) object as the second parameter of `Viewer` class constructor.

The following code sample shows how to pass the file type when loading a document.

```java
   FileInputStream inputStream = new FileInputStream("sample.docx");
   LoadOptions loadOptions = new LoadOptions(FileType.DOCX);

   try (Viewer viewer = new Viewer(inputStream, loadOptions)) {
       HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
       viewer.view(viewOptions);
   }
```
