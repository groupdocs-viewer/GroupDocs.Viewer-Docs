---
id: licensing-and-subscription
url: viewer/nodejs-java/licensing-and-subscription
title: Licensing
weight: 5
keywords: free, free trial, evaluation, groupdocs viewer java
description: "GroupDocs.Viewer for Node.js provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation."
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
---
Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, GroupDocs.Viewer provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.groupdocs.com/policies) section.

{{< /alert >}}

## Free Trial or Temporary License

You can try GroupDocs.Viewer without buying a license.

### Free Trial

The evaluation version is the same as the purchased one – the evaluation version simply becomes licensed when you set the license. You can set the license in a number of ways that described in the next sections of this article.

The evaluation version comes with the limitations:

- Only first 2 pages can be rendered.
- Trial badges are placed in the rendering results on the top of each page.

### Temporary License

If you wish to test GroupDocs.Viewer without the limitations of the trial version, you can also request a 30-day Temporary License. For more details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.

## How to set a license

{{< alert style="info" >}}

You can find pricing information at ["Pricing Information"](https://purchase.groupdocs.com/pricing/viewer/nodejs-java) page.

{{< /alert >}}

After the license is obtained you need to set the license. This section describes options of how this can be done, and also comments on some common questions.

The license should be set:

- Only once per application domain,
- and before using any other GroupDocs.Viewer classes.

{{< alert style="info" >}}

The license can be set multiple times per app domain but we recommend doing it once since all calls to `setLicense` except first will just waste processor time.

{{< /alert >}}

### Set License from File

The following code sets a license from file.

{{< tabs "example1">}}
{{< tab "JavaScript" >}}

```js
const licensePath = "path to the .lic file";
const license = new groupdocs.viewer.License()
license.setLicense(licensePath); 
```

{{< /tab >}}
{{< /tabs >}}


### Set License from Stream

The following example shows how to set a license from a stream.

{{< tabs "example2">}}
{{< tab "JavaScript" >}}

```js
const fs = require('fs')  
  
const licensePath = "path to the .lic file"
const license = new groupdocs.viewer.License()
const licStream = fs.createReadStream(licensePath)
groupdocs.conversion.License.setLicenseFromStream(license, licStream, err => {
  if (err) {
    console.log(`Set license error: ${err}`)
  } else {
    console.log('License set OK')
  }
})
```

{{< /tab >}}
{{< /tabs >}}