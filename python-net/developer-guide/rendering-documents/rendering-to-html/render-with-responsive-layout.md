---
id: render-with-responsive-layout
url: viewer/python-net/render-with-responsive-layout
title: Render with responsive layout
weight: 1
description: "Learn how to render your document with responsive HTML layout that looks great on mobile and desktop devices."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

Responsive design aims to make web pages render well on a variety of devices. GroupDocs.Viewer provides the [RenderResponsive](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions/properties/renderresponsive) property of the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class to render HTML pages with responsive layout. 

The following code snippet shows how to render a .docx document to HTML with responsive layout:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_docx) as viewer:
    # Create an HTML file.
    html_options = gvo.HtmlViewOptions.for_embedded_resources()
    # Render the file with responsive layout.
    html_options.render_responsive = True
    viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}