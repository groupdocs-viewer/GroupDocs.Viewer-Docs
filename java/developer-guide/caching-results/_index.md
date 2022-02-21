---
id: caching
url: viewer/java/caching
title: Caching Results
weight: 2
description: "How to cache rendering results in GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, caching"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
In some cases document rendering may be a time-consuming operation (dependent on source document content, structure and complexity). For such situations caching can be a solution - rendered document representation is stored into cache (for example at the local drive) and in a case of repetitive rendering of the document, GroupDocs.Viewer uses cached representation. Caching helps to avoid the processing of the same document again and again.

To enable caching you have to:

* Instantiate desired cache object (for example [FileCache](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.caching/FileCache) will store document rendering results at the local drive);
* Instantiate [ViewerSettings](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/ViewerSettings) object with cache object;
* Pass [ViewerSettings](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/ViewerSettings) object to constructor of a [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class.
* Call [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method of [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class.

Here is a code that demonstrates how to enable caching for GroupDocs.Viewer for Java.

```java
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

After running the code above the similar output will be printed to the console:

```bash
Time taken on first call to View method 5233 (ms).
Time taken on second call to View method 5 (ms).
```
