---
id: installation
url: viewer/python-net/getting-started/installation
title: Installation
linkTitle: Installation
weight: 4
keywords: install, installation, pip, pypi, wheel, whl, Windows, Linux, macOS, Apple Silicon, manylinux, musllinux, requirements.txt, GroupDocs.Viewer, python
description: "Install GroupDocs.Viewer for Python via .NET on Windows, Linux, or macOS — from PyPI or from a pre-downloaded wheel, including Intel and Apple Silicon builds."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/installation/
---

{{< alert style="info" >}}
Before installing, check the [System Requirements]({{< ref "viewer/python-net/getting-started/system-requirements.md" >}}) for supported Python versions and platform dependencies.
{{< /alert >}}

## Install Package from PyPI

The library is published on [PyPI](https://pypi.org/project/groupdocs-viewer-net/) as **`groupdocs-viewer-net`**. `pip` automatically selects the right platform-specific wheel for your system.

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
  Downloading groupdocs_viewer_net-<version>-py3-none-win_amd64.whl.metadata (6.8 kB)
  Downloading groupdocs_viewer_net-<version>-py3-none-win_amd64.whl (193 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 193/193 MB 2.8 MB/s
Installing collected packages: groupdocs-viewer-net
Successfully installed groupdocs-viewer-net-<version>
```

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

Pin to a specific version if you need reproducible builds — for example, `groupdocs-viewer-net==26.4.0`.

## Install from a Pre-Downloaded Wheel

For air-gapped or controlled environments, download the wheel from the [GroupDocs Releases](https://releases.groupdocs.com/viewer/python-net/) site or the [PyPI release page](https://pypi.org/project/groupdocs-viewer-net/#files) and install it directly. Four platform-specific wheels are published per release; pick the one that matches your host:

- **Windows x86-64** — `groupdocs_viewer_net-<version>-py3-none-win_amd64.whl`
- **Linux x86-64** — `groupdocs_viewer_net-<version>-py3-none-manylinux1_x86_64.whl`
- **macOS Apple Silicon (ARM64)** — `groupdocs_viewer_net-<version>-py3-none-macosx_11_0_arm64.whl`
- **macOS Intel (x86-64)** — `groupdocs_viewer_net-<version>-py3-none-macosx_10_14_x86_64.whl`

Copy the downloaded wheel into your project folder and install it with `pip`:

{{< tabs "install-wheel">}}
{{< tab "Windows" >}}
```ps
py -m pip install groupdocs_viewer_net-*.whl
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
python3 -m pip install ./groupdocs_viewer_net-*.whl
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
python3 -m pip install ./groupdocs_viewer_net-*.whl
```
{{< /tab >}}
{{< /tabs >}}

Expected output:

```text
Processing ./groupdocs_viewer_net-<version>-py3-none-<platform>.whl
Installing collected packages: groupdocs-viewer-net
Successfully installed groupdocs-viewer-net-<version>
```

## Next Steps

- [Quick Start Guide]({{< ref "viewer/python-net/getting-started/quick-start-guide" >}}) — render your first document in five minutes.
- [How to Run Examples]({{< ref "viewer/python-net/getting-started/how-to-run-examples" >}}) — clone the runnable examples repository and execute every documented scenario.
- [Agents and LLMs]({{< ref "viewer/python-net/agents-and-llm-integration" >}}) — use GroupDocs.Viewer with AI coding assistants through the MCP server and the package-bundled `AGENTS.md`.
