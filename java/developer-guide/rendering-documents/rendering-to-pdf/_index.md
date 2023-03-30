---
id: rendering-to-pdf
url: viewer/java/rendering-to-pdf
title: Render to PDF
weight: 13
description: "Rendering files to PDF with GroupDocs.Viewer for Java. It means that you can embed PDF in websites or applications by using this Java API"
keywords: embed pdf in website, rendering to pdf, c# api, rendering pdf
productName: GroupDocs.Viewer for Java
hideChildren: False
---  
When rendering to PDF, GroupDocs.Viewer renders all pages of the source document as a single PDF document.

To render files to PDF, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object. Specify a path to save the rendered file.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object as the parameter.

The following code snippet shows how to render a .docx document to PDF:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
