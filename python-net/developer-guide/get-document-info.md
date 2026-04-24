---
id: get-document-info
url: viewer/python-net/developer-guide/get-document-info
title: Get Document Information
linkTitle: Get Document Info
weight: 2
description: "Inspect a document — file type, page count, attachments, and format-specific metadata — with the Viewer.get_view_info and Viewer.get_file_info methods in GroupDocs.Viewer for Python via .NET."
keywords: get_view_info, get_file_info, ViewInfo, PdfViewInfo, ArchiveViewInfo, CadViewInfo, OutlookViewInfo, ProjectManagementViewInfo, file type, pages count, document metadata, GroupDocs.Viewer, python
productName: GroupDocs.Viewer for Python via .NET
hideChildren: true
toc: true
aliases:
    - /viewer/python-net/retrieving-document-information/
    - /viewer/python-net/how-to-get-file-type-and-pages-count/
---

`GroupDocs.Viewer` exposes two inspection methods on the `Viewer` class:

- `get_file_info()` — returns a `FileInfo` result with the detected file type and name. Cheap; no rendering required.
- `get_view_info(options)` — returns a `ViewInfo` result that includes the page count, per-page dimensions, and format-specific metadata. Takes a `ViewInfoOptions` created with one of the `for_html_view()` / `for_png_view()` / `for_jpg_view()` / `for_pdf_view()` factory methods.

For several format families, `get_view_info` returns a **format-specific subclass** of `ViewInfo` that exposes extra properties:

| Format family | Result type | Extra properties |
|---|---|---|
| PDF | `PdfViewInfo` | `printing_allowed` |
| Archive (ZIP / RAR / 7Z) | `ArchiveViewInfo` | `folders` |
| CAD (DWG / DXF / DGN) | `CadViewInfo` | `layers`, `layouts` |
| Outlook (PST / OST) | `OutlookViewInfo` | `folders` |
| Project (MPP / MPT) | `ProjectManagementViewInfo` | `start_date`, `end_date` |

Cast the `ViewInfo` result to the appropriate subclass to access the extra properties.

## Example 1: Get File Type and Pages Count

The following code snippet shows how to get the file type and the page count for any supported document:

