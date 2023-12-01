---
id: replace-missing-font
url: viewer/python-net/replace-missing-font
title: Replace missing font
weight: 7
description: "This article explains how to replace missing font when rendering documents with GroupDocs.Viewer within your Python applications."
keywords: missing font,rendering documents
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
aliases:
    - /viewer/python-net/how-to-substitute-missing-font-when-converting-presentations/
---
You can specify the default font name for a document. GroupDocs.Viewer uses this font during rendering instead of any not installed fonts. For example, if the document includes a font containing non-English characters, specify the default font name to ensure that GroupDocs.Viewer replaces any missing font with one which has the same character set. 

The following code snippet shows how to set the default font name:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Create an HTML file.
with gv.Viewer(test_files.sample_pptx) as viewer:
    html_options = gvo.HtmlViewOptions.for_embedded_resources()
    # Specify a default font.
    viewOptions.default_font_name = "Courier New";
    viewer.view(html_options)       
```
{{< /tab >}}
{{< /tabs >}}