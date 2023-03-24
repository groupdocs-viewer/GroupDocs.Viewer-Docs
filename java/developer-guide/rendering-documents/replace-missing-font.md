---
id: replace-missing-font
url: viewer/java/replace-missing-font
title: Replace missing font
weight: 7
description: "This article explains how to replace missing font when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: missing font,rendering documents
productName: GroupDocs.Viewer for Java
hideChildren: False
aliases:
    - /viewer/java/how-to-substitute-missing-font-when-converting-presentations/
---
You can specify the default font name for a document. GroupDocs.Viewer uses this font during rendering instead of any not installed fonts. For example, if the document includes a font containing non-English characters, specify the default font name to ensure that GroupDocs.Viewer replaces any missing font with one which has the same character set. 

The following code snippet shows how to set the default font name:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.pptx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewOptions.setDefaultFontName("Courier New");
    viewer.view(viewOptions);
}  
```
{{< /tab >}}
{{< /tabs >}}