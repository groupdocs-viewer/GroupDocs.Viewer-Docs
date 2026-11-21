---
id: caching-results
url: viewer/net/caching-results
title: Cache results
weight: 5
keywords: caching,caching results,groupdocs.viewer
description: "This article contains caching use-cases with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Caching saves rendering results to a specified location, such as a local disk. When you re-request the rendering results, GroupDocs.Viewer does not render again, but uses the cached results.
As a document can take a long time to render, use caching if you expect to reuse the rendering results.

![The first View call renders the pages and stores them in a FileCache folder; a second call with the same document reads the pages from the cache instead of rendering them again](/viewer/net/images/developer-guide/caching-results/caching-overview.svg)

To enable caching, follow these steps:

1. Instantiate the desired cache object (for example, [FileCache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/filecache) to store document rendering results at the local drive)
2. Instantiate the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object. Specify the cache object as a parameter of the constructor.
3. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object as a parameter of the constructor.
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.

The following code snippet shows how to enable caching and displays the difference between rendering a file and getting the cached results:

{{< tabs "cache-rendering-results">}}
{{< tab "C#" >}}
```csharp
using System;
using System.Diagnostics;
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Caching;
using GroupDocs.Viewer.Options;
// ...

string outputDirectory = "output";
string cachePath = Path.Combine(outputDirectory, "cache");
string pageFilePathFormat = Path.Combine(outputDirectory, "page_{0}.html");
// Create a cache.
FileCache cache = new FileCache(cachePath);
ViewerSettings settings = new ViewerSettings(cache);

using (Viewer viewer = new Viewer("sample.docx", settings))
{
    // Create an HTML file.
    HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(pageFilePathFormat);
    // Render and display the rendering time.
    Stopwatch stopWatch = Stopwatch.StartNew();
    viewer.View(options);
    stopWatch.Stop();
    Console.WriteLine("Time taken on first call to View method {0} (ms).", stopWatch.ElapsedMilliseconds);
    // Get cached results and display the time.
    stopWatch.Restart();
    viewer.View(options);
    stopWatch.Stop();
    Console.WriteLine("Time taken on second call to View method {0} (ms).", stopWatch.ElapsedMilliseconds);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports System.Diagnostics
Imports System.IO
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Caching
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
            Dim outputDirectory As String = "output"
            Dim cachePath As String = Path.Combine(outputDirectory, "cache")
            Dim pageFilePathFormat As String = Path.Combine(outputDirectory, "page_{0}.html")
            ' Create a cache.
            Dim cache As FileCache = New FileCache(cachePath)
            Dim settings As ViewerSettings = New ViewerSettings(cache)
        
            Using viewer As Viewer = New Viewer("sample.docx", settings)
                ' Create an HTML file.
                Dim options As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources(pageFilePathFormat)
                ' Render and display the rendering time.
                Dim stopWatch As Stopwatch = Stopwatch.StartNew()
                viewer.View(options)
                stopWatch.[Stop]()
                Console.WriteLine("Time taken on first call to View method {0} (ms).", stopWatch.ElapsedMilliseconds)
                ' Get cached results and display the time.
                stopWatch.Restart()
                viewer.View(options)
                stopWatch.[Stop]()
                Console.WriteLine("Time taken on second call to View method {0} (ms).", stopWatch.ElapsedMilliseconds)
            End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/caching-results/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "cache-rendering-results.txt" >}}  
```text
Time taken on first call to View method 9303 (ms).
Time taken on second call to View method 65 (ms).
```
[Download full output](/viewer/net/_output_files/developer-guide/caching-results/_index/CacheRenderingResults/cache-rendering-results.txt)
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages: