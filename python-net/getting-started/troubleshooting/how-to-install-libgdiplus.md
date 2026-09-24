---
id: how-to-install-libgdiplus
url: viewer/python-net/how-to-install-libgdiplus
title: Do I need libgdiplus?
weight: 2
description: "GroupDocs.Viewer for Python via .NET does not need libgdiplus on Linux or macOS since version 26.9. What to do if a libgdiplus error still appears."
keywords: libgdiplus, mono-libgdiplus, GroupDocs.Viewer, GDI+, System.Drawing, Linux, macOS, Docker
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

**No.** Since version 26.9, GroupDocs.Viewer for Python via .NET does not need `libgdiplus` on Linux or `mono-libgdiplus` on macOS. The Linux and macOS packages render through SkiaSharp and Aspose.Drawing, which ship inside the wheel. Every documented example passes in a Linux container with no `libgdiplus` installed.

If an older version of this guide, a Dockerfile, or a CI script installs `libgdiplus` for GroupDocs.Viewer, you can remove it. The packages that *are* required on Linux are fonts, `fontconfig` and ICU — see [System Requirements]({{< ref "viewer/python-net/getting-started/system-requirements.md" >}}).

Windows never needed `libgdiplus`: GDI+ is part of the operating system.

## If a libgdiplus error still appears

An error such as `DllNotFoundException: Unable to load shared library 'libgdiplus'` or `The type initializer for 'Gdip' threw an exception` is not expected with 26.9 or later. Check that you are running a current version:

```bash
python -c "import groupdocs.viewer as gv; print(gv.__version__)"
```

If you are on 26.9 or later and still see the error, install the library as a workaround and [report the document](https://forum.groupdocs.com/c/viewer/) that triggered it, so the rendering path can be fixed:

**Debian / Ubuntu**

```bash
sudo apt-get update
sudo apt-get install -y libgdiplus
```

**Red Hat / CentOS / Rocky** (from the EPEL repository)

```bash
sudo yum install -y epel-release
sudo yum install -y libgdiplus
```

**macOS**

```bash
brew install mono-libgdiplus
```

To confirm that the library is visible to the loader on Linux:

```bash
ldconfig -p | grep libgdiplus
```
