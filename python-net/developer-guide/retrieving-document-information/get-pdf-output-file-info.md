---
id: get-pdf-output-file-info
url: viewer/python-net/get-pdf-output-file-info
title: Get the PDF output file information
weight: 6
description: "This article explains how to get the PDF output file information using Python with GroupDocs.Viewer for Python via .NET."
keywords: 
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

You can get the information about the PDF output file using the [GetViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo) object. The object contains the [Pages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/pages/) collection that represents each [Page](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/page/) of the document.

The following code snippet shows how to get the page count and the width and height of each document page:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_pdf) as viewer:
    # Get file information.
    info = viewer.get_view_info(gvo.ViewInfoOptions.for_pdf_view())

    # Display page count.
    print("Pages count:", len(info.pages))

    # Display width and height of each page.
    for page in info.pages:
        print(f"Page: {page.number}; Width: {page.width}, pixels")
        print(f"Page: {page.number}; Height: {page.height}, pixels");
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/get_pdf_output_file_info.png)
