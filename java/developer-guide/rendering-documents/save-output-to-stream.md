---
id: save-output-to-stream
url: viewer/java/save-output-to-stream
title: Save output to a stream
weight: 8
description: "This article shows how to save output to a stream when rendering a document"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
By default, GroupDocs.Viewer saves output results to the local disk. Also, it can provide results as a stream.

To provide output results as a stream, use one of the following interfaces:

* [FileStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/FileStreamFactory) defines methods to instantiate and release the output file streams.
* [PageStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) defines methods to instantiate and release the output page streams.
* [ResourceStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/ResourceStreamFactory) defines the methods to create resource URLs, instantiate, and release output HTML resource streams.

Use these interface as follows:

* When rendering to PDF, implement the [FileStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/FileStreamFactory) interface and pass the implementation to the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) constructor.
* When rendering to JPG/PNG or HTML with embedded resources, implement the [PageStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) interface and pass the implementation to the [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/)/[PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) constructor or to the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) [forEmbeddedResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources-com.groupdocs.viewer.interfaces.PageStreamFactory-) factory method.
* When rendering into HTML with external resources, implement the [PageStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) and [ResourceStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/ResourceStreamFactory) interfaces and pass the implementation to the [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/)/[PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) constructor or to the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) [forExternalResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources-com.groupdocs.viewer.interfaces.PageStreamFactory-com.groupdocs.viewer.interfaces.ResourceStreamFactory-) factory method.

The following code snippet shows how to render to HTML with embedded resources and to provide the output result as a stream. To do this, it implements the [PageStreamFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) interface only.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.interfaces.PageStreamFactory;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.ViewOptions;
// ...

final List<ByteArrayOutputStream> pages = new ArrayList<>();

try (Viewer viewer = new Viewer("sample.docx")) {

    PageStreamFactory pageStreamFactory = new PageStreamFactory() {

        @Override
        public OutputStream createPageStream(int pageNumber) {
            ByteArrayOutputStream pageStream = new ByteArrayOutputStream();

            pages.add(pageStream);

            return pageStream;
        }

        @Override
        public void closePageStream(int pageNumber, OutputStream outputStream) {
            //Do not release page stream as we'll need to keep the stream open
        }
    };

    ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources(pageStreamFactory);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
