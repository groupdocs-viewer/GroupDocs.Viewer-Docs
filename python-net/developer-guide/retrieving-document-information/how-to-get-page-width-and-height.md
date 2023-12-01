---
id: how-to-get-page-width-and-height
url: viewer/python-net/how-to-get-page-width-and-height
title: Get the width and height of the document pages
weight: 5
description: "This article explains how to get the width and height of the document pages using Python with GroupDocs.Viewer for Python via .NET."
keywords: 
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

You can get the width and height of each document page using the [GetViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo) object. The object contains the [Pages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/viewinfo/pages/) collection that represents each [Page](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/page/) of the document.

The following code snippet shows how to get the width and height of each document page:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_pdf) as viewer:
    # Get file information.
    info = viewer.get_view_info(gvo.ViewInfoOptions.for_html_view())

    # Display width and height of each page.
    for page in info.pages:
        print(f"Page: {page.number}; Width: {page.width}, pixels")
        print(f"Page: {page.number}; Height: {page.height}, pixels");

```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-get-page-width-and-height.png)