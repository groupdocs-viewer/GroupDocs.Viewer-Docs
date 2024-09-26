---
id: caching-results
url: viewer/python-net/caching-results
title: Cache results
weight: 5
keywords: caching,caching results,groupdocs.viewer
description: "This article contains caching use-cases with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
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
{{< tab "Python" >}}
```python
import time
import groupdocs.viewer as gv
import groupdocs.viewer.options as gvo

# Define a path to cache
cache_path = "cache"
cache = gv.FileCache(cache_path)
settings = gv.ViewerSettings(cache)

# Define a Viewer for a "sample.docx" file
with gv.Viewer("sample.docx", settings) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources()

    # Define the execution time of the first call
    start_time = time.time()
    viewer.view(options)
    
    elapsed_time = time.time() - start_time
    print(f"Time taken on first call to View method {elapsed_time * 1000:.0f} (ms).")

    # Define the execution time of the second call
    start_time = time.time()
    viewer.view(options)

    elapsed_time = time.time() - start_time
    print(f"Time taken on second call to View method {elapsed_time * 1000:.0f} (ms).")
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/caching-results.png)

For details, please refer to the following pages: