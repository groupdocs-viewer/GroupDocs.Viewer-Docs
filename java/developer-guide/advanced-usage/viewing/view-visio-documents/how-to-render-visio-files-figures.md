---
id:  how-to-render-visio-files-figures
url: viewer/java/how-to-render-visio-files-figures
title: How to render Visio documents figures
weight: 2
description: "In this article we show how render Visio files figures while converting and viewing Visio files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When you are converting Visio files, you can choose what you want to render: Visio scheme pages or figures of Visio scheme.
If Visio scheme does not contain pages - only figures will be rendered.

![Fugures in VSS scheme](viewer/java/images/how-to-render-visio-files-figures/figures-in-visio.jpg)

## How to render Visio figures

To force render Visio figures please set RenderFiguresOnly property to true in [VisioRenderingOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/VisioRenderingOptions).
You can set width of each figure, height will be calculated by proportions automatically.

### Rendering Visio figures to PNG

To render Visio figures to PNG with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.vssx")) {
        PngViewOptions options = new PngViewOptions("result_page_{0}.png");
        options.getVisioRenderingOptions().setRenderFiguresOnly(true);
        options.getVisioRenderingOptions().setFigureWidth(250);

        viewer.view(options);
    }
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![Output PNG result](viewer/java/images/how-to-render-visio-files-figures/png-result.jpg)

### Rendering Visio figures when converting to JPG

To render Visio figures to JPG with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.vssx")) {
        JpgViewOptions options = new JpgViewOptions("result_page_{0}.jpg");
        options.getVisioRenderingOptions().setRenderFiguresOnly(true);
        options.getVisioRenderingOptions().setFigureWidth(250);

        viewer.view(options);
    }
```

\
The following screenshot shows the output JPEG file opened in a Windows Photo Viewer application.\
\
![Output JPEG result](viewer/java/images/how-to-render-visio-files-figures/jpg-result.jpg)

### Rendering Visio figures when converting to PDF

To set margins values when converting HTML files to PDF with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.vssx")) {
        PdfViewOptions options = new PdfViewOptions("result.pdf");
        options.getVisioRenderingOptions().setRenderFiguresOnly(true);
        options.getVisioRenderingOptions().setFigureWidth(250);

        viewer.view(options);
    }
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.\
\
![Output PDF result](viewer/java/images/how-to-render-visio-files-figures/pdf-result.jpg)

### Rendering Visio figures when converting to HTML

To set margins values when converting HTML files to PDF with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.vssx")) {
        PdfViewOptions options = new PdfViewOptions("result_page_{0}.html");
        options.getVisioRenderingOptions().setRenderFiguresOnly(true);
        options.getVisioRenderingOptions().setFigureWidth(250);

        viewer.view(options);
    }
```

\
The following screenshot shows the output HTML file opened in browser.\
\
![Output HTML result](viewer/java/images/how-to-render-visio-files-figures/html-result.jpg)

## More resources
### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
*   [GroupDocs.Viewer for .NET samples, plugins and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-MVC)

### Free Online App
Along with full-featured Java library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.