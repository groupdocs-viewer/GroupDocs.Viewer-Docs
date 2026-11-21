---
id: set-custom-fonts
url: viewer/net/set-custom-fonts
title: Set custom fonts
weight: 6
description: "This article explains how to set custom fonts when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: Setting custom fonts with GroupDocs.Viewer for .NET API
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Every text in a document has a font. A PDF usually carries its fonts inside the file, while Office documents rely on the fonts installed on the machine that opens them. When a document uses a font that the machine rendering it does not have, GroupDocs.Viewer substitutes another font. If you have the font file, you can give it to GroupDocs.Viewer instead.

![GroupDocs.Viewer looks for a document's font in this order: embedded in the document; installed on the machine or in a font source added with FontSettings.SetFontSources; otherwise it substitutes another font](/viewer/net/images/developer-guide/rendering-documents/font-lookup.svg)

## How GroupDocs.Viewer substitutes a missing font

A document is often created on one machine and rendered on another, where some of its fonts are missing. GroupDocs.Viewer then picks a substitute by its font substitution rules: it looks at the document's metadata, the alternative names of the missing font, the settings of the document and the operating system, and the fonts that are installed. On a machine with no fonts at all, it falls back to a font embedded in the GroupDocs.Viewer assembly, for example the free Fanwood font for Word documents.

The substitution happens silently while the document is rendered (when [`Viewer.View()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/#view) runs): no message or event tells which font was missing or what replaced it.

## Add a font source

If you know that a document uses a font that is not installed on the target machine, and you have the font file, add a **font source** before you call [`Viewer.View()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/#view). A font source is a folder with one or more fonts, represented by the [`FolderFontSource`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/) class. The [`FontSettings.SetFontSources()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/setfontsources/) method adds font sources to GroupDocs.Viewer.

The following code snippet demonstrates this. The presentation `harvest-launch.pptx` sets its text in Lobster, a font that most machines do not have and that the file does not embed. The font file, `Lobster-Regular.ttf`, is in the `custom_fonts` folder next to the code. An instance of the [`FolderFontSource`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/) class points to this folder and is passed to the [`FontSettings`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/) static class, and then the presentation is rendered to HTML. As a result, the output HTML uses Lobster; without the font source, GroupDocs.Viewer would substitute another font.

{{< tabs "set-custom-fonts">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Fonts;
// ...

// Specify the font source: the custom_fonts folder holds Lobster-Regular.ttf.
// SearchOption is named in full: System.IO, which .NET 6+ projects import by default, has one too.
FolderFontSource fontSource =
    new FolderFontSource("custom_fonts", GroupDocs.Viewer.Fonts.SearchOption.TopFolderOnly);
FontSettings.SetFontSources(fontSource);

using (Viewer viewer = new Viewer("harvest-launch.pptx"))
{
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Fonts
' ...

Module Program
    Sub Main(args As String())
        ' Specify the font source: the custom_fonts folder holds Lobster-Regular.ttf.
        Dim fontSource As FolderFontSource = New FolderFontSource("custom_fonts", GroupDocs.Viewer.Fonts.SearchOption.TopFolderOnly)
        FontSettings.SetFontSources(fontSource)
    
        Using viewer As Viewer = New Viewer("harvest-launch.pptx")
            ' Create an HTML file.
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "harvest-launch.pptx" >}}
{{< tab-text >}}
`harvest-launch.pptx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/set-custom-fonts/harvest-launch.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Lobster-Regular.ttf" >}}
{{< tab-text >}}
`Lobster-Regular.ttf` is the font the example loads from the `custom_fonts` folder. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/set-custom-fonts/custom_fonts/Lobster-Regular.ttf) to download it. Lobster is by The Lobster Project Authors and is licensed under the [SIL Open Font License 1.1](/viewer/net/_sample_files/developer-guide/rendering-documents/set-custom-fonts/custom_fonts/OFL.txt).
{{< /tab-text >}}
{{< /tab >}}
{{< tab "set-custom-fonts.zip" >}}  
```text
p_1.html (91 KB)
p_2.html (93 KB)
p_3.html (94 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/set-custom-fonts/SetCustomFonts/set-custom-fonts.zip)
{{< /tab >}}
{{< /tabs >}}

## When you don't have the font file

Without the font file, you can still choose the font that replaces the missing one, instead of leaving the choice to the substitution rules. See [Replace missing font]({{< ref "viewer/net/developer-guide/rendering-documents/replace-missing-font.md" >}}).