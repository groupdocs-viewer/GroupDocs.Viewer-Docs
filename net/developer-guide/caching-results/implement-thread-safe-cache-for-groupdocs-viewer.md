---
id: implement-thread-safe-cache-for-groupdocs-viewer
url: viewer/net/implement-thread-safe-cache-for-groupdocs-viewer
title: Implement thread-safe cache for GroupDocs.Viewer
weight: 2
description: "This article explains how to make cache thread safe with GroupDocs.Viewer within your .NET applications."
keywords: GroupDocs.Viewer, thread safe, cache
productName: GroupDocs.Viewer for .NET
hideChildren: False
aliases:
    - viewer/net/how-to-make-cache-thread-safe-in-your-net-csharp-application
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
using GroupDocs.Viewer.Caching;
using System.Collections.Generic;

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
{{< tab "VB.NET">}}
```vb
Imports System.Runtime.InteropServices
Imports GroupDocs.Viewer.Caching

Class ThreadSafeCache
    Implements ICache
    Private ReadOnly _cache As ICache
    Private ReadOnly _keyLockerStore As IKeyLockerStore

    Public Sub New(cache As ICache, keyLockerStore As IKeyLockerStore)
        _cache = cache
        _keyLockerStore = keyLockerStore
    End Sub

    Public Function TryGetValue(Of TEntry)(key As String, <Out> ByRef value As TEntry) As Boolean Implements ICache.TryGetValue
        SyncLock _keyLockerStore.GetLockerFor(key)
            Return _cache.TryGetValue(key, value)
        End SyncLock
    End Function

    Public Function ICache_GetKeys(filter As String) As IEnumerable(Of String) Implements ICache.GetKeys
        SyncLock _keyLockerStore.GetLockerFor("get_keys")
            Return _cache.GetKeys(filter)
        End SyncLock
    End Function

    Public Sub ICache_Set(key As String, value As Object) Implements ICache.[Set]
        SyncLock _keyLockerStore.GetLockerFor(key)
            _cache.Set(key, value)
        End SyncLock
    End Sub

End Class
```
{{< /tab >}}
{{< /tabs >}}

All the ThreadSafeCache class methods use locks to make calls thread safe. The ConcurrentDictionaryKeyLockerStore class uses ConcurrentDictionary to create the locker object or to retrieve it if it already exists. It also creates a unique key that identifies a cached file.

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using System.Collections.Concurrent;
// ...

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
{{< tab "VB.NET">}}
```vb
Imports System.Collections.Concurrent
' ...

Interface IKeyLockerStore
    Function GetLockerFor(key As String) As Object
End Interface

Class ConcurrentDictionaryKeyLockerStore
    Implements IKeyLockerStore
    Private ReadOnly _keyLockerMap As ConcurrentDictionary(Of String, Object)
    Private ReadOnly _uniqueKeyPrefix As String

    Public Sub New(keyLockerMap As ConcurrentDictionary(Of String, Object), uniqueKeyPrefix As String)
        _keyLockerMap = keyLockerMap
        _uniqueKeyPrefix = uniqueKeyPrefix
    End Sub

    Public Function GetLockerFor(key As String) As Object Implements IKeyLockerStore.GetLockerFor
        Dim uniqueKey As String = Me.GetUniqueKey(key)
        Return _keyLockerMap.GetOrAdd(uniqueKey, Function(k) New Object())
    End Function

    Private Function GetUniqueKey(key As String) As String
        Return $"{_uniqueKeyPrefix}_{key}"
    End Function
End Class
```
{{< /tab >}}
{{< /tabs >}}

## Result

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using System.Collections.Generic;
using System.Collections.Concurrent;
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
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports System.Collections.Concurrent
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Caching
Imports GroupDocs.Viewer.Interfaces
Imports GroupDocs.Viewer.Options
Imports System.Runtime.InteropServices

