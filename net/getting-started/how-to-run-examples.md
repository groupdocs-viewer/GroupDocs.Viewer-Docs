---
id: how-to-run-examples
url: viewer/net/how-to-run-examples
title: How to run examples
weight: 6
keywords: visual studio, build a project, .net cli
description: "You can build a project from scratch using Visual Studio .NET CLI. We will step you through both cases."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

We offer multiple solutions on how you can run GroupDocs.Viewer examples, by building your own or using our back-end or front-end examples.

## Build project from scratch

You can build a project from scratch using Visual Studio or [.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/). We'll step you through both cases.

### Build project using .NET CLI

1. Make sure you have .NET Core or .NET SDK installed <https://dotnet.microsoft.com/download>.
2. Create a directory for your console app by executing e.g. `mkdir my-console-app` in your terminal.
3. Navigate to `my-console-app` directory by executing `cd my-console-app`.
4. Create empty console app by executing `dotnet new console`
5. Add GroupDocs.Viewer for .NET package `dotnet add package GroupDocs.Viewer`
6. Edit `Program.cs` and add the following lines to the `Main` method
{{< tabs "example1">}}
{{< tab "C#" >}}  
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
   string outputFilePathFormat = @"output\page-{0}.html";
   HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(outputFilePathFormat);
   
   viewer.View(options);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            Dim outputFilePathFormat As String = "output\page-{0}.html"
            Dim options As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources(outputFilePathFormat)

            viewer.View(options)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
7. Replace `documentPath` value with the actual path to the document you're going to render.
8. Run the project by executing `dotnet run`.
9. Check the output in `C:\\output\\` directory.

### Build project using Visual Studio

1. Open Visual Studio and go to **File** -> **New** -> **Project**.
2. Select appropriate project type e.g. Console Application or Console App (.NET Framework)
3. Install **GroupDocs.Viewer for .NET** from Nuget or official GroupDocs website with one of ways listed in "Installation"({{< ref "installation" >}}) section.
4. Add the following code to the `Main` method:
{{< tabs "example2">}}
{{< tab "C#" >}}  
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
   string outputFilePathFormat = @"output\page-{0}.html";
   HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(outputFilePathFormat);
   viewer.View(options);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            Dim outputFilePathFormat As String = "output\page-{0}.html"
            Dim options As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources(outputFilePathFormat)
            viewer.View(options)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
5. Replace `documentPath` value with the actual path to the document you're going to render.
6. Build and Run your project.
7. Rendered document pages will be saved in `C:\\output\\` directory.

## Run back-end examples

You can find number of back-end examples in our repository hosted on [Github](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET). You can either download the ZIP file from [here](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) or clone the repository of Github using your favorite git client.  
In case you download the ZIP file, extract the folders on your local disk.

1. Navigate to `Examples` directory and open `GroupDocs.Viewer.Examples.CSharp.sln` using Visual Studio.
2. Open `RunExamples.cs` file and uncomment the example(s) that you would like to run.
3. Optionally you can set the path to the license in `Utils.cs` file.

## Run Demo Projects

To run any demo from [GroupDocs.Viewer for .NET Demo projects](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/) you can either:

* Clone the repository:
{{< tabs "example3">}}
{{< tab "Git" >}}  
```bash
git clone git@github.com:groupdocs-viewer/GroupDocs.Viewer-for-.NET.git  
```
{{< /tab >}}
{{< /tabs >}}
* Or [download](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) source code.

### ASP.NET Core Demo

1. Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
2. Navigate to `Demos/ASP.NET Core` folder.
3. Execute `dotnet run` in a terminal.
4. Open [http://localhost:8080/viewer](http://localhost:8080/viewer) in your favorite browser.

### ASP.NET MVC Demo

1. Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
2. Navigate to  `Demos/MVC` folder.
3. Open `GroupDocs.Viewer MVC.sln` solution in `Demos/MVC` folder using Visual Studio.
4. Update parameters in **web.config** and demo related properties in the **configuration.yml** to meet your requirements, see more about configuring the demo at ["Configuration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/MVC#configuration) section.
5. Run the project and open [http://localhost:8080/viewer](http://localhost:8080/viewer) in your favorite browser.

{{< alert style="info" >}}

For more details about demo configuration please refer to ["Configuration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/MVC#configuration) section.

{{< /alert >}}

### ASP.NET Web Forms Demo

1. Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
2. Navigate to `Demos/WebForms` folder.
3. Open `GroupDocs.Viewer.WebForms.sln` solution using Visual Studio.
4. Open solution in the VisualStudio. Update common parameters in **web.config** and example related properties in the **configuration.yml** to meet your requirements.
5. Open [http://localhost:8080/viewer](http://localhost:8080/viewer) in your favorite browser.

{{< alert style="info" >}}

For more details about demo configuration please refer to ["Configuration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/WebForms#configuration) section.

{{< /alert >}}

### WPF Demo

1. Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
2. Navigate to `Demos/WPF/src` folder.
3. Open `GroupDocs.Viewer.WPF.sln` using Visual Studio.
4. Run the project.

### Windows Forms Demo

1. Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
2. Navigate to `Demos/WinForms/src` folder.
3. Open `GroupDocs.Viewer.WinForms.sln` using Visual Studio.
4. Run the project.

## Contribute

If you like to add or improve an example, we encourage you to contribute to the project. All examples in this repository are open source and can be freely used in your own applications.  
To contribute, you can fork the repository, edit the code and create a pull request. We will review the changes and include it in the repository if found helpful.
