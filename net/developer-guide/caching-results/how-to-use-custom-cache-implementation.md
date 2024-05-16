---
id: how-to-use-custom-cache-implementation
url: viewer/net/how-to-use-custom-cache-implementation
title: Custom cache implementation
weight: 1
keywords: custom caching, groupdocs.viewer
description: "This article explains how to use custom caching implementation with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
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
{{< tab "C#" >}}
```csharp
using System;
using System.IO;
using System.Linq;
using System.Diagnostics;
using System.Collections.Generic;
using System.Xml.Serialization;

using GroupDocs.Viewer.Caching;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer;

using StackExchange.Redis;
// ...

// Specify the cache parameters.
var serverAddress = "127.0.0.1:6379";
var filePath = "sample.docx";

// Create the cache.
RedisCache cache = new RedisCache(serverAddress, filePath);
ViewerSettings settings = new ViewerSettings(cache);

using (Viewer viewer = new Viewer(filePath, settings))
{
    // Create HTML files.
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();

    // Display rendering time.
    PrintTimeTaken(() => viewer.View(viewOptions), "The first call to View method took {0} ms.");
    // Display time to get cached results.
    PrintTimeTaken(() => viewer.View(viewOptions), "The second call to View method took {0} ms.");
}

// Get and display time taken.
static void PrintTimeTaken(Action action, string format)
{
    Stopwatch stopwatch = new Stopwatch();
    stopwatch.Start();
    action.Invoke();
    stopwatch.Stop();

    Console.WriteLine(format, stopwatch.ElapsedMilliseconds);
}

public class RedisCache : ICache, IDisposable
{
    private readonly string _cacheKeyPrefix;
    private readonly ConnectionMultiplexer _redis;
    private readonly IDatabase _db;
    private readonly string _host;

    public RedisCache(string host, string cacheKeyPrefix)
    {
        _host = host;
        _cacheKeyPrefix = cacheKeyPrefix;
        _redis = ConnectionMultiplexer.Connect(_host);
        _db = _redis.GetDatabase();
    }

    public void Set(string key, object data)
    {
        if (data == null)
            return;

        string prefixedKey = GetPrefixedKey(key);
        MemoryStream memoryStream = null;

        if (data is Stream)
        {
            memoryStream = data is MemoryStream
                ? data as MemoryStream
                : CopyToMemoryStream(data as Stream);
        }
        else
        {
            memoryStream = new MemoryStream();

            XmlSerializer serializer = new XmlSerializer(data.GetType());
            serializer.Serialize(memoryStream, data);
        }

        _db.StringSet(prefixedKey, RedisValue.CreateFrom(memoryStream));
    }

    private MemoryStream CopyToMemoryStream(Stream data)
    {
        MemoryStream result = new MemoryStream();
        data.Position = 0;
        data.CopyTo(result);
        return result;
    }

    public bool TryGetValue<TEntry>(string key, out TEntry value)
    {
        var prefixedKey = GetPrefixedKey(key);
        var redisValue = _db.StringGet(prefixedKey);
        if (redisValue.HasValue)
        {
            var data = typeof(TEntry) == typeof(Stream)
                ? ReadStream(redisValue)
                : Deserialize<TEntry>(redisValue);
            value = (TEntry)data;
            return true;
        }

        value = default;
        return false;
    }

    public IEnumerable<string> GetKeys(string filter)
    {
        return _redis.GetServer(_host).Keys(pattern: $"*{filter}*")
            .Select(x => x.ToString().Replace(_cacheKeyPrefix, string.Empty))
            .Where(x => x.StartsWith(filter, StringComparison.InvariantCultureIgnoreCase))
            .ToList();
    }

    private string GetPrefixedKey(string key)
        => $"{_cacheKeyPrefix}{key}";

    private object ReadStream(RedisValue redisValue) =>
         new MemoryStream(redisValue);

    private T Deserialize<T>(RedisValue redisValue)
    {
        object data;
        using (MemoryStream stream = new MemoryStream(redisValue))
        {
            XmlSerializer serializer = new XmlSerializer(typeof(T));

            try
            {
                data = serializer.Deserialize(stream);
            }
            catch (InvalidOperationException)
            {
                data = null;
            }
            catch (NullReferenceException)
            {
                data = null;
            }
        }

        return (T)data;
    }

    public void Dispose()
    {
        _redis.Dispose();
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports System.IO
Imports System.Linq
Imports System.Diagnostics
Imports System.Collections.Generic
Imports System.Runtime.InteropServices
Imports System.Xml.Serialization

Imports GroupDocs.Viewer.Caching
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer

Imports StackExchange.Redis

Module Program
    Public Sub Main()
        ' Specify the cache parameters.
        Dim serverAddress As String = "127.0.0.1:6379"
        Dim filePath As String = "sample.docx"

        ' Create the cache.
        Dim cache As RedisCache = New RedisCache(serverAddress, filePath)
        Dim settings As ViewerSettings = New ViewerSettings(cache)

        Using viewer As Viewer = New Viewer(filePath, settings)
            ' Create HTML files.
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()

            ' Display rendering time.
            PrintTimeTaken(Sub() viewer.View(viewOptions), "The first call to View method took {0} ms.")
            ' Display time to get cached results.
            PrintTimeTaken(Sub() viewer.View(viewOptions), "The second call to View method took {0} ms.")
        End Using
    End Sub

    ' Get and display time taken.
    Private Sub PrintTimeTaken(action As Action, format As String)
        Dim stopwatch As Stopwatch = New Stopwatch()
        stopwatch.Start()
        action.Invoke()
        stopwatch.Stop()

        Console.WriteLine(format, stopwatch.ElapsedMilliseconds)
    End Sub


    Public Class RedisCache
        Implements ICache, IDisposable

        Private ReadOnly _cacheKeyPrefix As String
        Private ReadOnly _redis As ConnectionMultiplexer
        Private ReadOnly _db As IDatabase
        Private ReadOnly _host As String

        Public Sub New(host As String, cacheKeyPrefix As String)
            _host = host
            _cacheKeyPrefix = cacheKeyPrefix
            _redis = ConnectionMultiplexer.Connect(_host)
            _db = _redis.GetDatabase()
        End Sub

        Private Function CopyToMemoryStream(data As Stream) As MemoryStream
            Dim result As New MemoryStream()
            data.Position = 0
            data.CopyTo(result)
            Return result
        End Function

        Public Sub [Set](key As String, value As Object) Implements ICache.[Set]
            If value Is Nothing Then
                Return
            End If

            Dim prefixedKey As String = GetPrefixedKey(key)
            Dim memoryStream As MemoryStream = Nothing

            If TypeOf value Is Stream Then
                memoryStream = If(TypeOf value Is MemoryStream, DirectCast(value, MemoryStream), CopyToMemoryStream(DirectCast(value, Stream)))
            Else
                memoryStream = New MemoryStream()
                Dim serializer As New XmlSerializer(value.GetType())
                serializer.Serialize(memoryStream, value)
            End If

            _db.StringSet(prefixedKey, RedisValue.CreateFrom(memoryStream))
        End Sub

        Public Function TryGetValue(Of TEntry)(key As String, <Out> ByRef value As TEntry) As Boolean Implements ICache.TryGetValue
            Dim prefixedKey As String = GetPrefixedKey(key)
            Dim redisValue As RedisValue = _db.StringGet(prefixedKey)
            If redisValue.HasValue Then
                Dim data As Object = If(GetType(TEntry) = GetType(Stream), ReadStream(redisValue), Deserialize(Of TEntry)(redisValue))
                value = DirectCast(data, TEntry)
                Return True
            End If

            value = Nothing
            Return False
        End Function

        Public Function ICache_GetKeys(filter As String) As IEnumerable(Of String) Implements ICache.GetKeys
            Return _redis.GetServer(_host).Keys(pattern:=$"*{filter}*").Select(Function(x) x.ToString().Replace(_cacheKeyPrefix, String.Empty)).Where(Function(x) x.StartsWith(filter, StringComparison.InvariantCultureIgnoreCase)).ToList()
        End Function

        Private Function GetPrefixedKey(key As String) As String
            Return $"{_cacheKeyPrefix}{key}"
        End Function

        Private Function ReadStream(redisValue As RedisValue) As Object
            Return New MemoryStream(redisValue)
        End Function

        Private Function Deserialize(Of T)(redisValue As RedisValue) As T
            Dim data As Object
            Using stream As New MemoryStream(redisValue)
                Dim serializer As New XmlSerializer(GetType(T))

                Try
                    data = serializer.Deserialize(stream)
                Catch ex As InvalidOperationException
                    data = Nothing
                Catch ex As NullReferenceException
                    data = Nothing
                End Try
            End Using

            Return DirectCast(data, T)
        End Function

        Public Sub Dispose()
            _redis.Dispose()
        End Sub

        Public Sub IDisposable_Dispose() Implements IDisposable.Dispose
            Throw New NotImplementedException
        End Sub
    End Class
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-use-custom-cache-implementation.png)