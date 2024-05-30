---
id: hello-world
url: viewer/python-net/hello-world
title: Hello, World!
second_title: A simple example of how to use GroupDocs.Viewer for Python via .NET
linkTitle: Hello World
weight: 2
keywords: "hello world, example, get started"
description: "Render files, list and save attachments in any supported format using GroupDocs.Viewer for Python via .NET to experience its simplicity and power in Python."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

A "Hello, World!" code is often the first simple example to write uisng "GroupDocs.Viewer for Python via .NET", and it can also be used as a sanity test to ensure the software intended to compile or run source code is correctly installed.

"GroupDocs.Viewer for Python via .NET" library allows you to render documents in various formats as HTML, PDF, JPEG, and PNG files. There are many other file formats are [supported](/viewer/python-net/supported-document-formats/).

Below code snippet follows these steps:

1. Import GroupDocs.Viewer 
2. Import GroupDocs.Viewer.Options class
3. Initialize a GroupDocs.Viewer passing path to sample document
4. Initialize an HtmlViewOptions passing file name format of output to render sample document to HTML format
5. Call view() method to render the sample document

The following code snippet is a "Hello, World!" example to exhibit working of "GroupDocs.Viewer for Python via .NET" API:

```python
import groupdocs.viewer as gv
import groupdocs.viewer.options as gvo

def run():
     with gv.Viewer("sample.docx") as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(options)
```