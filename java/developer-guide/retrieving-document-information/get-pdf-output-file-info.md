---
id: get-pdf-output-file-info
url: viewer/java/get-pdf-output-file-info
title: Get the PDF output file information
weight: 6
description: "This article explains how to get the PDF output file information using Java with GroupDocs.Viewer for Java."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

You can get the information about the PDF output file using the [getViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) object. The object contains the [Pages](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/#getPages--) collection that represents each [Page](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/page/) of the document.

The following code snippet shows how to get the page count and the width and height of each document page:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.pdf")) {
    // Get file information.
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forPdfView();
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    // Display page count.
    System.out.println("Pages count: " + viewInfo.getPages().size());

    // Display width and height of each page
    for (Page page : viewInfo.getPages()) {
        System.out.println("Page: " + page.getNumber() + "; Width: " + page.getWidth() + ", pixels");
        System.out.println("Page: " + page.getNumber() + "; Height: " + page.getHeight() + ", pixels");
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/get_pdf_output_file_info.png)
