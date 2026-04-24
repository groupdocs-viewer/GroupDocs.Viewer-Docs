---
id: system-requirements
url: viewer/python-net/getting-started/system-requirements
title: System Requirements
linkTitle: System Requirements
weight: 3
description: "System requirements for GroupDocs.Viewer for Python via .NET — supported operating systems, Python versions, and optional platform dependencies."
keywords: GroupDocs.Viewer for Python via .NET, system requirements, Windows, Linux, macOS, Python 3.5, Python 3.14, libgdiplus, libSkiaSharp
productName: GroupDocs.Viewer for Python via .NET
hideChildren: false
toc: true
aliases:
    - /viewer/python-net/system-requirements/
---

{{< alert style="info" >}}
GroupDocs.Viewer for Python via .NET ships as a self-contained wheel that bundles the .NET runtime it needs. No Microsoft Office, Adobe Acrobat, or Mono install is required.
{{< /alert >}}

## Supported Operating Systems

### Windows

- Windows 10 (x64, x86)
- Windows 11 (x64)
- Windows Server 2016 and later (x64)

### Linux

- Any modern **x86-64** distribution that can install the `manylinux1` wheel — Ubuntu 20.04+, Debian 11+, RHEL 8+, and equivalents.

### macOS

- macOS 11 (Big Sur) and later.
- Both **Intel** (x86_64) and **Apple Silicon** (arm64 / M-series) are supported.

## Python Version

GroupDocs.Viewer for Python via .NET supports every Python release from **3.5** through **3.14**.

| Python | Supported |
|---|:---:|
| 3.5 – 3.10 | ✅ |
| 3.11 | ✅ |
| 3.12 | ✅ |
| 3.13 | ✅ |
| 3.14 | ✅ |

Download Python from the [official website](https://www.python.org/downloads/).

## Package Manager

The library is distributed on [PyPI](https://pypi.org/project/groupdocs-viewer-net/) under the name **`groupdocs-viewer-net`** and ships as four platform-specific wheels per release:

| Platform | Wheel suffix |
|---|---|
| Windows x86-64 | `win_amd64` |
| Linux x86-64 | `manylinux1_x86_64` |
| macOS Apple Silicon (ARM64) | `macosx_11_0_arm64` |
| macOS Intel (x86-64) | `macosx_10_14_x86_64` |

`pip` automatically picks the right wheel for your platform.

## Optional Platform Dependencies

### Linux

GroupDocs.Viewer uses `System.Drawing.Common` for image rendering, which on Linux needs a few system packages. Install them with `apt`, `dnf`, or the equivalent for your distribution:

```bash
# Debian / Ubuntu
sudo apt install libgdiplus libfontconfig1 ttf-mscorefonts-installer
sudo fc-cache -f

# Fedora / RHEL / Rocky
sudo dnf install libgdiplus fontconfig
```

`libgdiplus` provides the GDI+-compatible API used by the rendering engine. `ttf-mscorefonts-installer` (Debian / Ubuntu) supplies the core Microsoft TrueType fonts required to render Word / Excel / PowerPoint documents faithfully.

If your distribution's ICU or OpenSSL versions differ from what the bundled runtime expects, install both and point the runtime at them — no exact version is required.

### macOS

```bash
brew install mono-libgdiplus
```

If you see a `DllNotFoundException: libSkiaSharp` error, a stale system copy is shadowing the bundled library. Rename it out of the way:

```bash
sudo mv /usr/local/lib/libSkiaSharp.dylib /usr/local/lib/libSkiaSharp.dylib.bak
```

### Windows

No additional system libraries are required.
