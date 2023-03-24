---
id: reorder-pages
url: viewer/java/reorder-pages
title: Reorder pages
weight: 1
description: "Reorder pages when rendering documents to PDF with GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer preserves the page order in the source document. Instead, you may reorder pages in the output PDF document.

To reorder pages, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object.
2. Create the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the new page order in the last parameters.

The following code snippet shows how to reorder pages:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    // Create a PDF file.
    PdfViewOptions viewOptions = new PdfViewOptions();

    // Pass page numbers in the order you want to render them.                                     
    viewer.view(viewOptions, 2, 1);
}
```
{{< /tab >}}
{{< /tabs >}}
