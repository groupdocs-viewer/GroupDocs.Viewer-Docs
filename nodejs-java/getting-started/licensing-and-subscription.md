---
id: licensing-and-evaluation
url: viewer/nodejs-java/licensing-and-evaluation
title: Licensing and evaluation
weight: 5
keywords: free, free trial, evaluation, groupdocs viewer java
description: "GroupDocs.Viewer for Node.js provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation."
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/licensing-and-subscription/
---

To study the system, you may want quick access to the API. To make this easier, GroupDocs.Viewer provides different plans for purchase and offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the [Purchase Policies and FAQ](https://purchase.groupdocs.com/policies) section.

{{< /alert >}}

## Purchased License

{{< alert style="info" >}}

You can find the pricing information on the ["Pricing Information"](https://purchase.groupdocs.com/pricing/viewer/nodejs-java) page.

{{< /alert >}}

After buying, apply the license file or include it as an embedded resource. 

License needs to be set:
- Only once per application domain
- Before using any other GroupDocs.Viewer classes
    
### License Applying Options

Licenses can be applied from different locations:

*   Explicit path
*   The folder containing the _GroupDocs.Viewer.dll_ file
*   The folder containing the assembly that called _GroupDocs.Viewer.dll_
*   The folder containing the entry assembly (your _.exe_)
*   As a Metered License that allows you to pay for your usage. For details, see the [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered/).

When you reference _GroupDocs.Viewer.dll_ in the application, the library is copied to your output directory (unless **Copy Local** in the properties for that entry is set to false). The easiest way to set a license is often to place the license file in the same folder as _GroupDocs.Viewer.dll_ and specify just the filename without the path.

Use the [setLicense](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/license/#setLicense-java.io.InputStream-) method to license a component.

{{< alert style="info" >}}

The license can be set multiple times per application domain, but we recommend doing it once since all the subsequent calls to the `setLicense` method except for the first one will just waste processor time.

{{< /alert >}}

#### Apply the License

After obtaining the license, set it. This section explains how to do this. When developing your application, call the `setLicense` method in your startup code before using the GroupDocs.Viewer classes.

##### Set a License from a File

The following code snippet shows how to set a license from a file:

{{< tabs "set-license-from-file">}}
{{< tab "JavaScript" >}}
```js
import { License } from '@groupdocs/groupdocs.viewer';
import { existsSync } from 'fs';

// Path to the license file
const licensePath = 'GroupDocs.Viewer.lic';

// Check if license file exists
if (!existsSync(licensePath)) {
    console.log('License file not found. Running in evaluation mode.');
    process.exit(0);
}

// Create a License object and set the license
const license = new License();
license.setLicense(licensePath);

console.log('License set successfully.');

// Terminate the process with a success exit code
process.exit(0);
```
{{< /tab >}}
{{< /tabs >}}

##### Set a License from a Stream

The following code snippet shows how to set a license from a stream:

{{< tabs "set-license-from-stream">}}
{{< tab "JavaScript" >}}
```js
import { License } from '@groupdocs/groupdocs.viewer';
import java from 'java';
import { existsSync } from 'fs';

// Create a reference to Java's FileInputStream class
let InputStream = java.import('java.io.FileInputStream');

// Path to the license file
const licensePath = 'GroupDocs.Viewer.lic';

// Check if license file exists
if (!existsSync(licensePath)) {
    console.log('License file not found. Running in evaluation mode.');
    process.exit(0);
}

// Initialize a FileInputStream for the license file
const stream = new InputStream(licensePath);

// Create a License object and set the license using the InputStream
const license = new License();
license.setLicense(stream);

console.log('License set successfully.');

// Terminate the process with a success exit code
process.exit(0);
```
{{< /tab >}}
{{< /tabs >}}

### Changing the License File Name

You do not have to name the license file "GroupDocs.Viewer.lic". Feel free to rename it as you prefer, and use that name when setting the license in your application.

### "Cannot find license filename" Exception

When you buy and download a license from the GroupDocs website, the license file is named "GroupDocs.Viewer.lic." Download it using your browser. Sometimes, browsers recognize it as XML and add the .xml extension, making the full file name "GroupDocs.Viewer.lic.XML" on your computer.

If Microsoft Windows is set to hide file extensions (which is the default in most installations), the license file will show as "GroupDocs.Viewer.lic" in Windows Explorer. You might assume this is the actual file name and call the `setLicense` method with "GroupDocs.Viewer.lic", but there is no such file, leading to an exception.

To fix this issue, rename the file to remove the hidden .xml extension. Additionally, we suggest disabling the "Hide extensions" option in Microsoft Windows.

## How to Evaluate GroupDocs.Viewer

You can also try GroupDocs.Viewer without buying a license.

### Free Trial

The evaluation version is the same as the purchased one – the evaluation version simply becomes licensed when you set the license. You can set the license in several ways that are described in the next sections of this article.

The evaluation version comes with the following limitations:

- Only the first 2 pages can be processed.
- Trial badges are placed in the document on the top of each page.

### Temporary License

If you wish to test GroupDocs.Viewer without the limitations of the trial version, you can also request a 30-day Temporary License. For details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.