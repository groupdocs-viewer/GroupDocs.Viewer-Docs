---
id: how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app
url: viewer/net/how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app
title: How to integrate GroupDocs.Viewer.UI in ASP.NET Core Web app
weight: 1
description: "This guide steps through integration process of GroupDocs.Viewer.UI in ASP.NET Core Web application"
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

In this guide we'll step through integration process of [GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI) in ASP.NET Core Web application. For the simplicity we'll be using terminal to create the app and to add required packages but you can do the same with Visual Studio.

The complete sample application can be downloaded at [GitHub](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/ASP.NET%20Core).

## Prerequisites

Since we're going to build our application from scratch you'll need .NET or .NET Core 3.1 SDK that can be downloaded at <https://dotnet.microsoft.com/download>.

## Create new app

After you installed the SDK you'll be able to use [.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/) that is powerful tool for building, running, and publishing your apps.

Let's create new web application by executing CLI command from a directory named `my-viewer-app`:

```powershell
dotnet new web
```

You can check that project and configuration files has been created.

## Install packages

We'll be adding required packages using .NET CLI tool, execute the following commands from the directory with your application. In case you've created the app on the previous step it's `my-viewer-app`.

```powershell
dotnet add package GroupDocs.Viewer.UI
dotnet add package GroupDocs.Viewer.UI.SelfHost.Api
dotnet add package GroupDocs.Viewer.UI.Api.Local.Storage
dotnet add package GroupDocs.Viewer.UI.Api.Local.Cache
```

Each command will add corresponding package to your application.

## Configure middleware

Open in a text editor `Startup.cs` file and the following configuration lines to `ConfigureServices` method:

```cs
services
    .AddGroupDocsViewerUI();

services
    .AddControllers()
    .AddGroupDocsViewerSelfHostApi()
    .AddLocalStorage("./Files")
    .AddLocalCache("./Cache");
```

And following lines to `Configure` method to register UI and API endpoints:

```cs
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

This code registers `/viewer` middleware that will serve SPA and `/viewer-api` middleware that will serve content for the UI to display.

The complete `Startup.cs` file will be similar to:

```cs
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

Or, if you're using [new program style](https://docs.microsoft.com/en-us/dotnet/core/tutorials/top-level-templates) with top-level statements, global using directives, and implicit using directives the `Startup.cs` will be a bit shorter:

```cs
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

## Create folders for files and cache

Since we're using local storage and local cache we should have create a folder for files and cache by executing the following commands:

```powershell
mkdir Files
mkdir Cache
```

## Run the app

At this moment we're ready to run our app by executing `dotnet run` command from directory with the application. The output should be the similar to the following:  

```powershell
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

Now, we can navigate in our browser to one of the endpoints listed in the output above and add `/viewer` path to it to see our viewer app in action.

![GroupDocs.Viewer.Ui in ASP.NET Core Web app](viewer/net/images/showcases/how-to-integrate-groupdocs-viewer-ui-in-asp-net-core-web-app/groupdocs-viewer-ui-asp-net-core-web-app.png)

Start using the app by clicking at the folder icon to upload your files, you can also copy your files to the `Files` directory or point a Viewer to read files from any directory on your local drive by passing the path to the directory in `AddLocalStorage` extension method.

## Resources

* [GroupDocs.Viewer.UI package repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI)

* [GroupDocs.Viewer for .NET Demos and Examples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)

* [GroupDocs.Viewer Online App](https://products.groupdocs.app/viewer/total)
