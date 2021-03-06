---
id: how-to-get-the-names-of-the-worksheets
url: viewer/net/how-to-get-the-names-of-the-worksheets
title: Retrieve the names of the worksheets
weight: 2
description: "This article explains how to get names of the worksheets from Excel files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Excel worksheets have names that are used to simplify navigation and make it possible to reference data from other worksheets. When you do create a new workbook in Excel it already has with the name "Sheet1".
I've created three worksheets and left their default names that is shown on the screenshot below.
![](viewer/net/images/how-to-get-the-names-of-the-worksheets.png)

## Retrieving the names of the worksheets

To get the names of the worksheets call [GetViewInfo()](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns an object which contains a list of pages (worksheets). Each page has its name.
The following code sample shows how to get and print out the names of the worksheets (this example can be also found in our [public examples repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/AdvancedUsage/Rendering/RenderingOptionsByDocumentType/RenderingSpreadsheets/GetWorksheetsNames.cs).)

```csharp
using (Viewer viewer = new Viewer("sample.xlsx"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    viewInfoOptions.SpreadsheetOptions = SpreadsheetOptions.ForOnePagePerSheet();

    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

    Console.WriteLine("Worksheets:");
    foreach (Page page in viewInfo.Pages)
    {
        Console.WriteLine($" - Worksheet {page.Number} name '{page.Name}'");
    }
}
```  
  
After running this sample code the names of the worksheets are printed into a console as shown on the screenshot below.
![](viewer/net/images/how-to-get-the-names-of-the-worksheets_1.png)

