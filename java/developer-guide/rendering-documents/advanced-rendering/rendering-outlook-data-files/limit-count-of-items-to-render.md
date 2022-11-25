---
id: limit-count-of-items-to-render
url: viewer/java/limit-count-of-items-to-render
title: Limit count of items to render
weight: 4
description: "This article explains how to set a limit for items to view of Outlook Data Files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer allows rendering the items in Outlook Data Files (OST/PST). [OutlookOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions) is used to set rendering options for OST and PST formats. The following steps are to be followed when rendering the items in Outlook Data Files.

* Create [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Create [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object;
* Call [getOutlookOptions()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#getOutlookOptions()) and set [setMaxItemsInFolder()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setMaxItemsInFolder(int)) option
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code samples show how to render the items in an Outlook Data File by setting a maximum limit.

```java
    try (Viewer viewer = new Viewer("sample.ost")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getOutlookOptions().setMaxItemsInFolder(1000);
        viewer.view(viewOptions);
    }
```
