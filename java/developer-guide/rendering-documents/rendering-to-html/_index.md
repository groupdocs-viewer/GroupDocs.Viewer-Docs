---
id: rendering-to-html
url: viewer/java/rendering-to-html
title: Render to HTML
weight: 11
description: "With GroupDocs.Viewer for Java you can render files to HTML format. As a simple usecase please see how easily you can convert Microsoft Word to clean html."
keywords: render files, rendering pdf, convert word to clean html
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
When rendering to HTML, GroupDocs.Viewer renders each page of the source document as a separate HTML document.

GroupDocs.Viewer for Java provides two options to manage CSS, fonts, images, and other resources:

1. HTML with external resources stores page resources as separate files. This allows reusing common resources and results in reducing page size and loading speed.
2. HTML with embedded resources integrates page resources into HTML. This makes each document page self-sufficient but results in increasing page size and loading speed.

To render files to HTML, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) object. Specify a path to save the rendered  pages.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) object as the parameter.

## Rendering to HTML with external resources

The following code snippet shows how to render a .docx document to HTML with external resources: 

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    // Create an HTML file for each page.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Rendering to HTML with embedded resources

The following code snippet shows how to render a .docx document to HTML with embedded resources:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    // Create an HTML files.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Preserving or disabling JavaScript when rendering to HTML

Lots of the document formats and format families, supported by the GroupDocs.Viewer, may contain different scripts (and/or macros) inside their content. This includes (but not limited to) PDF, most of formats from the WordProcessing family (DOCX, DOCM, RTF, ODT, ...), Spreadsheet (XLSX, XLSM, ...), Presentation (PPTX, PPTM, ...), Email (MSG, EML, EMLX, MBOX, ...), and so on. Before the [version 25.9](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-9-release-notes/), when rendering documents with scripts to the HTML format, the GroupDocs.Viewer tried to preserve all the script and put them to the resultant HTML document without any change or validation. However, in some cases this is an unwanted behaviour, because document can contain malicious or harmful script(s), in most common, the XSS injections, so it is necessary to clean the resultant HTML document from any scripts.

Starting from the version 25.9 the default behaviour was changed — now GroupDocs.Viewer removes all the scripts from the resultant HTML document by default. In some cases, when the JavaScript code is located in the links, the GroupDocs.Viewer replaces it onto the `"javascript:void(0)"` string, so there will be no page reload when opening the resulted HTML document in the browser. Need to mention that the original document, loaded to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) instance, will be untouched anyway.

Along with the changed default behavior, a new option was added to the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class — a public property `RemoveJavaScript` of the [`java.lang.Boolean`](https://docs.oracle.com/javase/8/docs/api/java/lang/Boolean.html) type. By default this property has a `true` value — JavaScript will be removed from the resultant HTML document. For preserving the JavaScript, as it was in the previous versions of the GroupDocs.Viewer (before 25.9), the `false` value should be assigned to this property.

Code sample below shows opening a sample XLSX document and rendering it twice:
1. to the HTML with embedded resources with disabled JavaScript;
2. to the HTML with external resources with enabled JavaScript;

{{< tabs "example-RemoveJavaScript">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

HtmlViewOptions withoutJavaScriptEmbedded = HtmlViewOptions.forEmbeddedResources("without-js-page{0}.html");

HtmlViewOptions withJavaScriptExternal = HtmlViewOptions.forExternalResources("with-js-page{0}.html", "with-js-page{0}/resource-{1}", "with-js-page{0}/resource-{1}");
withJavaScriptExternal.setRemoveJavaScrip(false);

try (Viewer viewer = new Viewer("Spreadsheet-with-script.xlsx"))
{
    viewer.view(withoutJavaScriptEmbedded);
    viewer.view(withJavaScriptExternal);
}
```
{{< /tab >}}
{{< /tabs >}}


## Additional features

For details, please refer to the following pages:
