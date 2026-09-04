---
id: how-to-run-examples
url: viewer/net/how-to-run-examples
title: How to Run Examples
linkTitle: How to Run Examples
weight: 7
description: "Learn how to clone the GroupDocs.Viewer for .NET examples repository, restore NuGet packages, configure a license, and run C# examples in Visual Studio or with the .NET CLI." 
keywords: GroupDocs.Viewer, .NET, C#, code examples, run examples, Visual Studio, .NET CLI, GitHub repository, NuGet 
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-run-examples/
---

This page explains how to set up and run the **GroupDocs.Viewer for .NET** code examples. The examples demonstrate common document rendering scenarios, including rendering documents to **HTML, PDF, PNG, and JPEG**, processing documents stored in archives, extracting attachments, and retrieving document information.

If you want to build a minimal application from scratch, see the [Quick Start Guide]({{< ref "viewer/net/getting-started/quick-start-guide.md" >}}).

## Prerequisites

Before running the examples, make sure you have:

1. A **configured environment** that meets the requirements described in the [System Requirements]({{< ref "viewer/net/getting-started/system-requirements.md" >}}).
2. The [.NET SDK](https://dotnet.microsoft.com/download) or **Visual Studio 2022** or later.
3. The **GroupDocs.Viewer for .NET examples repository**, cloned or downloaded from GitHub.

```bash
git clone https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET.git
```

Alternatively, [download the repository as a ZIP archive](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) and extract it locally.

## Project Structure

The examples are located in the `Examples` folder. Shared C# code is stored in `GroupDocs.Viewer.Examples.CSharp`, while separate projects target different .NET frameworks.

```text
📂 GroupDocs.Viewer-for-.NET
├── Demos
│   ├── ASP.NET Core
│   ├── ASP.NET MVC
│   ├── ASP.NET Web Forms
│   ├── Windows Forms
│   └── WPF
├── Examples
│   ├── GroupDocs.Viewer.Examples.CSharp.sln
│   ├── GroupDocs.Viewer.Examples.CSharp
│   │   ├── QuickStart
│   │   ├── BasicUsage
│   │   ├── AdvancedUsage
│   │   ├── HowTo
│   │   ├── Resources
│   │   └── Utils.cs
│   ├── GroupDocs.Viewer.Examples.CSharp.Framework
│   ├── GroupDocs.Viewer.Examples.CSharp.Net
│   └── GroupDocs.Viewer.Examples.CSharp.NetWindows
├── Plugins
├── LICENSE
└── README.md
```

| Project | Target framework | Use on |
| --- | --- | --- |
| `GroupDocs.Viewer.Examples.CSharp.Framework` | .NET Framework 4.6.2 | Windows |
| `GroupDocs.Viewer.Examples.CSharp.Net` | .NET 6 and later cross-platform target frameworks | Windows, Linux, or macOS |
| `GroupDocs.Viewer.Examples.CSharp.NetWindows` | .NET 6 and later Windows-specific target frameworks | Windows, including ARM64 |

The target-framework-specific projects use the corresponding GroupDocs.Viewer runtime package. For more information, see [Installation]({{< ref "viewer/net/getting-started/installation.md" >}}).

## Setup Instructions

### 1. Restore NuGet Packages

Navigate to the `Examples` directory and restore the NuGet packages:

```bash
cd GroupDocs.Viewer-for-.NET/Examples
dotnet restore GroupDocs.Viewer.Examples.CSharp.sln
```

If you use Visual Studio, open `GroupDocs.Viewer.Examples.CSharp.sln`, right-click the solution in **Solution Explorer**, and select **Restore NuGet Packages**.

### 2. Select a startup project

Select the project that matches your target framework and operating system:

* `GroupDocs.Viewer.Examples.CSharp.Net` for cross-platform .NET applications.
* `GroupDocs.Viewer.Examples.CSharp.NetWindows` for Windows-specific .NET applications.
* `GroupDocs.Viewer.Examples.CSharp.Framework` for .NET Framework applications.

In Visual Studio, right-click the required project and select **Set as Startup Project**.

### 3. Configure License (Optional)

If you have a GroupDocs.Viewer license file, specify its path in `Examples/GroupDocs.Viewer.Examples.CSharp/Utils.cs`:

```csharp
public const string LicensePath = @"C:\licenses\GroupDocs.Viewer.lic";
```

Make sure the license file exists at the specified location, or update `LicensePath` to point to your license file.

{{< alert style="info" >}}
For more details about licensing, evaluation limitations, and obtaining a temporary license, see the [Licensing and evaluation]({{< ref "viewer/net/getting-started/licensing-and-subscription.md" >}}) page.
{{< /alert >}}

## Running Examples

### Run All Examples

`RunExamples.cs` in the selected startup project runs the available examples sequentially.

Run the project from the `Examples` directory:

```bash
dotnet run --project GroupDocs.Viewer.Examples.CSharp.Net
```

Replace the project name with `GroupDocs.Viewer.Examples.CSharp.NetWindows` or `GroupDocs.Viewer.Examples.CSharp.Framework` if you selected a different target framework.

In Visual Studio, press **F5** to build and run the selected project.

The examples demonstrate scenarios such as:

* Rendering documents to HTML, PDF, PNG, and JPEG.
* Processing documents stored in archives.
* Retrieving document information.
* Applying different rendering options.
* Extracting document attachments.

### Run a Specific Example

To run only a specific example, open `RunExamples.cs` in the selected startup project and comment out the `.Run()` calls for the examples you do not need.

For example, the following configuration runs only the `HelloWorld` example:

```csharp
#region Quick Start

// SetLicenseFromFile.Run();
// SetLicenseFromStream.Run();
// SetMeteredLicense.Run();
HelloWorld.Run();

#endregion
```

Save the changes and run the project again.

### Find Output Files

Most examples save their output to the `Examples/Output/<ExampleName>/` directory. The output path is configured by `Utils.OutputPath` in `Utils.cs`.

Sample documents used by the examples are stored in:

```text
Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles
```

## Run Demo Projects

The [Demos](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos) folder contains ready-to-run applications that demonstrate how to integrate GroupDocs.Viewer into different types of .NET applications.

Clone or download the repository first, then follow the instructions for the demo you want to run.

### ASP.NET Core Demo

1. Navigate to `Demos/ASP.NET Core`.

2. Run the application:

   ```bash
   dotnet run
   ```

3. Open `http://localhost:8080/viewer` in your browser.

### ASP.NET MVC Demo

1. Navigate to `Demos/ASP.NET MVC`.
2. Open the solution in Visual Studio.
3. Update the required parameters in **web.config** and the demo settings in **configuration.yml**. See the [Configuration](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/ASP.NET%20MVC#configuration) section.
4. Run the project.
5. Open `http://localhost:8080/viewer` in your browser.

### ASP.NET Web Forms Demo

1. Navigate to `Demos/ASP.NET Web Forms`.
2. Open the solution in Visual Studio.
3. Update the required parameters in **web.config** and the example settings in **configuration.yml**. See the [Configuration](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/ASP.NET%20Web%20Forms#configuration) section.
4. Run the project.
5. Open `http://localhost:8080/viewer` in your browser.

### WPF Demo

1. Navigate to `Demos/WPF`.
2. Open the solution in Visual Studio.
3. Run the project.

### Windows Forms Demo

1. Navigate to `Demos/Windows Forms`.
2. Open the solution in Visual Studio.
3. Run the project.

## Contribute

You can contribute to the GroupDocs.Viewer examples by adding new examples or improving existing ones. The examples repository is open source and can be used in your own applications.

To contribute:

1. Fork the repository.
2. Modify or add an example.
3. Create a pull request.

The changes will be reviewed and incorporated into the repository when appropriate.

## Troubleshooting

If you encounter problems while running the examples:

* Make sure all NuGet packages are restored successfully.
* Verify that the selected project matches your target framework and operating system.
* Check that your environment meets the [System Requirements]({{< ref "viewer/net/getting-started/system-requirements.md" >}}).
* If you use a license, verify that `LicensePath` points to the correct license file.
* Visit the [Technical Support]({{< ref "viewer/net/technical-support" >}}) page for additional help.
