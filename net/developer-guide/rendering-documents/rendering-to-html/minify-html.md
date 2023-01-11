---
id: minify-html
url: viewer/net/minify-html
title: Minify HTML
weight: 4
description: "Learn how to minify HTML and CSS when rendering of documents into HTML and make your HTML documents load faster with GroupDocs.Viewer."
keywords: minify HTML, HTML, CSS 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

When you are looking for ways to optimize the rendering of documents to HTML, one of the solutions is the compression of the output content (HTML, CSS, and SVG). This is suitable if you provide your content from the web server over the Internet. The less the user has to download, the faster he accesses the rendered document.

{{< alert style="info" >}}Minification does not reduce content size as much as Gzip compression, so use it in addition to Gzip compression. {{< /alert >}}

## Minification

Minification provides the output that looks identically with the original content in all browsers, but minified HTML content does not pass strict HTML validation. The following describes the size reduction methods used in minification.

### HTML Minification

HTML minification includes the following:

* Complete removal of comments (except containing IE conditional statements).
* Conditional comments compression.
* Removal of spaces and line breaks inside the tags and between the tags.
* Simplification of document type declaration to `<!DOCTYPE html>`.
* Removal of all HTML tag properties.
* Removal of protocol declarations like http:, https:, and javascript: from path values.
* Replace multiple spaces between words (except when they occur inside the pre or textarea tag) with a single space.
* Removal of quotes around tag property values (except inline events).
* Removal of default attributes for "script", "style" and "link" tags.
* Simplification of boolean attributes, so `<input type="text" disabled="disabled">` becomes `<input type=text disabled>`.

### CSS Minification

CSS minification includes the following:

* Removal of all insignificant white spaces.
* Removal of all comments.
* Removal of all unnecessary semicolon separators.
* Reducing color values.
* Reducing integer representations by removing leading and trailing zeros.
* Removal of unit specifiers from numeric zero values.

## How to minify HTML and CSS

The [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class has the [Minify](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/minify/) boolean property that is a flag to minify the output content.

The following code snippet shows how to enable minification:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    // Render the minified file.
    viewOptions.Minify = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