Module Program
    Private ReadOnly KeyLockerMap As ConcurrentDictionary(Of String, Object) = New ConcurrentDictionary(Of String, Object)()

    Public Sub Main()
        Dim fileName As String = "resume.pdf"
        Dim cacheFolder As String = fileName.Replace("."c, "_"c)
        Dim cachePath As String = Path.Combine("cache", cacheFolder)
        Dim uniqueKeyPrefix As String = cachePath

        Dim fileCache As ICache = New FileCache(cachePath)
        Dim keyLockerStore As IKeyLockerStore = New ConcurrentDictionaryKeyLockerStore(KeyLockerMap, uniqueKeyPrefix)
        Dim threadSafeCache As ICache = New ThreadSafeCache(fileCache, keyLockerStore)

        Dim viewerSettings As ViewerSettings = New ViewerSettings(threadSafeCache)

        Dim pages As List(Of MemoryStream) = New List(Of MemoryStream)()
        Using viewer As Viewer = New Viewer(fileName, viewerSettings)
            Dim pageStreamFactory As IPageStreamFactory = New MemoryPageStreamFactory(pages)
            Dim viewOptions As ViewOptions = HtmlViewOptions.ForEmbeddedResources(pageStreamFactory)
            viewer.View(viewOptions)
        End Using
    End Sub
End Module

Class ThreadSafeCache
    Implements ICache
    Private ReadOnly _cache As ICache
    Private ReadOnly _keyLockerStore As IKeyLockerStore

    Public Sub New(cache As ICache, keyLockerStore As IKeyLockerStore)
        _cache = cache
        _keyLockerStore = keyLockerStore
    End Sub

    Public Function TryGetValue(Of TEntry)(key As String, <Out> ByRef value As TEntry) As Boolean Implements ICache.TryGetValue
        SyncLock _keyLockerStore.GetLockerFor(key)
            Return _cache.TryGetValue(key, value)
        End SyncLock
    End Function

    Public Function ICache_GetKeys(filter As String) As IEnumerable(Of String) Implements ICache.GetKeys
        SyncLock _keyLockerStore.GetLockerFor("get_keys")
            Return _cache.GetKeys(filter)
        End SyncLock
    End Function

    Public Sub ICache_Set(key As String, value As Object) Implements ICache.[Set]
        SyncLock _keyLockerStore.GetLockerFor(key)
            _cache.Set(key, value)
        End SyncLock
    End Sub

End Class

Interface IKeyLockerStore
    Function GetLockerFor(key As String) As Object
End Interface

Class ConcurrentDictionaryKeyLockerStore
    Implements IKeyLockerStore
    Private ReadOnly _keyLockerMap As ConcurrentDictionary(Of String, Object)
    Private ReadOnly _uniqueKeyPrefix As String

    Public Sub New(keyLockerMap As ConcurrentDictionary(Of String, Object), uniqueKeyPrefix As String)
        _keyLockerMap = keyLockerMap
        _uniqueKeyPrefix = uniqueKeyPrefix
    End Sub

    Public Function GetLockerFor(key As String) As Object Implements IKeyLockerStore.GetLockerFor
        Dim uniqueKey As String = Me.GetUniqueKey(key)
        Return _keyLockerMap.GetOrAdd(uniqueKey, Function(k) New Object())
    End Function

    Private Function GetUniqueKey(key As String) As String
        Return $"{_uniqueKeyPrefix}_{key}"
    End Function
End Class

Class MemoryPageStreamFactory
    Implements IPageStreamFactory
    Private ReadOnly _pages As List(Of MemoryStream)

    Public Sub New(pages As List(Of MemoryStream))
        _pages = pages
    End Sub

    Public Sub IPageStreamFactory_ReleasePageStream(pageNumber As Integer, pageStream As Stream) Implements IPageStreamFactory.ReleasePageStream
        'Do not release page stream as we'll need to keep the stream open
    End Sub

    Public Function IPageStreamFactory_CreatePageStream(pageNumber As Integer) As Stream Implements IPageStreamFactory.CreatePageStream
        Dim pageStream As MemoryStream = New MemoryStream()
        _pages.Add(pageStream)

        Return pageStream
    End Function
End Class
```
{{< /tab >}}
{{< /tabs >}}
