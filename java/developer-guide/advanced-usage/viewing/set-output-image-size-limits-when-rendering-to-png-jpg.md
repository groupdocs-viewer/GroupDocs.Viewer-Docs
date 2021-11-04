---
id: set-output-image-size-limits-when-rendering-to-png-jpg
url: viewer/java/set-output-image-size-limits-when-rendering-to-png-jpg
title: Set output image size limits when rendering to PNG/JPG
weight: 10
description: "This article explains how to set output image size limits for PNG/JPG output when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: limit max size width height
productName: GroupDocs.Viewer for Java
hideChildren: False
---
[GroupDocs.Viewer](https://products.groupdocs.com/viewer) also provides the feature to set limits for width/height for the output image. Follow the below steps to achieve this functionality.
If you set MaxWidth/MaxHeight options, if the image exceeds one of these limits - it will be resized proportionally.

* Instantiate the [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Instantiate the  [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions);
* Set MaxWidth and/or MaxHeight values;

* Call [view(...)](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.
* The following code sample shows how to set the output image size limits when rendering the document.

```java
    try (Viewer viewer = new Viewer("sample.jpg")) {
        JpgViewOptions viewOptions = new JpgViewOptions("result_{0}.jpg");
        //PngViewOptions viewOptions = new PngViewOptions("result_{0}.png");
    
        viewOptions.setMaxWidth(800);
        viewOptions.setMaxHeight(600);
    
        viewer.view(viewOptions);
    }
```

[PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) and [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) implement special interface [IMaxSizeOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/IMaxSizeOptions), which contain properties for size limits.

```java
    /**
     * Limits of image size options interface.
     */
    public interface IMaxSizeOptions {
        /**
         * Max width of an output image in pixels.
         */
        int getMaxWidth();

        /**
         * Max width of an output image in pixels.
         */
        int setMaxWidth();

        /**
         * Max height of an output image in pixels.
         */
        int getMaxHeight();

        /**
         * Max height of an output image in pixels.
         */
        int setMaxHeight();
    }
```

Note: If you set Width/Height in options, MaxWidth/MaxHeight options will be ignored.

If you want to render single image to PDF/HTML, please refer to the [following article]({{< ref "viewer/java/developer-guide/advanced-usage/viewing/set-output-image-size-limits-when-rendering-to-pdf-html.md" >}}).

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