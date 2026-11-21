---
id: how-to-integrate-groupdocs-viewer-in-asp-net-core-web-app
url: viewer/net/how-to-integrate-groupdocs-viewer-in-asp-net-core-web-app
title: How to integrate GroupDocs.Viewer in ASP.NET Core Web application
weight: 1
description: "Add GroupDocs.Viewer.UI to an ASP.NET Core web application: install four packages, map the /viewer and /viewer-api endpoints, and view documents in the browser."
keywords: GroupDocs.Viewer.UI, ASP.NET Core, document viewer, web application, integration
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
This guide builds a small ASP.NET Core web application that shows documents in the browser. The viewer itself is [GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI), and GroupDocs.Viewer for .NET renders the documents for it. The steps use the .NET CLI; in Visual Studio they are the same.

![The browser loads the viewer app from /viewer, then asks /viewer-api for the pages. The API renders them with GroupDocs.Viewer for .NET, reads documents from ./Files and keeps rendered pages in ./Cache](/viewer/net/images/showcases/how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app/viewer-ui-app-diagram.svg)

The application has two endpoints:

1. `/viewer` serves the viewer, an Angular app that runs in the browser.
2. `/viewer-api` renders the documents for it. It reads the documents from the `Files` folder and stores the rendered pages in the `Cache` folder, so each page is rendered only once.

The finished application is also available as [a sample in the GroupDocs.Viewer.UI repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI/tree/master/samples/GroupDocs.Viewer.UI.Sample).

## Prerequisites

