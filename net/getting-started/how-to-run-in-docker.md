---
id: how-to-run-groupdocs-viewer-in-docker
url: viewer/net/how-to-run-groupdocs-viewer-in-docker
title: How to run GroupDocs.Viewer in Docker
weight: 8
keywords: visual studio, build a project, .net cli
description: "You can build a project from scratch using Visual Studio .NET CLI. We will step you through both cases."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - viewer/net/net-standard-2-0-api-limitations
---

Docker provides an isolated environment for services and applications. In this topic we containerize sample application that is using GroupDocs.Viewer. You can learn more about conteinerization at [Introduction to .NET and Docker](https://learn.microsoft.com/en-us/dotnet/core/docker/introduction).

Running GroupDocs.Viewer in Docker is straightforward. First we prepare a sample application that uses the [GroupDocs.Viewer](https://www.nuget.org/packages/GroupDocs.Viewer) NuGet metapackage (which restores [GroupDocs.Viewer.Net100](https://www.nuget.org/packages/GroupDocs.Viewer.Net100) for `net10.0`) and then we build a Docker image and run the application in a Docker container.

In this documentation article, we're going to use an [official .NET Docker image](https://learn.microsoft.com/en-us/dotnet/core/docker/container-images), `mcr.microsoft.com/dotnet/sdk:10.0`, which is based on the Ubuntu 24.04 Linux distribution.

## Prerequisites

**Docker:** Docker must be installed on your system. Refer to the official Docker documentation for detailed installation instructions check [Get Docker](https://docs.docker.com/get-docker/).

**.NET Application:** In this topic we'll run a sample .NET 10 application. You can download it from [here](/viewer/net/_sample_files/getting-started/how-to-run-in-docker/DemoApp.zip). Alternatively, you can use your own application based on the code snippets provided below.

{{< tabs "demo-app">}}
{{< tab "DemoApp.csproj" >}}  
```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net10.0</TargetFramework>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="GroupDocs.Viewer" Version="26.10.0" />
  </ItemGroup>

  <ItemGroup>
    <None Update="sample.docx">
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
// ...

namespace DemoApp
{
    class Program
    {
        static void Main(string[] args)
        {
            // Instantiate Viewer and pass file name
            using (Viewer viewer = new Viewer("sample.docx"))
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
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/getting-started/how-to-run-in-docker/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Your folder tree should look similar to the following directory structure:

```Directory
📂 DemoApp
 ├──DemoApp.csproj
 ├──Program.cs
 └──sample.docx
```

{{< alert style="info" >}}

This demo application references the [GroupDocs.Viewer](https://www.nuget.org/packages/GroupDocs.Viewer) metapackage and targets `net10.0`. NuGet restores [GroupDocs.Viewer.Net100](https://www.nuget.org/packages/GroupDocs.Viewer.Net100), which does not use `System.Drawing.Common` as a graphical subsystem, [which is only supported on Windows](https://learn.microsoft.com/en-us/dotnet/core/compatibility/core-libraries/6.0/system-drawing-common-windows-only).

{{</ alert >}}

## Add Dockerfile

To create Docker image add a `Dockerfile` and a `.dockerignore` file to your project. 

{{< tabs "dockerfile">}}
{{< tab "Dockerfile" >}}  
```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:10.0
WORKDIR /app

# Accept the EULA of the Microsoft TrueType core fonts in advance,
# so that their installation does not wait for an answer
RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" \
    | debconf-set-selections

# Download the package lists from the repositories
# and install two packages `fontconfig` and `ttf-mscorefonts-installer`
RUN apt-get update && apt-get install -y \
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
 ├──sample.docx
 ├──Dockerfile
 └──.dockerignore
```

The `Dockerfile` installs the following packages to provide font support for GroupDocs.Viewer on Linux:

**fontconfig:** This package provides font configuration, discovery, and customization. It also installs the `libfontconfig1` library, which GroupDocs.Viewer needs to render presentations.

**ttf-mscorefonts-installer:** This package provides Microsoft TrueType core fonts, which GroupDocs.Viewer needs to render Microsoft Project files on Linux. It's available in the [multiverse](https://packages.ubuntu.com/noble/ttf-mscorefonts-installer) component, which the .NET image enables. The `debconf-set-selections` command accepts the license agreement of these fonts in advance, so that the image builds without user input. (Note: Using non-free fonts may have licensing implications, so be sure to check the license terms.)

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
docker run --rm -v "$(pwd)/output:/app/output" viewer-demo-app
```

`--rm` - Removes the container and cleanups file system on completion.

`-v "$(pwd)/output:/app/output"` - Maps `./output` directory on our host OS to `/app/output` directory in Docker container. This syntax works in Bash, zsh, and PowerShell; in the Windows Command Prompt, use `%cd%` instead of `$(pwd)`.

After you run the application, the `./output` directory will contain two files: `page-1.html` and `page-2.html` due to trial limitations. To render all the files you have to set a valid license. Learn more about evaluation and free trial limitations at [How to Evaluate GroupDocs.Viewer](/viewer/net/licensing-and-evaluation/).

## Conclusion

This topic demonstrated containerizing a sample .NET 10 application with Docker for running GroupDocs.Viewer. 