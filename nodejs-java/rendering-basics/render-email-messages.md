---
id: render-email-messages
url: viewer/nodejs-java/render-email-messages
title: Render email messages as HTML, PDF, PNG, and JPEG files
linkTitle: Render email messages
weight: 12
description: "This topic describes how to use the GroupDocs.Viewer Node.js API to convert email messages to HTML, PDF, PNG, and JPEG formats."
keywords: eml to pdf, eml to html, eml to png, eml to jpeg, msg to pdf, msg to html, msg to png, msg to jpeg
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/view-e-mail-messages
    - /viewer/nodejs-java/adjust-page-size
    - /viewer/nodejs-java/datetime-format-and-time-zone-when-rendering-to-html
    - /viewer/nodejs-java/rename-email-fields
---
[GroupDocs.Viewer for Node.js via Java](https://products.groupdocs.com/viewer/nodejs-java) allows you to render your email messages in HTML, PDF, PNG, and JPEG formats. You do not need to use third-party email clients to view the contents of email files within your Node.js application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer) class instance. Pass an email message you want to view to the class constructor. You can load the message from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method overloads to convert the loaded message to HTML, PDF, or image format. These methods allow you to render the entire message or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/email" >}} {{< icon "gdoc_person" >}} View email files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported email file formats

GroupDocs.Viewer supports the following email file formats:

* [Email Message](https://docs.fileformat.com/email/eml) (.EML)
* [Apple Mail Message](https://docs.fileformat.com/email/emlx) (.EMLX)
* [Email Mailbox File](https://docs.fileformat.com/email/mbox/) (.MBOX)
* [Outlook Message Item File](https://docs.fileformat.com/email/msg) (.MSG)
* [vCard (Virtual Contact) File](https://docs.fileformat.com/email/vcf/) (.VCF, .VCARD)

## Render email messages as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an email message to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and exclude specific fonts. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To embed an email message in an HTML page, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Create an HTML file for the letter.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("output.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an email message to HTML](/viewer/nodejs-java/images/rendering-basics/render-email-messages/render-email-to-html-embedded-resources.png)

### Create an HTML file with external resources

To save an email message to a separate folder, call the [HtmlViewOptions.forExternalResources](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.eml")) {
    // Specify the HTML file name and location of external resources.
    // {0} is replaced with the resource name in the output file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("output.html", "output/resource_{0}", "output/resource_{0}");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Specify the HTML file name and location of external resources.
// {0} is replaced with the resource name in the output file name.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forExternalResources("output.html", "output/resource_{0}", "output/resource_{0}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The result is shown below. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/nodejs-java/images/rendering-basics/render-email-messages/render-email-to-html-external-resources.png)

## Render email messages as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an email message to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Create a PDF file for the letter.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an email message to PDF](/viewer/nodejs-java/images/rendering-basics/render-email-messages/render-email-to-pdf.png)

## Render email messages as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an email message to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Create a PNG image for the letter.
const viewOptions = groupdocs.viewer.PngViewOptions("output.png")
// Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an email message to PNG](/viewer/nodejs-java/images/rendering-basics/render-email-messages/render-email-to-png.png)

## Render email messages as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an email message to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Create a JPG image for the letter.
const viewOptions = groupdocs.viewer.JpgViewOptions("output.jpg")
// Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [EmailOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/emailoptions) class that allows you to specify different options for rendering email messages. To access these options, use the [setEmailOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/baseviewoptions/#setEmailOptions-com.groupdocs.viewer.options.EmailOptions-) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions)

### Set the output page size

GroupDocs.Viewer allows you to specify page size for the output file when you convert an email message to HTML, PDF, or image format. Use the [EmailOptions.setPageSize](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/emailoptions/#setPageSize-com.groupdocs.viewer.options.PageSize-) method to select one of the predefined page sizes (LETTER, LEDGER, A0, A1, A2, A3, or A4) (see the [PageSize](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pagesize) enumeration).

The following example specifies page size for the output PDF file:

{{< tabs "example6">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Create a PDF file for the letter.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
viewOptions.getEmailOptions().setPageSize(groupdocs.viewer.PageSize.LETTER)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Rename fields in the message header

GroupDocs.Viewer allows you to change how standard fields (such as _From_, _To_, _Subject_, and so on) are displayed in the email message header.

![Default fields in the message header](/viewer/nodejs-java/images/rendering-basics/render-email-messages/default-message-fields.png)

Use the [EmailOptions.setFieldTextMap](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/emailoptions/#setFieldTextMap-java.util.Map-com.groupdocs.viewer.options.Field-java.lang.String--) method to specify custom field labels. Static fields of the [Field](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/field) class allow you to access default email header fields, as shown in the example below.

{{< tabs "example7">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Specify custom field labels.
const field = groupdocs.viewer.Field
const map = {}
map[field.FROM] = "Sender"
map[field.TO] = "Receiver"
map[field.SENT] = "Date"
map[field.SUBJECT] = "Email subject"
// Create an HTML file.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("output.html")
viewOptions.getEmailOptions().setFieldTextMap(map)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Custom fields in the message header](/viewer/nodejs-java/images/rendering-basics/render-email-messages/custom-message-fields.png)

### Specify the date and time format and change the time zone

When rendering email messages, GroupDocs.Viewer formats date and time information in the message header based on the system's date and time settings. If you want to change the default date and time format or specify the time zone offset, use the following methods:

* [EmailOptions.setDateTimeFormat](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/emailoptions/#setDateTimeFormat-java.lang.String-)---Allows you to define a custom date and time format. See the following topics for details: 
    * [Standard date and time format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings)
    * [Custom date and time format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings)
* [EmailOptions.setTimeZoneOffset](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/emailoptions/#setTimeZoneOffset-java.util.TimeZone-)---Specifies the hours and minutes offset from UTC. The offset is displayed with a leading sign. A plus sign (+) indicates time ahead of UTC, and a minus sign (-) indicates time behind UTC. 

{{< tabs "example8">}}
{{< tab "JavaScript" >}}
```JavaScript
const java = require('java')
const timeOffset = java.import("java.util.TimeZone").getTimeZone("GMT+1")

const viewer = new groupdocs.viewer.Viewer("sample.eml")
// Create an HTML file
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("output.html")
// Apply a custom format to the date in the email message header.
viewOptions.getEmailOptions().setDateTimeFormat("MM d yyyy HH:mm tt zzz");
// Specify the time zone offset. 
viewOptions.getEmailOptions().setTimeZoneOffset(timeOffset)

viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Custom date-time format](/viewer/nodejs-java/images/rendering-basics/render-email-messages/custom-date-time-format.png)
