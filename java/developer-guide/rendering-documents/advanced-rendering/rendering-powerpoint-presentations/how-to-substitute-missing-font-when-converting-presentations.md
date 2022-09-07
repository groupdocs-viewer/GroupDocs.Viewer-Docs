---
id: how-to-substitute-missing-font-when-converting-presentations
url: viewer/java/how-to-substitute-missing-font-when-converting-presentations
title: Substitute missing fonts
weight: 1
description: "In this article we show how to substitute missing font when converting presentations to HTML and PDF with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
In case your presentation document contains a font that is not installed into the system GroupDocs.Viewer will use a default font. GroupDocs.Viewer for Java enables you to specify font substitution with [setDefaultFontName()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setDefaultFontName(java.lang.String)) setting.

## Font substitution

To set font substitution for missing fonts please use the following code:

When converting to HTML with embedded resources:

```java
    try (Viewer viewer = new Viewer("input.pptx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("output/html_embedded/p_{0}.html");
        viewOptions.setDefaultFontName("Times New Roman");
        viewer.view(viewOptions);
    }
```

When converting to HTML with external resources:

```java
    try (Viewer viewer = new Viewer("input.pptx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("output/html_external");
        viewOptions.setDefaultFontName("Times New Roman");
        viewer.view(viewOptions);
    }
```

Output HTML with default font:

![](/viewer/java/images/how-to-substitute-missing-font-when-converting-presentations.png)

Output HTML with "Times New Roman" font:

![](/viewer/java/images/how-to-substitute-missing-font-when-converting-presentations_1.png)

When converting to PDF:

```java
    try (Viewer viewer = new Viewer("input.pptx")) {
        PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
        viewOptions.setDefaultFontName("Times New Roman");
        viewer.view(viewOptions);
    }
```

Output PDF with default font:

![](/viewer/java/images/how-to-substitute-missing-font-when-converting-presentations_2.png)

Output PDF with "Times New Roman" font:

![](/viewer/java/images/how-to-substitute-missing-font-when-converting-presentations_3.png)
