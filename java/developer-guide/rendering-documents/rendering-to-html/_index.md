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
import com.groupdocs.viewer.options.LoadOptions;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.Page;
import com.groupdocs.viewer.results.ViewInfo;
// ...

LoadOptions loadOptions = new LoadOptions();
loadOptions.setPassword("password");

try (Viewer viewer = new Viewer("sample.docx", loadOptions)) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(options);

    final ViewInfo viewInfo = viewer.getViewInfo(ViewInfoOptions.forHtmlView());
    final List<Page> pages = viewInfo.getPages();

    for (Page page : pages) {
        final int pageNumber = page.getNumber();
        System.out.println("Page number: " + pageNumber + ", file saved as 'page_" + pageNumber + ".html'");
    }
}


```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
