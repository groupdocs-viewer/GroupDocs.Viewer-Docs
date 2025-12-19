---
id: how-to-get-file-type-and-pages-count
url: viewer/python-net/how-to-get-file-type-and-pages-count
title: Get the format family and the additional information
weight: 2
description: "Get format family details & extra info about files using GroupDocs.Viewer for Python."
keywords: GroupDocs.Viewer, file format families, view information, PDF, archive files, Outlook files, CAD documents
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
A format family is a group of several file types for which an application provides additional information. For example, archive files (.7z, .rar, .zip, etc.) or Outlook files (.ost, .pst) are format families.

You can get the format family and the additional information using the [get_view_info](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/) object.

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
from typing import cast
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions
from groupdocs.viewer.results import PdfViewInfo

def get_file_type_and_pages_count():
    # Load PDF document
    with Viewer("sample.pdf") as viewer:
        options = ViewInfoOptions.for_html_view() 
        info = viewer.get_view_info(options)
        pdf_info = cast(PdfViewInfo, info)

        print("Document type is:", pdf_info.file_type)
        print("Pages count:", len(pdf_info.pages))

        print("\nView info retrieved successfully.")

if __name__ == "__main__":
    get_file_type_and_pages_count()
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/retrieving-document-information/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-get-file-type-and-pages-count.png)