{{< tabs "example1">}}
{{< tab "get_file_type_and_pages_count.py" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions

def get_file_type_and_pages_count():
    # Load PDF document
    with Viewer("sample.pdf") as viewer:
        info = viewer.get_view_info(ViewInfoOptions.for_html_view())

        print("Document type:", info.file_type)
        print("Pages count:", len(info.pages))

if __name__ == "__main__":
    get_file_type_and_pages_count()
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/get-document-info/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-file-type-and-pages-count.txt" >}}  
```text
Document type: Portable Document Format File (.pdf)
Pages count: 2
```
[Download full output](/viewer/python-net/_output_files/developer-guide/get-document-info/get_file_type_and_pages_count/get-file-type-and-pages-count.txt)
{{< /tab >}}
{{< /tabs >}}

## Example 2: Get PDF-Specific Information

For PDF documents, the returned `PdfViewInfo` also reports whether printing is allowed:

{{< tabs "example2">}}
{{< tab "get_pdf_info.py" >}}
```python
from typing import cast
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions
from groupdocs.viewer.results import PdfViewInfo

def get_pdf_info():
    with Viewer("sample.pdf") as viewer:
        info = viewer.get_view_info(ViewInfoOptions.for_html_view())
        pdf_info = cast(PdfViewInfo, info)

        print("File type:", pdf_info.file_type)
        print("Pages count:", len(pdf_info.pages))
        print("Printing allowed:", pdf_info.printing_allowed)

if __name__ == "__main__":
    get_pdf_info()
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/get-document-info/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-pdf-info.txt" >}}  
```text
File type: Portable Document Format File (.pdf)
Pages count: 2
Printing allowed: True
```
[Download full output](/viewer/python-net/_output_files/developer-guide/get-document-info/get_pdf_info/get-pdf-info.txt)
{{< /tab >}}
{{< /tabs >}}

## Example 3: Get Archive Folder Structure

For archives (ZIP / RAR / 7Z), `ArchiveViewInfo.folders` returns the top-level folder list:

{{< tabs "example3">}}
{{< tab "get_archive_info.py" >}}
```python
from typing import cast
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions
from groupdocs.viewer.results import ArchiveViewInfo

def get_archive_info():
    with Viewer("documents.zip") as viewer:
        info = viewer.get_view_info(ViewInfoOptions.for_html_view())
        archive_info = cast(ArchiveViewInfo, info)

        print("File type:", archive_info.file_type)
        print("Pages count:", len(archive_info.pages))
        print("Folders:")
        for folder in archive_info.folders:
            print(f"  {folder}")

if __name__ == "__main__":
    get_archive_info()
```
{{< /tab >}}
{{< tab "documents.zip" >}}
{{< tab-text >}}
`documents.zip` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/get-document-info/documents.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-archive-info.txt" >}}  
```text
File type: Zipped File (.zip)
Pages count: 1
Folders:
  /first_folder/
  /second_folder/
```
[Download full output](/viewer/python-net/_output_files/developer-guide/get-document-info/get_archive_info/get-archive-info.txt)
{{< /tab >}}
{{< /tabs >}}

## Example 4: Get CAD Layers and Layouts

For CAD drawings (DWG / DXF / DGN), `CadViewInfo` exposes the drawing's `layers` and `layouts`:

{{< tabs "example4">}}
{{< tab "get_cad_info.py" >}}
```python
from typing import cast
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions
from groupdocs.viewer.results import CadViewInfo

def get_cad_info():
    with Viewer("sample.dwg") as viewer:
        info = viewer.get_view_info(ViewInfoOptions.for_html_view())
        cad_info = cast(CadViewInfo, info)

        print("File type:", cad_info.file_type)
        print("Pages count:", len(cad_info.pages))
        print("Layers:")
        for layer in cad_info.layers:
            print(f"  {layer.name} (visible={layer.visible})")
        print("Layouts:")
        for layout in cad_info.layouts:
            print(f"  {layout.name} ({layout.width}x{layout.height})")

if __name__ == "__main__":
    get_cad_info()
```
{{< /tab >}}
{{< tab "sample.dwg" >}}
{{< tab-text >}}
`sample.dwg` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/get-document-info/sample.dwg) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-cad-info.txt" >}}  
```text
File type: AutoCAD Drawing Database File (.dwg)
Pages count: 1
Layers:
  0 (visible=True)
  CIRCLE (visible=True)
  TRIANGLE (visible=True)
  QUADRANT (visible=True)
Layouts:
  Model (26x23)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/get-document-info/get_cad_info/get-cad-info.txt)
{{< /tab >}}
{{< /tabs >}}

## Example 5: Get Outlook Data File Folders

For Outlook data files (PST / OST), `OutlookViewInfo.folders` exposes the mailbox folder list:

{{< tabs "example5">}}
{{< tab "get_outlook_info.py" >}}
```python
from typing import cast
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions
from groupdocs.viewer.results import OutlookViewInfo

def get_outlook_info():
    with Viewer("sample.pst") as viewer:
        info = viewer.get_view_info(ViewInfoOptions.for_html_view())
        outlook_info = cast(OutlookViewInfo, info)

        print("File type:", outlook_info.file_type)
        print("Pages count:", len(outlook_info.pages))
        print("Folders:")
        for folder in outlook_info.folders:
            print(f"  {folder}")

if __name__ == "__main__":
    get_outlook_info()
```
{{< /tab >}}
{{< tab "sample.pst" >}}
{{< tab-text >}}
`sample.pst` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/get-document-info/sample.pst) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-outlook-info.txt" >}}  
```text
File type: Outlook Personal Information Store File (.pst)
Pages count: 1
Folders:
  Inbox
  Deleted Items
  Outbox
  Sent Items
  Calendar
  Contacts
  Drafts
[TRUNCATED]
```
[Download full output](/viewer/python-net/_output_files/developer-guide/get-document-info/get_outlook_info/get-outlook-info.txt)
{{< /tab >}}
{{< /tabs >}}

## Example 6: Get Microsoft Project Dates

For Microsoft Project files (MPP / MPT), `ProjectManagementViewInfo` exposes the project's `start_date` and `end_date`:

{{< tabs "example6">}}
{{< tab "get_project_info.py" >}}
```python
from typing import cast
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions
from groupdocs.viewer.results import ProjectManagementViewInfo

def get_project_info():
    with Viewer("sample.mpp") as viewer:
        info = viewer.get_view_info(ViewInfoOptions.for_html_view())
        project_info = cast(ProjectManagementViewInfo, info)

        print("File type:", project_info.file_type)
        print("Pages count:", len(project_info.pages))
        print("Start date:", project_info.start_date)
        print("End date:", project_info.end_date)

if __name__ == "__main__":
    get_project_info()
```
{{< /tab >}}
{{< tab "sample.mpp" >}}
{{< tab-text >}}
`sample.mpp` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/get-document-info/sample.mpp) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-project-info.txt" >}}  
```text
File type: Microsoft Project File (.mpp)
Pages count: 1
Start date: 2008-06-01 00:00:00+00:00
End date: 2008-09-03 00:00:00+00:00
```
[Download full output](/viewer/python-net/_output_files/developer-guide/get-document-info/get_project_info/get-project-info.txt)
{{< /tab >}}
{{< /tabs >}}

## See also

- [Rendering archives]({{< ref "/viewer/python-net/rendering-basics/render-archive-files.md" >}}) — render the contents of a ZIP, RAR, or 7Z archive.
- [Rendering CAD drawings]({{< ref "/viewer/python-net/rendering-basics/render-cad-documents" >}}) — apply CAD-specific options (layouts, tiles, background color).
- [Rendering Outlook data files]({{< ref "/viewer/python-net/rendering-basics/render-outlook-data-files.md" >}}) — filter messages by folder.
- [Rendering PDF documents]({{< ref "/viewer/python-net/rendering-basics/render-pdf-documents.md" >}}) — PDF-specific options.
- [Rendering Microsoft Project files]({{< ref "/viewer/python-net/rendering-basics/render-ms-project-files.md" >}}) — date range and time-unit options.
