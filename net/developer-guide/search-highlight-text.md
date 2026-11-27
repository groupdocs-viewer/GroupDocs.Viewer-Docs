---
id: search-highlight-text
url: viewer/net/search-highlight-text
title: Search and highlight text in the loaded document
weight: 8
description: "Search text by literal or regex and highlight found text in the document, loaded to the GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: true
toc: True
---
Starting from [version 25.4](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-4-release-notes/) GroupDocs.Viewer can search the text of a loaded document and highlight what it finds in the rendered output.

## What you can search

1. Searching text is supported for almost all document family formats, which may have textual content: all formats within WordProcessing family (DOC, DOCX, ODT, RTF, etc.), Spreadsheet (XLS, XLSX, ODS, CSV, etc.), Presentation (PPT, PPTX, PPS, POT, etc.), e-Books (ePub, AZW3, Mobi), and fixed-layout formats (PDF and XPS).
2. Search may be performed by entered search term (text literal) or by a regular expression (RegEx).
3. Highlighting of the found text is adjustable — it is possible to set the color of the found text (foreground color) and/or the color of the background.

Once a search operation is performed and some text is found, the document may be rendered to the HTML, PDF, PNG, or JPEG, and the found text will be highlighted in these produced documents. Remember that the search must be done _before_ rendering the document, not after.

## Search options

To perform a search, call the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class method [`Search(SearchHighlightOptions options)`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/search/). Its [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/) parameter has these properties: this method obtains on input an instance of the [`Options.SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/SearchHighlightOptions/) class. This class contains both a search term (phrase), search options, and highlight options, applied to the found text. This is described in detail below:

- [`SearchTerm`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/searchterm/) property of a [`System.String`](https://learn.microsoft.com/en-us/dotnet/api/system.string) type allows to specify a search text, which must be highlighted if found, or a regex pattern for search.
- [`IsSearchTermRegEx`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/issearchtermregex/) property of [boolean](https://learn.microsoft.com/en-us/dotnet/api/system.boolean) type indicates whether the value of the previously described `SearchTerm` property should be treated as a text literal (`false`) or as a regular expression (`true`). Default is `false` — treat as a text literal.
- [`BackgroundColor`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/backgroundcolor/) property of [`Argb32Color`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.drawing/argb32color/) type allows to specify a background color of the found text. By default, if this property is not specified, or its value is fully transparent, a yellow color will be applied to the background of the found text.
- [`ForegroundColor`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/foregroundcolor/) property of [`Argb32Color`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.drawing/argb32color/) type allows to specify a color, which will be applied to the found text itself (foreground color). By default, if this property is not specified, or its value is fully transparent, the color of found text will be untouched.

## Search and highlight text

To search for text and highlight it, follow these steps:

1. Load the input document to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class through its constructor.
2. Create an instance [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/SearchHighlightOptions/) class and tune its options — specify at least a [`SearchTerm`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/searchterm/) property.
3. Invoke the [`Viewer.Search(SearchHighlightOptions)`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/search/) method with a previously created and prepared [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/searchhighlightoptions/) instance.
4. Render the document to the HTML, PDF, PNG, and/or JPEG using a [`Viewer.View()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/#view) method.

The examples below search a Word document for a word and a PDF document for a regular expression. The found text gets the default highlight: a yellow background.

### Highlight a word in a Word document

The following example finds every "Buyer" in a supply agreement and renders the document to HTML:

{{< tabs "highlight-word-in-word-document">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// The search term is a text literal
SearchHighlightOptions searchOptions = new SearchHighlightOptions()
{
    SearchTerm = "Buyer",
    IsSearchTermRegEx = false
};

using (Viewer viewer = new Viewer("contract.docx"))
{
    // Search first, then render: the found text is highlighted in the output
    viewer.Search(searchOptions);
    viewer.View(HtmlViewOptions.ForEmbeddedResources());
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

' The search term is a text literal
Dim searchOptions As New SearchHighlightOptions() With {
    .SearchTerm = "Buyer",
    .IsSearchTermRegEx = False
}

Using viewer As New Viewer("contract.docx")
    ' Search first, then render: the found text is highlighted in the output
    viewer.Search(searchOptions)
    viewer.View(HtmlViewOptions.ForEmbeddedResources())
End Using
```
{{< /tab >}}
{{< tab "contract.docx" >}}
{{< tab-text >}}
`contract.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/search-highlight-text/contract.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (98 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/search-highlight-text/HighlightWordInWordDocument/p_1.html)
{{< /tab >}}
{{< /tabs >}}

### Highlight regular expression matches in a PDF document

The following example finds the product codes in a catalog, "CF-" followed by three digits, and renders the document to PNG. The codes are on page 2:

{{< tabs "highlight-regex-matches-in-pdf">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// The search term is a regular expression
SearchHighlightOptions searchOptions = new SearchHighlightOptions()
{
    SearchTerm = @"CF-\d{3}",
    IsSearchTermRegEx = true
};

using (Viewer viewer = new Viewer("sample.pdf"))
{
    // Search first, then render: the found text is highlighted in the output
    viewer.Search(searchOptions);
    viewer.View(new PngViewOptions());
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

' The search term is a regular expression
Dim searchOptions As New SearchHighlightOptions() With {
    .SearchTerm = "CF-\d{3}",
    .IsSearchTermRegEx = True
}

Using viewer As New Viewer("sample.pdf")
    ' Search first, then render: the found text is highlighted in the output
    viewer.Search(searchOptions)
    viewer.View(New PngViewOptions())
End Using
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/search-highlight-text/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "highlight-regex-matches-in-pdf.zip" >}}  
```text
p_1.png (976 KB)
p_2.png (407 KB)
p_3.png (427 KB)
p_4.png (64 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/search-highlight-text/HighlightRegexMatchesInPdf/highlight-regex-matches-in-pdf.zip)
{{< /tab >}}
{{< /tabs >}}