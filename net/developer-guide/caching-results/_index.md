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

To enable caching, follow these steps:

1. Instantiate the desired cache object (for example, [FileCache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/filecache) to store document rendering results at the local drive)
2. Instantiate the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object. Specify the cache object as a parameter of the constructor.
3. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object as a parameter of the constructor.
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.

The following code snippet shows how to enable caching and displays the difference between rendering a file and getting the cached results:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
// Specify parameters.
string outputDirectory = @"C:\output";
string cachePath = Path.Combine(outputDirectory, "cache");
string pageFilePathFormat = Path.Combine(outputDirectory, "page_{0}.html");
// Create a cache.
FileCache cache = new FileCache(cachePath);
ViewerSettings settings = new ViewerSettings(cache);

using (Viewer viewer = new Viewer(@"C:\sample.docx", settings))
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
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/caching-results.png)

For details, please refer to the following pages: