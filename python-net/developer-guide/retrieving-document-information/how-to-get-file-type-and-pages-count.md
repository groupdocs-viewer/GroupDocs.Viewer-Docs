---
id: how-to-get-file-type-and-pages-count
url: viewer/python-net/how-to-get-file-type-and-pages-count
title: Get the format family and the additional information
weight: 2
description: "This article explains how to get the format family and the additional information using .Net with GroupDocs.Viewer for Python."
keywords: 
productName: GroupDocs.Viewer for Python via .Net
hideChildren: False
---
A format family is a group of several file types for which an application provides additional information. For example, archive files (.7z, .rar, .zip, etc.) or Outlook files (.ost, .pst) are format families.

You can get the format family and the additional information using the [getViewInfo](#) method that returns a [ViewInfo](#) object.

GroupDocs.Viewer provides additional information for the following format families:

* Archive files - a collection of folders in the archive (see [Obtain information about folders in an archive file](#);
* CAD drawings - a collection of layouts and layers (see [Obtain information about existing layouts and layers](#));
* Outlook data files - a collection of folders (see [Obtain information about folders in an Outlook data file](#));
* PDF documents - a flag that indicates whether document printing is allowed (see [Obtain information about a PDF file](#));
* Microsoft Project files - the project's start and end dates (see [Obtain information about a Project file](#)).

## Get the file type and the pages count from a file

The following code snippet shows how to get the file type and the pages count from a file:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_pdf) as viewer:
    options = gvo.ViewInfoOptions.for_html_view() 
    info = viewer.get_view_info(options)
    pdf_info = cast(gvr.PdfViewInfo, info)

    print("Document type is:", pdf_info.file_type)
    print("Pages count:", len(pdf_info.pages))
    print("Printing allowed:", pdf_info.printing_allowed)

    print("\nView info retrieved successfully.")
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-get-file-type-and-pages-count.png)