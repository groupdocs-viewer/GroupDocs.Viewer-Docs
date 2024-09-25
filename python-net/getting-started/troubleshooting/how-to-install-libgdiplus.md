---
id: how-to-install-libgdiplus
url: viewer/python-net/how-to-install-libgdiplus
title: How to install libgdiplus library
weight: 2
description: "This article will guide you through the installation of libgdiplus library."
keywords: libgdiplus, library, graphics
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

# Overview
If you're running GroupDocs.Viewer for Python via .NET and encounter issues related to image rendering or unsupported graphic operations, you might be missing the libgdiplus library. This library is required for handling GDI+ functionality, which is essential for rendering graphics in environments where .NET's System.Drawing is used.

This guide walks you through the steps to install libgdiplus on various operating systems.

# Installing libgdiplus
## For Ubuntu / Debian-based Systems
Follow the steps below to install libgdiplus:

Update package list:
```bash
sudo apt-get update
```
Install libgdiplus:

```bash

sudo apt-get install -y libgdiplus
```
Create a symlink (required for compatibility):

```bash
sudo ln -s libgdiplus.so /usr/lib/libgdiplus.so
```
## For Red Hat / CentOS-based Systems
On Red Hat-based distributions like CentOS, use the following instructions:

Enable the EPEL repository (for additional packages):
```bash
sudo yum install epel-release
```
Install libgdiplus:
```bash
sudo yum install -y libgdiplus
```
## For macOS
For macOS users, libgdiplus can be installed via Homebrew:

Install Homebrew (if not installed):
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install libgdiplus:
```bash
brew install mono-libgdiplus
```
## For Windows
On Windows, you usually do not need libgdiplus, as GDI+ functionality is built-in with Windows. However, if you encounter any graphics-related issues, ensure that your .NET runtime and System.Drawing.Common libraries are correctly installed and up-to-date.

Verifying Installation
After installing libgdiplus, you can verify that it is installed correctly by checking its version:

```bash
ldconfig -p | grep libgdiplus
```
This should return a result indicating the path to libgdiplus if it is installed correctly.

### Common Issues  
*   Issue: "Cannot find libgdiplus.so"  
    *   Solution: Ensure the symbolic link /usr/lib/libgdiplus.so exists. Re-run the ln -s command mentioned above.  
*   Issue: "System.Drawing.Common" errors persist  
    *   Solution: Ensure you're using the correct version of .NET and that System.Drawing.Common is referenced in your project.