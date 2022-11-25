---
id: datetime-format-and-time-zone-when-rendering-to-html
url: viewer/java/datetime-format-and-time-zone-when-rendering-to-html
title: Set date-time format and time zone
weight: 2
description: "This article explains how to set date-time format and timezone offset for Email messages with GroupDocs.Viewer within your Java applications."
keywords: timezone offset date time format
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering email messages, by default the API uses date-time format and time-zone based on system default settings. You can set your date-time format and set time-zone offset when rendering to HTML.

The following are the steps to set date-time and time zones for email message:

* Create [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) (or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions)) object
* If you want to set your date-time format - set [emailOptions.setDateTimeFormat()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/EmailOptions#setDateTimeFormat(java.lang.String)) value
* If you want to set time zone offset for dates in E-Mail message TimeZoneOffset - set [emailOptions.setTimeZoneOffset()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/EmailOptions#setTimeZoneOffset(java.util.TimeZone)) value
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to use custom date-time and a time-zone offset.

```java
    try (Viewer viewer = new Viewer("sample.eml")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result_{0}.html");

        viewOptions.getEmailOptions().setDateTimeFormat("MM d yyyy HH:mm tt zzz");

        // Time zone offset for 1 hour
        viewOptions.getEmailOptions().setTimeZoneOffset(TimeZone.getTimeZone("GMT+1"));

        viewer.view(viewOptions);
    }
```
