---
id: show-hidden-pages
url: viewer/java/show-hidden-pages
title: Render hidden pages
weight: 4
description: "Learn how to render hidden pages on website or in other c# applications with GroupDocs.Viewer for Java"
keywords: hidden pages, hidden pages on website
productName: GroupDocs.Viewer for Java
hideChildren: False
---
By default, GroupDocs.Viewer does not render hidden items. To render them, call the [setRenderHiddenPages()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderHiddenPages-boolean-) method of the [ViewOptions](https://reference.groupdocs.com/viewer/java/groupdocs.viewer.options/viewoptions/) class.

This feature is supported for the following format families:

* Visio documents (for hidden pages)
* PowerPoint presentations (for hidden slides)
* Spreadsheets files (for hidden worksheets)

The following code snippet shows how to enable rendering of hidden items:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.pptx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewOptions.setRenderHiddenPages(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}