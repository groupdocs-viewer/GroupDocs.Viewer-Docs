---
id: how-to-convert-cad-to-html
url: viewer/java/how-to-convert-cad-to-html
title: Rendering CAD to HTML
weight: 5
description: "This article demonstrates how to convert CAD drawings to HTML with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
[CAD drawings](https://docs.fileformat.com/cad/) are vector format images that contain points with X, Y and Z coordinates, and associated lines definitions. CAD drawings also may contain layers and layouts. 

## Background

If you convert your CAD drawings to HTML it's better to leave them in vector format rather rasterization to get better viewing and zooming. While converting your CAD drawings to HTML GroupDocs.Viewer converts a drawing to [SVG (Scalable Vector Graphics format)](https://docs.fileformat.com/page-description-language/svg/) and embeds it to [HTML](https://docs.fileformat.com/web/html/).

![](viewer/java/images/how-to-convert-cad-to-html.png)

## How to convert CAD drawings to HTML

There are two ways: HTML with external resources and HTML with embedded resources.

To render to HTML with external resources use following code:

```java
    try (Viewer viewer = new Viewer("document.dwg")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{1}", "page_{0}/resources_{1}");

        viewer.view(viewOptions);
    }
```

Result:

![](viewer/java/images/how-to-convert-cad-to-html_1.png)

![](viewer/java/images/how-to-convert-cad-to-html_2.png)

Output SVG and HTML styles are located in the separate resources folder.

To render to HTML with embedded resources use following code:

```java
    try (Viewer viewer = new Viewer("document.dwg")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");

        viewer.view(viewOptions);
    }
```

Result:

![](viewer/java/images/how-to-convert-cad-to-html_3.png)

HTML content, SVG and HTML styles are located in one HTML file.
