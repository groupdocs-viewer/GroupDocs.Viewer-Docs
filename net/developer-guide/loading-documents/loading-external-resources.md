---
id: loading-external-resources
url: viewer/net/loading-external-resources
title: Loading of external resources containing by a document
weight: 5
keywords: set timeout, Groupdocs.Viewer
description: "This article explains how to manage loading of external resources contained by a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

If the document contains external resources, such as images, GroupDocs.Viewer loads them when rendering a document. This allows the document to display correctly, but is a potential security risk.

GroupDocs.Viewer allows you to manage loading of external resources contained by a document. These features are supported for the following formats:
- [Word Processing File Formats](https://docs.fileformat.com/word-processing/)
- [Web File Formats](https://docs.fileformat.com/web/)
- [SpreadSheet File Formats](https://docs.fileformat.com/spreadsheet/)

Use the [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) object to manage loading of external resources.

![GroupDocs.Viewer renders business-flyer.docx on your server, an isolated environment. The flyer links two pictures, the GroupDocs.Viewer logo on docs.groupdocs.com and the GroupDocs symbol on blog.groupdocs.com, which are downloaded while rendering only as far as LoadOptions allow: SkipExternalResources lets nothing in, WhitelistedResources lets in the listed hosts, ResourceLoadingTimeout limits the wait](/viewer/net/images/developer-guide/loading-documents/external-resources.svg)

The examples below use `business-flyer.docx`, a flyer that does not store its two pictures but links them: the GroupDocs.Viewer logo from docs.groupdocs.com at the top right, and the GroupDocs symbol from blog.groupdocs.com at the bottom.

## Skip loading of external resources

The following code snippet shows how to deny loading of external resources:

{{< tabs "skip-loading-external-resources">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

LoadOptions loadOptions = new LoadOptions();
loadOptions.SkipExternalResources = true; // Skip loading of external resources

using (Viewer viewer = new Viewer("business-flyer.docx", loadOptions))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForEmbeddedResources("skip-loading-external-resources_{0}.html");

    viewer.View(viewOptions);
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
        Dim loadOptions As LoadOptions = New LoadOptions()
        loadOptions.SkipExternalResources = True ' Skip loading of external resources
    
        Using viewer As Viewer = New Viewer("business-flyer.docx", loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("skip-loading-external-resources_{0}.html")
    
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "business-flyer.docx" >}}
{{< tab-text >}}
`business-flyer.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/loading-documents/loading-external-resources/business-flyer.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (117 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/loading-documents/loading-external-resources/SkipLoadingExternalResources/p_1.html)
{{< /tab >}}
{{< /tabs >}}

The following images show the output with and without external resources (the logo at the top right and the symbol at the bottom):

| loadOptions.SkipExternalResources = false | loadOptions.SkipExternalResources = true |
| --- | --- |
| ![The flyer with both pictures](/viewer/net/images/developer-guide/loading-documents/flyer-with-external-resources.png) | ![The flyer with a placeholder for each picture](/viewer/net/images/developer-guide/loading-documents/flyer-without-external-resources.png) |

## Manage a safelist for loading external resources

The following code snippet shows how to allow loading of external resources from specific URLs. Only the symbol from blog.groupdocs.com loads; the logo from docs.groupdocs.com does not:

{{< tabs "load-external-resources-from-safelist">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

LoadOptions loadOptions = new LoadOptions();
loadOptions.SkipExternalResources = true; // Skip loading of all external resources
loadOptions.WhitelistedResources.Add("blog.groupdocs.com"); // Load the resources whose URL contains "blog.groupdocs.com"

using (Viewer viewer = new Viewer("business-flyer.docx", loadOptions))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForEmbeddedResources("load-external-resources-from-safelist_{0}.html");

    viewer.View(viewOptions);
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
        Dim loadOptions As LoadOptions = New LoadOptions()
        loadOptions.SkipExternalResources = True ' Skip loading of all external resources
        loadOptions.WhitelistedResources.Add("blog.groupdocs.com") ' Load the resources whose URL contains "blog.groupdocs.com"
    
        Using viewer As Viewer = New Viewer("business-flyer.docx", loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("load-external-resources-from-safelist_{0}.html")
    
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "business-flyer.docx" >}}
{{< tab-text >}}
`business-flyer.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/loading-documents/loading-external-resources/business-flyer.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (130 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/loading-documents/loading-external-resources/LoadExternalResourcesFromSafelist/p_1.html)
{{< /tab >}}
{{< /tabs >}}

## Set timeout for loading of external resources

The default timeout is 30 seconds. GroupDocs.Viewer allows you to change this value.

The following code snippet shows how to set a timeout to load external resources:

{{< tabs "set-external-resources-timeout">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Specify a timeout.
LoadOptions loadOptions = new LoadOptions();
loadOptions.ResourceLoadingTimeout = TimeSpan.FromSeconds(5);
// Render a file.
using (Viewer viewer = new Viewer("business-flyer.docx", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("set-external-resources-timeout_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Specify a timeout.
        Dim loadOptions As LoadOptions = New LoadOptions()
        loadOptions.ResourceLoadingTimeout = TimeSpan.FromSeconds(5)
        ' Render a file.
        Using viewer As Viewer = New Viewer("business-flyer.docx", loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("set-external-resources-timeout_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "business-flyer.docx" >}}
{{< tab-text >}}
`business-flyer.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/loading-documents/loading-external-resources/business-flyer.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (140 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/loading-documents/loading-external-resources/SetExternalResourcesTimeout/p_1.html)
{{< /tab >}}
{{< /tabs >}}
