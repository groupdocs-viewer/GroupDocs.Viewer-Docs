---
id: installation
url: viewer/python-net/installation
title: Installation
linkTitle: Installation
weight: 1
keywords: install, installation, pip, pypi, wheel, whl, Windows, Linux, macOS, Apple Silicon, manylinux, musllinux, requirements.txt, GroupDocs.Viewer, python
description: "Install GroupDocs.Viewer for Python via .NET on Windows, Linux, or macOS — from PyPI or from a pre-downloaded wheel, including Intel and Apple Silicon builds."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/getting-started/installation/
---

{{< alert style="info" >}}
Before installing, check the [System Requirements]({{< ref "viewer/python-net/getting-started/system-requirements.md" >}}) for supported Python versions and platform dependencies.
{{< /alert >}}

## Install Package from PyPI

The library is published on [PyPI](https://pypi.org/project/groupdocs-viewer-net/) as **`groupdocs-viewer-net`**. `pip` automatically selects the right platform-specific wheel for your system. Each wheel is self-contained: it bundles the .NET runtime and every managed dependency, so no Microsoft Office, Adobe Acrobat or separate .NET install is required. `pip` also installs `groupdocs-shared-net`, a small package that holds the `groupdocs.pydrawing` and `groupdocs.pycore` modules every GroupDocs product shares. Installing needs pip 20.3 or later.

### Install the Latest Version

{{< tabs "install-pypi">}}
{{< tab "Windows" >}}
```ps
py -m pip install groupdocs-viewer-net
```
{{< /tab >}}
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
{{< /tabs >}}

You should see output similar to:

```text
Collecting groupdocs-viewer-net
  Downloading groupdocs_viewer_net-26.11.0-py3-none-win_amd64.whl (172.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 172.2/172.2 MB 2.8 MB/s
Collecting groupdocs-shared-net>=26.11.0 (from groupdocs-viewer-net)
  Downloading groupdocs_shared_net-26.11.0-py3-none-any.whl (12 kB)
Installing collected packages: groupdocs-shared-net, groupdocs-viewer-net
Successfully installed groupdocs-shared-net-26.11.0 groupdocs-viewer-net-26.11.0
```

The Linux and macOS wheels are larger, 185-190 MB.

The exact wheel name depends on your OS and CPU architecture — see the [wheel-suffix table]({{< ref "viewer/python-net/getting-started/system-requirements.md#package-manager" >}}) in System Requirements for the complete list.

## Add the Package to `requirements.txt`

Add the dependency to your project's `requirements.txt`:

```text
groupdocs-viewer-net
```

Then install from the file:

```bash
pip install -r requirements.txt
```

Pin to a specific version if you need reproducible builds — for example, `groupdocs-viewer-net==26.11.0`.

## Install from Pre-Downloaded Wheels

For air-gapped or controlled environments, download the wheel for your platform from the [GroupDocs Releases](https://releases.groupdocs.com/viewer/python-net/) site or the [PyPI release page](https://pypi.org/project/groupdocs-viewer-net/#files), and `groupdocs_shared_net-26.11.0-py3-none-any.whl` from [PyPI](https://pypi.org/project/groupdocs-shared-net/#files) (or with `pip download groupdocs-shared-net==26.11.0` on a machine that can reach it). Four platform-specific wheels are published per release; pick the one that matches your host:

- **Windows x86-64** — `groupdocs_viewer_net-26.11.0-py3-none-win_amd64.whl`
- **Linux x86-64** — `groupdocs_viewer_net-26.11.0-py3-none-manylinux_2_27_x86_64.whl` (glibc 2.27 or newer)
- **macOS Apple Silicon (ARM64)** — `groupdocs_viewer_net-26.11.0-py3-none-macosx_12_0_arm64.whl` (macOS 12 or newer)
- **macOS Intel (x86-64)** — `groupdocs_viewer_net-26.11.0-py3-none-macosx_12_0_x86_64.whl` (macOS 12 or newer)

Since 26.9 the file names state the oldest system each wheel runs on, so pip 20.3 or newer refuses an older one up front instead of installing a runtime that cannot start. Wheels up to 26.5 were tagged `manylinux1_x86_64`, `macosx_10_14_x86_64` and `macosx_11_0_arm64`.

Put both wheels into one folder, for example `wheels`, and install from it without contacting PyPI:

{{< tabs "install-wheel">}}
{{< tab "Windows (64-bit)" >}}
```ps
py -m pip install --no-index --find-links ./wheels groupdocs-viewer-net
```
{{< /tab >}}
{{< tab "Linux (glibc)" >}}
```bash
python3 -m pip install --no-index --find-links ./wheels groupdocs-viewer-net
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
python3 -m pip install --no-index --find-links ./wheels groupdocs-viewer-net
```
{{< /tab >}}
{{< /tabs >}}

Expected output:

```text
Looking in links: ./wheels
Processing ./wheels/groupdocs_viewer_net-26.11.0-py3-none-manylinux_2_27_x86_64.whl
Processing ./wheels/groupdocs_shared_net-26.11.0-py3-none-any.whl (from groupdocs-viewer-net)
Installing collected packages: groupdocs-shared-net, groupdocs-viewer-net
Successfully installed groupdocs-shared-net-26.11.0 groupdocs-viewer-net-26.11.0
```

Installing the product wheel alone, without `groupdocs_shared_net`, makes pip look for it on PyPI.

## Next Steps

- [Hello, World!]({{< ref "viewer/python-net/getting-started/hello-world.md" >}}) -- render your first document.
- [Quick Start Guide]({{< ref "viewer/python-net/getting-started/quick-start-guide" >}}) -- render a document to HTML, PDF, and PNG in five minutes.
- [View documents in the browser]({{< ref "viewer/python-net/getting-started/view-documents-in-the-browser.md" >}}) -- open a document or a folder with the `groupdocs-viewer` command.
- [How to Run Examples]({{< ref "viewer/python-net/getting-started/how-to-run-examples" >}}) -- clone the runnable examples repository and execute every documented scenario.
- [Agents and LLMs]({{< ref "viewer/python-net/agents-and-llm-integration" >}}) -- use GroupDocs.Viewer with AI coding assistants through the MCP server and the package-bundled `AGENTS.md`.
