---
id: search-highlight-text
url: viewer/net/search-highlight-text
title: Search and highlight text in the loaded document
weight: 8
description: "Search text by literal or regex and highlight found text in the document, loaded to the GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: true
---
Starting from [version 25.4](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-4-release-notes/) the GroupDocs.Viewer is able to search the text spans in the loaded documents and highlight the found text. This feature can be described with the next three basic statements:

1. Searching text is supported for almost all document family formats, which may have textual content: all formats within WordProcessing family (DOC, DOCX, ODT, RTF, etc.), Spreadsheet (XLS, XLSX, ODS, CSV, etc.), Presentation (PPT, PPTX, PPS, POT, etc.), e-Books (ePub, AZW3, Mobi), and fixed-layout formats (PDF and XPS).
2. Search may be performed by entered search term (text literal) or by a regular expression (RegEx).
3. Highlighting of the found text is adjustable — it is possible to set the color of the found text (foreground color) and/or the color of the background.


Once a search operation is performed and some text is found, the document may be rendered to the HTML, PDF, PNG, or JPEG, and the found text will be highlighted in these produced documents. Just need to remember that search must be done _before_ rendering the document, not after.

In order to perform a search a new public instance method was added to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class — [`void Search(Options.SearchHighlightOptions options)`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/search/). As it is seen from its signature, this method obtains on input an instance of the [`Options.SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/SearchHighlightOptions/) class. This class contains both a search term (phrase), search options, and highlight options, applied to the found text. This is described in detail below:

- [`SearchTerm`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/searchterm/) property of a [`System.String`](https://learn.microsoft.com/en-us/dotnet/api/system.string) type allows to specify a search text, which must be highlighted if found, or a regex pattern for search.
- [`IsSearchTermRegEx`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/issearchtermregex/) property of [boolean](https://learn.microsoft.com/en-us/dotnet/api/system.boolean) type indicates whether the value of the previously described `SearchTerm` property should be treated as a text literal (`false`) or as a regular expression (`true`). Default is `false` — treat as a text literal.
- [`BackgroundColor`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/backgroundcolor/) property of [`Argb32Color`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.drawing/argb32color/) type allows to specify a background color of the found text. By default, if this property is not specified, or its value is fully transparent, a yellow color will be applied to the background of the found text.
- [`ForegroundColor`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/foregroundcolor/) property of [`Argb32Color`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.drawing/argb32color/) type allows to specify a color, which will be applied to the found text itself (foreground color). By default, if this property is not specified, or its value is fully transparent, the color of found text will be untouched.

Summing up, in order to search for some text and highlight it using GroupDocs.Viewer, need to perform the next four steps:

1. Load the input document to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class through its constructor.
2. Create an instance [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/SearchHighlightOptions/) class and tune its options — specify at least a [`SearchTerm`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/searchterm/) property.
3. Invoke the [`Viewer.Search(SearchHighlightOptions)`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/search/) method with a previously created and prepared [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/) instance.
4. Render the document to the HTML, PDF, PNG, and/or JPEG using a [`Viewer.View()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/#view) method.

Code sample below shows loading two distinct documents — DOCX and PDF, and performing search in them using text literal and RegEx. Finally, documents are saved to HTML and PNG.


{{< tabs "Search">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Creating two instances of SearchHighlightOptions and adjusting them
SearchHighlightOptions byLiteral = new SearchHighlightOptions()
{
    SearchTerm = "some text",
    IsSearchTermRegEx = false
};
SearchHighlightOptions byRegEx = new SearchHighlightOptions()
{
    SearchTerm = @"text\s*#(\d+)",
    IsSearchTermRegEx = true
};

// Loading two documents to the two instances of Viewer class
using (Viewer docxViewer = new Viewer("sample.docx"))
using (Viewer pdfViewer = new Viewer("sample.pdf"))
{
    // Performing search in both Viewer instances
    docxViewer.Search(byLiteral);
    pdfViewer.Search(byRegEx);

    // Rendering both documents - 1st to HTML and 2nd to PNG
    docxViewer.View(HtmlViewOptions.ForEmbeddedResources());
    pdfViewer.View(new PngViewOptions());
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

' Creating two instances of SearchHighlightOptions and adjusting them
Dim byLiteral As New SearchHighlightOptions() With {
    .SearchTerm = "some text",
    .IsSearchTermRegEx = False
}
Dim byRegEx As New SearchHighlightOptions() With {
    .SearchTerm = "text\s*#(\d+)",
    .IsSearchTermRegEx = True
}

' Loading two documents to the two instances of Viewer class
Using docxViewer As New Viewer("sample.docx"), pdfViewer As New Viewer("sample.pdf")
    ' Performing search in both Viewer instances
    docxViewer.Search(byLiteral)
    pdfViewer.Search(byRegEx)

    'Rendering both documents - 1st to HTML and 2nd to PNG
    docxViewer.View(HtmlViewOptions.ForEmbeddedResources())
    pdfViewer.View(New PngViewOptions())
End Using
```
{{< /tab >}}
{{< /tabs >}}