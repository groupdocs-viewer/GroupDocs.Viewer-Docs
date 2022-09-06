---
id: how-to-set-background-color-when-converting-cad-drawings
url: viewer/net/how-to-set-background-color-when-converting-cad-drawings
title: Set background color
weight: 7
description: "This article explains how to set background color when converting CAD Drawings with GroupDocs.Viewer within your .NET / C# applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When converting CAD drawings with GroupDocs.Viewer there is no background color set by default but we proved an option that enables you to set any background color.

## Setting background color when converting CAD Drawings

Let's check how does output looks when converting sample CAD drawing with GroupDocs.Viewer.

And as you can see the background color of the output image below is white.

![](/viewer/net/images/how-to-set-background-color-when-converting-cad-drawings.png)

Now, lets set background color and convert CAD drawing one more time.

To set background color you need to specify the [BackgroundColor](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/backgroundcolor) property value in the [CadOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions) class.

The following code snippet shows how to set background color.

```csharp
using (Viewer viewer = new Viewer("input.dwg"))
{
    PngViewOptions options = new PngViewOptions(pageFilePathFormat);
    options.CadOptions.BackgroundColor = System.Drawing.Color.Blue;
    viewer.View(options);
}
```

And here is output image with blue background color:

![](/viewer/net/images/how-to-set-background-color-when-converting-cad-drawings_1.png)


