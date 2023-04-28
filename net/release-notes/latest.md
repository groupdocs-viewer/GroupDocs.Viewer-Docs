---
id: groupdocs-viewer-for-net-latest-release-notes
url: viewer/net/groupdocs-viewer-for-net-latest-release-notes
title: Latest release (April 2023)
weight: 0
description: "Changes that shipped in the latest version of GroupDocs.Viewer for .NET"
keywords: release notes, groupdocs.viewer for .net, latest
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are 9 features and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET&#8209;4212|Feature|[Support for setting margins when exporting Excel Spreadsheets to PDF](#option-to-use-margins-when-convert-excel-workbook-to-pdf)|
|VIEWERNET&#8209;4312|Feature|[[GroupDocs.Viewer.UI] Option to disable print](#option-to-disable-print)|
|VIEWERNET&#8209;4280|Feature|[[GroupDocs.Viewer.UI] Check if license file exists in the application folder](#check-if-license-file-exists-in-the-application-folder)|
|VIEWERNET&#8209;4324|Fix|Links are covered after rendering|
|VIEWERNET&#8209;4322|Fix|AI file can't be opened in .NET project|
|VIEWERNET&#8209;4318|Fix|PPTX showing headers when ExcludeFonts|
|VIEWERNET&#8209;4319|Fix|Viewer fails to open DIB file|
|VIEWERNET&#8209;4328|Fix|OneNote embedded drawing is missing|
|VIEWERNET&#8209;4247|Fix|Could not load System.Drawing.Common assembly in VB.NET project|

## Major Features

This release includes three features:

* [Support for setting margins when exporting Excel Spreadsheets to PDF](#option-to-use-margins-when-convert-excel-workbook-to-pdf)
* [Option to disable print](#option-to-disable-print)
* [Check if license file exists in the application folder](#check-if-license-file-exists-in-the-application-folder)


### Option to disable print

[GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI) Print button now can be disabled optionally from backend.

{{< tabs "Disable print">}}
{{< tab "C#" >}}
```cs
/// Implement the service 
class MyUIConfigProvider : IUIConfigProvider
{
    public void ConfigureUI(Config config)
    {
        config.DisablePrint(); // use this function to disable print on UI
    }
}
	
...

// and register it
services.AddTransient<IUIConfigProvider, MyUIConfigProvider>(); 
```
{{</ tab >}}
{{</ tabs >}}


### Check if license file exists in the application folder

[GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI) Check of license file in the application folder added.

Current sequence of checks:

* check license file path
* check path from `GROUPDOCS_LIC_PATH` environment variable
* check app root folder for files with file names
   - `GroupDocs.Viewer.lic`
   - `GroupDocs.Viewer.Product.Family.lic`
   
### Option to use margins when convert excel workbook to pdf 

If convert from excel workbook to the Pdf now optional margins can be applied to the output pages. If margin value is less than 0 or not set
then it will be set to the default value.

{{< tabs "Use optional margins">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    var viewOptions = new PdfViewOptions();

    // Set margins for worksheets in the output pdf pages
    viewOptions.SpreadsheetOptions.LeftMargin = 0;
    viewOptions.SpreadsheetOptions.RightMargin = 0.5;
    viewOptions.SpreadsheetOptions.TopMargin = 1;
    viewOptions.SpreadsheetOptions.BottomMargin = -10; // set to default value

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}