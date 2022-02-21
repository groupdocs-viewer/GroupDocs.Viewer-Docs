---
id: specify-charset-when-loading-documents
url: viewer/java/specify-charset-when-loading-documents
title: Set charset when loading documents
weight: 3
description: "Set charset when loading documents with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, loading documents, charset"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer enables users to pass charset when rendering text documents or email messages.

This feature is supported for:

* [Plain-text (.txt) files](https://wiki.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://wiki.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://wiki.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://wiki.fileformat.com/email/eml/)

Following code snippet sets the document charset.

```java
    LoadOptions loadOptions = new LoadOptions();
    loadOptions.setCharset(Charset.forName("windows-1251"));

    try (Viewer viewer = new Viewer("sample.txt", loadOptions)) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewer.view(viewOptions);
    }
```
