---
id: system-requirements
url: viewer/net/system-requirements
title: System requirements
weight: 3
description: "Supported .NET versions, runtime packages, operating systems, and Linux dependencies of GroupDocs.Viewer for .NET. No Microsoft Office or other external software is required for file rendering."
keywords: file rendering, system requirements, .NET Framework 4.6.2, .NET 6, .NET 8, .NET 10, Windows, Linux, macOS, ARM64
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
{{< alert style="info" >}}

GroupDocs.Viewer for .NET does not require any external software to be installed such as Microsoft Word, Microsoft Excel or Microsoft PowerPoint. To install GroupDocs.Viewer for .NET, follow one of the methods described in the [Installation]({{< ref "installation" >}}) section.

{{< /alert >}}

## Supported Frameworks and Target Runtimes

GroupDocs.Viewer for .NET supports .NET Framework 4.6.2 and later and .NET 6 and later. Starting with [version 26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/), **GroupDocs.Viewer** is a TFM-split metapackage: NuGet restores the runtime package that matches the project's target framework. [Version 26.10](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-10-release-notes/) adds runtime packages for .NET 8 and .NET 10:

| Target framework | Runtime package | Operating systems and architectures |
| --- | --- | --- |
| .NET Framework 4.6.2 and later (`net462` to `net481`) | [GroupDocs.Viewer.Net462](https://www.nuget.org/packages/GroupDocs.Viewer.Net462) | Windows |
| `net6.0`, `net7.0` | [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60) | Windows x64/x86, Linux x64/ARM64, macOS x64/ARM64 |
| `net6.0-windows`, `net7.0-windows` | [GroupDocs.Viewer.Net60.Windows](https://www.nuget.org/packages/GroupDocs.Viewer.Net60.Windows) | Windows, including ARM64 |
| `net8.0`, `net9.0` | [GroupDocs.Viewer.Net80](https://www.nuget.org/packages/GroupDocs.Viewer.Net80) | Windows x64/x86, Linux x64/ARM64, macOS x64/ARM64 |
| `net8.0-windows`, `net9.0-windows` | [GroupDocs.Viewer.Net80.Windows](https://www.nuget.org/packages/GroupDocs.Viewer.Net80.Windows) | Windows, including ARM64 |
| `net10.0` and later | [GroupDocs.Viewer.Net100](https://www.nuget.org/packages/GroupDocs.Viewer.Net100) | Windows x64/x86, Linux x64/ARM64, macOS x64/ARM64 |
| `net10.0-windows` and later | [GroupDocs.Viewer.Net100.Windows](https://www.nuget.org/packages/GroupDocs.Viewer.Net100.Windows) | Windows, including ARM64 |

See [Installation]({{< ref "installation" >}}) for details.

{{< alert style="info" >}}
Photoshop and Illustrator files (PSD, PSB, AI) and OneNote files (ONE) render only with GroupDocs.Viewer.Net462 and the `.Windows` runtime packages. To view these formats, target .NET Framework or a `-windows` target framework, such as `net10.0-windows`. These formats cannot be rendered on Linux and macOS.
{{< /alert >}}

Older versions of GroupDocs.Viewer for .NET also supported older .NET Frameworks: .NET Framework 2.0 and 3.5 support was dropped since v22.3, and .NET Framework 4.0 - 4.6.0 was dropped since v23.8.

## Supported Operating Systems

GroupDocs.Viewer for .NET runs on the operating systems that support your project's target framework, on the architectures listed in the table above.

### Windows

* **.NET Framework 4.6.2 and later**: Windows 7 SP1, 8.1, 10, and 11; Windows Server 2008 SP2, 2008 R2 SP1, and later. See [.NET Framework system requirements](https://learn.microsoft.com/en-us/dotnet/framework/get-started/system-requirements).
* **.NET 6 and later**: the Windows versions that support the target .NET version. See the supported OS lists for [.NET 10](https://github.com/dotnet/core/blob/main/release-notes/10.0/supported-os.md), [.NET 8](https://github.com/dotnet/core/blob/main/release-notes/8.0/supported-os.md), and [.NET 6](https://github.com/dotnet/core/blob/main/release-notes/6.0/supported-os.md).

To render on Windows ARM64, target a `-windows` framework, such as `net10.0-windows`, so that a `.Windows` runtime package is restored.

### Linux

GroupDocs.Viewer for .NET supports the x64 and ARM64 Linux distributions that support the target .NET version (see the supported OS lists for [.NET 10](https://github.com/dotnet/core/blob/main/release-notes/10.0/supported-os.md), [.NET 8](https://github.com/dotnet/core/blob/main/release-notes/8.0/supported-os.md), and [.NET 6](https://github.com/dotnet/core/blob/main/release-notes/6.0/supported-os.md)) and meet these requirements of its native libraries:

* Linux x64 requires glibc 2.23 or later.
* Linux ARM64 requires glibc 2.39 or later, for example Ubuntu 24.04 or later.
* Distributions based on musl, such as Alpine, and distributions with an older glibc, such as CentOS 7, are not supported.

Target a cross-platform framework, such as `net10.0`, so that [GroupDocs.Viewer.Net100](https://www.nuget.org/packages/GroupDocs.Viewer.Net100), [GroupDocs.Viewer.Net80](https://www.nuget.org/packages/GroupDocs.Viewer.Net80), or [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60) is restored. These runtime packages do not depend on `System.Drawing.Common`. Install the packages listed in [Linux dependencies](#linux-dependencies).

### Mac

GroupDocs.Viewer for .NET supports macOS on x64 (Intel) and ARM64 (Apple silicon), in the versions that support the target .NET version. Target a cross-platform framework, such as `net10.0`, so that [GroupDocs.Viewer.Net100](https://www.nuget.org/packages/GroupDocs.Viewer.Net100), [GroupDocs.Viewer.Net80](https://www.nuget.org/packages/GroupDocs.Viewer.Net80), or [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60) is restored.

## Linux dependencies

On Linux, including Docker images, GroupDocs.Viewer needs the following:

* **fontconfig** (`libfontconfig1`). The presentation rendering engine needs it: without it, rendering presentations fails with `TypeInitializationException`.
* **Fonts** that your documents use, for example the Microsoft TrueType core fonts from the `ttf-mscorefonts-installer` package. On Debian, this package is in the `contrib` archive area; on Ubuntu, in `multiverse`. Refresh the font cache with `fc-cache -f` after you install fonts.
* **The Microsoft TrueType core fonts for Microsoft Project files** (MPP, MPT, MPX). Without them, rendering fails with `Cannot find fallback font 'Generic Sans Serif'`; metric-compatible substitutes, such as the Liberation fonts, do not help.
* **ICU**. Do not set the `DOTNET_SYSTEM_GLOBALIZATION_INVARIANT` environment variable.

For example, on Debian or Ubuntu:

```bash
sudo apt-get install -y fontconfig ttf-mscorefonts-installer
sudo fc-cache -f
```

For a container example, see [How to run GroupDocs.Viewer in Docker]({{< ref "how-to-run-in-docker" >}}).

## Development Environments

GroupDocs.Viewer for .NET can be used to develop applications in any development environment that targets .NET, for example:

* Microsoft Visual Studio 2022 and later. Projects that target .NET 8 need Visual Studio 2022 version 17.8 or later, and projects that target .NET 10 need Visual Studio 2026.
* Visual Studio Code with the C# Dev Kit extension
* JetBrains Rider
* The .NET CLI

## Required fonts

When working with the documents that contain the Chinese characters, in order to obtain the valid rendering results without exceptions or replacement characters (usually represented as empty squares) in the produced documents, it is required that a [SimSun](https://learn.microsoft.com/en-us/typography/font-list/simsun) font should be installed in the operating system.

When using Microsoft Windows this should not be the problem, because the SimSun is preinstalled in all the Windows versions and editions starting from the Windows 2000 (for example, Windows XP has preinstalled SimSun version 3.03, Windows 7 has preinstalled SimSun version [5.03](https://learn.microsoft.com/en-us/typography/fonts/windows_7_font_list), and Windows 10 — SimSun version [5.16](https://learn.microsoft.com/en-us/typography/fonts/windows_10_font_list)). But on Linux the SimSun is usually not installed, so it is required to install it manually. This also is valid when running GroupDocs.Viewer in Docker environment and using a Linux image.
