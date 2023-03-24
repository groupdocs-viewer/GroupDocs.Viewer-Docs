---
id: caching-results
url: viewer/java/caching-results
title: Cache results
weight: 5
keywords: caching,caching results,groupdocs.viewer
description: "This article contains caching use-cases with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Caching saves rendering results to a specified location, such as a local disk. When you re-request the rendering results, GroupDocs.Viewer does not render again, but uses the cached results.
As a document can take a long time to render, use caching if you expect to reuse the rendering results.

To enable caching, follow these steps:

1. Instantiate the desired cache object (for example, [FileCache](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.caching/FileCache) to store document rendering results at the local drive)
2. Instantiate the [ViewerSettings](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/ViewerSettings) object. Specify the cache object as a parameter of the constructor.
3. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [ViewerSettings](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/ViewerSettings) object as a parameter of the constructor.
4. Call the [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class.

The following code snippet shows how to enable caching and displays the difference between rendering a file and getting the cached results:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.ViewerSettings;
import com.groupdocs.viewer.caching.FileCache;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

String cachePath = "cache";
FileCache cache = new FileCache(cachePath);
ViewerSettings settings = new ViewerSettings(cache);

try (Viewer viewer = new Viewer("sample.docx", settings)) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources();

    long currentTimeMillis = System.currentTimeMillis();
    viewer.view(options);
    currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
    System.out.println("Time taken on first call to View method " + currentTimeMillis + " (ms).");

    currentTimeMillis = System.currentTimeMillis();
    viewer.view(options);
    currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
    System.out.println("Time taken on second call to View method " + currentTimeMillis + " (ms).");
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/caching-results.png)

For details, please refer to the following pages: