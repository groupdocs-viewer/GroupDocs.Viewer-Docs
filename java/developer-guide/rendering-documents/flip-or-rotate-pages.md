---
id: flip-or-rotate-pages
url: viewer/java/flip-or-rotate-pages
title: Rotate pages
weight: 6
description: "This article explains how to rotate PDF, HTML or Image pages when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: rotate pdf, rotate pages
productName: GroupDocs.Viewer for Java
hideChildren: False
---
![Flip or rotate pages](/viewer/java/images/flip-or-rotate-pages.png)

To rotate a page when rendering document, use the [RotatePage](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewoptions/#rotatePage-int-com.groupdocs.viewer.options.Rotation-) method of the [ViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewoptions/) class. This method has the following two parameters:

1. page number
2. rotation angle

The rotation angle is one of the following:

* [Rotation.ON_90_DEGREE](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/rotation/#ON-90-DEGREE) rotate page on 90-degree clockwise
* [Rotation.ON_180_DEGREE](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/rotation/#ON-180-DEGREE) rotate page on 180-degree clockwise
* [Rotation.ON_270_DEGREE](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/rotation/#ON-270-DEGREE) rotate page on 270-degree clockwise

The following code snippet shows how to rotate output pages when rendering a document as PDF:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.Rotation;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    // Rotate the first page.
    viewOptions.rotatePage(1, Rotation.ON_90_DEGREE);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/blob/master/Examples/src/main/java/com/groupdocs/viewer/examples/advanced_usage/rendering/common_rendering_options/RotatePages.java) in our public [GitHub repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java).