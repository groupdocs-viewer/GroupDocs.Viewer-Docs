---
id: cancel-rendering
url: viewer/net/cancel-rendering
title: Cancel rendering
weight: 3
description: "Cancel or stop rendering rendering process with cancellation token"
keywords: stop rendering, cancellation token, cancellation token source
productName: GroupDocs.Viewer for .NET
hideChildren: False
aliases:
    - /viewer/net/cancel-viewing-with-cancellation-token/
---

Since the 21.7 version, GroupDocs.Viewer supports task cancellation using the cancellation token.

To cancel a task, follow these steps:

1. Create the [CancellationTokenSource](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtokensource?view=netstandard-2.0) object.
2. Create the [CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtoken?view=netstandard-2.0) object.
3. Create the Task object. When creating, specify the cancellation token.
4. Cancel the task.

You can cancel tasks using one of the following methods:

* To cancel the task in a specified time, call the [CancelAfter](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtokensource.cancelafter?view=netstandard-2.0) method.
* To cancel the task at any time, call the [Cancel](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtokensource.cancel?view=netstandard-2.0) method.

The following code snippet shows how to cancel a task:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System.Diagnostics;
using System.Threading.Tasks;
using System.Threading;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Create cancellation token source.
CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
CancellationToken cancellationToken = cancellationTokenSource.Token;

// Create task and pass token
Task runTask = Task.Run(() =>
{
    using (Viewer viewer = new Viewer("sample.docx"))
    {
        HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources();
        options.RenderComments = true;
        viewer.View(options, cancellationToken);
    }
}, cancellationToken);

// Cancel task after 1000 ms.
cancellationTokenSource.CancelAfter(1000);

// Also you can call Cancel method at any time
//cancellationTokenSource.Cancel();

// Wait for the task to cancel.
Thread.Sleep(2000);

Debug.Assert(runTask.IsCanceled);
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.Threading
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Create cancellation token source.
        Dim cancellationTokenSource As CancellationTokenSource = New CancellationTokenSource()
        Dim cancellationToken As CancellationToken = cancellationTokenSource.Token

        ' Create task and pass token
        Dim runTask As Task = Task.Run(Sub()
                                           Using viewer As Viewer = New Viewer("sample.docx")
                                               Dim options As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
                                               options.RenderComments = True
                                               viewer.View(options, cancellationToken)
                                           End Using
                                       End Sub, cancellationToken)

        ' Cancel task after 1000 ms.
        cancellationTokenSource.CancelAfter(1000)

        ' Also you can call Cancel method at any time
        'cancellationTokenSource.Cancel();

        ' Wait for the task to cancel.
        Thread.Sleep(2000)

        Debug.Assert(runTask.IsCanceled)
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}
If runTask.IsCancelled is `true`, then the task has been canceled.

To properly handle task cancellation, pass a cancellation token to the Task.Run method. Otherwise, runTask.IsCancelled is not `true`.
{{< /alert >}}

The following methods of the [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class also support cancellation:

* [GetAttachments](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/getattachments/methods/1)
* [SaveAttachment](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/saveattachment/methods/1)
* [View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/view/methods/2) with ViewOptions
* [View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/view/methods/3) with ViewOptions and page numbers array

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/CancelRenderWithCancellationToken.cs) in our public GitHub repository.

