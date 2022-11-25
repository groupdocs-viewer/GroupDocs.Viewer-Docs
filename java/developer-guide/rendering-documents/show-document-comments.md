---
id: show-document-comments
url: viewer/java/show-document-comments
title: Render document comments
weight: 4
description: "The GroupDocs.Viewer enables you to control in simple markup display the contents of the comments word 2016 or other Word versions, Excel, OpenOffice Text and Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: document comments, in simple markup display the contents of the comments word 2016, Excel, OpenOffice Text, Spreadsheets
productName: GroupDocs.Viewer for Java
hideChildren: False
---

Some document types like Microsoft Word, Excel, OpenOffice Text and Spreadsheet may contain comments. Your requirement to include or exclude the comments in output representation of the document may vary in different situations. GroupDocs.Viewer enables you to control the rendering of document comments.  
By default, comments are not rendered into the output document. The API provides [setRenderComments()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setRenderComments(boolean)) property of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class that enables rendering of comments.

This feature is supported for:

* Microsoft Word documents
* Spreadsheets
* PDF documents
* Presentations

The following code sample shows how to render documents with comments.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setRenderComments(true);
    
        viewer.view(viewOptions);
    }
```
