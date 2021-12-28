---
id: how-to-view-dwf-file-layers
url: viewer/net/how-to-view-dwf-file-layers
title: Render DWF layers
weight: 8
description: "This article explains how to view a specific DWF file layers with GroupDocs.Viewer within your .NET / C# applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Design Web Format File (.dwf) consists of various user layers. Layers represent various parts of the entire drawing, for example, this drawing describes a plan of a building and it's parts like stairs, walls, doors located in different layers.

![](viewer/net/images/how-to-view-dwf-file-layers.png)

## Background

Let's take a sample DWF described above and then we'll process with GroupDocs.Viewer and compare results.

By default GroupDocs.Viewer renders all layers:

![](viewer/net/images/how-to-view-dwf-file-layers_1.png)

## How to view only specific layers

If you want to view only specific layers you can set [CadOptions.Layers](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/layers) property of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [PngView](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)[Options](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or  [JpgView](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)[Options](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or[PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) class. 

Let's view only "Doors", "Stairs", "Walls" layers, to do that use following code, 

```csharp
using (Viewer viewer = new Viewer("sample.dwf"))
{
    PngViewOptions viewOptions = new PngViewOptions();

    options.CadOptions.Layers.Add(new Results.Layer("Stairs"));
    options.CadOptions.Layers.Add(new Results.Layer("Walls"));
    options.CadOptions.Layers.Add(new Results.Layer("Doors"));

    viewer.View(viewOptions);
}
```

Now GroupDocs.Viewer will render only these layers:

![](viewer/net/images/how-to-view-dwf-file-layers_2.png)

