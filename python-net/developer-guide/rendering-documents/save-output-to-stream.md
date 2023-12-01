---
id: save-output-to-stream
url: viewer/python-net/save-output-to-stream
title: Save output to a stream
weight: 8
description: "This article shows how to save output to a stream when rendering a document"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
By default, GroupDocs.Viewer saves output results to the local disk. Also, it can provide results as a stream.

To provide output results as a stream, use one of the following interfaces:

* [IFileStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/ifilestreamfactory) defines methods to instantiate and release the output file streams.
* [IPageStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/ipagestreamfactory) defines methods to instantiate and release the output page streams.
* [IResourceStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/iresourcestreamfactory) defines the methods to create resource URLs, instantiate, and release output HTML resource streams.

Use these interface as follows:

* When rendering to PDF, implement the [IFileStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/ifilestreamfactory) interface and pass the implementation to the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) constructor.
* When rendering to JPG/PNG or HTML with embedded resources, implement the [IPageStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/ipagestreamfactory) interface and pass the implementation to the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)/[PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) constructor or to the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) [ForEmbeddedResources](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options.htmlviewoptions/forembeddedresources/methods/3) factory method.
* When rendering into HTML with external resources, implement the [IPageStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/ipagestreamfactory) and [IResourceStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/iresourcestreamfactory) interfaces and pass the implementation to the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)/[PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) constructor or to the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) [ForExternalResources](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options.htmlviewoptions/forexternalresources/methods/3) factory method.

The following code snippet shows how to render to HTML with embedded resources and to provide the output result as a stream. To do this, it implements the [IPageStreamFactory](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.interfaces/ipagestreamfactory) interface only.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
// Create the list to store output pages
pages = []

class MemoryPageStreamFactory(IPageStreamFactory):
    def __init__(self, pages):
        self._pages = pages

    def create_page_stream(self, page_number):
        page_stream = BytesIO()
        self._pages.append(page_stream)
        return page_stream

    def release_page_stream(self, page_number, page_stream):
        # Do not release the page stream as we'll need to keep the stream open
        pass

with gv.Viewer(test_files.sample_docx) as viewer:
    page_stream_factory = MemoryPageStreamFactory(pages)
    view_options = gvo.HtmlViewOptions.for_embedded_resources(page_stream_factory)
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}
