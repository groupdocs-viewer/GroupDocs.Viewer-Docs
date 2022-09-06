---
id: render-all-layouts
url: viewer/net/render-all-layouts
title: Render drawing layouts
weight: 10
description: "This article explains how to view all CAD drawing layouts with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
![](/viewer/net/images/render-all-layouts.jpg)

When GroupDocs.Viewer renders CAD drawings we get only Model representation. In order to render Model and all non-empty Layouts within CAD drawing, the property [CadOptions.RenderLayouts](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class (or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) is used.

Following are the steps to render all the non-empty layouts along with the Model.

* Create [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) object.
* Set [CadOptions.RenderLayouts](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) to *true*
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method

The following code sample shows how to render layouts along with the Model of a CAD drawing.

```csharp
using (Viewer viewer = new Viewer("sample.dwg"))
{
   HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
   viewOptions.CadOptions.RenderLayouts = true;
   viewer.View(viewOptions);
}
```

