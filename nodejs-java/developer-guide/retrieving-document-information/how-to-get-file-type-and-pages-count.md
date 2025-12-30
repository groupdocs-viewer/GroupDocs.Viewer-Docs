---
id: how-to-get-file-type-and-pages-count
url: viewer/nodejs-java/how-to-get-file-type-and-pages-count
title: Get the format family and the additional information
weight: 2
description: "This article explains how to get the format family and the additional information using Java with GroupDocs.Viewer for Node.js."
keywords: 
productName: GroupDocs.Viewer for Node.js via Java
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

{{< tabs "get-file-type-and-pages-count">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, ViewInfoOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Get file information.
const viewInfoOptions = ViewInfoOptions.forHtmlView()
const viewInfo = viewer.getViewInfo(viewInfoOptions)
console.log("Document type is: " + viewInfo.getFileType())
console.log("Pages count: " + viewInfo.getPages().size())
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/developer-guide/retrieving-document-information/how-to-get-file-type-and-pages-count/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/nodejs-java/images/how-to-get-file-type-and-pages-count.png)