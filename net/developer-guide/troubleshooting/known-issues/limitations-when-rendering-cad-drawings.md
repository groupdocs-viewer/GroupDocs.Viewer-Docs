---
id: limitations-when-rendering-cad-drawings
url: viewer/net/limitations-when-rendering-cad-drawings
title: Limitations when rendering CAD drawings
weight: 2
description: "This article is about the limitations of GroupDocs.Viewer of rendering CAD Drawings."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="success" >}}This limitation exists in the 20.6.1 version and earlier. Do not set an assembly binding redirect if you use version 20.7 or later.{{< /alert >}}

## Rendering CAD drawings requires adding assembly binding redirect

When rendering CAD drawings using GroupDocs.Viewer, it is required to add the [assembly binding redirect](https://docs.microsoft.com/en-us/dotnet/framework/configure-apps/redirect-assembly-versions) to the app.config or web.config project files. The following example shows the required assembly binding redirect to render CAD drawings with GroupDocs.Viewer for .NET 20.6.1 and earlier.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
<configuration>
    <!--...-->
    <runtime>
        <!--...-->
        <assemblyBinding xmlns="urn:schemas-microsoft-com:asm.v1">
            <!--...-->
            <dependentAssembly>
                <assemblyIdentity name="Aspose.PDF" publicKeyToken="716fcc553a201e56" culture="neutral"/>
                <bindingRedirect oldVersion="0.0.0.0-20.5.0.0" newVersion="20.5.0.0"/>
                <publisherPolicy apply="no"/>
            </dependentAssembly>
        </assemblyBinding>
    </runtime>
</configuration>
```
{{< /tab >}}
{{< /tabs >}}
