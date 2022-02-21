---
id: save-output-to-stream
url: viewer/java/how-to-get-an-output-stream-when-viewing-a-document
title: Save output to a stream
weight: 9
description: "This article explains how to get an output stream when viewing a document with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
By default GroupDocs.Viewer saves output results to the local disk, but we also provide a way to save output results into a stream.

There are three interfaces that we can utilize:

* [FileStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/FileStreamFactory) - defines the methods that are required for instantiating and releasing output file stream.
* [PageStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) - defines the methods that are required for instantiating and releasing output page stream.
* [ResourceStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/ResourceStreamFactory) - defines the methods that are required for creating resource URL, instantiating and releasing output HTML resource stream.

Let's say that instead of saving rendering results to the local disk we want to have all the output file or output files in form of stream or list of streams.

What we need to do is to implement one or two of the interfaces listed above.

* When rendering into PDF we have to implement [FileStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/FileStreamFactory) interface and pass implementation into [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) constructor
* When rendering into JPG/PNG or HTML with embedded resources we have to implement [PageStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) interface and pass implementation into [forEmbeddedResources()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#forEmbeddedResources(com.groupdocs.viewer.interfaces.PageStreamFactory)) factory method of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) or [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions)
* When rendering into HTML with external resources we have to implement [PageStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) and [ResourceStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/ResourceStreamFactory) interfaces and pass implementation into [forExternalResources()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#forExternalResources(com.groupdocs.viewer.interfaces.PageStreamFactory,%20com.groupdocs.viewer.interfaces.ResourceStreamFactory)) factory method of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) or [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions)

In this example, we'll render into HTML with embedded resources so we need to implement only [PageStreamFactory](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.interfaces/PageStreamFactory) interface.

```java
    List<ByteArrayOutputStream> pages = new ArrayList<>();

    try (Viewer viewer = new Viewer("sample.docx")){

        MemoryPageStreamFactory pageStreamFactory = new MemoryPageStreamFactory(pages);

        ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources(pageStreamFactory);

        viewer.view(viewOptions);
    }
```

```java
    class MemoryPageStreamFactory implements PageStreamFactory {
        private final List<ByteArrayOutputStream> _pages;

        public MemoryPageStreamFactory(List<ByteArrayOutputStream> pages) {
            _pages = pages;
        }

        public ByteArrayOutputStream createPageStream(int pageNumber) {
            ByteArrayOutputStream pageStream = new ByteArrayOutputStream();

            _pages.add(pageStream);

            return pageStream;
        }

        public void closePageStream(int pageNumber, OutputStream pageStream) {
            //Do not release page stream as we'll need to keep the stream open
        }
    }
```
