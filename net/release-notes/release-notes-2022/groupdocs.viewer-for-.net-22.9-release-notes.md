---
id: groupdocs-viewer-for-net-22-9-release-notes
url: viewer/net/groupdocs-viewer-for-net-22-9-release-notes
title: GroupDocs.Viewer for .NET 22.9 Release Notes
weight: 80
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 22.9"
keywords: release notes, groupdocs.viewer, .net, 22.9
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

## Major Features

There are 14 features, and bug-fixes in this release, most notable are:

* Added support for setting page size and margings when rendering Web documents
* Rendering encrypted RAR5 archives is now supported

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-4064|Set page size when rendering Web documents|Feature|
|VIEWERNET-2692|Out of memory exception thrown when rendering MD file to PNG/JPG in Linux|Bug|
|VIEWERNET-3367|Exception `Index was out of range. Must be non-negative and less than the size of the collection. Parameter name: index` when opening CGM-file.|Bug|
|VIEWERNET-3498|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-3588|"Index was out of range. Must be non-negative and less than the size of the collection. (Parameter 'startIndex')" exception when rendering NUMBERS file|Bug|
|VIEWERNET-3597|UpdateSize produces wrong size for specific DWG document|Bug|
|VIEWERNET-3601|Table border is not correct when converting certain DOCX to HTML in .NET|Bug|
|VIEWERNET-3739|Temp files are not removed when Viewer fails to load CDR |Bug|
|VIEWERNET-3820|"Could not load file. File is corrupted or damaged." exception when rendering ODT file|Bug|
|VIEWERNET-3874|"Could not load file. File is corrupted or damaged." exception when rendering ODT file|Bug|
|VIEWERNET-3916|Cannot open RAR5 encrypted file in .NET 6|Bug|
|VIEWERNET-3967|Size options were not applied when converting CAD documents|Bug|
|VIEWERNET-4000|Saving a particular pdf document to image by page produces distored images|Bug|
|VIEWERNET-4117|DXF Image loading failed|Bug|



## Public API changes

We've allocated options for rendering Web documents into a separate WedDocumentOptions class to simplify public API and make it more specific. Previously users have to `WordProcessingOptions` which was not intuitive.

{{< tabs "source1">}}
{{< tab "C#" >}}
```csharp
namespace GroupDocs.Viewer.Options
{
    /// <summary>
    /// This rendering options enables you to customize the appearance of
    /// the output HTML/PDF/PNG/JPEG when rendering Web documents.
    /// </summary>
    public class WebDocumentOptions
    {
        /// <summary>
        /// The size of the output page.
        /// The default value is <see cref="GroupDocs.Viewer.Options.PageSize.Letter"/> 792 x 612 points.
        /// <remarks>
        /// When contents does not fit set a larger page size e.g. <see cref="GroupDocs.Viewer.Options.PageSize.A3"/>.
        /// </remarks>
        /// </summary>
        public PageSize PageSize { get; set; }

        /// <summary>
        /// The distance (in points) between the left edge of the page and the left boundary of the body text.
        /// The default value is 5 points.
        /// </summary>
        public float LeftMargin { get; set; }

        /// <summary>
        /// The distance (in points) between the right edge of the page and the right boundary of the body text.
        /// The default value is 5 points.
        /// </summary>
        public float RightMargin { get; set; }

        /// <summary>
        /// The distance (in points) between the top edge of the page and the top boundary of the body text.
        /// The default value is 72 points.
        /// </summary>
        public float TopMargin { get; set; }

        /// <summary>
        /// The distance (in points) between the bottom edge of the page and the bottom boundary of the body text.
        /// The default value is 72 points.
        /// </summary>
        public float BottomMargin { get; set; }

        /// <summary>
        /// Provides options for rendering word processing documents.
        /// </summary>
        public WebDocumentOptions()
        {
            LeftMargin = 5f;
            RightMargin = 5f;
            TopMargin = 72f;
            BottomMargin = 72f;
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following example demonstrates how to set Web document options when rendering HTML file to PDF:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Invoice.htm"))
{
    // Create a PDF file for with page size set to A3 1190 x 842 points.
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.WebDocumentOptions.PageSize = PageSize.A3; 
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}