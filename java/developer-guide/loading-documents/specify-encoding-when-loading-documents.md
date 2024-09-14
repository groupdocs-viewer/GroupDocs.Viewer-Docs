---
id: specify-encoding-when-loading-documents
url: viewer/java/specify-encoding-when-loading-documents
title: Specify encoding when loading documents
weight: 4
description: "This article explains how to specify encoding when loading documents with GroupDocs.Viewer within your Java applications."
keywords: encoding, charset
productName: GroupDocs.Viewer for Java
hideChildren: False
---

This feature is supported for the following file types:

* [Plain-text (.txt) files](https://docs.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://docs.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://docs.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://docs.fileformat.com/email/eml/)

Different encodings use different byte sequences for characters, and opening a file in the wrong encoding leads to incorrect character rendering. To properly render a file, the correct encoding must be specified when opening the file. Another option is converting it to `UTF-8` beforehand. By default GroupDocs.Viewer using `UTF-8` encoding.

For examle, when you try to open [sample-shift-jis.txt](/viewer/java/sample-files/developer-guide/loading-documents/specify-encoding-when-loading-documents/sample-shift-jis.txt) file in Notepad the text `これはShift_JISエンコード用のサンプルテキストです。` will appear as strange symbols because `ANSI` is misinterpreting the byte values that are specific to `Shift_JIS`.

![Shift_Jis text file opened in Notepad](/viewer/java/images/developer-guide/loading-documents/specify-encoding-when-loading-documents/shift-jis-in-notepad.png)

To render text file properly you can set charset using `LoadOptions` class. In the following code snippet we'll set `Shift_JIS` charset and render the text file to HTML:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.FileType;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;

import java.nio.charset.Charset;

// ...

// Specify charset.
LoadOptions loadOptions = new LoadOptions();
loadOptions.setCharset(Charset.forName("Shift_JIS"));

// Render as DOCX file.
loadOptions.setFileType(FileType.DOCX);

// Render a file.
try (Viewer viewer = new Viewer("sample-shift-jis.txt", loadOptions)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "sample-shift-jis.txt" >}}
{{< tab-text >}}
`sample-shift-jis.txt` is sample TXT file that is used in this example. Click [here](/viewer/java/sample-files/developer-guide/loading-documents/specify-encoding-when-loading-documents/sample-shift-jis.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Shift_Jis text file converted to HTML](/viewer/java/images/developer-guide/loading-documents/specify-encoding-when-loading-documents/shift-jis-converted-to-html.png)

