---
id: troubleshooting
url: viewer/python-net/troubleshooting
title: Troubleshooting
weight: 8
description: "Troubleshooting file processing with GroupDocs.Viewer: common issues and solutions are detailed here."
keywords: GroupDocs.Viewer, file processing, troubleshooting, known issues, limitations, document viewing, errors
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
This section describes issues that you may face processing files with GroupDocs.Viewer and solutions for them. The [Known issues](#known-issues) section below lists the limitations known in the current version.

## Common problems

| Problem | Platform | Solution |
|---|---|---|
| The process exits with code 134 and `Couldn't find a valid ICU package`, with no Python exception | Linux | Install ICU: `apt-get install libicu-dev`. Do not set `DOTNET_SYSTEM_GLOBALIZATION_INVARIANT` instead |
| `Failed to detect file type` for PSD, PSB, AI or ONE files | Linux, macOS | These formats render on Windows only |
| `Cannot find fallback font 'Generic Sans Serif'` rendering MPP, MPT or MPX files | Linux | Install the Microsoft core fonts: `apt-get install ttf-mscorefonts-installer && fc-cache -f` (on Debian, enable `contrib` first) |
| `Font SimSun was not found` rendering an OFD file | Linux, macOS | Install SimSun, or point the engine at its folder: see [Render OFD documents]({{< ref "viewer/python-net/rendering-basics/render-pdf-documents.md#render-ofd-documents" >}}) |
| `RuntimeError: The .NET runtime cannot be used in a process forked after it started` | Linux, macOS | Start worker processes with `spawn`: see [Threads, processes and web servers]({{< ref "viewer/python-net/developer-guide/threads-and-processes.md" >}}) |
| `LicenseError` at the first call | All | The license in `GROUPDOCS_LIC_PATH` cannot be applied; the message gives the reason. See [Licensing and Evaluation]({{< ref "viewer/python-net/getting-started/licensing-and-subscription.md" >}}) |

## Known issues

These are known in version 26.11, which runs GroupDocs.Viewer for .NET 26.10:

- **Spreadsheet page images on Linux.** Page images (PNG, JPEG) of a spreadsheet lose the spaces between words and clip digits at cell edges. Render spreadsheets to PDF or HTML on Linux.
- **A `Viewer` used twice.** A workbook rendered a second time by the same `Viewer` comes out with more pages. Create a new `Viewer` for each render.
- **Text extraction on macOS.** `get_view_info(ViewInfoOptions.for_png_view(True))` fails on a DOCX with "The number greater than zero is expected. (Parameter 'width')".
- **`optimize_spreadsheets` with `ViewerSettings`.** `PdfOptimizationOptions.optimize_spreadsheets` has no effect when the `Viewer` is created with `ViewerSettings`, a logger for example. Create the `Viewer` without `ViewerSettings` when you need the option.
- **Presentations on Linux with `fonts-noto-extra`.** Rendering a presentation whose fonts are not installed can end the Python process when the fonts of Debian's `fonts-noto-extra` package are installed. Set `default_font_name` on the view options to an installed font, or do not install `fonts-noto-extra`.
- **CVE scanners on Linux** report ICU 59 and libpng 1.6.38 inside the engine's Slides native library. A fix needs an engine release.
- **`SpooledTemporaryFile` as an output.** A `tempfile.SpooledTemporaryFile` returned by a page-stream function stays empty. Return an `io.BytesIO` or an open file instead.

## Related articles

For details, please refer to the following pages:

