---
id: how-to-run-examples
url: viewer/python-net/how-to-run-examples
title: How to Run Examples
linkTitle: How to Run Examples
weight: 7
description: "Clone the runnable GroupDocs.Viewer for Python via .NET examples repository, configure a virtual environment, apply a license, and execute every documented scenario locally or in Docker."
keywords: GroupDocs.Viewer, python viewer, code examples, run examples, docker, virtual environment, venv, GitHub repository, GroupDocs
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/getting-started/how-to-run-examples/
---

The complete project [GroupDocs.Viewer for Python via .NET](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET) with code examples and sample files is hosted on GitHub. Every example of this documentation is there as a script, next to the documents it renders.

## Prerequisites

- [Python 3.6-3.14](https://www.python.org/downloads/), 64-bit. The package itself supports Python 3.5-3.14; the examples use f-strings.
- On Linux, ICU, fontconfig and fonts (`libicu-dev libfontconfig1 ttf-mscorefonts-installer`; on Debian, enable the `contrib` component first). See [System Requirements]({{< ref "/viewer/python-net/getting-started/system-requirements.md" >}}) for what each one is needed for. Windows and macOS need nothing extra.

## Get the code

```bash
git clone https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET.git
cd ./GroupDocs.Viewer-for-Python-via-.NET/Examples
```

## Project structure

```
Examples/
├── run_all_examples.py     # Runs every example, each in its own process, and prints a pass/fail summary
├── requirements.txt
├── _index/                 # The quick example of the documentation home page
├── product-overview/       # The quick example of the product overview
├── licensing/              # Set a license from a file, a stream, or a metered key
├── getting-started/
│   ├── hello-world/        # Render a Word document to PDF
│   └── quick-start-guide/  # A Word document to HTML, PDF and PNG
├── developer-guide/        # Loading, document info, attachments, logging, threads and processes, and rendering:
│                           #   HTML, PDF, memory, cancellation, watermarks
└── rendering-basics/       # A folder per format family: archives, CAD, eBooks, email, images, Lotus Notes,
                            #   MS Project, Outlook, PDF, presentations, spreadsheets, text, Visio, web, Word, XML
Demos/
├── hello-world-docker/     # Render a DOCX to HTML in a Linux container
└── hello-world-macos/      # The same on macOS
```

The folders follow this documentation: each page's examples are in the folder of that page, with the documents they read.

## Set up

```bash
pip install -r requirements.txt
```

`requirements.txt` installs `groupdocs-viewer-net`, which brings `groupdocs-shared-net`, and `requests` for the example that loads a document from a URL.

To run the examples with the full feature set, apply a license. The simplest way is the `GROUPDOCS_LIC_PATH` environment variable, which the package applies at the first call into the engine:

{{< tabs "set-license" >}}
{{< tab "Windows" >}}
```batch
set GROUPDOCS_LIC_PATH=C:\path\to\GroupDocs.Viewer.lic
```
{{< /tab >}}
{{< tab "Linux / macOS" >}}
```bash
export GROUPDOCS_LIC_PATH=/path/to/GroupDocs.Viewer.lic
```
{{< /tab >}}
{{< /tabs >}}

Without a license the suite still runs, in evaluation mode: only the first two pages of each document are rendered, each with an evaluation notice (see [Licensing and Evaluation]({{< ref "/viewer/python-net/getting-started/licensing-and-subscription.md" >}})).

## Run the examples

Run the full suite, which prints a pass/fail summary at the end:

```bash
python run_all_examples.py
```

You can also run any single example by navigating to its folder and running the script directly. Each example reads its documents from its own folder, and writes its output next to the script:

```bash
cd getting-started/hello-world
python hello_world.py
```

## Run with Docker

The repository ships a `Dockerfile` that builds a Linux image with Python 3.13, the system packages the examples need on Linux (ICU, fontconfig and the Microsoft core fonts), and the package preinstalled from PyPI.

```bash
# Build the image
docker build -t viewer-examples .

# Run unlicensed (evaluation mode)
docker run --rm viewer-examples

# Run with a license mounted from the host
docker run --rm \
    -v /path/to/license:/lic:ro \
    -e GROUPDOCS_LIC_PATH=/lic/your-license.lic \
    viewer-examples
```

## Continuous integration

The `.github/workflows/` directory contains a workflow that runs the full example suite, without a license, on every push and pull request, on `ubuntu-latest` with Python 3.13. The same run is reproducible locally via the `Dockerfile` above.

## Troubleshooting

- **"Couldn't find a valid ICU package"**, with the Python process ending abruptly (Linux) - install ICU (`libicu-dev` on Debian and Ubuntu). Do not set `DOTNET_SYSTEM_GLOBALIZATION_INVARIANT`.
- **`Cannot find fallback font 'Generic Sans Serif'`** in the MS Project examples (Linux) - install the Microsoft core fonts (`ttf-mscorefonts-installer`).
- **Two pages and an evaluation notice** - the evaluation mode. Apply a license (see above); a free 30-day [temporary license](https://purchase.groupdocs.com/temporary-license) is available.
- **`LicenseError` at the first call** - `GROUPDOCS_LIC_PATH` names a file that is missing, expired or for another product. The message gives the engine's reason.
- **The output differs from the output tab** - the tabs come from a licensed run on Windows, and pages are drawn with the fonts installed where they render. The Photoshop, Illustrator and OneNote examples run on Windows only.
- For anything else, see the [Technical Support]({{< ref "viewer/python-net/technical-support" >}}) page.

## Contribute

If you would like to add or improve an example, we encourage you to contribute to the project. All examples in this repository are open source and can be freely used in your own applications. Fork the repository, edit the source code, and open a pull request.
