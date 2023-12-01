---
id: set-custom-fonts
url: viewer/python-net/set-custom-fonts
title: Set custom fonts
weight: 6
description: "This article explains how to set custom fonts when rendering documents with GroupDocs.Viewer within your Python applications."
keywords: Setting custom fonts with GroupDocs.Viewer for Python via .NET API
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
You can add custom font sources.

The following code snippet shows how to add a custom font source:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python

fonts_path = utils.fonts_path   
gvf.FontSettings.set_font_sources([gvf.FolderFontSource(fonts_path, gvf.SearchOption.TOP_FOLDER_ONLY)]) 

with gv.Viewer(test_files.sample_docx) as viewer:
    info = gvo.HtmlViewOptions.for_embedded_resources()
    viewer.view(info)

```
{{< /tab >}}
{{< /tabs >}}