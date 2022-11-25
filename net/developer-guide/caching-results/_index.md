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
In some cases document rendering may be a time-consuming operation (dependent on source document content, structure and complexity). For such situations caching can be a solution - rendered document representation is stored into cache (for example at the local drive) and in a case of repetitive rendering of the document, GroupDocs.Viewer uses cached representation. This thing helps to avoid the processing of the same document again and again.  
To enable caching you have to:

* Instantiate desired cache object (for example [FileCache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/filecache) will store document rendering results at the local drive)
* Instantiate [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object with cache object;
* Pass [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object to constructor of a [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.
* Call [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.

Here is a code that demonstrates how to enable caching for GroupDocs.Viewer.

```csharp
string outputDirectory = @"C:\output";
string cachePath = Path.Combine(outputDirectory, "cache");
string pageFilePathFormat = Path.Combine(outputDirectory, "page_{0}.html");

FileCache cache = new FileCache(cachePath);
ViewerSettings settings = new ViewerSettings(cache);

using (Viewer viewer = new Viewer(@"C:\sample.docx", settings))
{
    HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(pageFilePathFormat);

    Stopwatch stopWatch = Stopwatch.StartNew();
    viewer.View(options);
    stopWatch.Stop();
    Console.WriteLine("Time taken on first call to View method {0} (ms).", stopWatch.ElapsedMilliseconds);

    stopWatch.Restart();
    viewer.View(options);
    stopWatch.Stop();
    Console.WriteLine("Time taken on second call to View method {0} (ms).", stopWatch.ElapsedMilliseconds);
}
```