---
id: how-to-integrate-groupdocs-viewer-in-asp-net-core-web-app
url: viewer/net/how-to-integrate-groupdocs-viewer-in-asp-net-core-web-app
title: How to integrate GroupDocs.Viewer in ASP.NET Core Web application
weight: 1
description: "This guide steps through integration process of GroupDocs.Viewer.UI in ASP.NET Core Web application"
keywords: integration process, ASP.NET Core Web application
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
This page describes how to develop a simple ASP.NET Core Web application that uses GroupDocs.Viewer for .NET as a rendering engine. The page describes how to create an application and to add required packages using the terminal, but you can do the same with Visual Studio. The following image shows the simplified application diagram:

![Simplified diagram of the web application that we're going to build](/viewer/net/images/showcases/how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app/simplified-app-diagram.png)

You can also find this sample application in the [demo projects repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/ASP.NET%20Core) at GitHub.

## Prerequisites

To build the application from scratch, download .NET or .NET Core 3.1 SDK at <https://dotnet.microsoft.com/download> and then install it.

## Create an application

Create a web application by executing the [.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/) command in the directory named `my-viewer-app`:

{{< tabs "example1">}}
{{< tab "Shell" >}}
```sh
dotnet new web
```
{{< /tab >}}
{{< /tabs >}}

Check that project and configuration files has been created.

## Install packages

Add required packages using the .NET CLI tool. To do this, execute the following commands in the `my-viewer-app` directory:

{{< tabs "example2">}}
{{< tab "Shell" >}}
```sh
dotnet add package GroupDocs.Viewer.UI
dotnet add package GroupDocs.Viewer.UI.SelfHost.Api
dotnet add package GroupDocs.Viewer.UI.Api.Local.Storage
dotnet add package GroupDocs.Viewer.UI.Api.Local.Cache
```
{{< /tab >}}
{{< /tabs >}}
These commands add the following packages to the application:

* GroupDocs.Viewer.UI contains a middleware that serves the client application at the /viewer endpoint that you configure in the next step.
* GroupDocs.Viewer.UI.SelfHost.Api contains a middleware with a rendering engine based on GroupDocs.Viewer for .NET. You configure it at the /viewer-api endpoint.
* GroupDocs.Viewer.UI.Api.Local.Storage contains an implementation for the storage using a local disk to read and write files uploaded using UI.
* GroupDocs.Viewer.UI.Api.Local.Cache contains implementation for the cache storage. The cache stores output files produced by the rendering engine, such as the rendered HTML pages.

## Configure middleware

Open the `Startup.cs` file and add the following lines to `ConfigureServices` method:

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
services
    .AddGroupDocsViewerUI();

services
    .AddControllers()
    .AddGroupDocsViewerSelfHostApi()
    .AddLocalStorage("./Files")
    .AddLocalCache("./Cache");
```
{{< /tab >}}
{{< /tabs >}}

Add the following lines to the `Configure` method to register UI and API endpoints:

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
app
    .UseRouting()
    .UseEndpoints(endpoints =>
    {
        endpoints.MapGroupDocsViewerUI(options =>
        {
            options.UIPath = "/viewer";
            options.APIEndpoint = "/viewer-api";
        });
        endpoints.MapGroupDocsViewerApi(options =>
        {
            options.ApiPath = "/viewer-api";
        });
    });
```
{{< /tab >}}
{{< /tabs >}}

This code registers `/viewer` middleware that serves client application files and `/viewer-api` middleware that renders content for the client application.

The `Startup.cs` file is as follows:

{{< tabs "example5">}}
{{< tab "C#" >}}
```csharp
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;

namespace my_viewer_app
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services
                .AddGroupDocsViewerUI();

            services
                .AddControllers()
                .AddGroupDocsViewerSelfHostApi()
                .AddLocalStorage("./Files")
                .AddLocalCache("./Cache");
        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app
                .UseRouting()
                .UseEndpoints(endpoints =>
                {
                    endpoints.MapGroupDocsViewerUI(options =>
                    {
                        options.UIPath = "/viewer";
                        options.APIEndpoint = "/viewer-api";
                    });

                    endpoints.MapGroupDocsViewerApi(options =>
                    {
                        options.ApiPath = "/viewer-api";
                    });
                });
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}

If you use the [new program style](https://docs.microsoft.com/en-us/dotnet/core/tutorials/top-level-templates) with top-level statements, global using directives, and implicit using directives, the `Startup.cs` is as follows:

{{< tabs "example6">}}
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

app
    .UseRouting()
    .UseEndpoints(endpoints =>
    {
        endpoints.MapGroupDocsViewerUI(options =>
        {
            options.UIPath = "/viewer";
            options.APIEndpoint = "/viewer-api";
        });
        endpoints.MapGroupDocsViewerApi(options =>
        {
            options.ApiPath = "/viewer-api";
        });
    });

app.Run();
```
{{< /tab >}}
{{< /tabs >}}

## Create folders for files and cache

On a local disk, create folders for files and cache by executing the following commands:

{{< tabs "example7">}}
{{< tab "Shell" >}}
```sh
mkdir Files
mkdir Cache
```
{{< /tab >}}
{{< /tabs >}}

## Run the application

To run the application, execute the `dotnet run` command in the `my-viewer-app` directory. The output should be as follows:  

```verilog
Building...
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: https://localhost:7153
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: http://localhost:5081
info: Microsoft.Hosting.Lifetime[0]
      Application started. Press Ctrl+C to shut down.
info: Microsoft.Hosting.Lifetime[0]
      Hosting environment: Development
info: Microsoft.Hosting.Lifetime[0]
      Content root path: C:\my-viewer-app
```

In the browser, open one of the endpoints listed in the output above and add the `/viewer` path to see the viewer application in action:

![GroupDocs.Viewer.Ui in ASP.NET Core Web application](/viewer/net/images/showcases/how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app/groupdocs-viewer-ui-asp-net-core-web-app.png)

To upload files, click the folder icon or copy your files to the `Files` directory. You can also specify the path to the directory in the `AddLocalStorage` extension method.

## Resources

* [GroupDocs.Viewer.UI package repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI)
* [GroupDocs.Viewer for .NET Demos and Examples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
* [GroupDocs.Viewer Online App](https://products.groupdocs.app/viewer/total)
