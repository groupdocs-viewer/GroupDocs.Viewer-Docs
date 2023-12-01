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

1. Instantiate the desired cache object (for example, [FileCache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/filecache) to store document rendering results at the local drive)
2. Instantiate the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object. Specify the cache object as a parameter of the constructor.
3. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object as a parameter of the constructor.
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.

The following code snippet shows how to enable caching and displays the difference between rendering a file and getting the cached results:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Specify parameters
output_directory = "C:\\output"
cache_path = os.path.join(output_directory, "cache")
page_file_path_format = os.path.join(output_directory, "page_{0}.html")

# Create a cache
cache = gv.FileCache(cache_path)
settings = gv.ViewerSettings(cache)

# Define a helper function to measure elapsed time
def print_time_taken(action, format_string):
    start_time = time.time()
    action()
    elapsed_time = (time.time() - start_time) * 1000  # Convert to milliseconds
    print(format_string.format(elapsed_time))

# Create a viewer instance
file_path = "C:\\sample.docx"

with gv.Viewer(file_path, settings) as viewer:
    # Create HTML options
    options = gvo.HtmlViewOptions.for_embedded_resources(page_file_path_format)

    # Render and display the rendering time
    print_time_taken(lambda: viewer.view(options), "Time taken on first call to View method: {0} (ms)")

    # Get cached results and display the time
    print_time_taken(lambda: viewer.view(options), "Time taken on second call to View method: {0} (ms)")
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/caching-results.png)

For details, please refer to the following pages: