---
id: save-output-to-stream
url: viewer/python-net/save-output-to-stream
title: Save output to a stream
weight: 15
description: "Render documents to memory with GroupDocs.Viewer for Python via .NET: write HTML pages, page images, PDF files and HTML resources to io.BytesIO objects or your own streams instead of files."
keywords: render to memory, BytesIO, stream, page stream, in-memory rendering, web service, PdfViewOptions, PngViewOptions, HtmlViewOptions, GroupDocs.Viewer, python
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
GroupDocs.Viewer writes its output to files by default, but every output can go to memory instead. Instead of a file name, pass a function that returns a writable stream, usually an `io.BytesIO`. GroupDocs.Viewer calls it for each page (or once, for a PDF file) and writes the output into the stream it gets. Each stream is complete by the time `view()` returns. This suits a web service that sends pages straight to the client, and storage that is not a local disk.

| Output | Pass | GroupDocs.Viewer calls |
|---|---|---|
| PNG and JPEG pages | `PngViewOptions(create_page_stream)`, `JpgViewOptions(create_page_stream)` | `create_page_stream(page_number)` for each page |
| HTML pages with embedded resources | `HtmlViewOptions.for_embedded_resources(create_page_stream)` | `create_page_stream(page_number)` for each page |
| HTML pages with external resources | `HtmlViewOptions.for_external_resources(create_page_stream, create_resource_stream, create_resource_url)` | the page function for each page, `create_resource_stream(page_number, resource_name)` for each font, style sheet or image, and `create_resource_url(page_number, resource_name)` for the address the page uses for it |
| One PDF file | `PdfViewOptions(create_file_stream)` | `create_file_stream()` once |

A function returns a writable stream: an empty `io.BytesIO`, or a file opened for writing (`open(path, "wb")`), which GroupDocs.Viewer writes through its own handle and closes for you.

## Render page images to memory

The following example renders every page of a document to a PNG image in memory:

{{< tabs "render-png-pages-to-memory">}}
{{< tab "render_png_pages_to_memory.py" >}}
```python
import io

from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

def render_png_pages_to_memory():
    pages = {}

    def create_page_stream(page_number):
        # Called once per page: return the stream the page is written to
        pages[page_number] = io.BytesIO()
        return pages[page_number]

    with Viewer("sample.docx") as viewer:
        viewer.view(PngViewOptions(create_page_stream))

    # Every buffer holds its page once view() returns
    for page_number in sorted(pages):
        print("page %d: %d bytes" % (page_number, len(pages[page_number].getvalue())))

if __name__ == "__main__":
    render_png_pages_to_memory()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/save-output-to-stream/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-png-pages-to-memory.txt" >}}  
```text
page 1: 294350 bytes
page 2: 33998 bytes
page 3: 33633 bytes
page 4: 439816 bytes
page 5: 21258 bytes
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/save-output-to-stream/render_png_pages_to_memory/render-png-pages-to-memory.txt)
{{< /tab >}}
{{< /tabs >}}

## Render a PDF file to memory

A PDF is one file, so its function takes no arguments:

{{< tabs "render-pdf-to-memory">}}
{{< tab "render_pdf_to_memory.py" >}}
```python
import io

from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_pdf_to_memory():
    pdf = io.BytesIO()

    with Viewer("sample.docx") as viewer:
        viewer.view(PdfViewOptions(lambda: pdf))

    data = pdf.getvalue()
    print("PDF: %d bytes, starts with %r" % (len(data), data[:5]))

if __name__ == "__main__":
    render_pdf_to_memory()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/save-output-to-stream/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-to-memory.txt" >}}  
```text
PDF: 736493 bytes, starts with b'%PDF-'
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/save-output-to-stream/render_pdf_to_memory/render-pdf-to-memory.txt)
{{< /tab >}}
{{< /tabs >}}

## Render HTML with external resources to memory

With external resources, the fonts, style sheets and images of a page go to streams of their own, and a third function gives the address each page uses for a resource. Here the addresses are those of a web service that would serve the resources from the `resources` dictionary:

{{< tabs "render-html-to-memory">}}
{{< tab "render_html_to_memory.py" >}}
```python
import io

from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def render_html_to_memory():
    pages = {}
    resources = {}

    def create_page_stream(page_number):
        pages[page_number] = io.BytesIO()
        return pages[page_number]

    def create_resource_stream(page_number, resource_name):
        resources[(page_number, resource_name)] = io.BytesIO()
        return resources[(page_number, resource_name)]

    def create_resource_url(page_number, resource_name):
        # The address the HTML page uses for this resource
        return "/documents/sample/pages/%d/%s" % (page_number, resource_name)

    with Viewer("sample.docx") as viewer:
        viewer.view(HtmlViewOptions.for_external_resources(
            create_page_stream, create_resource_stream, create_resource_url))

    print("%d pages, %d resources" % (len(pages), len(resources)))
    html = pages[1].getvalue().decode("utf-8")
    print("page 1 links its resources:", "/documents/sample/pages/1/" in html)

if __name__ == "__main__":
    render_html_to_memory()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/save-output-to-stream/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-html-to-memory.txt" >}}  
```text
5 pages, 30 resources
page 1 links its resources: True
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/save-output-to-stream/render_html_to_memory/render-html-to-memory.txt)
{{< /tab >}}
{{< /tabs >}}

## Release functions

Each create function has an optional release function: `release_page_stream(page_number, stream)`, `release_file_stream(stream)` and `release_resource_stream(page_number, resource_name, stream)`. GroupDocs.Viewer calls it once it has finished writing that output, with the object your create function returned, already complete: the place to upload a page and drop the buffer. Pass it after the create functions: `PngViewOptions(create_page_stream, release_page_stream)`, `PdfViewOptions(create_file_stream, release_file_stream)`, `HtmlViewOptions.for_embedded_resources(create_page_stream, release_page_stream)`, and for external resources `HtmlViewOptions.for_external_resources(create_page_stream, create_resource_stream, create_resource_url, release_page_stream, release_resource_stream)`.

## Notes

- Renders in parallel threads keep their own outputs: each `view()` fills only the streams its own functions returned.
- A `tempfile.SpooledTemporaryFile` returned by a create function stays empty. Return an `io.BytesIO` or a file opened with `open(path, "wb")` instead.
- An `io.BytesIO` holds at most 2 GB. For larger output, write to files.
- To load the document itself from memory, see [Load document from stream]({{< ref "viewer/python-net/developer-guide/loading-documents/load-document-from-stream.md" >}}).
