---
id: system-requirements
url: viewer/net/system-requirements
title: System requirements
weight: 3
description: "GroupDocs.Viewer for .NET does not require any external software to be installed such as Microsoft Word, Microsoft Excel or Microsoft PowerPoint for file rendering."
keywords: file rendering
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
{{< alert style="info" >}}

GroupDocs.Viewer for .NET does not require any external software to be installed such as Microsoft Word, Microsoft Excel or Microsoft PowerPoint. To install GroupDocs.Viewer for .NET, follow one of the methods described in the [Installation]({{< ref "installation" >}}) section.

{{< /alert >}}

## Supported Operating Systems

GroupDocs.Viewer for .NET can be used on any 32-bit or 64-bit operating system where .NET Framework 4.6.2 and later or .NET 6 and later is installed including, but not limited to:

### Windows

**.NET Framework (`net462`)** can be used on:

* Microsoft Windows Server 2003 and later
* Microsoft Windows XP (x64, x86)
* Microsoft Windows Vista (x64, x86)
* Microsoft Windows 7, 8, 8.1 (x64, x86)
* Microsoft Windows 10 (x64, x86)
* Microsoft Windows 11 (x64)

**.NET 6 and later (`net6.0` and `net6.0-windows`)** can be used on x86, x64, and (for `net6.0-windows`) ARM64 Microsoft Windows versions that support .NET 6.0:

* Microsoft Windows 7 SP1
* Microsoft Windows 8.1
* Microsoft Windows 10 Version 1607+
* Microsoft Windows 11 Version 22000+
* Microsoft Windows Server 2012+
* Microsoft Windows Server Core 2012+
* Microsoft Nano Server Version 1809+

To render on Windows ARM64, target `net6.0-windows` so that [GroupDocs.Viewer.Net60.Windows](https://www.nuget.org/packages/GroupDocs.Viewer.Net60.Windows) is restored.

### Linux

* Linux (Ubuntu, OpenSUSE, CentOS, and others) on x64 and ARM64

Target `net6.0` so that [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60) is restored. This runtime does not depend on `System.Drawing.Common`.

### Mac

GroupDocs.Viewer for .NET supports macOS (x64 and ARM64). Target `net6.0` so that [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60) is restored.

## Supported Frameworks and Target Runtimes

Starting with [version 26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/), **GroupDocs.Viewer** is a TFM-split metapackage. The current version supports .NET Framework 4.6.2 and above, .NET 6 and above, and .NET 6 Windows (`net6.0-windows`). NuGet restores [GroupDocs.Viewer.Net462](https://www.nuget.org/packages/GroupDocs.Viewer.Net462), [GroupDocs.Viewer.Net60](https://www.nuget.org/packages/GroupDocs.Viewer.Net60), or [GroupDocs.Viewer.Net60.Windows](https://www.nuget.org/packages/GroupDocs.Viewer.Net60.Windows) depending on the project's target framework. See [Installation]({{< ref "installation" >}}) for details.

Older versions of GroupDocs.Viewer for .NET also supported older .NET Frameworks: .NET Framework 2.0 and 3.5 support was dropped since v22.3, and .NET Framework 4.0 - 4.6.0 was dropped since v23.8.

## Development Environments

GroupDocs.Viewer for .NET can be used to develop applications in any development environment that targets .NET, but the following environments are explicitly supported:

* Microsoft Visual Studio 2010 and later
* Microsoft Visual Studio for Mac
* Rider from JetBrains

## Required fonts

When working with the documents that contain the Chinese characters, in order to obtain the valid rendering results without exceptions or replacement characters (usually represented as empty squares) in the produced documents, it is required that a [SimSun](https://learn.microsoft.com/en-us/typography/font-list/simsun) font should be installed in the operating system.

When using Microsoft Windows this should not be the problem, because the SimSun is preinstalled in all the Windows versions and editions starting from the Windows 2000 (for example, Windows XP has preinstalled SimSun version 3.03, Windows 7 has preinstalled SimSun version [5.03](https://learn.microsoft.com/en-us/typography/fonts/windows_7_font_list), and Windows 10 — SimSun version [5.16](https://learn.microsoft.com/en-us/typography/fonts/windows_10_font_list)). But on Linux the SimSun is usually not installed, so it is required to install it manually. This also is valid when running GroupDocs.Viewer in Docker environment and using a Linux image.