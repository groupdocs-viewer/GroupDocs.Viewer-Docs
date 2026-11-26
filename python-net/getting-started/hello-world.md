---
id: hello-world
url: viewer/python-net/hello-world
title: Hello, World!
second_title: Basic Example of Using GroupDocs.Viewer for Python via .NET
linkTitle: Hello World
weight: 2
keywords: "hello world, example, get started, render DOCX to PDF, GroupDocs.Viewer, python"
description: "Quickly get started with GroupDocs.Viewer for Python via .NET by rendering a Word document to PDF in a few lines of code."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

## Introduction
A "Hello, World!" example is often the first step when exploring GroupDocs.Viewer for Python via .NET. It serves as a simple test to confirm that your development environment is correctly set up and that the library is functioning as expected.

## Overview
GroupDocs.Viewer for Python via .NET renders documents to HTML, PDF, PNG, and JPEG without Microsoft Office or any other software. A wide range of [supported formats](/viewer/python-net/supported-document-formats/) makes it versatile for different use cases.

## How to render a document
The following steps render a Word document to a PDF file:

1. Import `Viewer` and the view options of the output you need, here `PdfViewOptions`.
2. Instantiate a `Viewer` with the path to the sample document.
3. Create the view options with the output file name.
4. Call `view()` with the options.

## Complete example
The example below renders the five pages of the sample annual report into one PDF file:

{{< tabs "code-example-hello-world" >}}
{{< tab "hello_world.py" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def hello_world():
    # Load the document
    with Viewer("sample.docx") as viewer:
        # Render every page into one PDF file
        viewer.view(PdfViewOptions("output.pdf"))

    print("Document rendered successfully. Output saved to output.pdf.")

if __name__ == "__main__":
    hello_world()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/getting-started/hello-world/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 719 KB)
```
[Download full output](/viewer/python-net/_output_files/getting-started/hello-world/hello_world/output.pdf)
{{< /tab >}}
{{< /tabs >}}

To render to HTML pages or page images instead, replace `PdfViewOptions` with `HtmlViewOptions.for_embedded_resources("page_{0}.html")` or `PngViewOptions("page_{0}.png")`; `{0}` is replaced with the page number. The [Quick Start Guide]({{< ref "viewer/python-net/getting-started/quick-start-guide.md" >}}) shows all three.

Without a license, the PDF has two pages, each with an evaluation notice. See [Licensing and Evaluation]({{< ref "viewer/python-net/getting-started/licensing-and-subscription.md" >}}).

## Additional resources
This demo references the GroupDocs.Viewer for Python via .NET [code samples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET/).
