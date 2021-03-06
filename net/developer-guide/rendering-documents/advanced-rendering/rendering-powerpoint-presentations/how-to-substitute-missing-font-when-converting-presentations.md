---
id: how-to-substitute-missing-font-when-converting-presentations
url: viewer/net/how-to-substitute-missing-font-when-converting-presentations
title: Replace missing fonts
weight: 1
description: "In this article we show how to substitute missing font when converting presentations to HTML and PDF with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
In case your presentation document contains a font that is not installed into the system GroupDocs.Viewer will use a default font. GroupDocs.Viewer enables you to specify font substitution with *DefaultFontName* setting.

## Font substitution

To set font substitution for missing fonts please use the following code:

When converting to HTML with embedded resources:

```csharp
using (Viewer viewer = new Viewer("input.pptx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("output/html_embedded/p_{0}.html");
    viewOptions.DefaultFontName = "Times New Roman";
    viewer.View(viewOptions);
}
```

When converting to HTML with external resources:

```csharp
using (Viewer viewer = new Viewer("input.pptx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForExternalResources("output/html_external");
    viewOptions.DefaultFontName = "Times New Roman";
    viewer.View(viewOptions);
}
```

Output HTML with default font:

![](viewer/net/images/how-to-substitute-missing-font-when-converting-presentations.png)

Output HTML with "Times New Roman" font:

![](viewer/net/images/how-to-substitute-missing-font-when-converting-presentations_1.png)

When converting to PDF:

```csharp
using (Viewer viewer = new Viewer("input.pptx"))
{
      PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
      viewOptions.DefaultFontName = "Times New Roman";
      viewer.View(viewOptions);
}
```

Output PDF with default font:

![](viewer/net/images/how-to-substitute-missing-font-when-converting-presentations_2.png)

Output PDF with "Times New Roman" font:

![](viewer/net/images/how-to-substitute-missing-font-when-converting-presentations_3.png)
