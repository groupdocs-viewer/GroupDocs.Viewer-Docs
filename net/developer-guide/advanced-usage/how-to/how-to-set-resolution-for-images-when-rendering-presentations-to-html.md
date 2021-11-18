---
id: how-to-set-resolution-for-images-when-rendering-presentations-to-html
url: viewer/net/how-to-set-resolution-for-images-when-rendering-presentations-to-html
title: How to set a resolution for images when rendering presentations to HTML
weight: 2
description: "In this article we show how to set resolution for images inside presentation when rendering to HTML."
keywords: presentation images resolution quality
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Some presentations might have high-resolution (pictures, backgrounds, etc.) images, for some cases you need to reduce the resolution to get a smaller rendered HTML file size.

## How to set a resolution for images when rendering presentations to HTML

### Available resolution options

In [GroupDocs.Viewer.Options.BaseViewOptions](<https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions>) class there [GroupDocs.Viewer.Options.PresentationOptions](<https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/presentationoptions>) property with [GroupDocs.Viewer.Options.Resolution](<https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/resolution>) property which contains resolution options, you can refer to this table to make the right choice for your final document purpose:

|Resolution option|Resolution in DPI| Optimal use |
| --- | --- | --- |
|Resolution.DocumentResolution|As in the document| Default value - as in the document.|
|Resolution.Dpi72|72|Max compression, low quality.|
|Resolution.Dpi96|96|Good for web pages and projectors.|
|Resolution.Dpi150|150|Good for web pages and projectors.|
|Resolution.Dpi220|220|Excellent quality on most printers and screens.|
|Resolution.Dpi330|330|Good quality for high-definition (HD) displays.|

To set resolution when converting presentation files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.pptx"))
{
      HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("result_{0}.html");
      htmlViewOptions.PresentationOptions.Resolution = Resolution.Dpi150;

      viewer.View(options);
}
```

### Comparison size with different resolutions

|The resolution, DPI| File size|
| --- | --- |
|Document resolution|165 MB|
|72|7.4 MB|
|96|11.76 MB|
|150|21.49 MB|
|220|36.21 MB|
|330|67 MB|

## More resources

### View PowerPoint Files Online

Along with full-featured .NET library we provide simple but powerful free online Apps.
View PPT, PPTX, and ODP presentations online with **[GroupDocs Viewer App](https://products.groupdocs.app/viewer/powerpoint)**.

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

* [GroupDocs.Viewer for .NET examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
* [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
* [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-MVC)
* [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
* [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
* [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)