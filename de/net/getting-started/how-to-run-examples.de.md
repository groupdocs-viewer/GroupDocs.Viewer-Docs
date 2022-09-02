---
id: How-to-Run-Beispiele
url: viewer/net/how-to-run-examples
title: "Wie man Beispiele ausführt"
weight: 6
keywords: "Visual Studio, Projekt erstellen, .net CLI"
description: "Mit der Visual Studio .NET-CLI können Sie ein Projekt von Grund auf neu erstellen. Wir werden Sie durch beide Fälle führen."
Produktname: GroupDocs.Viewer für .NET
versteckenKinder: Falsch
tok: Stimmt
---

Wir bieten mehrere Lösungen an, wie Sie GroupDocs.Viewer-Beispiele ausführen können, indem Sie Ihre eigenen erstellen oder unsere Back-End- oder Front-End-Beispiele verwenden.

## Erstellen Sie ein Projekt von Grund auf neu

Sie können ein Projekt mit Visual Studio oder [.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/) von Grund auf neu erstellen. Wir werden Sie durch beide Fälle führen.

### Projekt mit .NET CLI erstellen

* Stellen Sie sicher, dass Sie .NET Core oder .NET SDK installiert haben<https://dotnet.microsoft.com/download> .
* Erstellen Sie ein Verzeichnis für Ihre Konsolen-App, indem Sie zB `mkdir my-console-app` in Ihrem Terminal ausführen.
* Navigieren Sie zum Verzeichnis „my-console-app“, indem Sie „cd my-console-app“ ausführen.
* Erstellen Sie eine leere Konsolen-App, indem Sie „dotnet new console“ ausführen
* Fügen Sie GroupDocs.Viewer für das .NET-Paket „dotnet add package GroupDocs.Viewer“ hinzu
* Bearbeiten Sie „Program.cs“ und fügen Sie die folgenden Zeilen zur „Main“-Methode hinzu
  


```scharf
string documentPath = @"C:\sample.docx";
using (Viewer viewer = new Viewer(documentPath))
{
string filePathFormat = @"C:\output\page-{0}.html";
HtmlViewOptions-Optionen = HtmlViewOptions.ForEmbeddedResources(filePathFormat);
viewer.View (Optionen);
}
```
  


* Ersetzen Sie den Wert „documentPath“ durch den tatsächlichen Pfad zu dem Dokument, das Sie rendern möchten.
* Führen Sie das Projekt aus, indem Sie „dotnet run“ ausführen.
* Überprüfen Sie die Ausgabe im Verzeichnis `C:\\output\\`.

### Projekt mit Visual Studio erstellen

* Öffnen Sie Visual Studio und gehen Sie zu **Datei** -> **Neu** -> **Projekt**.
* Wählen Sie den entsprechenden Projekttyp aus, z. B. Konsolenanwendung oder Konsolen-App (.NET Framework)
* Installieren Sie **GroupDocs.Viewer für .NET** von Nuget oder der offiziellen GroupDocs-Website mit einer der im Abschnitt "Installation" ({{< ref "installation" >}}) aufgeführten Methoden.
* Fügen Sie der `Main`-Methode den folgenden Code hinzu:

```scharf
string documentPath = @"C:\sample.docx";
using (Viewer viewer = new Viewer(documentPath))
{
string filePathFormat = @"C:\output\page-{0}.html";
HtmlViewOptions-Optionen = HtmlViewOptions.ForEmbeddedResources(filePathFormat);
viewer.View (Optionen);
}
```

* Ersetzen Sie den Wert „documentPath“ durch den tatsächlichen Pfad zu dem Dokument, das Sie rendern möchten.
* Erstellen und führen Sie Ihr Projekt aus.
* Gerenderte Dokumentseiten werden im Verzeichnis „C:\\output\\“ gespeichert.

## Führen Sie Back-End-Beispiele aus

Sie finden eine Reihe von Back-End-Beispielen in unserem Repository, das auf [Github] (https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) gehostet wird. Sie können die ZIP-Datei entweder [hier] herunterladen (https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) oder das Repository von Github mit Ihrem bevorzugten Git-Client klonen .


Falls Sie die ZIP-Datei herunterladen, extrahieren Sie die Ordner auf Ihrer lokalen Festplatte.

