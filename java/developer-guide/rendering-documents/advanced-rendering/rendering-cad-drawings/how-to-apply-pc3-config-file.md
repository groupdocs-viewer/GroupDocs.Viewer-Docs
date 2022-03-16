---
id: how-to-apply-pc3-config-file
url: viewer/java/how-to-apply-pc3-config-file
title: How to apply PC3 config file when rendering CAD formats
weight: 9
description: "This article explains how to apply PC3 files with GroupDocs.Viewer within your Java applications."
keywords: pc3 file plotter configuration
productName: GroupDocs.Viewer for Java
hideChildren: False
---

From 21.11 version you can apply PC3 file configuration. PC3 file is "Plotter Configuration Version 3" – contains settings for a particular plotter, GroupDocs.Viewer can apply width/height of page from PC3 file.
To apply PC3 file, please use the following code:

```java
    try (Viewer viewer = new Viewer("sample.dwg")) {
        PngViewOptions options = new PngViewOptions("result.png");
        options.getCadOptions().setPc3File("small_page.pc3");

        viewer.view(options);
    }
```

## PC3 files location

By default, the PC3 files of an Autocad installation will be saved at: \
C:\\Users\\%User Name%\\AppData\\Roaming\\Autodesk\\AutoCAD [Version]\\[Version Code]\\[Language]\\Plotters
For example, for an English version of Autocad 2021 it would be:
C:\\Users\\%UserName%\\AppData\\Roaming\\Autodesk\\AutoCAD 2021\\R24.0\\enu\\Plotters
