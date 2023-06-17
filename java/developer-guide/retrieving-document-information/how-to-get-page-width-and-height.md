---
id: how-to-get-page-width-and-height
url: viewer/java/how-to-get-page-width-and-height
title: Get the width and height of the document pages
weight: 5
description: "This article explains how to get the width and height of the document pages using GroupDocs.Viewer for Java."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

You can get the width and height of each document page using the [getViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) object. Use the [getPages](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/#getPages--) method to access the collection that contains each [Page](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/page/) of the document.


The following code snippet shows how to get the width and height of each document page:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.ViewInfo;
// ...

try (Viewer viewer = new Viewer("sample.pdf")) {
    // Get file information.
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    // Display width and height of each page.
    for (Page page : viewInfo.getPages()) {
        System.out.println("Page: " + page.getNumber() + "; Width: " + page.getWidth() + ", pixels");
        System.out.println("Page: " + page.getNumber() + "; Height: " + page.getHeight() + ", pixels");
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/how-to-get-page-width-and-height.png)