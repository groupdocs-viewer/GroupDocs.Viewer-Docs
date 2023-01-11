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
// Create cancellation token source.
CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
// Create (get) cancellation token object.
CancellationToken cancellationToken = cancellationTokenSource.Token;

// Create task and pass token
Task runTask = Task.Run(() =>
{
    using (Viewer viewer = new Viewer(TestFiles.SAMPLE_DOCX, new ViewerSettings(new GroupDocs.Viewer.Logging.ConsoleLogger())))
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

// runTask.IsCanceled == true 
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

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/CancelRenderWithCancellationToken.cs) in our public GitHub repository .

