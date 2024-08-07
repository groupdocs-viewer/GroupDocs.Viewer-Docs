---
id: render-ms-project-files
url: viewer/nodejs-java/render-ms-project-files
title: Render Project documents as HTML, PDF, and image files
linkTitle: Render Project files
weight: 7
description: "This topic describes how to use the GroupDocs.Viewer Node.js API to convert Microsoft Project files to HTML, PDF, PNG, and JPEG formats."
keywords: microsoft project, project viewer, mpp to pdf, mpp to html, mpp to png, mpp to jpg, mpp to jpeg, mpp to image
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/adjust-time-unit
    - /viewer/nodejs-java/how-to-convert-and-view-ms-project-documents-with-notes
    - /viewer/nodejs-java/how-to-get-ms-project-start-and-end-dates
    - /viewer/nodejs-java/render-project-time-interval
---
[GroupDocs.Viewer for Node.js via Java](https://products.groupdocs.com/viewer/nodejs-java) allows you to render Project files in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Project or other project management software to load and view Project files within your Node.js application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/project" >}} {{< icon "gdoc_person" >}} View Project files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Project Management file formats

GroupDocs.Viewer supports the following Project Management file formats:

* [Microsoft Project](https://docs.fileformat.com/project-management/mpp) (.MPP)
* [Microsoft Project Template](https://docs.fileformat.com/project-management/mpt) (.MPT)
* [Microsoft Project Exchange File](https://docs.fileformat.com/project-management/mpx) (.MPX)

## Render Project files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert a Project file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Render the project's active view as HTML.
// {0} is replaced with the current page number in the output file names.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Project file to HTML](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-project-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Render the project's active view as HTML.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the page number and resource name, respectively.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-project-to-html-external-resources.png)

## Render Project files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert a Project file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Create a PDF file.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Project file to PDF](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-project-to-pdf.png)

## Render Project files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert a Project file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Render the project's active view as PNG.
// {0} is replaced with the page numbers in the output image names.
const viewOptions = groupdocs.viewer.PngViewOptions("output_{0}.png")
// Set width and height.
viewOptions.setWidth(1600)
viewOptions.setHeight(650)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Project file to PNG](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-project-to-png-image.png)

## Render Project files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert a Project file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Render the project's active view as JPG.
// {0} is replaced with the page numbers in the output image names.
const viewOptions = groupdocs.viewer.PngViewOptions("output_{0}.jpg")
// Set width and height.
viewOptions.setWidth(1600)
viewOptions.setHeight(650)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Get information about a Project file

Follow the steps below to obtain information about a Project file (the file format, the number of pages, the project's start and end dates): 

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.getViewInfo](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [ProjectManagementViewInfo](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.results/projectmanagementviewinfo) type.
3. Use the `ProjectManagementViewInfo` class properties to retrieve information about the Project file.

{{< tabs "example6">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
  
const viewInfoOptions = groupdocs.viewer.ViewInfoOptions.forHtmlView()
const viewInfo = viewer.getViewInfo(viewInfoOptions)

console.log("File type: " + viewInfo.getFileType())
console.log("Pages count: " + viewInfo.getPages().size())
console.log("Project start date: " + viewInfo.getStartDate())
console.log("Project end date: " + viewInfo.getEndDate())
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about a Project file](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/retrieve-project-file-information.png)

## Specify the output page size

GroupDocs.Viewer allows you to specify page size for the output file when you convert your Project document to HTML, PDF, or image format. Use the [ProjectManagementOptions.setPageSize](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/projectmanagementoptions/#setPageSize-com.groupdocs.viewer.options.PageSize-) method to select one of the predefined page sizes (LETTER, LEDGER, A0, A1, A2, A3, or A4) (see the [PageSize](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pagesize) enumeration). You can use this method for the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions)

The following example specifies page size for the output PDF file:

{{< tabs "example7">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Create a PDF file.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
// Specify the page size.
viewOptions.getProjectManagementOptions().setPageSize(groupdocs.viewer.PageSize.A3);
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}


## Adjust the time unit

When rendering a Project file, GroupDocs.Viewer selects the smallest time unit on a timescale based on the total length of the project. You can adjust the timescale to show smaller or greater time units (from days to months). To do this, use the [ViewOptions.getProjectManagementOptions().setTimeUnit](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/projectmanagementoptions/#setTimeUnit-com.groupdocs.viewer.options.TimeUnit-) method for a target view to one of the following [TimeUnit](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/timeunit) enumeration members:

* `DAYS` displays days on the timescale.
* `THIRDS_OF_MONTHS` displays the Beginning/Middle/End (B/M/E) of each month on the timescale.
* `MONTHS` displays months on the timescale.
* `UNSPECIFIED` means that the timescale unit is not specified.

The following code sample demonstrates how to specify the timescale unit when rendering a Project file to HTML:

{{< tabs "example8">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("sample.mpp")
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources()
viewOptions.getProjectManagementOptions().setTimeUnit(groupdocs.viewer.TimeUnit.DAYS)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render a Project with the timescale unit set to thirds of months](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-project-with-custom-time-unit.png)

## Render specific dates

With GroupDocs.Viewer, you can render only a portion of the project's timeline when you convert your Project file to HTML, PDF, or image format. Use the [ViewOptions.getProjectManagementOptions().setStartDate](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/projectmanagementoptions/#setStartDate-java.util.Date-) and [ViewOptions.getProjectManagementOptions().setEndDate](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/projectmanagementoptions/#setEndDate-java.util.Date-) methods for a target view to specify a date range the timeline should display. If you set only the `StartDate` property, the timeline displays information for tasks from the specified date to the project's finish date. If you set only the `EndDate` property, the timeline contains dates from the project's start date to the specified date.

The example below demonstrates how to convert a Project file to PDF and set the timeline date range.

{{< tabs "example9">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
const viewInfoOptions = groupdocs.viewer.ViewInfoOptions.forHtmlView()
const viewInfo = viewer.getViewInfo(viewInfoOptions)
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("output.html")

viewOptions.getProjectManagementOptions().setStartDate(new Date(2022, 8, 1, 0, 0))
viewOptions.getProjectManagementOptions().setEndDate(new Date(2022, 9, 1, 0, 0))
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render tasks for a specific date range](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-tasks-between-two-dates.png)

## Render notes

Microsoft Project allows you to add notes to tasks, resources, and assignments.

![Speaker notes in Microsoft Project](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/project-task-notes.png)

If you need to display these notes in the output HTML, PDF, or image files, use the [ViewOptions.setRenderNotes](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/baseviewoptions/#setRenderNotes-boolean-) method for a target view.

The following code sample converts a Project file with task notes to PDF:

{{< tabs "example10">}}
{{< tab "JavaScript" >}}
```JavaScript
const viewer = new groupdocs.viewer.Viewer("SoftwareDevelopmentPlan.mpp")
// Create a PDF file.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
// Enable notes rendering.
viewOptions.setRenderNotes(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. Notes are rendered on a separate page.

![Render a Project file with task notes](/viewer/nodejs-java/images/rendering-basics/render-ms-project-files/render-task-notes-to-pdf.png)
