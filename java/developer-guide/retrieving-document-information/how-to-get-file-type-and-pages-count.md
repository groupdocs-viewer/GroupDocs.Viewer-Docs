---
id: how-to-get-file-type-and-pages-count
url: viewer/java/how-to-get-file-type-and-pages-count
title: How to get file type and pages count
weight: 4
description: "This article explains how to get file type and pages count with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, file type, pages count"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
GroupDocs.Viewer for Java API enables you to get file type and pages count with [getViewInfo()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/ViewInfo) object.

For the following document types GroupDocs.Viewer provides additional information:

* Archive files - a collection of folders inside the archive (see [How to list archive folders]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/how-to-list-archive-folders.md" >}}));
* CAD drawings - a collection of layouts and layers (see [How to get CAD layers and layouts]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-cad-drawings/how-to-get-cad-layers-and-layouts.md" >}}));
* Outlook Data files - a collection of folders inside Outlook Data file (see [How to get Outlook Data file folders]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-outlook-data-files/how-to-get-outlook-data-file-folders.md" >}}));
* PDF documents - a flag that indicates whether document printing is allowed or not (see [How to check that PDF printing not allowed]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-pdf-documents/how-to-check-that-pdf-printing-not-allowed.md" >}}));
* MS Project documents - project start/end dates (see [How to get MS Project start and end dates]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-ms-project-files/how-to-get-ms-project-start-and-end-dates.md" >}})).

## Loading document from file

```java
try (Viewer viewer = new Viewer("sample.pdf")) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    System.out.println("Document type is: " + viewInfo.getFileType());
    System.out.println("Pages count: " + viewInfo.getPages().size());
}
```

After running the code above you will see an output like this:

```bash
Document type is: Portable Document Format File (.pdf)
Pages count: 10
```

## Loading document from stream

```java
FileInputStream inputStream = new FileInputStream("sample.pdf");
LoadOptions loadOptions = new LoadOptions(FileType.PDF);

try (Viewer viewer = new Viewer(inputStream, loadOptions)) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    System.out.println("Document type is: " + viewInfo.getFileType());
    System.out.println("Pages count: " + viewInfo.getPages().size());
}
```

After running the code above you will see an output like this:

```bash
Document type is: Portable Document Format File (.pdf)
Pages count: 10
```
