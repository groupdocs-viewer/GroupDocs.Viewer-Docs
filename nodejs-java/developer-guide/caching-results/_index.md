---
id: caching-results
url: viewer/nodejs-java/caching-results
title: Cache results
weight: 5
keywords: caching,caching results,groupdocs.viewer
description: "This article contains caching use-cases with GroupDocs.Viewer within your JavaScript applications."
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
---
Caching saves rendering results to a specified location, such as a local disk. When you re-request the rendering results, GroupDocs.Viewer does not render again, but uses the cached results.
As a document can take a long time to render, use caching if you expect to reuse the rendering results.

To enable caching, follow these steps:

1. Instantiate the desired cache object (for example, [FileCache](#) to store document rendering results at the local drive)
2. Instantiate the [ViewerSettings](#) object. Specify the cache object as a parameter of the constructor.
3. Instantiate the [Viewer](#) object. Specify the [ViewerSettings](#) object as a parameter of the constructor.
4. Call the [view()](#) method of the [Viewer](#) class.

The following code snippet shows how to enable caching and displays the difference between rendering a file and getting the cached results:

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```js
const cachePath = "cache";
const cache = new FileCache(cachePath);
const settings = new ViewerSettings(cache);

const viewer = new groupdocs.viewer.Viewer("sample.docx", settings)
const options = HtmlViewOptions.forEmbeddedResources();
const currentTimeMillis = Date.now()

viewer.view(options);
currentTimeMillis = Date.now() - currentTimeMillis
console.log("Time taken on first call to View method " + currentTimeMillis + " (ms).")
currentTimeMillis = Date.now()

viewer.view(options)
currentTimeMillis = Date.now() - currentTimeMillis
console.log("Time taken on second call to View method " + currentTimeMillis + " (ms).")
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/nodejs-java/images/caching-results.png)

For details, please refer to the following pages: