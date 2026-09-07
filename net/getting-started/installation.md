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
This topic describes how to add the **GroupDocs.Viewer** library to your .NET project. You can use a NuGet package to install this library or you can download necessary DLLs from the [GroupDocs website](https://releases.groupdocs.com/viewer/net/).

## Select GroupDocs.Viewer package and version

Starting with [version 26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/), GroupDocs.Viewer is a NuGet [metapackage](https://www.nuget.org/packages/GroupDocs.Viewer) that uses TFM-split packaging. You install one package name; NuGet restores the runtime package that matches your project's target framework:

| Your target framework | Runtime package restored | Runs on |
| --- | --- | --- |
| `.NET Framework 4.6.2` and later | [GroupDocs.Viewer.Net462](https://www.nuget.org/packages/GroupDocs.Viewer.Net462) | Windows |
| `.NET 6.0` or later | [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60) | Windows x64/x86, Linux x64/ARM64, macOS x64/ARM64 |
| `.NET 6.0-windows` or later | [GroupDocs.Viewer.Net60.Windows](https://www.nuget.org/packages/GroupDocs.Viewer.Net60.Windows) | Windows, including ARM64 |

Do not reference the runtime packages directly. Add **GroupDocs.Viewer** to your project, and NuGet selects the correct runtime.

{{< alert style="info" >}}
If you previously used **GroupDocs.Viewer.CrossPlatform**, replace that package reference with **GroupDocs.Viewer**. The assembly name, namespaces, and public API are unchanged, so no code changes are required. As of [26.8](https://www.nuget.org/packages/GroupDocs.Viewer) the CrossPlatform package is deprecated and only forwards to GroupDocs.Viewer.
{{< /alert >}}

You can also use **GroupDocs.Viewer** with **.NET Framework 2.0** (Visual Studio 2005-2008), **.NET Framework 4.0** (Visual Studio 2010), and later .NET Framework versions by selecting one of the previous versions of the GroupDocs.Viewer package. See the complete list of package versions and supported frameworks in the table below.

| Package version | Target frameworks |
| --- | --- |
| [26.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/26.8.0) | .NET Framework 4.6.2, .NET 6.0, .NET 6.0-windows (TFM-split) |
| [26.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/26.4.0) | .NET Framework 4.6.2, .NET 6.0 |
| [25.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.12.0) | .NET Framework 4.6.2, .NET 6.0 |
| [25.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.11.0) | .NET Framework 4.6.2, .NET 6.0 |
| [25.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.9.0)   | .NET Framework 4.6.2, .NET 6.0 |
<details>
<summary>See previous versions</summary>

| Package version | Target frameworks |
| --- | --- |
| [25.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.8.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.7.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.7.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.6.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.5.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.4.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.3.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.2.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.2.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.1.1](https://www.nuget.org/packages/GroupDocs.Viewer/25.1.1)   | .NET Framework 4.6.2, .NET 6.0 |
| [25.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/25.1.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [24.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.12.0) | .NET Framework 4.6.2, .NET 6.0 |
| [24.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.11.0) | .NET Framework 4.6.2, .NET 6.0 |
| [24.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.10.0) | .NET Framework 4.6.2, .NET 6.0 |
| [24.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.9.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [24.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.8.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [24.7.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.7.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [24.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.6.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [24.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.5.0)   | .NET Framework 4.6.2, .NET 6.0 |
| [24.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.4.0) | .NET Framework 4.6.2, .NET 6.0 |
| [24.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.3.0) | .NET Framework 4.6.2, .NET 6.0 |
| [24.2.0](https://www.nuget.org/packages/GroupDocs.Viewer/24.2.0) | .NET Framework 4.6.2, .NET Standard 2.1 |
| [24.1.1](https://www.nuget.org/packages/GroupDocs.Viewer/24.1.1) | .NET Framework 4.6.2, .NET Standard 2.1 |
| [23.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.12.0) | .NET Framework 4.6.2, .NET Standard 2.1 |        
| [23.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.11.0) | .NET Framework 4.6.2, .NET Standard 2.1 |        
| [23.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.10.0) | .NET Framework 4.6.2, .NET Standard 2.1 |        
| [23.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.8.0) | .NET Framework 4.6.2, .NET Standard 2.1 |
| [23.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.6.0) | .NET Framework 4.0, .NET Standard 2.1 |
| [23.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.4.0) | .NET Framework 4.0, .NET Standard 2.1 |
| [23.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.3.0) | .NET Framework 4.0, .NET Standard 2.1 |
| [23.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/23.1.0) | .NET Framework 4.0, .NET Standard 2.1 |
| [22.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/22.11.0) | .NET Framework 4.0, .NET Standard 2.1, .NET 6.0 |
| [22.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/22.9.0) | .NET Framework 4.0, .NET Standard 2.1, .NET 6.0 |  
| [22.7.0](https://www.nuget.org/packages/GroupDocs.Viewer/22.7.0) | .NET Framework 4.0, .NET Standard 2.1, .NET 6.0 |  
| [22.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/22.5.0) | .NET Framework 4.0, .NET Standard 2.1, .NET 6.0 |  
| [22.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/22.3.0) | .NET 6.0, .NET Framework 4.0, .NET Standard 2.1 |  
| [22.1.1](https://www.nuget.org/packages/GroupDocs.Viewer/22.1.1) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [22.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/22.1.0) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [21.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.12.0) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [21.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.11.0) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [21.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.10.0) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [21.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.9.0) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [21.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.8.0) | .NET Framework 2.0, .NET Framework 4.0, .NET Standard 2.0 |
| [21.7.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.7.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.6.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.5.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.4.1](https://www.nuget.org/packages/GroupDocs.Viewer/21.4.1) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.4.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.3.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.2.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.2.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [21.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/21.1.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.12.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.11.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.10.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.9.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.8.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.7.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.7.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.6.1](https://www.nuget.org/packages/GroupDocs.Viewer/20.6.1) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.6.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.5.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.4.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.3.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.2.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.2.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [20.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/20.1.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [19.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.12.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [19.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.11.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [19.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.10.0) | .NET Framework 2.0, .NET Standard 2.0 |
| [19.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.9.0) | .NET Framework 2.0 |
| [19.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.8.0) | .NET Framework 2.0 |
| [19.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.6.0) | .NET Framework 2.0 |
| [19.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.5.0) | .NET Framework 2.0 |
| [19.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.4.0) | .NET Framework 2.0 |
| [19.3.1](https://www.nuget.org/packages/GroupDocs.Viewer/19.3.1) | .NET Framework 2.0 |
| [19.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.3.0) | .NET Framework 2.0 |
| [19.2.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.2.0) | .NET Framework 2.0 |
| [19.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/19.1.0) | .NET Framework 2.0 |
| [18.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.12.0) | .NET Framework 2.0 |
| [18.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.11.0) | .NET Framework 2.0 |
| [18.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.10.0) | .NET Framework 2.0 |
| [18.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.9.0) | .NET Framework 2.0 |
| [18.8.1](https://www.nuget.org/packages/GroupDocs.Viewer/18.8.1) | .NET Framework 2.0 |
| [18.8.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.8.0) | .NET Framework 2.0 |
| [18.7.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.7.0) | .NET Framework 2.0 |
| [18.6.1](https://www.nuget.org/packages/GroupDocs.Viewer/18.6.1) | .NET Framework 2.0 |
| [18.6.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.6.0) | .NET Framework 2.0 |
| [18.5.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.5.0) | .NET Framework 2.0 |
| [18.4.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.4.0) | .NET Framework 2.0 |
| [18.3.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.3.0) | .NET Framework 2.0 |
| [18.1.0](https://www.nuget.org/packages/GroupDocs.Viewer/18.1.0) | .NET Framework 2.0 |
| [17.12.0](https://www.nuget.org/packages/GroupDocs.Viewer/17.12.0) | .NET Framework 2.0 |
| [17.11.0](https://www.nuget.org/packages/GroupDocs.Viewer/17.11.0) | .NET Framework 2.0 |
| [17.10.0](https://www.nuget.org/packages/GroupDocs.Viewer/17.10.0) | .NET Framework 2.0 |
| [17.9.0](https://www.nuget.org/packages/GroupDocs.Viewer/17.9.0) | .NET Framework 2.0 |

</details>

{{< alert style="tip" >}}

.NET Framework provides a high degree of backward compatibility. Applications targeting an earlier supported version of .NET Framework can generally run on later versions. See the Microsoft documentation for [details](https://learn.microsoft.com/en-us/dotnet/framework/migration-guide/version-compatibility).

{{< /alert >}}

## Install GroupDocs.Viewer using NuGet packages

You can use the following tools to install the **GroupDocs.Viewer** NuGet packages: 

 * [NuGet Package Manager](#use-the-nuget-package-manager)
 * [Package Manager Console](#use-the-package-manager-console)
 * [.NET CLI](#use-the-net-cli)

### Use the NuGet Package Manager

{{< alert style="tip" >}}

Some earlier versions of Visual Studio do not include NuGet Package Manager by default. It can be added as an extension from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/).

* [NuGet Package Manager for Visual Studio 2015](https://marketplace.visualstudio.com/items?itemName=NuGetTeam.NuGetPackageManagerforVisualStudio2015)
* [NuGet Package Manager for Visual Studio 2013](https://marketplace.visualstudio.com/items?itemName=NuGetTeam.NuGetPackageManagerforVisualStudio2013)
* [NuGet Package Manager for Visual Studio 2010 and 2012](https://marketplace.visualstudio.com/items?itemName=NuGetTeam.NuGetPackageManager) 

{{< /alert >}}

Open your project or solution in Visual Studio and follow the steps below to install the **GroupDocs.Viewer** package using the NuGet Package Manager:

1. In **Solution Explorer**, right-click your project name and select **Manage NuGet Packages** to display the NuGet Package Manager.

    ![Add NuGet package in Visual Studio](/viewer/net/images/getting-started/installation/manage-nuget-packages.png)

2. Select the **Browse** tab and type **GroupDocs.Viewer** in the search box. Select the latest version of the package and click **Install**.

    ![Install GroupDocs.Viewer NuGet package in Visual Studio](/viewer/net/images/getting-started/installation/install-nuget-package.png)

### Use the Package Manager Console

The [Package Manager Console](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-powershell) uses PowerShell commands to install, update, and remove NuGet packages. Open your project in Visual Studio and click **Tools** -> **NuGet Package Manager** -> **Package Manager Console** to open the console window. Run the following command to install the latest version of the package:

```
PM> Install-Package GroupDocs.Viewer
```

![Use Package Manager Console ](/viewer/net/images/getting-started/installation/package-manager-console.png)

### Use the .NET CLI

You can also use the [.NET CLI tool](https://docs.microsoft.com/en-us/dotnet/core/tools/) to install and update NuGet packages. Open a terminal in your project's folder and execute the following command to install the package:

```
dotnet add package GroupDocs.Viewer
```

## Download GroupDocs.Viewer from the official website

Visit [https://releases.groupdocs.com/viewer/net/](https://releases.groupdocs.com/viewer/net/) and download the **GroupDocs.Viewer** assemblies as a ZIP archive or MSI installer. To reference the downloaded assembly files in your project, do the following:

1. Extract files from the ZIP archive or run the MSI installer to install **GroupDocs.Viewer** to a specific location on your computer.
2. Open your solution or project in Visual Studio.
3. In **Solution Explorer**, right-click the **References** or **Dependencies** node, and select **Add Reference**.

    ![Add project reference in Visual Studio](/viewer/net/images/getting-started/installation/add-project-reference.png)

4. In the **Reference Manager** dialog box, select the **Browse** tab and click **Browse** to locate the _GroupDocs.Viewer.dll_ file for the target framework.

    ![Browse for the GroupDocs.Viewer assembly](/viewer/net/images/getting-started/installation/browse-for-groupdocs-dll.png)

5. Click **OK** to add a reference to the **GroupDocs.Viewer** library to your project.

{{< alert style="warning" >}}
If you reference GroupDocs.Viewer from a ZIP or MSI download instead of NuGet, ensure that your project has all the required dependencies for the target framework. Refer to the following page for details: [GroupDocs.Viewer dependencies](https://www.nuget.org/packages/groupdocs.viewer#dependencies-body-tab).
{{< /alert >}}
