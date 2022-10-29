---
id: render-ms-project-files
url: viewer/net/render-ms-project-files
title: Render Project documents as HTML, PDF, and image files
linkTitle: Render Project files
weight: 7
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert Microsoft Project files to HTML, PDF, PNG, and JPEG formats."
keywords: microsoft project, project viewer, mpp to pdf, mpp to html, mpp to png, mpp to jpg, mpp to jpeg, mpp to image
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/adjust-time-unit
    - /viewer/net/how-to-convert-and-view-ms-project-documents-with-notes
    - /viewer/net/how-to-get-ms-project-start-and-end-dates
    - /viewer/net/render-project-time-interval
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render Project files in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Project or other project management software to load and view Project files within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/project" >}} {{< icon "gdoc_person" >}} View Project files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Project Management file formats

GroupDocs.Viewer supports the following Project Management file formats:

* [Microsoft Project](https://docs.fileformat.com/project-management/mpp) (.MPP)
* [Microsoft Project Template](https://docs.fileformat.com/project-management/mpt) (.MPT)
* [Microsoft Project Exchange File](https://docs.fileformat.com/project-management/mpx) (.MPX)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render Project files as HTML

Create an [HtmlViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Project file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    // Render the project's active view as HTML.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Project file to HTML](/viewer/net/images/rendering-basics/render-ms-project-files/render-project-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    // Render the project's active view as HTML.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources(
        "page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-ms-project-files/render-project-to-html-external-resources.png)

## Render Project files as PDF

Create a [PdfViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Project file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    // Create a PDF file for the project's active view.
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Project file to PDF](/viewer/net/images/rendering-basics/render-ms-project-files/render-project-to-pdf.png)

## Render Project files as PNG

Create a [PngViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Project file to PNG. Use the [PngViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    // Render the project's active view as PNG.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.Width = 1600;
    viewOptions.Height = 650;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Project file to PNG](/viewer/net/images/rendering-basics/render-ms-project-files/render-project-to-png-image.png)

## Render Project files as JPEG

Create a [JpgViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Project file to JPEG. Use the [JpgViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    // Render the project's active view as JPEG.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.Width = 1600;
    viewOptions.Height = 650;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Obtain information about a Project file

Follow the steps below to obtain information about a Project file (the file format, the number of pages, the project's start and end dates): 

1. Create a [ViewInfoOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [ProjectManagementViewInfo](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.results/projectmanagementviewinfo) type.
3. Use the `ProjectManagementViewInfo` class properties to retrieve information about the Project file.

{{< tabs "example6">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    var viewInfo = viewer.GetViewInfo(viewInfoOptions) as ProjectManagementViewInfo;

    if (viewInfo != null)
    {
        // Display information about the Project file.
        Console.WriteLine($"File type: {viewInfo.FileType}");
        Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}");
        Console.WriteLine($"Project start date: {viewInfo.StartDate}");
        Console.WriteLine($"Project end date: {viewInfo.EndDate}");
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![Get information about a Project file](/viewer/net/images/rendering-basics/render-ms-project-files/retrieve-project-file-information.png)

## Specify the output page size

GroupDocs.Viewer allows you to specify page size for the output file when you convert your Project document to HTML, PDF, or image format. Assign a [PageSize](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pagesize) enumeration member to the [ProjectManagementOptions.PageSize](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/projectmanagementoptions/properties/pagesize) property to select one of the predefined page sizes (Letter, Ledger, A0, A1, A2, A3, or A4). You can access this property for the following classes (depending on the output file format):

* [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

The following example specifies page size for the output PDF file:

{{< tabs "example7">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.ProjectManagementOptions.PageSize = PageSize.A3;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}


## Adjust the time unit

When rendering a Project file, GroupDocs.Viewer selects the smallest time unit on a timescale based on the total length of the project. You can adjust the timescale to show smaller or greater time units (from days to months). To do this, set the [ViewOptions.ProjectManagementOptions.TimeUnit](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/projectmanagementoptions/properties/timeunit) property for a target view to one of the following [TimeUnit](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/timeunit) enumeration members:

* `Days`---Displays days on the timescale.
* `ThirdsOfMonths`---Displays the Beginning/Middle/End (B/M/E) of each month on the timescale.
* `Months`---Displays months on the timescale.
* `Unspecified`---The timescale unit is not specified.

The following code sample demonstrates how to specify the timescale unit when rendering a Project file to HTML:

{{< tabs "example8">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output_{0}.html");
    viewOptions.ProjectManagementOptions.TimeUnit = TimeUnit.ThirdsOfMonths;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render a Project with the timescale unit set to thirds of months](/viewer/net/images/rendering-basics/render-ms-project-files/render-project-with-custom-time-unit.png)

## Render specific dates

With GroupDocs.Viewer, you can render only a portion of the project's timeline when you convert your Project file to HTML, PDF, or image format. Set the [ViewOptions.ProjectManagementOptions.StartDate](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions/properties/startdate) and [ViewOptions.ProjectManagementOptions.EndDate](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions/properties/enddate) properties for a target view to specify a date range the timeline should display. If you set only the `StartDate` property, the timeline displays information for tasks from the specified date to the project's finish date. If you set only the `EndDate` property, the timeline contains dates from the project's start date to the specified date.

The example below demonstrates how to convert a Project file to PDF and set the timeline date range.

{{< tabs "example9">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.ProjectManagementOptions.StartDate = new DateTime(2022, 08, 01);
    viewOptions.ProjectManagementOptions.EndDate = new DateTime(2022, 09, 01);
    viewer.View(viewOptions);
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render tasks for a specific date range](/viewer/net/images/rendering-basics/render-ms-project-files/render-tasks-between-two-dates.png)

## Render notes

Microsoft Project allows you to add notes to tasks, resources, and assignments.

![Speaker notes in Microsoft PowerPoint](/viewer/net/images/rendering-basics/render-ms-project-files/project-task-notes.png)

If you need to display these notes in the output HTML, PDF, or image files, enable the [ViewOptions.RenderNotes](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendernotes) property for a target view.

The following code sample converts a Project file with task notes to PDF:

{{< tabs "example10">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("SoftwareDevelopmentPlan.mpp"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.RenderNotes = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. Notes are rendered on a separate page.

![Render a Project file with task notes](/viewer/net/images/rendering-basics/render-ms-project-files/render-task-notes-to-pdf.png)
