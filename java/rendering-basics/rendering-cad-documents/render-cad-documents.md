---
id: render-cad-drawings-and-models
url: viewer/java/render-cad-drawings-and-models
title: Render CAD drawings and models as HTML, PDF, and image files
linkTitle: Render CAD drawings and models
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert CAD files (DWG, DGN, DXF) to HTML, PDF, PNG, and JPEG formats."
keywords: CAD viewer, dwg viewer, convert dwg to pdf, convert dwg to html, convert dwg to jpeg, convert dwg to image
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/how-to-view-cad-documents-using-java/
    - /viewer/java/view-cad-drawings
    - /viewer/java/how-to-convert-and-view-igs-files
    - /viewer/java/how-to-convert-and-view-cff2-and-cf2-files
    - /viewer/java/how-to-convert-and-view-obj-files
    - /viewer/java/how-to-view-plt-files
    - /viewer/java/how-to-convert-cad-to-html
    - /viewer/java/how-to-get-cad-layers-and-layouts
    - /viewer/java/render-all-layouts
    - /viewer/java/render-layers
    - /viewer/java/how-to-view-dwf-file-layers
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows you to render your CAD drawings and 3D models in HTML, PDF, PNG, and JPEG formats. You do not need to use AutoCAD or other CAD software to load and view CAD files within your Java application (web or desktop).

