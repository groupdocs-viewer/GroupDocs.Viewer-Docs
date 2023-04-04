---
id: specify-encoding-when-loading-documents
url: viewer/java/specify-encoding-when-loading-documents
title: Specify encoding when loading documents
weight: 4
description: "This article explains how to specify encoding when loading documents with GroupDocs.Viewer within your Java applications."
keywords: set encoding
productName: GroupDocs.Viewer for Java
hideChildren: False
---
You can specify the encoding using [LoadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LoadOptions).

This feature is supported for the following documents:

* [Plain-text (.txt) files](https://docs.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://docs.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://docs.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://docs.fileformat.com/email/eml/)

The following code snippet shows how to specify the document encoding:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;
// ...

// Specify an encoding.
LoadOptions loadOptions = new LoadOptions();
loadOptions.setCharset(Charset.forName("windows-1251"));

// Render a file.
try (Viewer viewer = new Viewer("sample.txt", loadOptions)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}

```
{{< /tab >}}
{{< /tabs >}}
