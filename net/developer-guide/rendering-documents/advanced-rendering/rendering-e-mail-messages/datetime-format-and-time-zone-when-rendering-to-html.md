---
id: datetime-format-and-time-zone-when-rendering-to-html
url: viewer/net/datetime-format-and-time-zone-when-rendering-to-html
title: Date-time format and time zone
weight: 2
description: "This article explains how to set date-time format and timezone offset for Email messages with GroupDocs.Viewer within your .NET applications."
keywords: timezone offset date time format
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When rendering email messages, by default the API uses date-time format and time-zone based on system default settings. You can set your date-time format and set time-zone offset when rendering to HTML.

The following are the steps to set date-time and time zones for email message:

* Create [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object
* If you want to set your date-time format - set [EmailOptions.DateTimeFormat](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions/properties/datetimeformat) value
* If you want to set time zone offset for dates in E-Mail message TimeZoneOffset - set [EmailOptions.TimeZoneOffset](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions/properties/timezoneoffset) value
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code sample shows how to use custom date-time and a time-zone offset.

```csharp
using (Viewer viewer = new Viewer("sample.eml"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("result_{0}.html");

    viewOptions.EmailOptions.DateTimeFormat = "MM d yyyy HH:mm tt zzz";

    // Time zone offset for 1 hour
    viewOptions.EmailOptions.TimeZoneOffset = new TimeSpan(1, 0, 0);    

    viewer.View(viewOptions);
}
```

To get the full list of custom date-time formatting, please refer to these links:

[Custom date and time format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings) \
[Standard date and time format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings)
