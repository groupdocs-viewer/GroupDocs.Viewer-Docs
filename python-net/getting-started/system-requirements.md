---
id: system-requirements
url: viewer/python-net/system-requirements
title: System Requirements
weight: 6
description: "No external software needed! GroupDocs.Viewer for Python via .NET renders files directly."
keywords: file rendering, python, .net, viewer, document rendering, cross-platform, viewer for python
productName: GroupDocs.Viewer for Python via .NET
hideChildren: false
toc: true
---

## General Requirements

- **Python:** Versions **3.5–3.13**  
  Download from the official website: https://www.python.org/downloads/

## Supported Operating Systems

### Linux and macOS

- Supported on **Intel** and **Apple Silicon (M-series)** processors
- Requires additional system libraries for image and font rendering (see below)

### Windows

- **Windows 11** (x64)
- **Windows 10** (x64, x86)
- **Windows 7, 8, 8.1, Vista, XP** (x64, x86)
- **Windows Server 2003 and later**

## Additional System Libraries

### Linux and macOS Requirements

GroupDocs.Viewer for Python via .NET relies on **`libgdiplus`** to process images and documents that contain images.

---

## Linux Installation

On Linux, install the following packages to ensure correct operation.

### System.Drawing.Common Dependencies

1. **libgdiplus** — Mono library providing a GDI+-compatible API on non-Windows systems  
2. **libc6-dev** — Development files for the GNU C Library

### Microsoft Fonts (Recommended for Accurate Text Rendering)

3. **wget** — File download utility  
4. **cabextract** — Microsoft Cabinet file extractor  
5. **xfonts-utils** — X11 font utilities  
6. **ttf-mscorefonts-installer** — Microsoft-compatible core fonts

### Globalization and Cryptography

7. **libicu67** — ICU library (**exact version required**)  
8. **libssl1.1** — OpenSSL library (**exact version required**)

> **Note:**  
> The packages **libicu67** and **libssl1.1** must match the exact versions listed above.  
> If they are unavailable in your distribution’s default repositories, use a Debian snapshot
> repository or install them from alternative sources.

### Installation (Debian-based Distributions)

Use `apt-get` to install all required dependencies:

~~~bash
# Enable contrib repository (required for Microsoft fonts)
sudo sed -i 's/deb \(.*\) main$/deb \1 main contrib/g' /etc/apt/sources.list 2>/dev/null || \
    sudo sed -i 's/Components: main/Components: main contrib/g' /etc/apt/sources.list.d/*.sources 2>/dev/null || true

# Update package list
sudo apt-get update

# Accept Microsoft fonts EULA (non-interactive)
echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | sudo debconf-set-selections

# Install Microsoft fonts
sudo apt-get install -y --no-install-recommends \
    wget \
    cabextract \
    xfonts-utils \
    ttf-mscorefonts-installer

# Install System.Drawing.Common dependencies
sudo apt-get install -y --no-install-recommends \
    libgdiplus \
    libc6-dev

# Install globalization and cryptography dependencies
sudo apt-get install -y --no-install-recommends \
    libicu67 \
    libssl1.1
~~~

> **Tip:**  
> If `libicu67` or `libssl1.1` are missing, you may need a Debian snapshot repository:
>
> ~~~bash
> SNAPSHOT_DATE=20220328T000000Z
> echo "deb [trusted=yes] http://snapshot.debian.org/archive/debian/${SNAPSHOT_DATE} bullseye main" \
>     | sudo tee /etc/apt/sources.list.d/debian-archive.list
> sudo apt-get -o Acquire::Check-Valid-Until=false update
> ~~~

---

## macOS Installation

Install the required library using [Homebrew](https://brew.sh/):

~~~bash
brew install mono-libgdiplus
~~~

Ensure **`libgdiplus`** is installed if you experience issues when rendering images or image-based documents.
