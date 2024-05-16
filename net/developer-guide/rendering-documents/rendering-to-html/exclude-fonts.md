---
id: html-viewer-exclude-fonts
url: viewer/net/exclude-fonts
title: Exclude fonts
weight: 3
description: "Learn how to exclude system pre-installed fonts from HTML markup to reduce rendered document size when rendering documents using GroupDocs.Viewer for .NET."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
By default, GroupDocs.Viewer embeds the fonts used in the document into HTML. This ensures correct display regardless of the required fonts existing on the viewer device. Depending on the type of HTML rendering, fonts are added as follows:

* Embedded resources - inline 64-coded fonts
* External resources - external files
  
A list of file types that support font embedding is [at the end of the page](#list-of-format-families-that-support-adding-fonts-to-HTML).

Embedding fonts increase the size of the rendered result. To prevent adding fonts that are available on most devices to HTML, add the font names to the [FontsToExclude](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions/properties/fontstoexclude) collection of the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class.

The following code snippet shows how to prevent adding the **Times New Roman** font to HTML.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    // Exclude the Times New Roman font.
    viewOptions.FontsToExclude.Add("Times New Roman");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources()
            ' Exclude the Times New Roman font.
            viewOptions.FontsToExclude.Add("Times New Roman")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

## List of format families that support adding fonts to HTML

The following source file formats support adding fonts to HTML:

| Format Name | Extension |
| --- | --- |
| Portable Document Format | PDF |
| Microsoft Word | DOC, DOCX, DOCM, DOT, DOTX, DOTM |
| Microsoft Outlook | MSG, EML |
| Apple Mail | EMLX |
| OpenDocument Formats | ODT, OTT |
| Rich Text Format | RTF |
| Electronic publication | EPUB |
| Mobipocket e-book format | MOBI |
| LaTeX | TEX |
| Microsoft PowerPoint | PPT, PPTX, PPS, PPSX |
| OpenDocument Formats | ODP |
| Image files | SVG  |
