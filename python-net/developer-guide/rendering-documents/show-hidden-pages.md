---
id: show-hidden-pages
url: viewer/python-net/show-hidden-pages
title: Render hidden pages
weight: 4
description: "Learn how to render hidden pages on website or in other c# applications with GroupDocs.Viewer for Python via .NET"
keywords: hidden pages, hidden pages on website
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
By default, GroupDocs.Viewer does not render hidden items. To render them, set the RenderHiddenPages property of the [ViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewoptions/) class to `true`.

This feature is supported for the following format families:

* Visio documents (for hidden pages)
* PowerPoint presentations (for hidden slides)
* Spreadsheets files (for hidden worksheets)

The following code snippet shows how to enable rendering of hidden items:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Create an HTML file.
with gv.Viewer(test_files.sample_pptx) as viewer:
    info = gvo.HtmlViewOptions.for_embedded_resources()
    # Enable rendering of hidden items.
    info.render_hidden_pages = true;
    viewer.view(info)
```
{{< /tab >}}
{{< /tabs >}}