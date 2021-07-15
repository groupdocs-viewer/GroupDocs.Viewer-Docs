---
id: cancel-viewing-with-cancellation-token
url: viewer/net/cancel-viewing-with-cancellation-token
title: Cancel viewing with cancellation token
weight: 1
description: "This article explains how to add text watermark when viewing documents with GroupDocs.Viewer within your .NET applications."
keywords: Cancel viewing cancellation token canllation source
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Since 21.7 version GroupDocs.Viewer supports tasks cancellation with cancellation token (for .NET standard only).

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
To correctly handle task cancellation you should pass your cancellation token to Task.Run method, otherwise, the flag in runTask.IsCancelled will not equal to true (that indicates task has canceled).

Also following methods in [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class support cancellation:

* [Viewer.GetAttachments](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/getattachments/methods/1)
* [Viewer.SaveAttachment](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/saveattachment/methods/1)
* [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/view/methods/2) with ViewOptions
* [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.viewer/view/methods/3) with ViewOptions and page numbers array

Also you can start this [sample](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/CommonRenderingOptions/CancelRenderWithCancellationToken.cs) on GitHub.

## More resources
### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for .NET examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)    
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)    
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-MVC)     
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)    
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)    
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)

### Free Online App
Along with full-featured .NET library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.