---
id: how-to-run-groupdocs-viewer-in-docker
url: viewer/net/how-to-run-groupdocs-viewer-in-docker
title: How to run GroupDocs.Viewer in Docker
weight: 7
keywords: visual studio, build a project, .net cli
description: "You can build a project from scratch using Visual Studio .NET CLI. We will step you through both cases."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

Docker provides an isolated environment for services and applications. In this topic we containerize sample application that is using GroupDocs.Viewer. You can learn more about conteinerization at [Introduction to .NET and Docker](https://learn.microsoft.com/en-us/dotnet/core/docker/introduction).

Running GroupDocs.Viewer in Docker is straightforward. First we prepare a sample application that uses [GroupDocs.Viewer.CrossPlatform](https://www.nuget.org/packages/GroupDocs.Viewer.CrossPlatform) NuGet package and than we build Docker image and run the applicaiton in Docker container.

In this documentation article we're going to use [Official .NET Docker image](https://learn.microsoft.com/en-us/dotnet/architecture/microservices/net-core-net-framework-containers/official-net-docker-images) that based on Debian Linux distribution.

## Prerequisites

**Docker:** Docker must be installed on your system. Refer to the official Docker documentation for detailed installation instructions check [Get Docker](https://docs.docker.com/get-docker/).

**.NET Application:** In this topic we'll run a sample .NET 8 application. You can download it from [here](/viewer/net/sample-files/how-to-run-groupdocs-viewer-in-docker/DemoApp.zip). Alternatively, you can use your own application based on the code snippets provided below.

{{< tabs "demo-app">}}
{{< tab "DemoApp.csproj" >}}  
```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="GroupDocs.Viewer.CrossPlatform" Version="24.4.0" />
  </ItemGroup>

  <ItemGroup>
    <None Update="formatting.docx">
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </None>
  </ItemGroup>

</Project>
```
{{< /tab >}}
{{< tab "Program.cs" >}}  
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;

namespace DemoApp
{
    class Program
    {
        static void Main(string[] args)
        {
            // Instantiate Viewer and pass file name
            using (Viewer viewer = new Viewer("formatting.docx"))
            {
                // Configure view options
                HtmlViewOptions viewOptions =
                    HtmlViewOptions.ForEmbeddedResources("output/page-{0}.html");

                // Render DOCX to HTML
                viewer.View(viewOptions);
            }
        }
    }
}
```
{{< /tab >}}
{{< tab "formatting.docx" >}}  
{{< tab-text >}}
`formatting.docx` is sample DOCX file that we're going to use in this example. Click [here](/viewer/net/sample-files/how-to-run-groupdocs-viewer-in-docker/formatting.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{</ tabs >}}

Your folder tree should look similar to the following directory structure:

```Directory
📂 DemoApp
 ├──DemoApp.csproj
 ├──Program.cs
 └──formatting.docx
```

{{< alert style="info" >}}

This demo application references [GroupDocs.Viewer.CrossPlatform](https://www.nuget.org/packages/GroupDocs.Viewer.CrossPlatform) package. This package is recommended for Linux and macOS because it does not use `System.Drawing.Common` as a graphical subsystem, [which is only supported on Windows](https://learn.microsoft.com/en-us/dotnet/core/compatibility/core-libraries/6.0/system-drawing-common-windows-only).

{{</ alert >}}

## Add Dockerfile

To create Docker image add a `Dockerfile` and a `.dockerignore` file to your project. 

{{< tabs "dockerfile">}}
{{< tab "Dockerfile" >}}  
```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app

# Add `contrib` archive area to package sources list
RUN sed -i 's/^Components: main$/& contrib/' /etc/apt/sources.list.d/debian.sources

# Download the package lists from the repositories
# and install two packages `fontconfig` and `ttf-mscorefonts-installer`
RUN apt update && apt install -y \
    fontconfig \
    ttf-mscorefonts-installer 

# Copy the application and restore packages
COPY . .
RUN dotnet restore 

# Run the application
ENTRYPOINT ["dotnet", "run"]
```
{{< /tab >}}
{{< tab ".dockerignore" >}}  
```txt
**/.dockerignore
**/Dockerfile*
**/.vs
**/.vscode
**/*.*proj.user
**/bin
**/obj
```
{{< /tab >}}
{{< /tabs >}}

At this point folder tree should look similar to the following directory structure:

```Directory
📂 DemoApp
 ├──DemoApp.csproj
 ├──Program.cs
 ├──formatting.docx
 ├──Dockerfile
 └──.dockerignore
```

The `Dockerfile` contains instructions to install two dependencies required by GroupDocs.Viewer:

**fontconfig:** This library configures and customizes font access.

**ttf-mscorefonts-installer:** This package provides Microsoft TrueType core fonts. It's available in the [contrib](https://www.debian.org/doc/debian-policy/ch-archive#s-contrib) archive area. (Note: Using non-free fonts may have licensing implications, so be sure to check the license terms.)

## Build Docker image

At this point we're ready to build Docker image. Make sure that Docker is up and running, navigate to `DemoApp` directory and type the following in command line to build the image.

```bash
docker build -t viewer-demo-app .
```

`-t` - is used to name and tag the image. We name the image `viewer-demo-app` with no tag.

`.`  - build context path. In this example it is current directory.

## Run Docker container

To run our containerized application use the following command in the `DemoApp` directory.

```bash
docker run --rm -v ${pwd}/output:/app/output viewer-demo-app
```

`--rm` - Removes the container and cleanups file system on completion.

`-v ${pwd}/output:/app/output` - Maps `./output` directory on our host OS to `/app/output` directory in Docker container.

After you run the application the `./output` directory will to contain two files `page-1.html` and `page-2.html` due to trial limitations. To render all the files you have to set a valid license. Learn more about evaluation and free trial limitations at [How to Evaluate GroupDocs.Viewer](/viewer/net/licensing-and-evaluation/).

## Conclusion

This topic demonstrated containerizing a sample .NET 8 application with Docker for running GroupDocs.Viewer. 