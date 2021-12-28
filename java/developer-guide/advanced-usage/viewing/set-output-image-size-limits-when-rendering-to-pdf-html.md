---
id: set-output-image-size-limits-rendering-to-pdf-html
url: viewer/java/set-output-image-size-limits-when-rendering-to-pdf-html
title: Set output image size limits when rendering single image to PDF/HTML.
weight: 11
description: "This article explains how to set output image size limits for PDF/HTML output when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: limit max size width height pdf html
productName: GroupDocs.Viewer for Java
hideChildren: False
---
[GroupDocs.Viewer](https://products.groupdocs.com/viewer) also provides the feature to set limits for width/height for the output image. Follow the below steps to achieve this functionality.
If you want to render single image in PDF/HTML you can set width/height for the output image.
If you set ImageMaxWidth/ImageMaxHeight options, if the image exceeds one of these limits - it will be resized proportionally.

* Instantiate the [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Instantiate the  [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) or [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions);
* Set ImageMaxWidth and/or ImageMaxHeight values;
* Call [view(...)](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to set the output image size limits when rendering the document.

```java
    try (Viewer viewer = new Viewer("sample.jpg")) {
        PdfViewOptions viewOptions = new PdfViewOptions("result.pdf");
        //HtmlViewOptions viewOptions = new HtmlViewOptions.forEmbeddedResources("result_{0}.html");
        //HtmlViewOptions viewOptions = new HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}_{1}", "page_{0}_{1}");

        viewOptions.setImageMaxWidth(800);
        viewOptions.setImageMaxHeight(600);

        viewer.view(viewOptions);
    }
```

In [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) and [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions)
have following properties to set single image width/height in HTML.

```java
    /**
     * Max width of an output image in pixels. (When converting single image to HTML only)
     */
    public int getImageMaxWidth();

    /**
     * Max width of an output image in pixels. (When converting single image to HTML only)
     */
    public void setImageMaxWidth(int imageMaxWidth);

    /**
     * Max height of an output image in pixels. (When converting single image to HTML only)
     */
    public int getImageMaxHeight();

    /**
     * Max height of an output image in pixels. (When converting single image to HTML only)
     */
    public void setImageMaxHeight(int imageMaxHeight);

    /**
     * The width of the output image in pixels. (When converting single image to HTML only)
     */
    public int getImageWidth();

    /**
     * The width of the output image in pixels. (When converting single image to HTML only)
     */
    public void setImageWidth(int imageWidth);

    /**
     * The height of an output image in pixels. (When converting single image to HTML only)
     */
    public int getImageHeight();

    /**
     * The height of an output image in pixels. (When converting single image to HTML only)
     */
    public void setImageHeight(int imageHeight);
```

**Note:** If you set Width/Height in options, MaxWidth/MaxHeight options **will be ignored**.

If you want to render single image to JPG/PNG, please refer to the [following article]({{< ref "viewer/java/developer-guide/advanced-usage/viewing/set-output-image-size-limits-when-rendering-to-png-jpg.md" >}}).

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