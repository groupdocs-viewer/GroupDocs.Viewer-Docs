---
id: net-standard-2-0-api-limitations
url: viewer/net/net-standard-2-0-api-limitations
title: .NET Standard 2.0 API Limitations
weight: 1
description: "GroupDocs.Viewer for .NET Linux Docker Dependencies."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When running on Linux, install the following additional dependencies:

1. Windows Fonts.  Due to the lack of Windows fonts in Linux, GroupDocs.Viewer replaces document fonts with available ones. This can result in incorrect document layout when rendering to JPG, PNG, and PDF.

2. SkiaSharp Native Assets.  Install [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies/) 2.80.2 or later.

3. System.Drawing dependencies - `libgdiplus` 6.0.1 or higher.
    {{< alert style="warning" >}} To install the latest version of `libgdiplus`, add the Mono repository to your system. See more at <https://www.mono-project.com/download/stable/#download-lin>.{{</alert>}}

## How to install the dependencies

To install packages on Debian (Buster) based Linux distributions, use the [apt-get](https://wiki.debian.org/apt-get) utility:

1. Windows Fonts:

    ```sh
     apt-get update
     apt-get install -y libfontconfig1
     apt-get install -y ttf-mscorefonts-installer
    ```

2. SkiaSharp - add package to your project:

     ```sh
     dotnet add package SkiaSharp.NativeAssets.Linux.NoDependencies --version 2.80.3
     ```

3. System.Drawing dependencies:

    ```bash
    apt-get update
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
    echo "deb https://download.mono-project.com/repo/ubuntu stable-buster main" >> /etc/apt/sources.list.d/mono-official-stable.list
    
    apt-get update
    apt-get install -y gnupg
    apt-get install -y libgdiplus
    ```