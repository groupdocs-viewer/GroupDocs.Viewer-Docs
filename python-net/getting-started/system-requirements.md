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

- Windows 10 (x64)
- Windows 11 (x64)
- Windows Server 2016 and later (x64)

### Linux

- Any **x86-64** distribution with **glibc 2.27 or newer** — for example Ubuntu 20.04+, Debian 11+, RHEL 8+. The embedded .NET runtime links against glibc 2.27, and the wheel's `manylinux_2_27_x86_64` tag says so, so pip refuses an older system.

### macOS

- macOS 12 (Monterey) and later. Every binary of the embedded .NET runtime requires macOS 12, and the wheels are tagged `macosx_12_0_*` accordingly.
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
| Linux x86-64 | `manylinux_2_27_x86_64` |
| macOS Apple Silicon (ARM64) | `macosx_12_0_arm64` |
| macOS Intel (x86-64) | `macosx_12_0_x86_64` |

`pip` 20.3 or newer automatically picks the right wheel for your platform; older versions do not recognise these tags, so upgrade with `python -m pip install --upgrade pip`. On an Intel Mac, a Python built against a pre-11 macOS SDK reports its system as macOS 10.16 — there use pip 24.1 or newer, or run `SYSTEM_VERSION_COMPAT=0 pip install groupdocs-viewer-net`.

## Platform Dependencies

{{< alert style="info" >}}
**`libgdiplus` is not required.** Since version 26.9 the Linux and macOS packages render through SkiaSharp and Aspose.Drawing, which ship inside the wheel, and never call `libgdiplus` — every documented example passes in a Linux container without it. If an existing image or script installs `libgdiplus` or `mono-libgdiplus` for GroupDocs.Viewer, you can remove it. See [Do I need libgdiplus?]({{< ref "viewer/python-net/getting-started/troubleshooting/how-to-install-libgdiplus.md" >}}).
{{< /alert >}}

### Linux

The rendering engine needs ICU, `fontconfig` and fonts:

```bash
# Debian / Ubuntu — on Debian, enable the "contrib" component first for ttf-mscorefonts-installer
sudo apt install libicu-dev fontconfig ttf-mscorefonts-installer
sudo fc-cache -f

# Fedora / RHEL / Rocky
sudo dnf install libicu fontconfig
```

- **The Microsoft core fonts are required for MS Project files** (MPP, MPT, MPX). Without them rendering fails with `Cannot find fallback font 'Generic Sans Serif'`; metric-compatible substitutes such as Liberation do not satisfy that lookup. They are also the fonts most Word, Excel and PowerPoint documents are laid out with, so they give the most faithful rendering overall. Fedora / RHEL do not package them — install the TrueType files separately into `/usr/share/fonts` and run `fc-cache -f`.
- Every other format renders with any TrueType fonts; `fonts-liberation` and `fonts-dejavu` are good free choices. With no fonts at all, text rendering fails.
- Do not set `DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1` — the engine needs ICU.

If your distribution's ICU or OpenSSL versions differ from what the bundled runtime expects, install both and point the runtime at them — no exact version is required.

### macOS

No additional packages are required.

If you see a `DllNotFoundException: libSkiaSharp` error, a stale system copy is shadowing the bundled library. Rename it out of the way:

```bash
sudo mv /usr/local/lib/libSkiaSharp.dylib /usr/local/lib/libSkiaSharp.dylib.bak
```

### Windows

No additional system libraries are required.
