---
id: licensing-and-subscription
url: viewer/net/licensing-and-subscription
title: Licensing and evaluation
weight: 5
keywords: free, free trial, evaluation, groupdocs.viewer
description: "GroupDocs.Viewer provides different plans for purchasing or offers a Free Trial and a 30-day Temporary License for evaluation."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
To study the system, you may want quick access to the API. To make this easier, GroupDocs.Viewer provides different plans for purchase and offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.groupdocs.com/policies) section.

{{< /alert >}}

## How to set a license

{{< alert style="info" >}}

You can find pricing information at ["Pricing Information"](https://purchase.groupdocs.com/pricing/viewer/net) page.

{{< /alert >}}

After the license is obtained you need to set the license. This section describes options of how this can be done, and also comments on some common questions.

The license should be set:

- Only once per application domain,
- and before using any other GroupDocs.Viewer classes.

{{< alert style="info" >}}

The license can be set multiple times per app domain but we recommend doing it once since all calls to `SetLicense` except first will just waste processor time.

{{< /alert >}}

### Set a license from a file

The following code snippet shows how to set a license from file:

{{< tabs "example1">}}
{{< tab "C#" >}}

```csharp
string licensePath = "path to the .lic file";
License license = new License();
license.SetLicense(licensePath);
```

{{< /tab >}}
{{< /tabs >}}

### Set a license from a stream

The following code snippet shows how to set a license from a stream.

{{< tabs "example2">}}
{{< tab "C#" >}}

```csharp
string licensePath = "path to the .lic file";
using (FileStream fileStream = File.OpenRead(licensePath))
{
    License license = new License();
    license.SetLicense(fileStream);
}
```

{{< /tab >}}
{{< /tabs >}}

### Set the metered license

You can also set [Metered](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/metered) license as an alternative to license file. It is a new licensing mechanism that will be used along with existing licensing method. It is useful for the customers who want to be billed based on the usage of the API features. For more details, please refer to [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered) section.

The following code snippet shows how to use the metered license.

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
string publicKey = ""; // Your public license key
string privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.SetMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
decimal amountConsumed = GroupDocs.Viewer.Metered.GetConsumptionQuantity();
Console.WriteLine("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
decimal creditsConsumed = GroupDocs.Viewer.Metered.GetConsumptionCredit();
Console.WriteLine("Credits consumed: " + creditsConsumed);
```
{{< /tab >}}
{{< /tabs >}}

## How to evaluate GroupDocs.Viewer

You can also try GroupDocs.Viewer without buying a license.

### Free trial

The evaluation version is identical to the purchased one; it becomes licensed once you set the license. You can set the license using methods described in the following sections of this article.

The evaluation version has the following limitations:

- Rendering is limited to the first 2 pages.
- Trial badges are added to the top of each rendered page.

### Temporary license

If you want to test GroupDocs.Viewer without the limitations of the trial version,   request a 30-day Temporary License. For details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.

