---
id: how-to-use-custom-cache-implementation
url: viewer/python-net/how-to-use-custom-cache-implementation
title: Custom cache implementation
weight: 1
keywords: custom caching, groupdocs.viewer
description: "This article explains how to use custom caching implementation with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
By default, GroupDocs.Viewer implements caching to local. But you can cache rendering result in your own way, for example, using Redis Cache. To do this, use the `ICache` interface implementation.  

This example uses the StackExchange.Redis NuGet package: https://www.nuget.org/packages/StackExchange.Redis/. Download and install it before you start.

To implement a custom cache using the Redis Cache, follow these steps:


{{< alert style="info" >}}
Before running this example, start the Redis using the following command: `docker run -d --name viewer-cache -p 6379:6379 redis`.
{{< /alert >}}

1. Create the RedisCache class that implements the [ICache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/icache) interface.
2. Instantiate the RedisCache class.
3. Instantiate the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) class. Specify the RedisCache object as a parameter of the constructor.
4. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the [ViewerSettings](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewersettings) object as a parameter of the constructor.
5. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.

The following code snippet shows how to implement a custom caching using Redis Cache:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import time
import redis
from io import BytesIO
import xml.etree.ElementTree as ET
from xml.etree.ElementTree import Element, SubElement, tostring

class RedisCache:
    def __init__(self, host, cache_key_prefix):
        self._host = host
        self._cache_key_prefix = cache_key_prefix
        self._redis = redis.StrictRedis(host=host, decode_responses=True)

    def set(self, key, data):
        if data is None:
            return

        prefixed_key = self._get_prefixed_key(key)
        memory_stream = None

        if isinstance(data, BytesIO):
            memory_stream = data
        else:
            memory_stream = BytesIO()
            self._serialize_to_stream(data, memory_stream)

        self._redis.set(prefixed_key, memory_stream.getvalue())

    def try_get_value(self, key, entry_type):
        prefixed_key = self._get_prefixed_key(key)
        redis_value = self._redis.get(prefixed_key)

        if redis_value is not None:
            if entry_type == BytesIO:
                return BytesIO(redis_value)
            else:
                return self._deserialize(redis_value, entry_type)

        return None

    def get_keys(self, filter):
        return [key.replace(self._cache_key_prefix, '') for key in self._redis.keys(pattern=f"*{filter}*") if
                key.startswith(self._cache_key_prefix) and key.lower().endswith(filter.lower())]

    def dispose(self):
        pass  # No need to dispose in Python, the Redis connection is managed by the library

    def _get_prefixed_key(self, key):
        return f"{self._cache_key_prefix}{key}"

    def _serialize_to_stream(self, data, stream):
        root = Element('root')
        data_element = SubElement(root, 'data')
        data_element.text = str(data)
        stream.write(tostring(root))

    def _deserialize(self, data, data_type):
        root = ET.fromstring(data)
        data_element = root.find('data')

        if data_type == str:
            return data_element.text
        else:
            return None  # Add more deserialization logic based on your actual data types

def print_time_taken(action, format_string):
    start_time = time.time()
    action()
    elapsed_time = (time.time() - start_time) * 1000  # Convert to milliseconds
    print(format_string.format(elapsed_time))


server_address = "127.0.0.1:6379"
file_path = "sample.docx"

cache = RedisCache(server_address, file_path)
settings = cache  # In Python, we can use the cache directly without ViewerSettings

def view_document():
    viewer.view(view_options)

viewer = gv.Viewer(file_path, settings)
view_options = gvo.HtmlViewOptions.for_embedded_resources()

print_time_taken(view_document, "The first call to View method took {0} ms.")
print_time_taken(view_document, "The second call to View method took {0} ms.")

```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-use-custom-cache-implementation.png)