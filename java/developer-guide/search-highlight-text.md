---
id: search-highlight-text
url: viewer/java/search-highlight-text
title: Search and highlight text in the loaded document
weight: 8
description: "Search text by literal or regex and highlight found text in the document, loaded to the GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: true
---
Starting from [version 25.9](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-9-release-notes/) the GroupDocs.Viewer is able to search the text spans in the loaded documents and highlight the found text. This feature can be described with the next three basic statements:

1. Searching text is supported for almost all document family formats, which may have textual content: all formats within WordProcessing family (DOC, DOCX, ODT, RTF, etc.), Spreadsheet (XLS, XLSX, ODS, CSV, etc.), Presentation (PPT, PPTX, PPS, POT, etc.), e-Books (ePub, AZW3, Mobi), and fixed-layout formats (PDF and XPS).
2. Search may be performed by entered search term (text literal) or by a regular expression (RegEx).
3. Highlighting of the found text is adjustable — it is possible to set the color of the found text (foreground color) and/or the color of the background.


Once a search operation is performed and some text is found, the document may be rendered to the HTML, PDF, PNG, or JPEG, and the found text will be highlighted in these produced documents. Just need to remember that search must be done _before_ rendering the document, not after.

In order to perform a search a new public instance method was added to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class — [`void search(SearchHighlightOptions options)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#search-com.groupdocs.viewer.options.SearchHighlightOptions-). As it is seen from its signature, this method obtains on input an instance of the [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/) class. This class contains both a search term (phrase), search options, and highlight options, applied to the found text. This is described in detail below:

- [`setSearchTerm`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/#setSearchTerm-java.lang.String-) property of a [`java.lang.String`](https://docs.oracle.com/javase/8/docs/api/java/lang/String.html) type allows to specify a search text, which must be highlighted if found, or a regex pattern for search.
- [`setSearchTermRegEx`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/#setSearchTermRegEx-boolean-) property of [boolean](https://docs.oracle.com/javase/8/docs/api/java/lang/Boolean.html) type indicates whether the value of the previously described `SearchTerm` property should be treated as a text literal (`false`) or as a regular expression (`true`). Default is `false` — treat as a text literal.
- [`setBackgroundColor`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/#setBackgroundColor-com.groupdocs.viewer.drawing.Argb32Color-) property of [`Argb32Color`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.drawing/argb32color/) type allows to specify a background color of the found text. By default, if this property is not specified, or its value is fully transparent, a yellow color will be applied to the background of the found text.
- [`setForegroundColor`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/#setForegroundColor-com.groupdocs.viewer.drawing.Argb32Color-) property of [`Argb32Color`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.drawing/argb32color/) type allows to specify a color, which will be applied to the found text itself (foreground color). By default, if this property is not specified, or its value is fully transparent, the color of found text will be untouched.

Summing up, in order to search for some text and highlight it using GroupDocs.Viewer, need to perform the next four steps:

1. Load the input document to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class through its constructor.
2. Create an instance [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/) class and tune its options — specify at least a [`setSearchTerm`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/#setSearchTerm-java.lang.String-) property.
3. Invoke the [`Viewer.search(SearchHighlightOptions)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#search-com.groupdocs.viewer.options.SearchHighlightOptions-) method with a previously created and prepared [`SearchHighlightOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/searchhighlightoptions/) instance.
4. Render the document to the HTML, PDF, PNG, and/or JPEG using a [`Viewer.view()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

Code sample below shows loading two distinct documents — DOCX and PDF, and performing search in them using text literal and RegEx. Finally, documents are saved to HTML and PNG.


{{< tabs "Search">}}
{{< tab "SearchHighlightText.java" >}}  
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.PngViewOptions;
import com.groupdocs.viewer.options.SearchHighlightOptions;

public class SearchHighlightText {
    public static void search() throws Exception {
        // Creating two instances of SearchHighlightOptions and adjusting them
        SearchHighlightOptions byLiteral = new SearchHighlightOptions();
        byLiteral.setSearchTerm("some text");
        byLiteral.setSearchTermRegEx(false);

        SearchHighlightOptions byRegEx = new SearchHighlightOptions();
        byRegEx.setSearchTerm("text\\s*#(\\d+)");
        byRegEx.setSearchTermRegEx(true);

        // Loading two documents to the two instances of Viewer class
        try (Viewer docxViewer = new Viewer("sample.docx");
             Viewer pdfViewer = new Viewer("sample.pdf")) {
            // Performing search in both Viewer instances
            docxViewer.search(byLiteral);
            pdfViewer.search(byRegEx);

            // Rendering both documents - 1st to HTML and 2nd to PNG
            docxViewer.view(HtmlViewOptions.forEmbeddedResources("result_{0}.html"));
            pdfViewer.view(new PngViewOptions());
        }
    }

    public static void main(String[] args){
        search();
    }
}
```
{{< /tab >}}
{{< tab "sample.docx" >}}  
{{< tab-text >}}
`sample.docx` is sample file used in this example. Click [here](/viewer/java/sample-files/developer-guide/search-highlight-text/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result_3.html" >}}  
{{< tab-text >}}
`result_3.html` is rendered HTML document. Click [here](/viewer/java/sample-files/developer-guide/search-highlight-text/result_3.html) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}