---
id: groupdocs-viewer-for-net-21-11-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-11-release-notes
title: GroupDocs.Viewer for .NET 21.11 Release Notes
weight: 99
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.11"
keywords: release notes, groupdocs.viewer, .net, 21.11
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.11{{< /alert >}}

## Major Features

There are 19 features, improvements, and bug-fixes in this release, most notable are:

* Set resolution for images in presentations that are rendered to HTML
* Add support of rendering QR-codes in Word files
* Add cancellation token support for CAD documents on save
* Try to open files with Excel extension as TSV/CSV
* Links now working when rendering CHM files to HTML

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-3681|Add support of rendering QR-codes in Word files|Feature|
|VIEWERNET-3689|Set resolution for images in presentations that are rendered to HTML|Feature|
|VIEWERNET-3672|Add cancellation token support for CAD documents on save|Improvement
|VIEWERNET-3694|Try to open files with Excel extension as TSV/CSV |Improvement
|VIEWERNET-3728|Remove duplicate Action and Func delegates for .NET Framework 4 and .NET Standard 2.0 assemblies|Improvement|
|VIEWERNET-2867|"Could not load file. File is corrupted or damaged." exception when rendering HPG file|Bug|
|VIEWERNET-2920|Try to autodetect file format and open file when file extension is wrong|Bug|
|VIEWERNET-2986|Links are broken when rendering CHM files to HTML|Bug|
|VIEWERNET-3187|"Failed to render CAD document into PDF." exception when rendering DWG file"|Bug|
|VIEWERNET-3223|Viewer - html files with erroneous css class|Bug|
|VIEWERNET-3405|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-3421|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-3453|Watermark text size issue with pdf in DotNet through Viewer API|Bug|
|VIEWERNET-3596|"CAD document rendering failed.Please check that CadOptions sizing options do not have too low or too high values."exception when rendering DWF file|Bug|
|VIEWERNET-3675|For VSSX-file it is not generating cache HTML-file for the second page.|Bug|
|VIEWERNET-3680|Exception of type 'System.Exception' was thrown when rendering PDF in .NET 6 app|Bug|
|VIEWERNET-3730|Exception when opening particular EPS file|Bug|
|VIEWERNET-3731|Missing text when rendering PS into PDF|Bug|
|VIEWERNET-3732|Errors while extracting a text from PDF|Bug|

### Behavior changes

Since GroupDocs.Viewer 21.11 version if the file extension is wrong, GroupDocs.Viewer will try to detect the actual format and render the file.
Since GroupDocs.Viewer 21.11 version you can set a resolution for images inside presentations when rendering to HTML:

```cs
 using (Viewer viewer = new Viewer("presentation.pptx"))
 {
      HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("result_{0}.html");
      htmlViewOptions.PresentationOptions.Resolution = Resolution.Dpi72;

      viewer.View(options);
 }
```

Read more in the following help topic: [Specify image resolution]({{< ref "viewer/net/rendering-basics/render-presentations.md">}}).

## Public API Changes

### GroupDocs.Viewer.Common namespace

Removed duplicate delegates in .NET 2.0 assembly from `GroupDocs.Viewer.Common` namespace:

* `public delegate void Action();`
* `public delegate void Action<in T1>(T1 arg1);`

Removed duplicate delegates in .NET Framework 4 and .NET Standard 2.0 assemblies from `GroupDocs.Viewer.Common` namespace

* `public delegate void Action();`
* `public delegate void Action<in T1, in T2>(T1 arg1, T2 arg2);`
* `public delegate void Action<in T1, in T2, in T3>(T1 arg1, T2 arg2, T3 arg3);`
* `public delegate TResult Func<out TResult>();`
* `public delegate TResult Func<in T, out TResult>(T arg);`
* `public delegate TResult Func<in T1, in T2, out TResult>(T1 arg1, T2 arg2);`
* `public delegate TResult Func<in T1, in T2, in T3, out TResult>(T1 arg1, T2 arg2, T3 arg3);`
* `public delegate TResult Func<in T1, in T2, in T3, in T4, out TResult>(T1 arg1, T2 arg2, T3 arg3, T4 arg4);`

### GroupDocs.Viewer.Options.BaseViewOptions class

Added new `PresentationOptions` property.

```cs
/// <summary>
/// The presentation processing documents view options.
/// </summary>
public PresentationOptions PresentationOptions { get; set; } = new PresentationOptions();
```

### GroupDocs.Viewer.Options namespace

Added new [GroupDocs.Viewer.Options.PresentationOptions](<https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/presentationoptions>) and
[GroupDocs.Viewer.Options.Resolution](<https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/resolution>) classes.

```cs
/// <summary>
/// Provides options for rendering presentations options.
/// </summary>
public class PresentationOptions
{
    /// <summary>
    /// Resolution for images inside presentation (for to HTML/PDF rendering only).
    /// </summary>
    public Resolution Resolution { get; set; } = Resolution.DocumentResolution;
}

/// <summary>
/// Provides option to set resolution for images in output document.
/// </summary>
public class Resolution
{
    /// <summary>
    /// Good quality for high-definition (HD) displays.
    /// </summary>
    public static readonly Resolution Dpi330 = new Resolution(330);

    /// <summary>
    /// Excellent quality on most printers and screens.
    /// </summary>
    public static readonly Resolution Dpi220 = new Resolution(220);

    /// <summary>
    /// Good for web pages and projectors.
    /// </summary>
    public static readonly Resolution Dpi150 = new Resolution(150);

    /// <summary>
    /// Good for web pages and projectors.
    /// </summary>
    public static readonly Resolution Dpi96 = new Resolution(96);

    /// <summary>
    ///  Default compression level.
    /// </summary>
    public static readonly Resolution Dpi72 = new Resolution(72);

    /// <summary>
    ///  Default compression level - as in the document.
    /// </summary>
    public static readonly Resolution DocumentResolution = new Resolution(0);

    /// <summary>
    /// Quality DPI.
    /// </summary>
    public int Value { get; private set; }

    /// <summary>
    /// Create resolution in DPI.
    /// </summary>
    /// <param name="value">Resolution in DPI.</param>
    public Resolution(int value)
    {
        Value = value;
    }
}
```
