---
id: render-email-messages
url: viewer/python-net/render-email-messages
title: Render email messages as HTML, PDF, PNG, and JPEG files
linkTitle: Render Email messages
weight: 12
description: "Convert email messages to HTML, PDF, PNG, or JPEG using the GroupDocs.Viewer Python API."
keywords: eml to pdf, eml to html, eml rendering, email conversion, email viewer, eml to image, msg to pdf
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-e-mail-messages
    - /viewer/python-net/adjust-page-size
    - /viewer/python-net/datetime-format-and-time-zone-when-rendering-to-html
    - /viewer/python-net/rename-email-fields
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render your email messages in HTML, PDF, PNG, and JPEG formats. You do not need to use third-party email clients to view the contents of email files within your .NET application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass an email message you want to view to the class constructor. You can load the message from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the loaded message to HTML, PDF, or image format. These methods allow you to render the entire message or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/email" >}} {{< icon "gdoc_person" >}} View email files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported email file formats

GroupDocs.Viewer supports the following email file formats:

* [Email Message](https://docs.fileformat.com/email/eml) (.EML)
* [Apple Mail Message](https://docs.fileformat.com/email/emlx) (.EMLX)
* [Email Mailbox File](https://docs.fileformat.com/email/mbox/) (.MBOX)
* [Outlook Message Item File](https://docs.fileformat.com/email/msg) (.MSG)
* [vCard (Virtual Contact) File](https://docs.fileformat.com/email/vcf/) (.VCF, .VCARD)

GroupDocs.Viewer can detect the email file format automatically based on information in the file header.

## Render email messages as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an email message to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and exclude specific fonts. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To embed an email message in an HTML page, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an email message to HTML](/viewer/python-net/images/rendering-basics/render-email-messages/render-email-to-html-embedded-resources.png)

### Create an HTML file with external resources

To save an email message to a separate folder, call the [HtmlViewOptions.for_external_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Specify the HTML file name and location of external resources.
    # {0} is replaced with the resource name in the output file name.
    viewOptions = gvo.HtmlViewOptions.for_external_resources("output.html", "output/resource_{0}", "output/resource_{0}")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The result is shown below. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/python-net/images/rendering-basics/render-email-messages/render-email-to-html-external-resources.png)

## Render email messages as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an email message to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create a PDF file.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an email message to PDF](/viewer/python-net/images/rendering-basics/render-email-messages/render-email-to-pdf.png)

## Render email messages as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an email message to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create a PNG file.
    viewOptions = gvo.PngViewOptions("output.png")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an email message to PNG](/viewer/python-net/images/rendering-basics/render-email-messages/render-email-to-png.png)

## Render email messages as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an email message to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create a JPG file.
    viewOptions = gvo.JpgViewOptions("output.jpg")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [EmailOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/emailoptions) class that allows you to specify different options for rendering email messages. To access these options, use the [EmailOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Set the output page size

GroupDocs.Viewer allows you to specify page size for the output file when you convert an email message to HTML, PDF, or image format. Assign a [PageSize](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pagesize/) enumeration member to the [email_options.page_size](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/emailoptions/#properties) property to select one of the predefined page sizes (Letter, Ledger, A0, A1, A2, A3, or A4).

The following example specifies page size for the output PDF file:

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create a PDF file.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Specify the page size.
    options.email_options.page_size = gvo.PageSize.Letter
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Rename fields in the message header

GroupDocs.Viewer allows you to change how standard fields (such as _From_, _To_, _Subject_, and so on) are displayed in the email message header.

![Default fields in the message header](/viewer/python-net/images/rendering-basics/render-email-messages/default-message-fields.png)

Use the [EmailOptions.field_text_map](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/emailoptions/#properties) property to specify custom field labels. Static fields of the [Field](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/field/) class allow you to access default email header fields, as shown in the example below.

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    # Specify custom field labels.
    viewOptions.email_options.field_text_map[gvo.Field.FROM] = "Sender"
    viewOptions.email_options.field_text_map[gvo.Field.TO] = "Receiver"
    viewOptions.email_options.field_text_map[gvo.Field.SENT] = "Date"
    viewOptions.email_options.field_text_map[gvo.Field.SUBJECT] = "Topic"

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Custom fields in the message header](/viewer/python-net/images/rendering-basics/render-email-messages/custom-message-fields.png)

### Specify the date and time format and change the time zone

When rendering email messages, GroupDocs.Viewer formats date and time information in the message header based on the system's date and time settings. If you want to change the default date and time format or specify the time zone offset, use the following properties:

* [email_options.date_time_format](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/emailoptions/#properties)---Allows you to define a custom date and time format. See the following topics for details: 
    * [Standard date and time format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings)
    * [Custom date and time format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings)
* [email_options.time_zone_offset](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/emailoptions/#properties)---Specifies the hours and minutes offset from UTC. The offset is displayed with a leading sign. A plus sign (+) indicates time ahead of UTC, and a minus sign (-) indicates time behind UTC. 

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.eml") as viewer:
    # Create an HTML file.
    options = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    # Apply a custom format to the date in the email message header.
    options.email_options.date_time_format = "MM d yyyy HH:mm tt zzz"
    # Specify the time zone offset. 
    options.email_options.time_zone_offset = timedelta(hours=1)

    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Custom date-time format](/viewer/python-net/images/rendering-basics/render-email-messages/custom-date-time-format.png)
