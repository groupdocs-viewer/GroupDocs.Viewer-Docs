---
id: reorder-pages
url: viewer/java/reorder-pages
title: Reorder pages
weight: 3
description: "This article explains how to reorder pages when viewing documents with GroupDocs.Viewer within your Java applications."
keywords: Reorder pages with GroupDocs.Viewer for Java API
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer allows you to reorder the document pages. The order of the pages in the source document is never changed, instead, the API applies reordering to the resultant PDF document.

To reorder the pages:

* Instantiate [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Create [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions);
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method specifying desired page numbers order.

The following code snippet shows how to reorder pages.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        PdfViewOptions viewOptions = new PdfViewOptions();
    
        // Pass page numbers in the order you want to render them                                       
        viewer.view(viewOptions, 2, 1);
    }
```
