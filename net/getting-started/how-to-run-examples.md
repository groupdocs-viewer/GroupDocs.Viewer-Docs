---
id: how-to-run-examples
url: viewer/net/how-to-run-examples
title: How to run examples
weight: 6
keywords: visual studio, build a project, .net cli
description: "You can build a project from scratch using Visual Studio .NET CLI. We'll step you through both cases."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

We offer multiple solutions on how you can run GroupDocs.Viewer examples, by building your own or using our back-end or front-end examples.

## Build project from scratch

You can build a project from scratch using Visual Studio or [.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/). We'll step you through both cases.

### Build project using .NET CLI

* Make sure you have .NET Core or .NET SDK installed <https://dotnet.microsoft.com/download>.
* Create a directory for your console app by executing e.g. `mkdir my-console-app` in your terminal.
* Navigate to `my-console-app` directory by executing `cd my-console-app`.
* Create empty console app by executing `dotnet new console`
* Add GroupDocs.Viewer for .NET package `dotnet add package GroupDocs.Viewer`
* Edit `Program.cs` and add the following lines to the `Main` method
  
  ```csharp
  string documentPath = @"C:\sample.docx";
  using (Viewer viewer = new Viewer(documentPath))
  {
     string filePathFormat = @"C:\output\page-{0}.html";
     HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(filePathFormat);
     viewer.View(options);
  }
  ```
  
* Replace `documentPath` value with the actual path to the document you're going to render.
* Run the project by executing `dotnet run`.
* Check the output in `C:\\output\\` directory.

### Build project using Visual Studio

* Open Visual Studio and go to **File** -> **New** -> **Project**.
* Select appropriate project type e.g. Console Application or Console App (.NET Framework)
* Install **GroupDocs.Viewer for .NET** from Nuget or official GroupDocs website with one of ways listed in "Installation"({{< ref "installation" >}}) section.
* Add the following code to the `Main` method:

  ```csharp
  string documentPath = @"C:\sample.docx";
  using (Viewer viewer = new Viewer(documentPath))
  {
     string filePathFormat = @"C:\output\page-{0}.html";
     HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(filePathFormat);
     viewer.View(options);
  }
  ```

* Replace `documentPath` value with the actual path to the document you're going to render.
* Build and Run your project.
* Rendered document pages will be saved in `C:\\output\\` directory.

## Run back-end examples

You can find number of back-end examples in our repository hosted on [Github](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET). You can either download the ZIP file from [here](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) or clone the repository of Github using your favorite git client.  
In case you download the ZIP file, extract the folders on your local disk.

* Navigate to `Examples` directory and open `GroupDocs.Viewer.Examples.CSharp.sln` using Visual Studio.
* Open `RunExamples.cs` file and uncomment the example(s) that you would like to run.
* Optionally you can set the path to the license in `Utils.cs` file.

## Run Demo Projects

To run any demo from [GroupDocs.Viewer for .NET Demo projects](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/) you can either:

* Clone the repository:

  ```bash
  git clone git@github.com:groupdocs-viewer/GroupDocs.Viewer-for-.NET.git  
  ```

* Or [download](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) source code.

### ASP.NET Core Demo

* Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
* Navigate to `Demos/ASP.NET Core` folder.
* Execute `dotnet run` in a terminal.
* Open [http://localhost:8080/viewer](http://localhost:8080/viewer) in your favorite browser.

### ASP.NET MVC Demo

* Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
* Navigate to  `Demos/MVC` folder.
* Open `GroupDocs.Viewer MVC.sln` solution in `Demos/MVC` folder using Visual Studio.
* Update parameters in **web.config** and demo related properties in the **configuration.yml** to meet your requirements, see more about configuring the demo at ["Configuration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/MVC#configuration) section.
* Run the project and open [http://localhost:8080/viewer](http://localhost:8080/viewer) in your favorite browser.

{{< alert style="info" >}}

For more details about demo configuration please refer to ["Configuration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/MVC#configuration) section.

{{< /alert >}}

### ASP.NET Web Forms Demo

* Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
* Navigate to `Demos/WebForms` folder.
* Open `GroupDocs.Viewer.WebForms.sln` solution using Visual Studio.
* Open solution in the VisualStudio. Update common parameters in **web.config** and example related properties in the **configuration.yml** to meet your requirements.
* Open [http://localhost:8080/viewer](http://localhost:8080/viewer) in your favorite browser.

{{< alert style="info" >}}

For more details about demo configuration please refer to ["Configuration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/WebForms#configuration) section.

{{< /alert >}}

### WPF Demo

* Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
* Navigate to `Demos/WPF/src` folder.
* Open `GroupDocs.Viewer.WPF.sln` using Visual Studio.
* Run the project.

### Windows Forms Demo

* Clone or download ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) repository from GitHub or skip this step if you already have the code.
* Navigate to `Demos/WinForms/src` folder.
* Open `GroupDocs.Viewer.WinForms.sln` using Visual Studio.
* Run the project.

## Contribute

If you like to add or improve an example, we encourage you to contribute to the project. All examples in this repository are open source and can be freely used in your own applications.  
To contribute, you can fork the repository, edit the code and create a pull request. We will review the changes and include it in the repository if found helpful.
