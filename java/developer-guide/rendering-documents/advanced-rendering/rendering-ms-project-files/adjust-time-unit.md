---
id: adjust-time-unit
url: viewer/java/adjust-time-unit
title: Adjust time unit
weight: 1
description: "This article explains how to adjust a time unit when viewing MS Project Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering MS Project documents GroupDocs.Viewer tries to find optimal output size and time unit depending on the project's overall length. In case you need to set your own page size or time unit, you can set [ProjectManagementOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions) class properties of corresponding [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class as shown in code samples below. Time unit refers to the smallest unit (days, third of a month or month) used in timescale bar. When the `TimeUnit.DAYS` is selected, you will get the most detailed view of your tasks. Whereas, when `TimeUnit.MONTH` is selected, you will get the more general representation of tasks.

The [TimeUnit](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TimeUnit) enumeration contains the following members:

* [TimeUnit.UNSPECIFIED](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TimeUnit#UNSPECIFIED) - The unknown, unspecified time scale
* [TimeUnit.DAYS](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TimeUnit#DAYS) - The one day interval
* [TimeUnit.THIRDS_OF_MONTHS](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TimeUnit#THIRDS_OF_MONTHS) - The one third of the month
* [TimeUnit.MONTHS](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TimeUnit#MONTHS) - The one month interval

The following are the steps to be followed to set time interval:

* Create [HtmlViewOption](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) / [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) / [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) / [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object;
* Call [getProjectManagementOptions()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#getProjectManagementOptions()) and set [setTimeUnit()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions#setTimeUnit(int)) property;
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code samples show how to render MS Project document by time intervals.

```java
    try (Viewer viewer = new Viewer("sample.mpp")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getProjectManagementOptions().setTimeUnit(TimeUnit.DAYS);
        viewer.view(viewOptions);
    }
```
