---
id: groupdocs-viewer-for-net-23-5-release-notes
url: viewer/net/groupdocs-viewer-for-net-23-5-release-notes
title: GroupDocs.Viewer for .NET 23.5 Release Notes
weight: 110
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 23.5"
keywords: release notes, groupdocs.viewer, .net, 23.5
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are -???- features and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET&#8209;4312|Feature|[Option to disable print](#option-to-disable-print)|
|VIEWERNET&#8209;4280|Feature|[Check if license file exists in the application folder](#check-if-license-file-exists-in-the-application-folder)|


## Major Features

This release includes two features:

* [Option to disable print](#option-to-disable-print)
* [Check if license file exists in the application folder](#check-if-license-file-exists-in-the-application-folder)

### Option to disable print

[GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI) Print button now can be disabled optionally from backend.

{{< tabs "Disable print">}}
{{< tab "From API" >}}
```cs
/// Implement the service 
public class MyUIConfigProvider : IUIConfigProvider
    {
        public void ConfigureUI(Config config)
        {
            config.DisablePrint(); // use this function to disable print on UI
        }
    }
	
...

// and register it
services.AddTransient<IUIConfigProvider, MyUIConfigProvider>(); 
{{</ tab >}}
{{</ tabs >}}

### Check if license file exists in the application folder

[GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI) check of license file in the application folder added.

Current sequence of checks

* check license file path
* check path from GROUPDOCS_LIC_PATH environment variable
* check app root folder for files with file names
   - GroupDocs.Viewer.lic
   - GroupDocs.Viewer.Product.Family.lic