Create a [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a CAD drawing you want to view to the class constructor. You can load the drawing from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method overloads to convert the drawing to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/cad" >}} {{< icon "gdoc_person" >}} View CAD files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported CAD file formats

GroupDocs.Viewer supports the following CAD and 3D file formats:

* [AutoCAD Drawing](https://docs.fileformat.com/cad/dwg/) (.DWG)
* [AutoCAD Drawing Template](https://docs.fileformat.com/cad/dwt) (.DWT)
* [Design Web Format](https://docs.fileformat.com/cad/dwf/) (.DWF)
* [Drawing Exchange Format](https://docs.fileformat.com/cad/dxf) (.DXF)
* [AutoCAD Plotter Document](https://docs.fileformat.com/cad/plt) (.PLT)
* [MicroStation Design File (V7)](https://docs.fileformat.com/cad/dgn) (.DGN)
* [Industry Foundation Classes](https://docs.fileformat.com/cad/ifc) (.IFC)
* [Stereolithography File](https://docs.fileformat.com/cad/stl) (.STL)
* [Wavefront 3D Object File](https://docs.fileformat.com/3d/obj/) (.OBJ)
* [Common File Format](https://docs.fileformat.com/cad/cf2/) (.CF2)
* [IGES (Initial Graphics Exchange Specification) Drawing](https://docs.fileformat.com/cad/igs/) (.IGS)
* [HPGL (Hewlett-Packard Graphics Language) Plot File](https://docs.fileformat.com/cad/hpgl/) (.HPG)

## Render CAD drawings as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a CAD file to HTML. During the conversion, GroupDocs.Viewer creates an [SVG](https://docs.fileformat.com/page-description-language/svg/) image from the CAD drawing and embeds this image in an [HTML](https://docs.fileformat.com/web/html/) document.

The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Create an HTML file for the drawing.
    // Specify the HTML file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("output.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to HTML](/viewer/java/images/rendering-basics/render-cad-documents/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and style sheets) separately, call the [HtmlViewOptions.forExternalResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Create an HTML file for the drawing.
    // Specify the HTML file name and location of external resources.
    // {0} is replaced with the resource name.
   HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("output.html", "output/resource_{0}", "output/resource_{0}");
   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/java/images/rendering-basics/render-cad-documents/render-to-html-external-resources.png)

## Render CAD drawings as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a CAD file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Create a PDF file for the drawing.
    // Specify the PDF file name.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to PDF](/viewer/java/images/rendering-basics/render-cad-documents/render-cad-to-pdf.png)

## Render CAD drawings as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a CAD file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Create a PNG image for the drawing.
    PngViewOptions viewOptions = new PngViewOptions("output.png");
    // Set width and height.
    viewOptions.setWidth(1500);
    viewOptions.setHeight(1000);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to PNG](/viewer/java/images/rendering-basics/render-cad-documents/render-cad-to-png-image.png)

## Render CAD drawings as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a CAD file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Create a JPG image for the drawing.
    PngViewOptions viewOptions = new PngViewOptions("output.png");
    // Set width and height.
    viewOptions.setWidth(1500);
    viewOptions.setHeight(1000);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Get information about existing layouts and layers

Follow the steps below to obtain information about layouts and layers contained in a CAD drawing. You can use this information to specify which layers and layouts to display in the output file.

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.getViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [CadViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/cadviewinfo) type.
3. Use the [CadViewInfo.getLayouts](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/cadviewinfo/#getLayouts--) and [CadViewInfo.getLayers](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/cadviewinfo/#getLayers--) properties to obtain the lists of layouts and layers in the CAD file.

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.CadViewInfo;
import com.groupdocs.viewer.results.Layer;
import com.groupdocs.viewer.results.Layout;
// ...
CadViewInfo info;
try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    info = (CadViewInfo) viewer.getViewInfo(ViewInfoOptions.forHtmlView());
}
// Display information about the CAD file.
System.out.println("File type: " + info.getFileType());
System.out.println("The number of pages: " + info.getPages().size());
// Display the list of existing layouts.
for (Layout layout : info.getLayouts()) {
    System.out.println(layout);
}
// Display the list of existing layers.
for (Layer layer : info.getLayers()) {
    System.out.println(layer);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about a CAD file](/viewer/java/images/rendering-basics/render-cad-documents/retrieve-cad-file-information.png)

## Render all or specific layouts

When you convert a CAD drawing to HTML, PDF, or image format, GroupDocs.Viewer renders only the model-space layout (*Model*). If you also need to render all paper space layouts contained in your CAD file, use the [CadOptions.setRenderLayouts](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setRenderLayouts-boolean-) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

Each layout is rendered on a separate page.

The following example renders all layouts when converting a CAD drawing to PDF:

{{< tabs "example7">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.dwg")) {
    // Convert the document to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Render the Model and all non-empty paper space layouts. 
    viewOptions.getCadOptions().setRenderLayouts(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

To render a specific layout, pass the layout name to the [CadOptions.setLayoutName](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setLayoutName-java.lang.String-) method of a target view.

{{< tabs "example8">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.dwg")) {
    // Convert the document to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Specify the name of the layout to render.
    // If the specified layout is not found,
    // an exception occurs.
    viewOptions.getCadOptions().setLayoutName("Layout1");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}
1. The `CadOptions.RenderLayouts` and `CadOptions.LayoutName` properties apply only to the following file formats: DWG, DWT, DXF, and DWF.

2. If you use the [CadOptions.setLayoutName](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setLayoutName-java.lang.String-) method to render a specific layout, the `CadOptions.RenderLayouts` option is ignored.{{< /alert >}}

## Render specific layers

A CAD drawing can contain many layers. Each layer is used to draw a specific object type. For example, the drawing below contains layers for walls, furniture, plants, and so on. You can control the visibility of objects on the drawing by turning specific layers on or off.

![Layers in a CAD file](/viewer/java/images/rendering-basics/render-cad-documents/autocad-drawing-layers.png)

When you convert a CAD drawing to HTML, PDF, or image format, GroupDocs.Viewer renders all available layers. You can specify which layers to display in the output file, as described below:

1. Use the [setCadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setCadOptions-com.groupdocs.viewer.options.CadOptions-) method for a target view:

  * [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
  * [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
  * [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
  * [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

2. Assign the list of layers you want to render to the [CadOptions.setLayers](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setLayers-java.util.List-com.groupdocs.viewer.results.Layer--) method.

The following example renders layers with walls and furniture to PDF:

{{< tabs "example9">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Convert the document to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Specify a list of layers to display.
    List<Layer> layers = new ArrayList<>();
    layers.add(CacheableFactory.getInstance().newLayer("Base"));
    layers.add(CacheableFactory.getInstance().newLayer("Walls"));
    layers.add(CacheableFactory.getInstance().newLayer("Furniture"));
    viewOptions.getCadOptions().setLayers(layers);

    viewOptions.getCadOptions().setLayoutName("Layout1");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render specific CAD layers](/viewer/java/images/rendering-basics/render-cad-documents/render-specific-layers.png)
