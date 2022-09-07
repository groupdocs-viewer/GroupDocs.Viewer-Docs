---
id: adjust-output-image-size
url: viewer/java/adjust-output-image-size
title: Adjust output image size
weight: 1
description: "This article explains how to adjust output image size when viewing CAD drawings with GroupDocs.Viewer within your Java applications."
keywords: rendering CAD drawings, rendering by width or height, view dwg files
productName: GroupDocs.Viewer for Java
hideChildren: False
---
![Adjust output image size](/viewer/java/images/adjust-output-image-size.jpg)

By default, when we view DWG files with several sheets, or DWF and DXF formats with layouts,  each sheet is rendered into separate page, that has it's own size. The biggest side (width or height depending on which one is bigger) is set 2000 px, another side is set value based on width-to-length ratio. You may adjust the size of resulting document by setting [CadOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions) as show in example.

```java
     try (Viewer viewer = new Viewer("sample.dwg")) {
         HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
         viewOptions.setCadOptions(CadOptions.forRenderingByScaleFactor(0.3f));
         viewer.view(viewOptions);
     }
```

When rendering CAD drawings GroupDocs.Viewer provides following options:

1.When rendering by width or height ([forRenderingByWidth()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#forRenderingByWidth(int)) or [forRenderingByHeight()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#forRenderingByHeight(int))) - value of another side will be calculated from ratio in original document. 
2.  When rendering by width and height ([forRenderingByWidthAndHeigh()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#forRenderingByWidthAndHeight(int,%20int))) - the resulting image will have the same size in pixels.
3.  When rendering by scale factory ([forRenderingByScaleFactor()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#forRenderingByScaleFactor(float))) - the accepted value `scaleFactor` type is float, values higher than 1 will enlarge resulting image and values between 0 and 1 will make image smaller. If the render result image size is equal to 200 px to 200 px, when `scaleFactor` is equal to 1, then setting this value to 0.1 will provide image with 20 px to 20 px dimension.

{{< alert style="info" >}}The same logic is applied when rendering to JPG/PNG/HTML. When rendering to PDF, generally only height to width ratio matters. {{< /alert >}}

## How sizing works for Sheets and Layouts

DWF drawing format consists of sheets, that may have different sizes, DWG and DXF drawing formats consists of the Model and Layouts. Refer to [Adjust output image size]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-cad-drawings/how-to-get-cad-layers-and-layouts.md" >}}) article that describes layouts rendering. Sizing rules described above, work for the drawings that consist of a one sheet or rendered without layouts and provide only one page as an output. In this section we will review how sizing works when the output consist of several pages. Later in this article, for convenience, we will refer to Model and layouts as sheets.

By default, when we render DWF format with several sheets, or DWG and DXF formats with layouts,  each sheet is rendered into separate page, that has it's own size.

If only one of `Height` or `Width` is set, value of another side for every sheet will be calculated from the ratio in size of that sheet. For example if `Height` is set as 600 and the ratio of the height to width in first sheet is 6 to 5 and second sheet is 6 to 4, then the width of the resulting pages will be 500px and 400px respectively.

When both `Width` and `Height` are set, we will get the same size for every page, and this may provide invalid results for documents that have differently sized sheets. When you want to set both `Width` and `Height` options for documents with sheets that have different sizes, it is better to render each page separately by specifying LayoutName property and setting individual size.

When the `ScaleFactor` option is set, it will be used to form resulting page sizes and will provide consistent size for every page.
