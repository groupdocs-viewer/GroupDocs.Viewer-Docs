---
id: cancel-rendering
url: viewer/python-net/cancel-rendering
title: Cancel rendering
weight: 3
description: "Cancel or stop rendering rendering process with cancellation token"
keywords: stop rendering, cancellation token, cancellation token source
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
aliases:
    - /viewer/python-net/cancel-viewing-with-cancellation-token/
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
{{< tab "Python" >}}
```python
async def run_task():
    # Create cancellation token source.
    cancellation_token_source = gvc.CancellationTokenSource()
    # Create (get) cancellation token object.
    cancellation_token = cancellation_token_source.token

    try:
        # Create task and pass token
        async with gv.Viewer("path/to/your/SAMPLE_DOCX", {"logger": "console"}) as viewer:
            options = gvo.HtmlViewOptions.for_embedded_resources()
            options.render_comments = True
            await viewer.view(options, cancellation_token)
    except asyncio.CancelledError:
        print("Task was cancelled.")

# Create event loop
loop = asyncio.get_event_loop()

# Create task and pass token
run_task_coroutine = run_task()

# Cancel task after 1000 ms.
loop.call_later(1, run_task_coroutine.cancel)

# Wait for the task to cancel.
loop.run_until_complete(run_task_coroutine)

# Check if the task was canceled.
if run_task_coroutine.cancelled():
    print("run_task.IsCanceled == True")
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}
If runTask.IsCancelled is `true`, then the task has been canceled.

To properly handle task cancellation, pass a cancellation token to the Task.Run method. Otherwise, runTask.IsCancelled is not `true`.
{{< /alert >}}

The following methods of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class also support cancellation:

* [GetAttachments](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.viewer/getattachments/methods/1)
* [SaveAttachment](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.viewer/saveattachment/methods/1)
* [View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.viewer/view/methods/2) with ViewOptions
* [View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.viewer/view/methods/3) with ViewOptions and page numbers array

You can also view the [example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/CancelRenderWithCancellationToken.cs) in our public GitHub repository .

