---
id: how-to-get-file-type-and-pages-count
url: viewer/python-net/how-to-get-file-type-and-pages-count
title: Get the format family and the additional information
weight: 2
description: "This article explains how to get the format family and the additional information using Python with GroupDocs.Viewer for Python via .NET."
keywords: 
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
A format family is a group of several file types for which an application provides additional information. For example, archive files (.7z, .rar, .zip, etc.) or Outlook files (.ost, .pst) are format families.

You can get the format family and the additional information using the [GetViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo) object.

GroupDocs.Viewer provides additional information for the following format families:

* Archive files - a collection of folders in the archive (see [Obtain information about folders in an archive file]({{< ref "/viewer/python-net/rendering-basics/render-archive-files.md" >}}));
* CAD drawings - a collection of layouts and layers (see [Obtain information about existing layouts and layers]({{< ref "/viewer/python-net/rendering-basics/render-cad-documents/render-cad-documents.md" >}}));
* Outlook data files - a collection of folders (see [Obtain information about folders in an Outlook data file]({{< ref "/viewer/python-net/rendering-basics/render-outlook-data-files.md" >}}));
* PDF documents - a flag that indicates whether document printing is allowed (see [Obtain information about a PDF file]({{< ref "/viewer/python-net/rendering-basics/render-pdf-documents.md" >}}));
* Microsoft Project files - the project's start and end dates (see [Obtain information about a Project file]({{< ref "/viewer/python-net/rendering-basics/render-ms-project-files.md" >}})).

## Get the file type and the pages count from a file

The following code snippet shows how to get the file type and the pages count from a file:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_pdf) as viewer:
    # Get file information.
    info = viewer.get_view_info(gvo.ViewInfoOptions.for_html_view())

    # Display file type and pages count.
    print("Document type is: " + info.file_type);
    print("Pages count: " + len(info.pages));

```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-get-file-type-and-pages-count.png)

## Get the file type and the pages count from a stream

The following code snippet shows how to get the file type and the pages count from a stream:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
def get_file_stream():
    file_path = test_files.sample_pdf
    return open(file_path, "rb")

with gv.Viewer(get_file_stream()) as viewer:
    info = viewer.get_view_info(gvo.ViewInfoOptions.for_html_view())

    print("Document type is: " + info.file_type);
    print("Pages count: " + len(info.pages));
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-get-file-type-and-pages-count.png)