Install the [.NET SDK](https://dotnet.microsoft.com/download), version 8 or later. The packages also support .NET 6.

## Create the application

Create an empty web application in the `my-viewer-app` folder:

{{< tabs "aspnet-core-create-app">}}
{{< tab "Shell" >}}
```sh
dotnet new web -o my-viewer-app
cd my-viewer-app
```
{{< /tab >}}
{{< /tabs >}}

## Install the packages

Add the viewer packages from NuGet:

{{< tabs "aspnet-core-install-packages">}}
{{< tab "Shell" >}}
```sh
dotnet add package GroupDocs.Viewer.UI
dotnet add package GroupDocs.Viewer.UI.SelfHost.Api
dotnet add package GroupDocs.Viewer.UI.Api.Local.Storage
dotnet add package GroupDocs.Viewer.UI.Api.Local.Cache
```
{{< /tab >}}
{{< /tabs >}}

| Package | What it adds |
|---|---|
| GroupDocs.Viewer.UI | The viewer app and the middleware that serves it at `/viewer` |
| GroupDocs.Viewer.UI.SelfHost.Api | The API at `/viewer-api`, which renders documents with GroupDocs.Viewer for .NET. It runs on Windows, Linux and macOS; the former `GroupDocs.Viewer.UI.SelfHost.Api.CrossPlatform` package is deprecated |
| GroupDocs.Viewer.UI.Api.Local.Storage | A file storage on the local disk: the API reads documents from it and saves the files users upload |
| GroupDocs.Viewer.UI.Api.Local.Cache | A cache on the local disk for the rendered pages, thumbnails and PDF files |

## Configure the application

Replace the contents of `Program.cs` with the following code:

{{< tabs "aspnet-core-program">}}
{{< tab "C#" >}}
```csharp
var builder = WebApplication.CreateBuilder(args);

builder.Services
    .AddGroupDocsViewerUI();

builder.Services
    .AddControllers()
    .AddGroupDocsViewerSelfHostApi()
    .AddLocalStorage("./Files")
    .AddLocalCache("./Cache");

var app = builder.Build();

app.UseRouting();

app.MapGroupDocsViewerUI(options =>
{
    options.UIPath = "/viewer";
    options.ApiEndpoint = "/viewer-api";
});

app.MapGroupDocsViewerApi(options =>
{
    options.ApiPath = "/viewer-api";
});

app.Run();
```
{{< /tab >}}
{{< /tabs >}}

This code does the following:

* `AddGroupDocsViewerUI` registers the viewer app, and `MapGroupDocsViewerUI` serves it at `/viewer`. `ApiEndpoint` tells the app where the API is.
* `AddGroupDocsViewerSelfHostApi` registers the API with its rendering engine, and `MapGroupDocsViewerApi` maps it at `/viewer-api`.
* `AddLocalStorage("./Files")` and `AddLocalCache("./Cache")` set the folders for the documents and the rendered pages.

### Set the license

Without a license, GroupDocs.Viewer works in evaluation mode, with the [evaluation limitations]({{< ref "viewer/net/getting-started/licensing-and-subscription.md" >}}). To apply a license, set the `GROUPDOCS_LIC_PATH` environment variable to the path of the license file, or set the path in code:

{{< tabs "aspnet-core-license">}}
{{< tab "C#" >}}
```csharp
builder.Services
    .AddControllers()
    .AddGroupDocsViewerSelfHostApi(config =>
    {
        config.SetLicensePath("GroupDocs.Viewer.lic");
    })
    .AddLocalStorage("./Files")
    .AddLocalCache("./Cache");
```
{{< /tab >}}
{{< /tabs >}}

### Restrict access

The viewer does not authenticate users. To let only signed-in users open documents, apply your authorization policy to both endpoints. Applying it to `/viewer` alone leaves the API, and with it every document, open to anyone:

{{< tabs "aspnet-core-authorization">}}
{{< tab "C#" >}}
```csharp
app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();

app.MapGroupDocsViewerUI(options =>
{
    options.UIPath = "/viewer";
    options.ApiEndpoint = "/viewer-api";
}).RequireAuthorization();

app.MapGroupDocsViewerApi(options =>
{
    options.ApiPath = "/viewer-api";
}).RequireAuthorization();
```
{{< /tab >}}
{{< /tabs >}}

## Create the folders

Create the folders for the documents and the cache, then copy a few documents into `Files`:

{{< tabs "aspnet-core-create-folders">}}
{{< tab "Shell" >}}
```sh
mkdir Files
mkdir Cache
```
{{< /tab >}}
{{< /tabs >}}

## Run the application

Run the application with the `dotnet run` command in the `my-viewer-app` folder. The output looks like this:

```text
Building...
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: http://localhost:5081
info: Microsoft.Hosting.Lifetime[0]
      Application started. Press Ctrl+C to shut down.
info: Microsoft.Hosting.Lifetime[0]
      Hosting environment: Development
info: Microsoft.Hosting.Lifetime[0]
      Content root path: C:\my-viewer-app
```

In the browser, open the address from the output with the `/viewer` path, for example `http://localhost:5081/viewer`:

![GroupDocs.Viewer.UI in the ASP.NET Core application: an annual report with page thumbnails and the zoom, rotate, page, search, print, present, Download PDF and Open File buttons](/viewer/net/images/showcases/how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app/groupdocs-viewer-ui-26-10-asp-net-core.jpg)

* Click **Open File** to choose a document from the `Files` folder or to upload one.
* To open a document directly, add its name to the address: `http://localhost:5081/viewer?file=annual-report.docx`.
* The first time you open a document, its pages are rendered, so it takes longer. After that, the viewer reads them from the `Cache` folder.

## Customize the viewer

Options of `AddGroupDocsViewerUI` set how the viewer renders documents (HTML or images), which file it opens first, its zoom, its theme, and the buttons it shows. For example, the following code hides the rotate buttons and the button that switches between the light and dark themes:

{{< tabs "aspnet-core-ui-options">}}
{{< tab "C#" >}}
```csharp
builder.Services
    .AddGroupDocsViewerUI(config =>
    {
        config.EnableRotate = false;
        config.EnableThemeSwitcher = false;
    });
```
{{< /tab >}}
{{< /tabs >}}

For all the options, see [Customize UI behavior](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI#customize-ui-behavior) and [Show or hide UI controls](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI#show-or-hide-ui-controls) in the GroupDocs.Viewer.UI repository.

## Resources

* [GroupDocs.Viewer.UI repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI): documentation, storage and cache providers, Docker, and samples
* [GroupDocs.Viewer for .NET examples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
* [GroupDocs.Viewer online app](https://products.groupdocs.app/viewer/total), built with the same viewer
