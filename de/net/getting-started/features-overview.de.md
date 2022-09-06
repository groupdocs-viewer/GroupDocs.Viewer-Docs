---
id: Funktionsübersicht
url: viewer/net/features-overview
title: "Funktionsübersicht"
weight: 1
keywords: "Renderdateien, Viewer, HTML, PNG, JPEG, PDF"
description: "With GroupDocs.Viewer for .NET you can render files to HTML, PNG, JPEG and PDF formats, list and save attachments, embedded files and compressed files, extract document text and detect file type by it's content"
Produktname: GroupDocs.Viewer für .NET
versteckenKinder: Falsch
tok: Stimmt
---

## Rendern von Dokumenten

Wir verwenden den Begriff ["Rendering"]({{< ref "viewer/net/developer-guide/rendering-documents/_index.md" >}}) in GroupDocs.Viewer, um den Prozess der Konvertierung eines Dokuments in eine Datei zu beschreiben formatiert, paginiert oder das Konzept von Seiten hat. Wenn Sie beispielsweise eine DOCX-Datei mit drei Seiten haben, erhalten Sie nach dem Rendern dieser Datei in HTML drei HTML-Dateien in der Ausgabe, die jede der Seiten im Dokument darstellen.

![Rendering diagram](/viewer/net/images/getting-started/features-overview/rendering.png)

### Rendern in HTML

Das Rendern in HTML eignet sich am besten, wenn Sie die folgenden Anforderungen haben:

* Sie schreiben eine webbasierte Anwendung;
* Dokumentinhalt sollte im Webbrowser angezeigt werden;
* Sie müssen in der Lage sein, mit gerendertem Dokumenttext zu interagieren – auswählen, kopieren oder suchen;
* Sie möchten Dokumentseiten separat anzeigen;
* Zoomen in einem Dokument ohne Qualitätsverlust in den meisten Fällen;
* Sie möchten Seiten drehen, neu anordnen oder Wasserzeichen hinzufügen.

GroupDocs.Viewer für .NET bietet zwei Ressourcenverwaltungsoptionen für CSS, Schriftarten, Bilder usw.:

* Rendern in **HTML mit externen Ressourcen** - speichert Seitenressourcen in der Nähe von HTML, wodurch gemeinsame Ressourcen auf separaten Seiten wiederverwendet und die Seitengröße und Ladegeschwindigkeit drastisch reduziert werden können.
* Rendern in **HTML mit eingebetteten Ressourcen** - integriert Seitenressourcen in HTML und macht jede Dokumentseite autark. Der Nachteil ist, dass die Seitengröße und die Ladegeschwindigkeit abnehmen können.

### Rendern in PNG oder JPEG

Das Rendern in PNG oder JPEG eignet sich am besten, wenn Sie die folgenden Anforderungen haben:

* Sie schreiben irgendeine Art von Bewerbung;
* Sie müssen keine Textinhalte rendern oder möchten die Interaktion mit gerendertem Dokumenttext einschränken. Zum Beispiel: Kopieren von Text verhindern. Es besteht weiterhin die Möglichkeit, Dokumenttext zu extrahieren, wenn Sie eine auswählbare Textebene über dem Seitenbild hinzufügen möchten (unten beschrieben).
* Sie möchten Dokumentseiten separat anzeigen;
* Sie möchten Seiten drehen, neu anordnen oder Wasserzeichen hinzufügen.

Im Folgenden finden Sie eine kurze Beschreibung beider Bildformate, die Ihnen helfen kann, das für Ihren Fall am besten geeignete auszuwählen.

* **PNG** **Format** ist ein verlustfreies Rastergrafikdateiformat, das mit Vollfarbbildern funktioniert und Transparenz unterstützt. Es gibt keine Möglichkeit, die Qualität des gespeicherten PNG-Bildes anzupassen. PNG ist eine gute Wahl zum Speichern von Strichzeichnungen, Text und ikonischen Grafiken in kleinen Dateigrößen.
* **JPEG** **Format** ist ein verlustbehaftetes komprimiertes Dateiformat, das es ermöglicht, die Qualität des gespeicherten Bildes anzupassen — wenn es verkleinert wird, werden die Details entfernt und dem Bild Rauschen hinzugefügt, aber die Größe wird größer kompakt. JPEG ist optimal für Bilder mit vielen Farben (z. B. für Fotos). Aufgrund seiner Komprimierung ist JPEG im Web eine gängige Wahl.

### Rendern in PDF

GroupDocs.Viewer rendert ein Dokument in ein einzelnes PDF-Dokument, sodass das Rendern in PDF am besten geeignet ist, wenn Sie die folgenden Anforderungen haben:

* Sie werden Dokumente drucken;
* Sie möchten Dokumente per E-Mail versenden.
* Sie möchten Dokumentseiten nicht separat anzeigen, da alle Seiten eines Quelldokuments als ein einzelnes PDF-Dokument gerendert werden.

## Dokumentinformationen abrufen

GroupDocs.Viewer für .NET ermöglicht das Abrufen grundlegender Informationen über Quelldokumente wie Dateityp, Seitenanzahl, Text mit Koordinaten usw.

Für folgende Dokumentformate können zusätzlich zusätzliche Informationen extrahiert werden:

* Archiv – Liste der im Archiv enthaltenen Ordner;
* CAD - Liste von Ebenen und Layouts in einem CAD-Dokument;
* E-Mail – Liste der Ordner, die in einem Outlook-Datendateidokument enthalten sind;
* PDF – Informationen zu Einschränkungen beim Drucken von Dokumenten;
* Projektmanagement – Start- und Enddatum des Projekts.

### Textextraktion

Sie können den Dokumenttext beim Rendern in PNG oder JPEG extrahieren, der Dokumenttext kann zusammen mit separaten Wortkoordinaten extrahiert werden.

Dies kann hilfreich sein, wenn Sie eine auswählbare Textebene über dem Seitenbild hinzufügen möchten.

## Anhänge verarbeiten

Wir verwenden den Begriff „Anhänge“ in GroupDocs.Viewer für E-Mail-Anhänge, eingebettete Dateien und komprimierte Dateien.

Mit GroupDocs.Viewer können Sie auflisten und speichern:

* E-Mail Anhänge;
* Dateien, die in PDF-Dateien eingebettet sind;
* E-Mail-Nachrichten, die in Outlook- und LotusNotes-Datendateien enthalten sind;
* Komprimierte Dateien.

## Ausgangstransformation

GroupDocs.Viewer für .NET bietet eine Reihe von Optionen zum Anwenden verschiedener Transformationen von Dokumentseiten:

* Seiten drehen - Ändern Sie die Seitenausrichtung beim Rendern in HTML, JPG, PNG und PDF.
* Textwasserzeichen hinzufügen - Textwasserzeichen zu jeder der gerenderten Seiten hinzufügen.
* Seiten neu anordnen - rendern Sie Seiten in der von Ihnen bevorzugten Reihenfolge oder ordnen Sie Seiten beim Rendern in PDF neu an.

## Zwischenspeichern von Ergebnissen

GroupDocs.Viewer für .NET bietet eine Dokument-Viewer-API, die Caching unterstützt, um die Ladegeschwindigkeit von Dokumenten zu erhöhen und die Anwendungsleistung zu optimieren.

Der Dokumentencache wird standardmäßig auf einer lokalen Festplatte gespeichert. Die Document Viewer-API bietet jedoch auch Dokument-Cache-Schnittstellen, die für die Speicherunterstützung von Drittanbietern implementiert werden können – FTP, Amazon S3, Dropbox, Google Drive, Microsoft Azure, Redis oder andere.

