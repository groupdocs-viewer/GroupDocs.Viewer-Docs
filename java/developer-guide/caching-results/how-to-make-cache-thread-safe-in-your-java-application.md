---
id: how-to-make-cache-thread-safe-in-your-java-application
url: viewer/java/how-to-make-cache-thread-safe-in-your-java-application
title: How to make cache thread-safe in your Java application
weight: 2
description: "This article explains how to make cache thread safe with GroupDocs.Viewer within your Java applications."
keywords: GroupDocs.Viewer, thread safe, cache
productName: GroupDocs.Viewer for Java
hideChildren: False
---
This page describes how to develop a thread-sage cache using the [synchronized](https://docs.oracle.com/javase/tutorial/essential/concurrency/sync.html) block.

## Introduction

A method is thread-safe if multiple threads can call it without breaking the functionality. Achieving thread safety is a complex task, so general-purpose classes are usually not thread-safe. The most common way to achieve thread safety is to lock the resource for exclusive use by a single thread at any given time.

## Issue

You need to develop a web application where multiple users can simultaneously view the same file. The web application uses GroupDocs.Viewer on the server side. You have to ensure that multiple threads can safely read and write to the cache.

In GroupDocs.Viewer, you can use caching to improve the performance if the same document is processed multiple times ([read more about caching here](
    {{< ref "viewer/java/developer-guide/caching-results/_index.md" >}}).) The [FileCache](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.caching/FileCache) class is an implementation of the [Cache](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.caching/Cache) interface that uses a local disk to store the cache files. The `FileCache` is not thread safe, so you need to make it so.

## Solution

The FileCache class uses a local disk to read and write output files. You need to implement thread safe reading and writing to disk. The simplest way is to use the [synchronized](https://docs.oracle.com/javase/tutorial/essential/concurrency/sync.html) statement. Implement the `ThreadSafeCache` class that wraps around not thread safe class that implements the `Cache` interface.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.ViewerSettings;
import com.groupdocs.viewer.logging.FileLogger;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.ViewOptions;
// ...

// Create logger and specify the output file
FileLogger fileLogger = new FileLogger("output.log");

// Create ViewerSettings and specify FileLogger
ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

try (Viewer viewer = new Viewer("sample.pdf", viewerSettings)) {
    ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result.html");

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Result

Using the [synchronized](https://docs.oracle.com/javase/tutorial/essential/concurrency/sync.html) statement you develop a simple code to achieve thread-safety in your applications as shown in this tutorial.