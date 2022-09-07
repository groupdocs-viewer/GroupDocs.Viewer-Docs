---
id: how-to-view-cad-documents-using-java
url: viewer/java/how-to-view-cad-documents-using-java
title: How to view CAD documents using Java
weight: 1
description: "This guide describes how to build your CAD files viewer in Java. View CAD files (DWG, DGN, DXF) to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer Java API by GroupDocs."
keywords: CAD Viewer in Java, Convert DWG to HTML in Java, Convert DWG to JPG in Java, DWG Viewer using Java
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

CAD  (Computer-Aided Design) document formats are designed to work on detailed drawings, building plans, and device diagrams for their subsequent production or related work. What used to be done manually on a drawing board in pase, now can be done quickly on a computer.
The most used formats in the CAD design industry are DWG, DWF, DXF, DGN. In this article, we will discuss how to view CAD files in Java applications.

The following topics are covered below in brief:

* [Java API for rendering CAD files](/viewer/java/how-to-view-cad-documents-using-java/#java-api-for-rendering-cad-files)
* [How to render CAD files into HTML, JPG, PNG, or PDF](/viewer/java/how-to-view-cad-documents-using-java/#how-to-render-cad-files-into-html-jpg-png-or-pdf)
* [Getting layouts/layers information](/viewer/java/how-to-view-cad-documents-using-java/#getting-layoutslayers-information)
* [Layers rendering](/viewer/java/how-to-view-cad-documents-using-java/#layers-rendering)
* [Layouts rendering](/viewer/java/how-to-view-cad-documents-using-java/#layouts-rendering)

## Java API for rendering CAD files

[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) provides API to render CAD documents formats to PNG, PDF, JPEG, and HTML. Also, API includes special options for additional result image processing. Supported formats are DWF, DXF, DGN, IFC, STL, DWT, Plotter documents, and [many others](https://docs.groupdocs.com/viewer/java/supported-document-formats/).

Follow one of the ways as described in the [Installation]({{< ref "/viewer/java/getting-started/installation" >}}) section to install and reference GroupDocs.Viewer for Java.

![Source CAD document preview](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/source_image_preview.jpg)

## How to render CAD files into HTML, JPG, PNG, or PDF

### Rendering to HTML with Embedded Resources in Java

To render your file to HTML file(s) with embedded resources do the following steps:

* With `Viewer` class load your document.
* With the `forEmbeddedResources` method create the `HtmlViewOptions` instance and type output file name.
* Call `view` method to render your document to HTML, resources will be embedded in to file.

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```

![Rendering CAD document to HTML](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/rendering_to_html_with_embed.jpg)

### Rendering to HTML with External Resources in Java

To render your file to HTML file(s) with external resources do the following steps:

* With `Viewer` class load your document.
* with `forExternalResources` method create `HtmlViewOptions` instance and type:
  * the output file name mask
  * external resources folder file path mask
  * url for resources mask format

* Call `view` method to render your document to HTML.

Resources will be placed to separate folder.

![Resources placed into separate folder](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/resources_placed_to_separate_folder.jpg)

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.view(viewOptions);
}
```

### Rendering to JPEG in Java

* With `Viewer` class load your document.
* Сreate `JpegViewOptions` instance and type output file name.
* Call `view` method to render your document to JPEG.

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("page_{0}.jgp");
    viewer.view(viewOptions);
}
```

![Rendering CAD document to JPEG](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/rendering_cad_to_jpeg.jpg)

### Rendering to PNG in Java

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `view` method to render your document to PNG.

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
    PngViewOptions viewOptions = new PngViewOptions("opage_{0}.png");
    viewer.view(viewOptions);
}
```

![Rendering CAD document to PNG](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/rendering_cad_to_png.jpg)

### Rendering to PDF in Java

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `view` method to render your document to PDF.

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```

![Rendering CAD document to PDF](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/rendering_cad_to_pdf.jpg)

## Getting layouts/layers information

CAD files often consist of many layouts and layers. You can obtain information on what layouts and layers are in a specific file with the following code:

* With `Viewer` class load your document.
* Сreate `ViewInfoOptions` instance using `ViewInfoOptions.forHtmlView()` method.
* Call `getViewInfo` to get layers/layouts information and get `CadViewInfo` object result.
* Layouts and layers Lists are located in resulted `CadViewInfo` object.

```java
try (Viewer viewer = new Viewer("sample.dwf")) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    CadViewInfo viewInfo = (CadViewInfo) viewer.getViewInfo(viewInfoOptions);

    System.out.println("File type: " + viewInfo.getFileType());
    System.out.println("Pages count: " + viewInfo.getPages().size());

    for (Layout layout : viewInfo.getLayouts()) {
        System.out.println(layout);
    }

    for (Layer layer : viewInfo.getLayers()) {
        System.out.println(layer);
    }
}
```

You can use this information to specify what layers/layouts render in the output file.

```bash
File type: Design Web Format File (.dwf)
Pages count: 3

Layouts:
three-layouts-with-layers-Layout1 8.40063667297363x6.40062713623047px
three-layouts-with-layers-Layout2 8.40063667297363x6.40062713623047px
three-layouts-with-layers-Layout3 8.40063667297363x6.40062713623047px

Layers:
CIRCLE (visible)
0 (visible)
TRIANGLE (visible)
QUADRANT (visible)
```

### Layers rendering

CAD drawing most often contains multiple layers, drawing contains a list of layers that rendering by default,
but other layers may hidden, because these layers are may contain supervisor remarks, details of the discussion, or
other additional information that should not be in the final drawing.

To render your file with specific layers please do the following steps:

* With `Viewer` class load your document.
* Сreate `HtmlViewOptions/JpgViewOptions/PngViewOptions/PdfViewOptions` instance and type output file name.
* Specify layer(s) to render.
* Call `view` method to render your document with specified layers.

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewOptions.getCadOptions().getLayers().add(
        CacheableFactory.getInstance().newLayer("CIRCLE")    
    );
    viewer.view(viewOptions);
}
```

This drawing contains two layers: "0" - with a rectangle and "CIRCLE" with a circle. We want to render circle only,
so we added a layer with the name "CIRCLE" in the layers list.

![Render specific layer](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/render_specific_layer.jpg)

### Layouts rendering

By default GroupDocs.Viewer renders CAD file model presentation (document default layer).
If you want to choose a different layout you can set the layout name to render.

To render your file with specific layouts please do the following steps:

* With `Viewer` class load your document.
* Сreate `HtmlViewOptions/JpgViewOptions/PngViewOptions/PdfViewOptions` instance and type output file name.
* Set required layout name by calling `viewOptions.getCadOptions().setLayoutName()` method.
* Call `view` method to render your document with a specified layout.

```java
try (Viewer viewer = new Viewer("sample.dwf"))
{
   HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
   viewOptions.getCadOptions().setLayoutName("three-layouts-with-layers-Layout2");
   viewer.view(viewOptions);
}
```

This drawing contains three layouts: "three-layouts-with-layers-Layout1", "three-layouts-with-layers-Layout2", "three-layouts-with-layers-Layout3".
We select "three-layouts-with-layers-Layout2" layout name with rectangle, we set this layer name in LayoutName property.

![Specific layout rendering](/viewer/java/images/viewer-use-cases/how-to-view-cad-using-java/specific_layout_rendering.jpg)

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view CAD files in Java applications, in this article you have seen how to get models, layers, and layouts information for CAD files in your application.
Also, you can use [Online apps to view your files](https://products.groupdocs.app/viewer/family) these applications are built based on GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/java/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [How to view Word documents using Java](/viewer/java/how-to-view-word-documents-using-java/)
* [How to view PDF documents using Java](/viewer/java/how-to-view-pdf-documents-using-java/)