* Navigieren Sie zum Verzeichnis „Examples“ und öffnen Sie „GroupDocs.Viewer.Examples.CSharp.sln“ mit Visual Studio.
* Öffnen Sie die Datei „RunExamples.cs“ und kommentieren Sie die Beispiele, die Sie ausführen möchten, aus.
* Optional können Sie den Pfad zur Lizenz in der Datei „Utils.cs“ festlegen.

## Demo-Projekte ausführen

Um eine Demo von [GroupDocs.Viewer für .NET-Demoprojekte](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/) auszuführen, können Sie entweder:

* Klonen Sie das Repository:

```Bash
git-Klon git@github.com:groupdocs-viewer/GroupDocs.Viewer-for-.NET.git


```

* Oder [download](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/archive/master.zip) Quellcode.

### ASP.NET Core-Demo

* Klonen oder laden Sie das Repository ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) von GitHub herunter oder überspringen Sie diesen Schritt, wenn Sie das bereits haben Code.
* Navigieren Sie zum Ordner „Demos/ASP.NET Core“.
* Führen Sie „dotnet run“ in einem Terminal aus.
* Öffnen Sie [http://localhost:8080/viewer](http://localhost:8080/viewer) in Ihrem bevorzugten Browser.

### ASP.NET MVC-Demo

* Klonen oder laden Sie das Repository ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) von GitHub herunter oder überspringen Sie diesen Schritt, wenn Sie das bereits haben Code.
* Navigieren Sie zum Ordner „Demos/MVC“.
* Öffnen Sie die Lösung „GroupDocs.Viewer MVC.sln“ im Ordner „Demos/MVC“ mit Visual Studio.
* Aktualisieren Sie Parameter in **web.config** und Demo-bezogene Eigenschaften in **configuration.yml**, um Ihre Anforderungen zu erfüllen. Weitere Informationen zum Konfigurieren der Demo finden Sie unter ["Configuration"](https://github.com/ Abschnitt groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/MVC#configuration).
* Führen Sie das Projekt aus und öffnen Sie [http://localhost:8080/viewer](http://localhost:8080/viewer) in Ihrem bevorzugten Browser.

{{< alert style="info" >}}

Weitere Einzelheiten zur Demokonfiguration finden Sie im Abschnitt ["Konfiguration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/MVC#configuration).

{{< /Alarm >}}

### Demo für ASP.NET-Webformulare

* Klonen oder laden Sie das Repository ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) von GitHub herunter oder überspringen Sie diesen Schritt, wenn Sie das bereits haben Code.
* Navigieren Sie zum Ordner „Demos/WebForms“.
* Öffnen Sie die Lösung „GroupDocs.Viewer.WebForms.sln“ mit Visual Studio.
* Lösung im VisualStudio öffnen. Aktualisieren Sie allgemeine Parameter in **web.config** und beispielbezogene Eigenschaften in **configuration.yml**, um Ihre Anforderungen zu erfüllen.
* Öffnen Sie [http://localhost:8080/viewer](http://localhost:8080/viewer) in Ihrem bevorzugten Browser.

{{< alert style="info" >}}

Weitere Einzelheiten zur Demokonfiguration finden Sie im Abschnitt ["Konfiguration"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/tree/master/Demos/WebForms#configuration).

{{< /Alarm >}}

### WPF-Demo

* Klonen oder laden Sie das Repository ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) von GitHub herunter oder überspringen Sie diesen Schritt, wenn Sie das bereits haben Code.
* Navigieren Sie zum Ordner „Demos/WPF/src“.
* Öffnen Sie „GroupDocs.Viewer.WPF.sln“ mit Visual Studio.
* Führen Sie das Projekt aus.

### Windows Forms-Demo

* Klonen oder laden Sie das Repository ["GroupDocs.Viewer-for-.NET"](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) von GitHub herunter oder überspringen Sie diesen Schritt, wenn Sie das bereits haben Code.
* Navigieren Sie zum Ordner „Demos/WinForms/src“.
* Öffnen Sie „GroupDocs.Viewer.WinForms.sln“ mit Visual Studio.
* Führen Sie das Projekt aus.

## Beitragen

Wenn Sie ein Beispiel hinzufügen oder verbessern möchten, ermutigen wir Sie, zum Projekt beizutragen. Alle Beispiele in diesem Repository sind Open Source und können in Ihren eigenen Anwendungen frei verwendet werden.


Um einen Beitrag zu leisten, können Sie das Repository forken, den Code bearbeiten und eine Pull-Anforderung erstellen. Wir werden die Änderungen überprüfen und bei Bedarf in das Repository aufnehmen.

