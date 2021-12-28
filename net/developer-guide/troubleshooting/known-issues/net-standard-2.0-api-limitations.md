---
id: net-standard-2-0-api-limitations
url: viewer/net/net-standard-2-0-api-limitations
title: .NET Standard 2.0 API Limitations
weight: 1
description: "This article is about the limitations of .NET Standard 2.0 compared to .NET API or GroupDocs.Viewer."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
There are a couple of additional dependencies that should be installed when running on Linux:

1. Fonts - because of the lack of Windows fonts in Linux fonts used in documents are substituted with available fonts, this might lead to inaccurate document layout when rendering the document to PNG, JPG, and PDF.

2. SkiaSharp - [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies/) is required since GroupDocs.Viewer depends on [SkiaSharp](https://github.com/mono/SkiaSharp) graphics library

3. System.Drawing dependencies - `libc6-dev`, `libgdiplus`, and `libx11-dev`

## How to install the dependencies

To install packages on Debian-based Linux distributions use [apt-get](https://wiki.debian.org/apt-get) utility:

1. Windows Fonts - `sudo apt-get install ttf-mscorefonts-installer`

2. SkiaSharp - `dotnet add package SkiaSharp.NativeAssets.Linux.NoDependencies --version 2.80.2`.

    _Make sure to install the same version of this package as version of `SkiaSharp` library that GroupDocs.Viewer depends on. You can find the exact version number at the `Dependencies` tab at [GroupDocs.Viewer](https://www.nuget.org/packages/groupdocs.viewer) NuGet page._

3. System.Drawing dependencies - `sudo apt-get install libc6-dev libgdiplus libx11-dev`
