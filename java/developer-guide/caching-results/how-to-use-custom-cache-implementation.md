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

Despite the fact that GroupDocs.Viewer implements caching to local drive out of the box, it also allows you to cache rendering result in your own way. You can do this by using custom `Cache` interface implementation.

## Implementing Memory Cache

In this section we'll build custom `MemoryCache` class that is based on `HashMap` and demonstrate how to use it with GroupDocs.Viewer.

The complete listing of `MemoryCache.java` file.

```java
package com;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.groupdocs.viewer.caching.Cache;

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

Example usage of `MemoryCache` type.

```java
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

After running the code above the similar output will be printed in a console:

```bash
Time taken on first call to View method 4982 (ms).
Time taken on second call to View method 2 (ms).
```

## Using Custom Model Classes for Caching

Default Viewer models implements Serializable interface, but sometimes it is not enough. Sometimes you would like to use 3rd party libraries for serialization. Lots of them want you to annotate classes and fields of classes, that would be serialized.
Fortunately you can create custom models with fields you want and configure Viewer to use them.

To do it you need:

* Create custom models, implementing Viewer model's interfaces, like ViewInfo, FileInfo and so on (Full list of interfaces can be found investigating `CacheableFactory` class)
* Create custom model factory (`CustomFactory`) extending class `CacheableFactory`. Each method in the class must be overridden to return instance of your cache model.
* Configure Viewer to use CustomFactory using method `CacheableFactory.setInstance(new CustomFactory())` before creating Viewer object.
* After that configure Viewer cache as usual. Viewer will put your model's objects into method `set` of Cache implementation so that you can serialize it in any way.

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

```java
    CacheableFactory.setInstance(new CustomFactory());

    Cache cache = new JacksonCache();
    ViewerSettings settings = new ViewerSettings(cache);
    try (Viewer viewer = new Viewer("document.doc", settings)) {
        // Do work
    }
```
