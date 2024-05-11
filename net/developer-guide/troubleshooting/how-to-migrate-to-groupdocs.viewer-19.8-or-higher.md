---
id: how-to-migrate-to-groupdocs-viewer-19-8-or-higher
url: viewer/net/how-to-migrate-to-groupdocs-viewer-19-8-or-higher
title: How to migrate to GroupDocs.Viewer 19.8 or higher
weight: 4
description: "This article contains information about migration from the legacy API to GroupDocs.Viewer 19.8 or higher."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
This page describes migration to the 19.8 version or later from the previous one.

## Why to migrate

The main reasons to use the 19.8 version or later are as follows:
* The Viewer class is a single entry point to manage the document rendering process to any supported file format instead of the ViewerHtmlHander/ViewerImageHander classes from previous versions.
* The rendering speed improved significantly by saving the rendered page as it is rendered, not when all pages are rendered.
* Product architecture is redesigned from scratch to decrease memory usage from 10% to 400% depending on the document type.
* Document rendering options are simplified, so you can easily instantiate the proper option class and control document rendering and saving processes.

## How to migrate

Here is a brief comparison of how to display a document in HTML form using old and new versions.  

The following code snippet shows the old coding style:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
//Get Configurations
ViewerConfig config = Utilities.GetConfigurations();

// Create html handler
ViewerHtmlHandler htmlHandler = new ViewerHtmlHandler(config);

// Guid implies that unique document name 
string guid = "sample.docx";

//Instantiate the HtmlOptions object
HtmlOptions options = new HtmlOptions();

//to get html representations of pages with embedded resources
options.IsResourcesEmbedded = true;

// Set password if document is password protected. 
if(!String.IsNullOrEmpty(DocumentPassword))
   options.Password = DocumentPassword;
            
//Get document pages in html form
List<PageHtml> pages = htmlHandler.GetPages(guid, options);

foreach (PageHtml page in pages)
{
    //Save each page at disk
    Utilities.SaveAsHtml(page.PageNumber + "_" + DocumentName, page.HtmlContent);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
'Get Configurations
Dim config As ViewerConfig = Utilities.GetConfigurations()

' Create html handler
Dim htmlHandler As ViewerHtmlHandler = New ViewerHtmlHandler(config)

' Guid implies that unique document name 
Dim guid As String = "sample.docx"

'Instantiate the HtmlOptions object
Dim options As HtmlOptions = New HtmlOptions()

'to get html representations of pages with embedded resources
options.IsResourcesEmbedded = True

' Set password if document is password protected. 
If Not [String].IsNullOrEmpty(DocumentPassword) Then options.Password = DocumentPassword

'Get document pages in html form
Dim pages As List(Of PageHtml) = htmlHandler.GetPages(guid, options)

For Each page As PageHtml In pages
    'Save each page at disk
    Utilities.SaveAsHtml(page.PageNumber.ToString() & "_" + DocumentName, page.HtmlContent)
Next
```
{{< /tab >}}
{{< /tabs >}}

The following code snippet shows the new coding style:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
   HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources();
   viewer.View(options);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...
Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            Dim options As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(options)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}