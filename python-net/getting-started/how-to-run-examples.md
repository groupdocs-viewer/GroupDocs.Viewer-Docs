---
id: how-to-run-examples
url: viewer/python-net/how-to-run-examples
title: How to Run Examples
weight: 7
description: "Learn how to set up, run, and explore code examples for GroupDocs.Viewer for Python via .NET. Includes repository structure, setup steps, and troubleshooting tips."
keywords: groupdocs viewer, python viewer, code examples, viewer library, groupdocs, python programming, viewer api
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

This page explains how to set up and run the code examples for **GroupDocs.Viewer for Python via .NET**.  
The examples demonstrate common usage scenarios such as rendering documents to **HTML, PDF, PNG, and JPEG**, working with documents inside archives, and retrieving document information.

## Prerequisites

Before running the examples, ensure that you have:

1. A **configured environment** that meets the requirements described in the [System Requirements]({{< ref "/viewer/python-net/getting-started/system-requirements.md" >}}) topic.
2. The **examples repository**, downloaded or cloned from GitHub:  
   <https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET>

## Project Structure

The examples repository closely follows the structure of this documentation, making it easy to locate specific examples and related input files.

```
📂 GroupDocs.Viewer-for-Python-via-.NET
├── Demos
│   ├── hello-world-docker
│   │   ├── output
│   │   ├── Dockerfile
│   │   ├── README.md
│   │   ├── render_docx_to_html.py
│   │   ├── requirements.txt
│   │   └── sample.docx
│   └── hello-world-macos
│       ├── output
│       ├── README.md
│       ├── render_docx_to_html.py
│       ├── requirements.txt
│       └── sample.docx
├── Examples
│   ├── getting-started
│   │   └── hello-world
│   │       ├── render_docx_to_html.py
│   │       ├── render_docx_to_pdf.py
│   │       ├── render_docx_to_png.py
│   │       └── sample.docx
│   ├── licensing
│   │   ├── set_license_from_file.py
│   │   ├── set_license_from_stream.py
│   │   └── set_metered_license.py
│   ├── requirements.txt
│   └── run_all_examples.py
├── LICENSE
```

## Setup Instructions

### 1. Create and Activate a Virtual Environment

Navigate to the `Examples` directory and create a virtual environment.

**Create a virtual environment:**

{{< tabs "example1">}}
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
{{< tab "Windows" >}}
```ps
py -m venv .venv
```
{{< /tab >}}
{{< /tabs >}}

**Activate the virtual environment:**

{{< tabs "example2">}}
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
{{< tab "Windows" >}}
```ps
.venv\Scripts\activate
```
{{< /tab >}}
{{< /tabs >}}

### 2. Install Dependencies

After activating the virtual environment, install the required dependencies:

{{< tabs "example3">}}
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
{{< tab "Windows" >}}
```ps
py -m pip install -r requirements.txt
```
{{< /tab >}}
{{< /tabs >}}

### 3. Configure License (Optional)

If you have a license file, you can configure it in the `run_all_examples.py` file.  
By default, **GroupDocs.Viewer for Python via .NET** searches for:

- The `GROUPDOCS_LIC_PATH` environment variable, or  
- A file with the `.lic` extension located in the project root directory.

{{< alert style="info" >}}
For more details about licensing, evaluation limitations, and obtaining a temporary license, see the [Licensing]({{< ref "/viewer/python-net/getting-started/licensing-and-subscription.md" >}}) documentation.
{{< /alert >}}

## Running Examples

### 1. Run All Examples

To execute all available examples, run the `run_all_examples.py` script:

{{< tabs "example4">}}
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
{{< tab "Windows" >}}
```ps
py run_all_examples.py
```
{{< /tab >}}
{{< /tabs >}}

This script runs each example sequentially and demonstrates:
- Rendering documents to HTML, PDF, PNG, and JPEG
- Processing documents stored in archives
- Retrieving document information
- Applying various rendering options

### 2. Run a Specific Example

To run a single example, navigate to the directory containing the desired script and execute it directly using Python.

### 3. Output Files

Most examples generate one or more output files. These files are typically saved in the same directory as the example script.  

## Troubleshooting

If you experience issues while running the examples:

- Verify that all dependencies are installed correctly.
- Ensure your environment meets the documented system requirements.
- Visit the [Technical Support]({{< ref "viewer/python-net/technical-support" >}}) page for additional help.
