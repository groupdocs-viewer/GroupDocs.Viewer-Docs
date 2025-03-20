---
id: hello-world
url: viewer/python-net/hello-world
title: Hello, World!
second_title: A simple example of how to use GroupDocs.Viewer for Python via .NET
linkTitle: Hello World
weight: 2
keywords: GroupDocs.Viewer, Python, .NET, document rendering, HTML conversion, quick start, code example
description: "Render documents to HTML, PDF, JPEG, or PNG with GroupDocs.Viewer for Python via .NET. Simple and powerful!"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

## Introduction
A "Hello, World!" code is often the first simple example to write uisng "GroupDocs.Viewer for Python via .NET", and it can also be used as a sanity test to ensure the software intended to compile or run source code is correctly installed.

## Overview
"GroupDocs.Viewer for Python via .NET" library allows you to render documents in various formats as HTML, PDF, JPEG, and PNG files. There are many other file formats are [supported](/viewer/python-net/supported-document-formats/).

## Steps to Render a Document
The following steps outline how to render a document to HTML format using the GroupDocs.Viewer for Python via .Net:

1. Import `groupDocs.viewer`.
2. Import `groupDocs.viewer.options` class.
3. Initialize a `Viewer` object with the path to the sample document.
4. Initialize an `HtmlViewOptions` object with the desired output file name format.
5. Call view() method to render the document.

## Code Snippet
Here is a "Hello, World!" example to demonstrate the working of the "GroupDocs.Viewer for Python via .Net" API:

```python
import groupdocs.viewer as gv
import groupdocs.viewer.options as gvo

def run():
     with gv.Viewer("sample.docx") as viewer:
        options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        viewer.view(options)
```
## Run the Application
Steps to run the sample application:
1. Download the Sample Application: 
    * [Download Hello World Sample Application](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET/blob/master/Examples/quick_start/hello_world.py)

2. Run the Application:
    * Navigate to the directory containing the `hello_world.py` script.
    * Run the script:
        ```bash 
        python hello_world.py
        ```

## Expected Output
After running the application, you will find the rendered HTML files in the output directory. The files will be named according to the format specified in the code (*page_1.html, page_2.html and etc.*).

## Additional Resources
This demo application references the GroupDocs.Viewer for Python via .Net [code samples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET).