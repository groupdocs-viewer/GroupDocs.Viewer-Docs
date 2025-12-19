---
id: installation
url: viewer/python-net/installation
title: Install GroupDocs.Viewer for Python via .NET
linkTitle: Installation
weight: 1
keywords: groupdocs-viewer, python, pip, viewer, installation, wheel file, .net
description: "Install GroupDocs.Viewer for Python via pip or download assemblies from the official website."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

## Install Package from PyPI

PyPI (Python Package Index) is a repository of software packages for the Python programming language. Visit the [groupdocs-viewer-net](https://pypi.org/project/groupdocs-viewer-net/) package page for more details. 

### Installing the Package

To install the package, open a terminal and run the following command:

{{< tabs "example1">}}
{{< tab "Linux" >}}
```bash
python3 -m pip install groupdocs-viewer-net
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
python3 -m pip install groupdocs-viewer-net
```
{{< /tab >}}
{{< tab "Windows" >}}
```ps
py -m pip install groupdocs-viewer-net
```
{{< /tab >}}
{{< /tabs >}}

When running the command on Windows, you can expect the following output:

```bash
Collecting groupdocs-viewer-net
  Downloading groupdocs_viewer_net-*25.12-py3-none-win_amd64*.whl.metadata (6.8 kB)
  Downloading groupdocs_viewer_net-25.12-py3-none-win_amd64.whl (193.3 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 193.3/193.3 MB 2.8 MB/s eta 0:00:00
Installing collected packages: groupdocs-viewer-net
Successfully installed groupdocs-viewer-net-25.12
``` 

### Adding the Package to `requirements.txt`

You can add the dependency to your `requirements.txt` file by including the following line:

```bash
groupdocs-viewer-net==25.12
```

Then, install the package using the following command:

```bash
pip install -r requirements.txt
```

## Download Package from Official Website

To download the GroupDocs.Viewer package for your operating system, please visit the official [GroupDocs Releases website](https://releases.groupdocs.com/viewer/python-net/). Currently, five OS-specific packages are available:

- **Windows 64-bit:** Package name ends with `amd64.whl`
- **Windows 32-bit:** Package name ends with `win32.whl`
- **Linux 64-bit:** Package name ends with `manylinux1_x86_64`
- **macOS Apple Silicon:** Package name ends with `arm64.whl`
- **macOS Intel Silicon:** Package name ends with `x86_64.whl`

Choose the appropriate package based on your system's architecture.

### Copy Downloaded File

Copy the downloaded file into your project folder.

### Install Package Using Pip

To install package run the command specific to your your operation system. 

{{< tabs "example2">}}
{{< tab "Linux (64-bit)" >}}
```bash
python3 -m pip install groupdocs_viewer_net-25.12-py3-none-manylinux_x86_64.whl
```
{{< /tab >}}
{{< tab "macOS (Apple Silicon)" >}}
```bash
python3 -m pip install groupdocs_viewer_net-25.12-py3-none-macosx_11_0_arm64.whl
```
{{< /tab >}}
{{< tab "macOS (Intel Silicon)" >}}
```bash
python3 -m pip install groupdocs_viewer_net-25.12-py3-none-macosx_10_14_x86_64.whl
```
{{< /tab >}}
{{< tab "Windows (64-bit)" >}}
```ps
py -m pip install groupdocs_viewer_net-25.12-py3-none-win_amd64.whl
```
{{< /tab >}}
{{< tab "Windows (32-bit)" >}}
```ps
py -m pip install groupdocs_viewer_net-25.12-py3-none-win32.whl
```
{{< /tab >}}
{{< /tabs >}}

Expected output:

```bash
Processing groupdocs_viewer_net-25.12-py3-none-*.whl
Installing collected packages: groupdocs-viewer-net
Successfully installed groupdocs-viewer-net-25.12
```
