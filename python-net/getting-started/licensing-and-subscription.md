---
id: licensing-and-evaluation
url: viewer/python-net/licensing-and-evaluation
title: Licensing and Evaluation
linkTitle: Licensing and Evaluation
weight: 5
keywords: GroupDocs.Viewer, licensing, trial, evaluation, evaluation limitations, temporary license, metered licensing, set_license, GROUPDOCS_LIC_PATH, LicenseError, python
description: "Apply a license to GroupDocs.Viewer for Python via .NET — from file, from stream, via environment variable, or with a metered key."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/licensing-and-subscription/
    - /viewer/python-net/getting-started/licensing-and-subscription/
---

GroupDocs.Viewer offers a Free Trial and a 30-day Temporary License for evaluation, along with several purchase plans. If you want to dive straight into the code, the Free Trial is fully functional (see the limitations below) and does not require any setup.

{{< alert style="info" >}}
Please note that general policies and practices guide you on evaluating, licensing, and purchasing our products. See the [Purchase Policies and FAQ](https://purchase.groupdocs.com/policies/) section for details.
{{< /alert >}}

## Free Trial or Temporary License

You can try GroupDocs.Viewer without purchasing a license.

### Free Trial

The evaluation version is identical to the full version — it simply becomes fully licensed when you apply a license. Instructions for setting a license are provided in the following sections.

The evaluation version has the following limitations:
* Only the first two pages of a document are rendered, and `get_view_info` reports at most two pages.
* An evaluation notice is placed on each rendered page.

### Temporary License

If you'd like to test GroupDocs.Viewer without the limitations of the trial version, you can request a 30-day Temporary License. For more information, see the [Get a Temporary License](https://purchase.groupdocs.com/temporary-license) page.

## How to Set Up a License

{{< alert style="info" >}}
For information on pricing, visit the [Pricing Information](https://purchase.groupdocs.com/pricing/) page.
{{< /alert >}}

Once you’ve obtained a license, follow these instructions to set it up. 

A license should be set:
- Only once per application, and
- Before using any other GroupDocs.Viewer classes.

{{< alert style="tip" >}}
Though the license can be set multiple times per application, it is recommended to set it only once, as repeated calls to the `set_license` method will use unnecessary processing time.
{{< /alert >}}

### Set Environment Variable

You can set the `GROUPDOCS_LIC_PATH` environment variable to the absolute path of the license file. GroupDocs.Viewer will then read this value and apply the license.

{{< tabs "set-license-env-var">}}
{{< tab "Windows (Command Prompt)" >}}
```bat
set GROUPDOCS_LIC_PATH=C:\path\to\your\license\file.lic
```
{{< /tab >}}
{{< tab "Windows (Powershell)" >}}
```ps
$env:GROUPDOCS_LIC_PATH="C:\path\to\your\license\file.lic"
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
export GROUPDOCS_LIC_PATH="/path/to/your/license/file.lic"
```
{{< /tab >}}
{{< tab "macOS" >}}
```bash
export GROUPDOCS_LIC_PATH="/path/to/your/license/file.lic"
```
{{< /tab >}}
{{< /tabs >}}

The license is applied at the first Viewer call, not when the package is imported, so a variable set after the import still counts. `GROUPDOCS_LIC_PATH` can also hold the URL of a license file.

A license that cannot be applied (a missing file, an expired subscription, a license for another product) raises `LicenseError` from the first Viewer call on, instead of letting the process run in evaluation mode unnoticed. The message names the variable, the source and the engine's reason. Applying a license with `License().set_license(...)` ends the refusal. Set `GROUPDOCS_LIC_STRICT=0` to get one `LicenseWarning` and evaluation mode instead. When `GROUPDOCS_LIC_PATH` is not set, `ASPOSE_LIC_PATH` is read instead.

```python
from groupdocs.viewer import LicenseError, Viewer
from groupdocs.viewer.options import PdfViewOptions

try:
    with Viewer("sample.docx") as viewer:
        viewer.view(PdfViewOptions("output.pdf"))
except LicenseError as error:
    # GROUPDOCS_LIC_PATH=... could not be applied: <the engine's reason>
    print(error)
```

### Set License from a File

The following code demonstrates setting a license from a file:

```python
import os
from groupdocs.viewer import License

def set_license_from_file():
    # Get absolute path to license file
    license_path = os.path.abspath("./GroupDocs.Viewer.lic")

    # Check if license file exists
    if not os.path.exists(license_path):
        print(f"License file not found at: {license_path}")
        return

    # Instantiate License and set the license
    license = License()
    license.set_license(license_path)

if __name__ == "__main__":
    set_license_from_file()
```

### Set License from a Stream

This example shows how to set a license from a stream:

```python
import os
from groupdocs.viewer import License

def set_license_from_stream():
    # Get absolute path to license file
    license_path = os.path.abspath("./GroupDocs.Viewer.lic")

    # Check if license file exists
    if not os.path.exists(license_path):
        print(f"License file not found at: {license_path}")
        return

    # Create a readable stream
    with open(license_path, "rb") as license_stream:
        # Instantiate License and set the license
        license = License()
        license.set_license(license_stream)

if __name__ == "__main__":
    set_license_from_stream()
```

### Set Metered License

A [Metered License](https://purchase.groupdocs.com/faqs/licensing/metered/) is also available as an alternative to a traditional license file. It is a usage-based licensing model that may be more suitable for customers who prefer to be billed based on actual API feature usage.

The following sample demonstrates how to use metered licensing:

```python
from groupdocs.viewer import Metered

def set_metered_license():
    # Set your public and private keys
    public_key = "******" 
    private_key = "******" 

    # Check if keys are set
    if not public_key or public_key == "******" or not private_key or private_key == "******":
        print("Please set your public and private keys")
        return

    # Instantiate Metered and set keys
    metered = Metered()
    metered.set_metered_key(public_key, private_key)

    # Get a number of MBs processed 
    mb_processed = metered.get_consumption_quantity()
    print("MB processed: ", mb_processed)

    # Get a number of credits used
    credits_used = metered.get_consumption_credit()
    print("Credits used: ", credits_used)

if __name__ == "__main__":
    set_metered_license()
```