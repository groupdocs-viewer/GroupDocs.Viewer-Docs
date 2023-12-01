---
id: loading-external-resources
url: viewer/python-net/loading-external-resources
title: Loading of external resources containing by a document
weight: 5
keywords: set timeout, Groupdocs.Viewer
description: "This article explains how to manage loading of external resources contained by a document with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

If the document contains external resources, such as images, GroupDocs.Viewer loads them when rendering a document. This allows the document to display correctly, but is a potential security risk.

GroupDocs.Viewer allows you to manage loading of external resources contained by a document. These features are supported for the following formats:
- [Word Processing File Formats](https://docs.fileformat.com/word-processing/)
- [Web File Formats](https://docs.fileformat.com/web/)
- [SpreadSheet File Formats](https://docs.fileformat.com/spreadsheet/)

Use the [LoadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions) object to manage loading of external resources.

## Skip loading of external resources

The following code snippet shows how to deny loading of external resources:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
load_options = gvo.LoadOptions()
load_options.skip_external_resources = True #Skip loading of external resources

with gv.Viewer("business-flyer.docx", load_options) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources()

    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

The following images show the output file with and without external resources (see top right corner):

| loadOptions.SkipExternalResources = false | loadOptions.SkipExternalResources = true |
| --- | --- |
| ![False](/viewer/python-net/images/with-external-resources.png) | ![True](/viewer/python-net/images/without-external-resources.png)  |

## Manage a safelist for loading external resources

The following code snippet shows how to allow loading of external resources from specific URLs:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
load_options = gvo.LoadOptions()
load_options.skip_external_resources = True  #Skip loading of all external resources
load_options.whitelisted_resources.add("avatars.githubusercontent.com") #Enable loading of external resources that has `avatars.githubusercontent.com` fragment in resource URL. 

with gv.Viewer("business-flyer.docx", load_options) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources()

    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

## Set timeout for loading of external resources

The default timeout is 30 seconds. GroupDocs.Viewer allows you to change this value.

The following code snippet shows how to set a timeout to load external resources:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
load_options = gvo.LoadOptions()
load_options.resource_loading_timeout = timedelta(seconds=5)

# Using the viewer to render a document with specified timeout
with gv.Viewer("sample.docx", load_options) as viewer:
    # Specify view options for HTML view
    view_options = gvo.HtmlViewOptions.for_embedded_resources()

    # View the document
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}
