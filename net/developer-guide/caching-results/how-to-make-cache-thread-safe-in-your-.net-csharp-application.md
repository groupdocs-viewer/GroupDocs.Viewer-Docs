---
id: how-to-make-cache-thread-safe-in-your-net-csharp-application
url: viewer/net/how-to-make-cache-thread-safe-in-your-net-csharp-application
title: How to make cache thread-safe in your .NET C# application
weight: 2
description: "This article explains how to make cache thread safe with GroupDocs.Viewer within your .NET applications."
keywords: GroupDocs.Viewer, thread safe, cache
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
This page describes how to develop a thread-sage cache using the [C# lock](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/lock-statement) statement and the [ConcurrentDictionary<,>](https://docs.microsoft.com/en-us/dotnet/api/system.collections.concurrent.concurrentdictionary-2) class.

## Introduction

A method is thread-safe if multiple threads can call it without breaking the functionality. Achieving thread safety is a complex task, so general-purpose classes are usually not thread-safe. The most common way to achieve thread safety is to lock the resource for exclusive use by a single thread at any given time.

## Issue

You need to develop a web application where multiple users can simultaneously view the same file. The web application uses GroupDocs.Viewer on the server side. You have to ensure that multiple threads can safely read and write to the cache.

In GroupDocs.Viewer, you can use caching to improve the performance if the same document is processed multiple times ([read more about caching here](
    {{< ref "viewer/net/developer-guide/caching-results/_index.md" >}}).) The [FileCache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/filecache) class is an implementation of the [ICache](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.caching/icache) interface that uses a local disk to store the cache files. The FileCache is not thread safe, so you need to make it so.

## Solution

The FileCache class uses a local disk to read and write output files. You need to implement thread safe reading and writing to disk. To do this, use the list to store the key or the file ID and associated object you need to lock. The simplest way is to use the [ConcurrentDictionary<,> class](https://docs.microsoft.com/en-us/dotnet/api/system.collections.concurrent.concurrentdictionary-2) of the [.NET Framework 4.0](https://docs.microsoft.com/en-us/dotnet/standard/collections/thread-safe/). The ConcurrentDictionary is a thread safe implementation of a dictionary of key-value pairs. Implement the ThreadSafeCache class that wraps around not thread safe class that implements the ICache interface.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
internal class ThreadSafeCache : ICache
{
    private readonly ICache _cache;
    private readonly IKeyLockerStore _keyLockerStore;

    public ThreadSafeCache(ICache cache, IKeyLockerStore keyLockerStore)
    {
        _cache = cache;
        _keyLockerStore = keyLockerStore;
    }

    public void Set(string key, object value)
    {
        lock (_keyLockerStore.GetLockerFor(key))
        {
            _cache.Set(key, value);
        }
    }

    public bool TryGetValue<TEntry>(string key, out TEntry value)
    {
        lock (_keyLockerStore.GetLockerFor(key))
        {
            return _cache.TryGetValue(key, out value);
        }
    }

    public IEnumerable<string> GetKeys(string filter)
    {
        lock (_keyLockerStore.GetLockerFor("get_keys"))
        {
            return _cache.GetKeys(filter);
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}

All the ThreadSafeCache class methods use locks to make calls thread safe. The ConcurrentDictionaryKeyLockerStore class uses ConcurrentDictionary to create the locker object or to retrieve it if it already exists. It also creates a unique key that identifies a cached file.

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
interface IKeyLockerStore
{
    object GetLockerFor(string key);
}

class ConcurrentDictionaryKeyLockerStore : IKeyLockerStore
{
    private readonly ConcurrentDictionary<string, object> _keyLockerMap;
    private readonly string _uniqueKeyPrefix;

    public ConcurrentDictionaryKeyLockerStore(ConcurrentDictionary<string, object> keyLockerMap, string uniqueKeyPrefix)
    {
        _keyLockerMap = keyLockerMap;
        _uniqueKeyPrefix = uniqueKeyPrefix;
    }

    public object GetLockerFor(string key)
    {
        string uniqueKey = GetUniqueKey(key);
        return _keyLockerMap.GetOrAdd(uniqueKey, k => new object());
    }

    private string GetUniqueKey(string key)
    {
        return $"{_uniqueKeyPrefix}_{key}";
    }
}
```
{{< /tab >}}
{{< /tabs >}}

## Result

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Caching;
using GroupDocs.Viewer.Interfaces;
using GroupDocs.Viewer.Options;

namespace ThreadSaveCacheExample
{
    static class Program
    {
        private static readonly ConcurrentDictionary<string, object> KeyLockerMap = new ConcurrentDictionary<string, object>();

        static void Main()
        {
            string fileName = "sample.pdf";
            string cacheFolder = fileName.Replace('.', '_');
            string cachePath = Path.Combine("cache", cacheFolder);
            string uniqueKeyPrefix = cachePath;

            ICache fileCache = new FileCache(cachePath);
            IKeyLockerStore keyLockerStore = new ConcurrentDictionaryKeyLockerStore(KeyLockerMap, uniqueKeyPrefix);
            ICache threadSafeCache = new ThreadSafeCache(fileCache, keyLockerStore);

            ViewerSettings viewerSettings = new ViewerSettings(threadSafeCache);

            List<MemoryStream> pages = new List<MemoryStream>();
            using (Viewer viewer = new Viewer(fileName, viewerSettings))
            {
                IPageStreamFactory pageStreamFactory = new MemoryPageStreamFactory(pages);
                ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources(pageStreamFactory);
                viewer.View(viewOptions);
            }
        }
    }

    class ThreadSafeCache : ICache
    {
        private readonly ICache _cache;
        private readonly IKeyLockerStore _keyLockerStore;

        public ThreadSafeCache(ICache cache, IKeyLockerStore keyLockerStore)
        {
            _cache = cache;
            _keyLockerStore = keyLockerStore;
        }

        public void Set(string key, object value)
        {
            lock (_keyLockerStore.GetLockerFor(key))
            {
                _cache.Set(key, value);
            }
        }

        public bool TryGetValue<TEntry>(string key, out TEntry value)
        {
            lock (_keyLockerStore.GetLockerFor(key))
            {
                return _cache.TryGetValue(key, out value);
            }
        }

        public IEnumerable<string> GetKeys(string filter)
        {
            lock (_keyLockerStore.GetLockerFor("get_keys"))
            {
                return _cache.GetKeys(filter);
            }
        }
    }

    interface IKeyLockerStore
    {
        object GetLockerFor(string key);
    }

    class ConcurrentDictionaryKeyLockerStore : IKeyLockerStore
    {
        private readonly ConcurrentDictionary<string, object> _keyLockerMap;
        private readonly string _uniqueKeyPrefix;

        public ConcurrentDictionaryKeyLockerStore(ConcurrentDictionary<string, object> keyLockerMap, string uniqueKeyPrefix)
        {
            _keyLockerMap = keyLockerMap;
            _uniqueKeyPrefix = uniqueKeyPrefix;
        }

        public object GetLockerFor(string key)
        {
            string uniqueKey = GetUniqueKey(key);
            return _keyLockerMap.GetOrAdd(uniqueKey, k => new object());
        }

        private string GetUniqueKey(string key)
        {
            return $"{_uniqueKeyPrefix}_{key}";
        }
    }

    class MemoryPageStreamFactory : IPageStreamFactory
    {
        private readonly List<MemoryStream> _pages;

        public MemoryPageStreamFactory(List<MemoryStream> pages)
        {
            _pages = pages;
        }

        public Stream CreatePageStream(int pageNumber)
        {
            MemoryStream pageStream = new MemoryStream();
            _pages.Add(pageStream);

            return pageStream;
        }

        public void ReleasePageStream(int pageNumber, Stream pageStream)
        {
            //Do not release page stream as we'll need to keep the stream open
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}
