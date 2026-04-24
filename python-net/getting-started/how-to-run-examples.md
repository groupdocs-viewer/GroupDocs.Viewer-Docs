---
id: how-to-run-examples
url: viewer/python-net/getting-started/how-to-run-examples
title: How to Run Examples
linkTitle: How to Run Examples
weight: 7
description: "Clone the runnable GroupDocs.Viewer for Python via .NET examples repository, configure a virtual environment, apply a license, and execute every documented scenario locally or in Docker."
keywords: GroupDocs.Viewer, python viewer, code examples, run examples, docker, virtual environment, venv, GitHub repository, GroupDocs
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-run-examples/
---

This page explains how to set up and run the code examples for **GroupDocs.Viewer for Python via .NET**. The examples demonstrate common usage scenarios such as rendering documents to **HTML, PDF, PNG, and JPEG**, working with documents inside archives, extracting attachments, and retrieving document information.

## Prerequisites

Before running the examples, ensure that you have:

1. A **configured environment** that meets the requirements described in the [System Requirements]({{< ref "/viewer/python-net/getting-started/system-requirements.md" >}}) topic.
2. The **examples repository**, cloned or downloaded from GitHub:  
   <https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET>

## Project Structure

The examples repository mirrors the structure of this documentation — every page in the Developer Guide and Rendering Basics sections has a matching folder under `Examples/`:

```text
📂 GroupDocs.Viewer-for-Python-via-.NET
├── Demos
│   ├── hello-world-docker
│   │   ├── Dockerfile
│   │   ├── README.md
│   │   ├── render_docx_to_html.py
│   │   ├── requirements.txt
│   │   └── sample.docx
│   └── hello-world-macos
│       ├── README.md
│       ├── render_docx_to_html.py
│       ├── requirements.txt
│       └── sample.docx
├── Examples
│   ├── getting-started
│   │   └── quick-start-guide
│   │       ├── render_docx_to_html.py
│   │       ├── render_docx_to_pdf.py
│   │       ├── render_docx_to_png.py
│   │       └── sample.docx
│   ├── developer-guide
│   │   ├── get-document-info
│   │   ├── loading-documents
│   │   ├── logging-and-diagnostics
│   │   ├── processing-attachments
│   │   └── rendering-documents
│   ├── rendering-basics
│   │   ├── render-archive-files
│   │   ├── render-cad-documents
│   │   ├── render-email-messages
│   │   ├── render-images
│   │   ├── render-pdf-documents
│   │   ├── render-presentations
│   │   ├── render-spreadsheets
│   │   ├── render-text-files
│   │   ├── render-visio-documents
│   │   ├── render-web-documents
│   │   └── render-word-documents
│   ├── licensing
│   │   ├── set_license_from_file.py
│   │   ├── set_license_from_stream.py
│   │   └── set_metered_license.py
│   ├── requirements.txt
│   └── run_all_examples.py
├── Dockerfile
├── LICENSE
└── README.md
```

## Setup Instructions

### 1. Create and Activate a Virtual Environment

Navigate to the `Examples` directory and create a virtual environment.

**Create a virtual environment:**

{{< tabs "example1">}}
{{< tab "Windows" >}}
```ps
py -m venv .venv
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
python3 -m venv .venv
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
python3 -m venv .venv
```
{{< /tab >}}
{{< /tabs >}}

**Activate the virtual environment:**

{{< tabs "example2">}}
{{< tab "Windows" >}}
```ps
.venv\Scripts\activate
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
source .venv/bin/activate
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
source .venv/bin/activate
```
{{< /tab >}}
{{< /tabs >}}

### 2. Install Dependencies

After activating the virtual environment, install the required dependencies:

{{< tabs "example3">}}
{{< tab "Windows" >}}
```ps
py -m pip install -r requirements.txt
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
python3 -m pip install -r requirements.txt
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
python3 -m pip install -r requirements.txt
```
{{< /tab >}}
{{< /tabs >}}

### 3. Configure License (Optional)

If you have a license file, you can configure it in the `run_all_examples.py` script. By default, **GroupDocs.Viewer for Python via .NET** searches for:

- The `GROUPDOCS_LIC_PATH` environment variable, then
- Any file with the `.lic` extension in the current working directory.

{{< alert style="info" >}}
For more details about licensing, evaluation limitations, and obtaining a temporary license, see the [Licensing and Subscription]({{< ref "/viewer/python-net/getting-started/licensing-and-subscription.md" >}}) page.
{{< /alert >}}

## Running Examples

### 1. Run All Examples

To execute all available examples, run the `run_all_examples.py` script:

{{< tabs "example4">}}
{{< tab "Windows" >}}
```ps
py run_all_examples.py
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
python3 run_all_examples.py
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
python3 run_all_examples.py
```
{{< /tab >}}
{{< /tabs >}}

This script runs each example sequentially and demonstrates:

- Rendering documents to HTML, PDF, PNG, and JPEG.
- Processing documents stored in archives.
- Retrieving document information.
- Applying various rendering options.

### 2. Run a Specific Example

To run a single example, navigate to the directory containing the desired script and execute it directly with Python.

### 3. Output Files

Most examples generate one or more output files. These files are typically saved in the same directory as the example script.

## Troubleshooting

If you experience issues while running the examples:

- Verify that all dependencies are installed correctly.
- Ensure your environment meets the [System Requirements]({{< ref "/viewer/python-net/getting-started/system-requirements.md" >}}).
- Visit the [Technical Support]({{< ref "viewer/python-net/technical-support" >}}) page for additional help.
