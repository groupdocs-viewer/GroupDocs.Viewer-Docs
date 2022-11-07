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

Since v21.7 GroupDocs.Viewer supports tasks cancellation with cancellation token.

Here is the recipe:

* Create [CancellationTokenSource](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtokensource?view=netstandard-2.0) object
* Create [CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtoken?view=netstandard-2.0) object
* Create Task and pass cancellation token when creating

You can cancel tasks with these methods:

* By calling [CancelAfter](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtokensource.cancelafter?view=netstandard-2.0) method to cancel task after specified time.
* By calling [Cancel](https://docs.microsoft.com/en-us/dotnet/api/system.threading.cancellationtokensource.cancel?view=netstandard-2.0) method to cancel the task at any time.

The following code sample shows how to apply the watermark to the output pages.

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
        HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(pageFilePathFormat);
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

*Important note:*
To correctly handle task cancellation you should pass your cancellation token to `Task.Run` method, otherwise, the flag in `runTask.IsCancelled` will not equal to true (that indicates task has canceled).

Also following methods in [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class support cancellation:

* [GetAttachments](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/getattachments/methods/1)
* [SaveAttachment](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/saveattachment/methods/1)
* [View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/view/methods/2) with ViewOptions
* [View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/view/methods/3) with ViewOptions and page numbers array

Also you can check this [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/CancelRenderWithCancellationToken.cs) in our public repository with examples at GitHub.
