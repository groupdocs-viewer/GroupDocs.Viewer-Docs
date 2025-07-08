---
id: set-custom-fonts
url: viewer/net/set-custom-fonts
title: Set custom fonts
weight: 6
description: "This article explains how to set custom fonts when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: Setting custom fonts with GroupDocs.Viewer for .NET API
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Many document formats are tightly bounded with fonts. For example, when user adds some text to the DOCX document, this text always have some defined font. Some document formats usually store the font data embedded in the document file itself, like PDF. But other, like Office family formats, usually rely on the fonts, installed in the operating system.

The situation, when some document was created on the _author’s machine_ and uses some font "AAA", and then is processed using the GroupDocs.Viewer on some _client’s machine_, where font "AAA" is missing, is typical. In such case GroupDocs.Viewer tries to **substitute this font** using some complex font substitution rules: it analyzes the metadata of the document, alternative names of the missing font, settings of the document, settings of the OS, list of all available fonts, installed in the OS and so on. Finally, when by some reason the OS is “clean”, when it has no installed fonts at all, then GroupDocs.Viewer will substitute the missing font with the one, that is embedded inside the GroupDocs.Viewer assembly (DLL); this font will serve as a "last resort" in case when no other fonts are available. For example, for the WordProcessing family formats, the GroupDocs.Viewer internally stores the "Fanwood" free font.

At this moment the GroupDocs.Viewer does the **font substitution** operation “silently” **during rendering** of the document (when the [`Viewer.View()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/#view) method is invoked) — there are no any messages or events when the font substitution mechanism is activated and which font is missing and onto which is replaced/substituted, and for which exact document. Such feature is hard to implement because it is too unclear, vague, and ambiguous what kind of notification should be emitted, in which form and how they can be utilizing on the client’s side.

However, users can control this process **before** the document is actually rendered. When the user initially _knows_ that some document uses font "AAA", _and_ also _knows_ that this font "AAA" is not installed on the target machine, where document should be rendered, _and_ user has the binary content of this font "AAA", he can specify it **before** calling the [`Viewer.View()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/#view) method.

In order to specify one or many custom fonts, which are not installed in the target operating system, user should _add custom font sources_. **Font source** is actually a folder, where one or many fonts are located. It is represented by a [`FolderFontSource`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/) class. And the [`FontSettings`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/) class has a method [`SetFontSources()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/setfontsources/) for adding the **font sources** to the GroupDocs.Viewer.

The following code snippet demonstrates this. Let's assume that the "sample.docx" document uses some rare font "AAA.ttf", that is not installed on the target operating system. Then user puts the file "AAA.ttf" to the `"C:\custom_fonts"` folder and then creates an instance of the [`FolderFontSource`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/) class, that points to this folder. Then this instance is passed to the [`FontSettings`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/) static class, and then the "sample.docx" file is rendered to HTML format. As a result, the "AAA" font will be used in the output HTML document.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Fonts;
// ...

// Specify the font source.
FolderFontSource fontSource = 
    new FolderFontSource(@"C:\custom_fonts", SearchOption.TopFolderOnly);
FontSettings.SetFontSources(fontSource);

using (Viewer viewer = new Viewer("sample.docx"))
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
        ' Specify the font source.
        Dim fontSource As FolderFontSource = New FolderFontSource("C:\custom_fonts", SearchOption.TopFolderOnly)
        FontSettings.SetFontSources(fontSource)
    
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create an HTML file.
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

However, in case when user has no access to the binary content of the font, that is used in the document and is not installed on the target operating system, user may **replace** the missing font onto some alternative. **Font replacement** here serves as a some sort of a user-defined **font substitution**, that is programmed **before** rendering of a document. More on this in a [separate article]({{< ref "viewer/net/developer-guide/rendering-documents/replace-missing-font.md" >}}).