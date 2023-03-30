---
id: how-to-use-custom-cache-implementation
url: viewer/java/how-to-use-custom-cache-implementation
title: How to use custom cache implementation
weight: 1
description: "How to use custom caching implementation with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, memory cache, custom cache" 
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

By default, GroupDocs.Viewer implements caching to local. But you can cache rendering result in your own way. To do this, use the `Cache` interface implementation.

## Implementing Memory Cache

In this section we build the custom `MemoryCache` class that is based on `HashMap` and demonstrate how to use it in GroupDocs.Viewer.

The complete listing of the `MemoryCache.java` file is below:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.caching.Cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MemoryCache implements Cache {
    private final Map<String, Object> data = new HashMap<>();
    private final String mPrefix;

    public MemoryCache(String prefix) {
        this.mPrefix = prefix;
    }

    @Override
    public void set(String key, Object value) {
        data.put(mPrefix + key, value);
    }

    @Override
    public Object get(String key) {
        return data.get(mPrefix + key);
    }

    @Override
    public List<String> getKeys(String filter) {
        List<String> result = new ArrayList<>();
        for (String key : data.keySet()) {
            if (key.contains(filter)) {
                result.add(key);
            }
        }
        return result;
    }
}
```
{{< /tab >}}
{{< /tabs >}}

Example usage of `MemoryCache` type.

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.ViewerSettings;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

MemoryCache memoryCache = new MemoryCache("cache-key-prefix-");
ViewerSettings viewerSettings = new ViewerSettings(memoryCache);

try (Viewer viewer = new Viewer("sample.docx", viewerSettings)) {
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

After running the code above the similar output will be printed in a console:

![](/viewer/java/images/how-to-use-custom-cache-implementation.png)

## Using Custom Model Classes for Caching

Default Viewer models implements the serializable interface. But you may want to use other library for serialization. Lots of them want you to annotate classes and fields of classes that should be serialized.
You can create custom models with appropriate fields and configure GroupDocs.Viewer to use these models.

To do this, follow these steps:

1. Create custom models, implementing Viewer model's interfaces, like `ViewInfo`, `FileInfo`, and so on (see full list of interfaces in the `CacheableFactory` class).
2. Create custom model factory (`CustomFactory`) extending class `CacheableFactory`. Each method in the class must be overridden to return the instance of your cache model.
3. Configure GroupDocs.Viewer to use the `CustomFactory` using the `CacheableFactory.setInstance(new CustomFactory())` method before creating the `Viewer` object.
4. Configure the GroupDocs.Viewer cache as usual. GroupDocs.Viewer put your model's objects into the `set` method of the cache implementation so you can serialize it in any way.

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
public class CustomFileInfoJackson implements FileInfo {
    @JsonProperty("FileType")
    private final String mFileType;
    @JsonProperty("Encrypted")
    private boolean mEncrypted;

    @JsonCreator
    public CustomFileInfoJackson(@JsonProperty("FileType") String fileType) {
        mFileType = fileType;
    }

    @Override
    public FileType getFileType() {
        return FileType.valueOf(mFileType);
    }

    @Override
    public boolean isEncrypted() {
        return mEncrypted;
    }

    @Override
    public void setEncrypted(boolean encrypted) {
        mEncrypted = encrypted;
    }
}
```
{{< /tab >}}
{{< /tabs >}}

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
public class CustomFactory extends CacheableFactory {

    //...

    @Override
    public FileInfo newFileInfo(FileType fileType) {
        return new CustomFileInfoJackson(fileType.name());
    }

    //...

}
```
{{< /tab >}}
{{< /tabs >}}

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
public class JacksonCache implements Cache {

    //...

    @Override
    public void set(String key, Object value) {
        final byte[] bytes;
        if (value instanceof InputStream) {
            bytes = IOUtils.toByteArray((InputStream) value);
        } else {
            // Serialize in any way
            bytes = jacksonMapper.writeValueAsBytes(value);
        }
        // Here bytes could be written to file or sent somewhere
        mData.put(key, bytes);
    }

    //...

    @Override
    public <T> T get(String key, Class<T> clazz) {
        final byte[] bytes = mData.get(key);
        if (InputStream.class.equals(clazz)) {
            return (T) new ByteArrayInputStream(bytes);
        } else {
            // Deserialize in any way
            return jacksonMapper.readValue(bytes, clazz);
        }
    }

    //...

}
```
{{< /tab >}}
{{< /tabs >}}

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.ViewerSettings;
import com.groupdocs.viewer.caching.Cache;
import com.groupdocs.viewer.caching.extra.CacheableFactory;
// ...

CacheableFactory.setInstance(new CustomFactory());

Cache cache = new JacksonCache();
ViewerSettings settings = new ViewerSettings(cache);
try (Viewer viewer = new Viewer("document.doc", settings)) {
    // Do work
}

```
{{< /tab >}}
{{< /tabs >}}