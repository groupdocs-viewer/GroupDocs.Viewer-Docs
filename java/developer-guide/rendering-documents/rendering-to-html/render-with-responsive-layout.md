---
id: render-with-responsive-layout
url: viewer/java/render-with-responsive-layout
title: Render with responsive layout
weight: 1
description: "Learn how to render your document with responsive HTML layout that looks great on mobile and desktop devices."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

Responsive design aims to make web pages render well on a variety of devices. GroupDocs.Viewer provides the [setRenderResponsive()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setRenderResponsive-boolean-) method of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class to render HTML pages with responsive layout. 

The following code snippet shows how to render a .docx document to HTML with responsive layout:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    // Render with responsive layout.
    viewOptions.setRenderResponsive(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}