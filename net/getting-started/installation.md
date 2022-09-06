---
id: installation
url: viewer/net/installation
title: Installation
weight: 4
keywords: installation
description: "Installation of GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

{{< alert style="info" >}}

To make sure that your platform is supported you can check [System Requirements]({{< ref "system-requirements" >}}).

{{< /alert >}}

## Install from NuGet

NuGet is the easiest way to download and install GroupDocs.Viewer for .NET. There are ways to install it in your project.

### Install using .NET CLI

[.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/) is a convenient tool for creating, installing dependencies, and publishing your projects. To install GroupDocs.Viewer for .NET using .NET CLI open a terminal in your project's folder and execute:

```powershell
dotnet add package GroupDocs.Viewer
```

### Install via Package Manager GUI

Follow these steps to reference GroupDocs.Viewer using Package Manager GUI:

* Open your project in Visual Studio.
* Click **Project** -> **Manage NuGet Packages...**. You can also access the same option through the Solution Explorer. Right-click the solution or project and select Manage NuGet Packages from the context menu.
* Select **Browse tab** and type **"GroupDocs.Viewer"** in the search text box.
* Click the **Install** button to install the latest version of the API into your project as shown in the following screenshot.  

![](/viewer/net/images/getting-started/installation/install-via-package-manager-gui.png)

### Using Package Manager Console

You can follow the steps below to reference GroupDocs.Viewer for .NET using the Package Manager Console:
* Open your solution/project in Visual Studio.
* Select **Tools** -> **NuGet Package Manager** -> **Package Manager Console** from the menu to open package manager console.
* Type the command "Install-Package GroupDocs.Viewer" and press enter to install the latest release into your application.
* After successful installation, GroupDocs.Viewer will be referenced in your application.

![](/viewer/net/images/getting-started/installation/using-package-manager-console.png)

## Install from official GroupDocs website

You can follow the steps below to reference GroupDocs.Viewer for .NET downloaded from the official [GroupDocs Downloads](https://downloads.groupdocs.com/viewer/net) websitte:

1. Unpack zip archive or follow MSI install wizard instructions.
2. In the Solution Explorer, expand the project node you want to add a reference to.
3. Right-click the **References** node for the project and select **Add Reference** from the menu.
4. In the Add Reference dialog box, select the **.NET** tab (it's usually selected by default).
5. If you have used MSI installer to install GroupDocs.Viewer, you will see GroupDocs.Viewer in the top pane. Select it and then click the **Select** button.
6. If you have downloaded and unpacked the DLL only, click the **Browse** button and locate the GroupDocs.Viewer.dll file.
    You have referenced GroupDocs.Viewer and it should appear in the **SelectedComponents** pane of the dialog box.
7. Click **OK**.
    GroupDocs.Viewer reference appears under the **References** node of the project.
