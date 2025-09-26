---
id: set-custom-fonts
url: viewer/java/set-custom-fonts
title: Set custom fonts
weight: 6
description: "This article explains how to set custom fonts when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: Setting custom fonts with GroupDocs.Viewer for Java API
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Many document formats are tightly bounded with fonts. For example, when user adds some text to the DOCX document, this text always have some defined font. Some document formats usually store the font data embedded in the document file itself, like PDF. But other, like Office family formats, usually rely on the fonts, installed in the operating system.

The situation, when some document was created on the _author’s machine_ and uses some font "AAA", and then is processed using the GroupDocs.Viewer on some _client’s machine_, where font "AAA" is missing, is typical. In such case GroupDocs.Viewer tries to **substitute this font** using some complex font substitution rules: it analyzes the metadata of the document, alternative names of the missing font, settings of the document, settings of the OS, list of all available fonts, installed in the OS and so on. Finally, when by some reason the OS is “clean”, when it has no installed fonts at all, then GroupDocs.Viewer will substitute the missing font with the one, that is embedded inside the GroupDocs.Viewer package (.jar); this font will serve as a "last resort" in case when no other fonts are available. For example, for the WordProcessing family formats, the GroupDocs.Viewer internally stores the "Fanwood" free font.

At this moment the GroupDocs.Viewer does the **font substitution** operation “silently” **during rendering** of the document (when the [`Viewer.view()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method is invoked) — there are no any messages or events when the font substitution mechanism is activated and which font is missing and onto which is replaced/substituted, and for which exact document. Such feature is hard to implement because it is too unclear, vague, and ambiguous what kind of notification should be emitted, in which form and how they can be utilizing on the client’s side.

However, users can control this process **before** the document is actually rendered. When the user initially _knows_ that some document uses font "AAA", _and_ also _knows_ that this font "AAA" is not installed on the target machine, where document should be rendered, _and_ user has the binary content of this font "AAA", he can specify it **before** calling the [`Viewer.view()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

In order to specify one or many custom fonts, which are not installed in the target operating system, user should _add custom font source(s)_. **Font source** is actually a folder, where one or many fonts are located. It is represented by a [`FolderFontSource`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/folderfontsource/) class. And the [`FontSettings`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontsettings/) class has a method [`setFontSources()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontsettings/#setFontSources-com.groupdocs.viewer.fonts.FontSource...-) for adding the **font sources** to the GroupDocs.Viewer.

The following code snippet demonstrates this. Let's assume that the "sample.docx" document uses some rare font "AAA.ttf", that is not installed on the target operating system. Then the user puts the file "AAA.ttf" to the `"C:\custom_fonts"` folder and then creates an instance of the [`FolderFontSource`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/folderfontsource/) class that points to this folder. Then this instance is passed to the [`FontSettings`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontsettings/) static class, and then the "sample.docx" file is rendered to HTML format. As a result, the "AAA" font will be used in the output HTML document.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.fonts.FolderFontSource;
import com.groupdocs.viewer.fonts.FontSettings;
import com.groupdocs.viewer.fonts.SearchOption;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

FolderFontSource fontSource = new FolderFontSource("C:\\custom_fonts", SearchOption.TOP_FOLDER_ONLY);
FontSettings.setFontSources(fontSource);

try (Viewer viewer = new Viewer("sample.docx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

However, in case when user has no access to the binary content of the font, that is used in the document and is not installed on the target operating system, user may **replace** the missing font onto some alternative. **Font replacement** here serves as a some sort of a user-defined **font substitution**, that is programmed **before** rendering of a document. More on this in a [separate article]({{< ref "viewer/java/developer-guide/rendering-documents/replace-missing-font.md" >}}).