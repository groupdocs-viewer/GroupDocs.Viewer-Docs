---
id: installation
url: viewer/net/installation
title: Install GroupDocs.Viewer for .NET
linkTitle: Installation
weight: 4
keywords: installation, NuGet package, NuGet package manager
description: "This topic describes how to install GroupDocs.Viewer for .NET."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
This topic describes how to add the **GroupDocs.Viewer** library to your .NET project. You can use a NuGet package to install this library or you can download necessary DLLs from the GroupDocs website: [https://releases.groupdocs.com/viewer/net/](https://releases.groupdocs.com/viewer/net/).

## Install GroupDocs.Viewer using NuGet packages

You can use the following tools to install the [GroupDocs.Viewer](https://www.nuget.org/packages/GroupDocs.Viewer) NuGet package: 

 * [NuGet Package Manager](#use-the-nuget-package-manager-in-visual-studio)
 * [Package Manager Console](#use-the-package-manager-console-in-visual-studio)
 * [.NET CLI](#use-the-net-cli)

### Use the NuGet Package Manager

Open your project or solution in Visual Studio and follow the steps below to install the **GroupDocs.Viewer** package using the [NuGet Package Manager](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-visual-studio):

1. In **Solution Explorer**, right-click your project name and select **Manage NuGet Packages** to display the NuGet Package Manager.

    ![Manage NuGet packages in Visual Studio](/viewer/net/images/getting-started/installation/manage-nuget-packages.png)

2. Select the **Browse** tab and type **GroupDocs.Viewer** in the search box. Select the latest version of the **GroupDocs.Viewer** package and click **Install**.

    ![](/viewer/net/images/getting-started/installation/install-nuget-package.png)

### Use the Package Manager Console

The [Package Manager Console](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-powershell) uses PowerShell commands to install, update, and remove NuGet packages. Open your project in Visual Studio and click **Tools** -> **NuGet Package Manager** -> **Package Manager Console** to open the console window. Run the the following command to install the latest version of the **GroupDocs.Viewer** library:

{{< tabs "example1">}}
{{< tab "PowerShell GroupDocs.Viewer for .NET" >}}
```
PM> Install-Package GroupDocs.Viewer
```
{{< /tab >}}
{{< tab "PowerShell GroupDocs.Viewer.CrossPlatform" >}}
```
PM> Install-Package GroupDocs.Viewer.CrossPlatform
```
{{< /tab >}}
{{< /tabs >}}

![Use Package Manager Console ](/viewer/net/images/getting-started/installation/package-manager-console.png)

### Use the .NET CLI

You can also use the [.NET CLI tool](https://docs.microsoft.com/en-us/dotnet/core/tools/) to install and update NuGet packages. Open a terminal in your project's folder and execute the following command to install the **GroupDocs.Viewer** package:

{{< tabs "example2">}}
{{< tab ".NET CLI" >}}
```
dotnet add package GroupDocs.Viewer
```
{{< /tab >}}
{{< /tabs >}}

## Download GroupDocs.Viewer from the official website

Visit [https://releases.groupdocs.com/viewer/net/](https://releases.groupdocs.com/viewer/net/) and download the **GroupDocs.Viewer** assemblies as a ZIP archive or MSI installer. To reference the downloaded assembly files in your project, do the following:

1. Extract files from the ZIP archive or run the MSI installer to install **GroupDocs.Viewer** to a specific location on your computer.
2. Open your solution or project in Visual Studio.
3. In **Solution Explorer**, right-click the **References** or **Dependencies** node, and select **Add Reference** (for a .NET Framework project) or **Add Project Reference** (for a .NET Core project).
4. In the **Reference Manager** dialog box, select the **Browse** tab and click **Browse** to locate the _GroupDocs.Viewer.dll_ file for the target framework.

    ![Browse for the GroupDocs.Viewer assembly](/viewer/net/images/getting-started/installation/browse-for-groupdocs-dll.png)

5. Click **OK** to add a reference to the **GroupDocs.Viewer** library to your project.

{{< alert style="warning" >}}
If your application targets .NET Core / .NET 5+, ensure that your project has all the required dependencies installed. Refer to the following page for details: [GroupDocs.Viewer dependencies](https://www.nuget.org/packages/groupdocs.viewer#dependencies-body-tab).
{{< /alert >}}
