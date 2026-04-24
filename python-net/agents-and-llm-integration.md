---
id: agents-and-llm-integration
url: viewer/python-net/agents-and-llm-integration
title: Agents and LLM Integration
linkTitle: Agents and LLMs
description: "GroupDocs.Viewer for Python via .NET is AI agent and LLM friendly — machine-readable documentation, an MCP server, AGENTS.md shipped inside the pip package, and runnable code examples for AI-driven document pipelines."
weight: 9
keywords: AI, LLM, agent, RAG, MCP, machine-readable, documentation, Claude, GPT, Copilot, AGENTS.md, document rendering, viewer
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

## AI agent and LLM friendly

GroupDocs.Viewer for Python via .NET is designed to work seamlessly with AI agents, LLMs, and automated code generation tools. The library ships machine-readable documentation in multiple formats — including an `AGENTS.md` file inside the pip package itself — so that AI assistants can discover and use the API without manual guidance.

## MCP server

GroupDocs provides an [MCP (Model Context Protocol) server](https://docs.groupdocs.com/mcp) that enables LLMs to query the documentation on demand instead of loading it all at once. This saves tokens and lets your AI assistant fetch only the information it needs for the current task.

To connect your AI tool to the MCP server, add the GroupDocs endpoint to your MCP configuration:

{{< tabs "mcp-setup">}}
{{< tab "Claude Code / Claude Desktop" >}}
```json
// Claude Code:    ~/.claude/settings.json (or project .mcp.json)
// Claude Desktop: ~/Library/Application Support/Claude/claude_desktop_config.json
{
  "mcpServers": {
    "groupdocs-docs": {
      "url": "https://docs.groupdocs.com/mcp"
    }
  }
}
```
{{< /tab >}}
{{< tab "GitHub Copilot" >}}
```json
// .vscode/mcp.json in your project root
{
  "servers": {
    "groupdocs-docs": {
      "url": "https://docs.groupdocs.com/mcp"
    }
  }
}
```
{{< /tab >}}
{{< tab "Cursor" >}}
```json
// .cursor/mcp.json in your project root
{
  "mcpServers": {
    "groupdocs-docs": {
      "url": "https://docs.groupdocs.com/mcp"
    }
  }
}
```
{{< /tab >}}
{{< tab "OpenCode" >}}
```json
// ~/.config/opencode/config.json
{
  "mcpServers": {
    "groupdocs-docs": {
      "url": "https://docs.groupdocs.com/mcp"
    }
  }
}
```
{{< /tab >}}
{{< tab "Generic MCP" >}}
```json
// Any MCP-compatible client
{
  "mcpServers": {
    "groupdocs-docs": {
      "url": "https://docs.groupdocs.com/mcp"
    }
  }
}
```
{{< /tab >}}
{{< /tabs >}}

See [https://docs.groupdocs.com/mcp](https://docs.groupdocs.com/mcp) for full setup instructions and the list of available tools.

## AGENTS.md — built into the package

The `groupdocs-viewer-net` pip package includes an `AGENTS.md` file at `groupdocs/viewer/AGENTS.md`. AI coding assistants that scan installed packages (such as Claude Code, Cursor, GitHub Copilot) can automatically discover the API surface, usage patterns, and troubleshooting tips.

After installing the package, you can find it at:

```bash
pip show -f groupdocs-viewer-net | grep AGENTS
```

## Machine-readable documentation

Every documentation page is available as a plain Markdown file that AI tools can fetch and process directly:

| Resource | URL |
|---|---|
| Full documentation (single file) | `https://docs.groupdocs.com/viewer/python-net/llms-full.txt` |
| Full documentation (all products) | `https://docs.groupdocs.com/llms-full.txt` |
| Individual page (any page) | Append `.md` to the page URL, e.g. `https://docs.groupdocs.com/viewer/python-net.md` |
| Quick start guide | `https://docs.groupdocs.com/viewer/python-net/getting-started/quick-start-guide.md` |

### How to use with AI tools

Point your AI assistant to the full documentation file for comprehensive context:

```
Fetch https://docs.groupdocs.com/viewer/python-net/llms-full.txt and use it
as a reference for GroupDocs.Viewer for Python via .NET API.
```

Or reference individual pages for focused tasks:

```
Read https://docs.groupdocs.com/viewer/python-net/getting-started/quick-start-guide.md
and help me render a DOCX to HTML in Python.
```

## Why GroupDocs.Viewer is a good building block for AI document pipelines

LLMs and RAG systems can rarely consume DOCX, XLSX, PPTX, EML, CAD drawings, or scanned PDFs directly. GroupDocs.Viewer renders the long tail of office, image, CAD, email, and archive formats into the few formats your model can actually read:

- **Render to per-page PNG / JPG** for vision models — one image per page, size-controlled, ready to feed straight to a multimodal LLM.
- **Render to PDF** for OCR and page-level routing — with watermarks, password protection, or optimization applied during rendering.
- **Render to HTML** when you want to keep semantic structure (headings, tables, lists) for downstream parsers or embedding generators.
- **Render to HTML with external resources** for indexing systems that want the markup and assets separated.

A typical preprocessing step looks like:

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import (
    HtmlViewOptions, PdfViewOptions, PngViewOptions, ViewInfoOptions,
)

# Step 1: Inspect — let the agent decide what to do based on metadata
with Viewer("inbox/incoming.docx") as v:
    info = v.get_view_info(ViewInfoOptions.for_html_view())
    print(f"format={info.file_type} pages={info.pages_count}")

# Step 2: Render to a model-friendly format
with Viewer("inbox/incoming.docx") as v:
    # HTML for structure-preserving parsing
    v.view(HtmlViewOptions.for_embedded_resources("staging/incoming_{0}.html"))

    # PDF for OCR / page routing
    v.view(PdfViewOptions("staging/incoming.pdf"))

    # Per-page PNG for vision models
    v.view(PngViewOptions("staging/incoming_page_{0}.png"))
```

For end-to-end examples — including rendering archives, attachments, password-protected documents, and format-specific options — see the [Developer Guide]({{< ref "viewer/python-net/developer-guide" >}}) and [Rendering Basics]({{< ref "viewer/python-net/rendering-basics" >}}). Every code block on those pages has a runnable counterpart in the [examples repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET).

## Pair with GroupDocs.Conversion for hard-to-render inputs

If you are handling exotic or legacy formats (older DOC/XLS/PPT, password-protected archives, custom email containers), chain GroupDocs.Viewer with [GroupDocs.Conversion for Python via .NET](https://docs.groupdocs.com/conversion/python-net/):

1. Use **GroupDocs.Conversion** to normalise the source — for example, convert a legacy `.doc` or a PST archive entry to `.docx` or `.pdf`.
2. Use **GroupDocs.Viewer** to render the normalised file to HTML, PDF, PNG, or JPG that your model can consume.

This combination covers the long tail of input formats while keeping the model-facing stage simple and predictable.

## AGENTS.md reference

The content below is the same `AGENTS.md` file that ships inside the `groupdocs-viewer-net` package. Copy it into your project as `AGENTS.md` or point your AI assistant to this page.

````markdown
# GroupDocs.Viewer for Python via .NET -- AGENTS.md

> Instructions for AI agents working with this package.

Render documents to HTML, PNG, JPG, or PDF -- 170+ file formats supported.

## Install

```bash
pip install groupdocs-viewer-net
```

**Python**: 3.5 - 3.14 | **Platforms**: Windows, Linux, macOS

## Resources

| Resource | URL |
|---|---|
| Documentation | https://docs.groupdocs.com/viewer/python-net/ |
| LLM-optimized docs | https://docs.groupdocs.com/viewer/python-net/llms-full.txt |
| API reference | https://reference.groupdocs.com/viewer/python-net/ |
| Code examples | https://docs.groupdocs.com/viewer/python-net/developer-guide/ |
| Release notes | https://releases.groupdocs.com/viewer/python-net/release-notes/ |
| PyPI | https://pypi.org/project/groupdocs-viewer-net/ |
| Free support forum | https://forum.groupdocs.com/c/viewer/ |
| Temporary license | https://purchase.groupdocs.com/temporary-license |

## MCP Server

If your environment has MCP configured, you can connect your AI tool to the GroupDocs documentation server for on-demand API lookups:

```json
{
  "mcpServers": {
    "groupdocs-docs": {
      "url": "https://docs.groupdocs.com/mcp"
    }
  }
}
```

Works with Claude Code (`~/.claude/settings.json`), Cursor (`.cursor/mcp.json`), VS Code Copilot (`.vscode/mcp.json`), and any MCP-compatible client. If MCP is unavailable, fall back to the LLM-optimized docs URL above and this file -- both are shipped inside the wheel.

## Imports

```python
from groupdocs.viewer import License, FileType, Viewer, ViewerSettings
from groupdocs.viewer.exceptions import (
    GroupDocsViewerException, IncorrectPasswordException,
    PasswordRequiredException, InvalidFontFormatException, InvalidImageFormatException,
)
from groupdocs.viewer.caching import CacheKeys, FileCache, ICache
from groupdocs.viewer.drawing import (
    Argb32Color, Rgb24Color, CssLevel1, CssLevel2, CssLevel3, CssLevel4,
    Image2DFormat, KnownColors,
)
from groupdocs.viewer.fonts import (
    FolderFontSource, FontFormat, FontSettings, FontStyles, IFontInfo, IFontSource,
    PdfFontInfo, PresentationFontInfo, SpreadsheetFontInfo, WordProcessingFontInfo,
    WordProcessingSubstitutedFontInfo, SearchOption,
)
from groupdocs.viewer.interfaces import (
    CreatePageStream, CreateResourceStream, CreateResourceUrl, CreateFileStream,
    ReleasePageStream, ReleaseResourceStream, ReleaseFileStream,
    IPageStreamFactory, IResourceStreamFactory, IFileStreamFactory,
)
from groupdocs.viewer.logging import ConsoleLogger, FileLogger, ILogger
from groupdocs.viewer.options import (
    # View-options flavours — the four output formats
    HtmlViewOptions, PngViewOptions, JpgViewOptions, PdfViewOptions,
    ViewInfoOptions, ViewOptions, BaseViewOptions,
    # Loading + format-specific rendering tweaks
    LoadOptions, ArchiveOptions, CadOptions, EmailOptions, MailStorageOptions,
    OutlookOptions, PdfOptimizationOptions, PdfOptions, PresentationOptions,
    ProjectManagementOptions, SearchHighlightOptions, SpreadsheetOptions,
    TextOptions, VisioRenderingOptions, WebDocumentOptions, WordProcessingOptions,
    # Rendering primitives
    Watermark, Rotation, Position, ImageQuality, PageSize, Permissions, Security,
    Resolution, Size, Tile, TimeUnit, TextOverflowMode, Field, FileName,
)
from groupdocs.viewer.results import (
    ViewInfo, FileInfo, Attachment, Page, Resource, TextElement, Character, Word, Line,
    ArchiveViewInfo, CadViewInfo, MailMessageViewInfo, MboxViewInfo, OutlookViewInfo,
    LotusNotesViewInfo, PdfViewInfo, ProjectManagementViewInfo, Layer, Layout,
)
```

## Quick Start

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

with Viewer("document.docx") as viewer:
    options = HtmlViewOptions.for_embedded_resources("page_{0}.html")
    viewer.view(options)
```

## Render to PNG

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

with Viewer("document.pdf") as viewer:
    viewer.view(PngViewOptions("page_{0}.png"))
```

## Render to PDF

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

with Viewer("spreadsheet.xlsx") as viewer:
    viewer.view(PdfViewOptions("output.pdf"))
```

## Render selected pages / reorder pages

```python
# Render only pages 1 and 3
with Viewer("document.docx") as viewer:
    viewer.view(HtmlViewOptions.for_embedded_resources("page_{0}.html"),
                page_numbers=[1, 3])

# Reorder: render page 2 first, then page 1
with Viewer("document.docx") as viewer:
    viewer.view(PdfViewOptions("out.pdf"), page_numbers=[2, 1])
```

## Load password-protected documents

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions, LoadOptions

load_options = LoadOptions()
load_options.password = "12345"

with Viewer("protected.docx", load_options) as viewer:
    viewer.view(HtmlViewOptions.for_embedded_resources("page_{0}.html"))
```

## Get View Info

```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import ViewInfoOptions

with Viewer("document.pdf") as viewer:
    info = viewer.get_view_info(ViewInfoOptions.for_html_view())
    print(f"Pages: {len(info.pages)}")
    for page in info.pages:
        print(f"  Page {page.number}: {page.width}x{page.height}")
```

**Viewer constructor.** `Viewer(source, load_options=None, settings=None, leave_open=None)` accepts all four positional **or** as kwargs. Prefer kwargs when you only need `settings`:

```python
from groupdocs.viewer import Viewer, ViewerSettings
from groupdocs.viewer.logging import ConsoleLogger

settings = ViewerSettings(logger=ConsoleLogger())

with Viewer("input.docx", settings=settings) as viewer:   # no None placeholder
    viewer.view(HtmlViewOptions.for_embedded_resources("page_{0}.html"))
```

## Render to custom streams

Unlike most GroupDocs products, Viewer **does** support Python callables that return streams. Pass a function to the `HtmlViewOptions` / `PngViewOptions` / `JpgViewOptions` / `PdfViewOptions` constructors that accept `CreatePageStream` / `CreateResourceStream` / `CreateFileStream` factories — the bridge auto-wraps your Python callable as a .NET stream factory.

```python
# Write each page to an in-memory buffer
import io
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PngViewOptions

page_buffers = {}
def create_page_stream(page_number):
    buf = io.BytesIO()
    page_buffers[page_number] = buf
    return buf

with Viewer("input.docx") as viewer:
    viewer.view(PngViewOptions(create_page_stream))

# page_buffers now holds {1: <BytesIO>, 2: <BytesIO>, ...}
```

```python
# Write HTML pages + resources with custom naming
import os
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import HtmlViewOptions

def create_page(page_number):
    os.makedirs("out", exist_ok=True)
    return open(f"out/page_{page_number}.html", "wb")

def create_resource(page_number, resource_name):
    return open(f"out/res_{page_number}_{resource_name}", "wb")

def resource_url(page_number, resource_name):
    return f"res_{page_number}_{resource_name}"

with Viewer("input.docx") as viewer:
    viewer.view(HtmlViewOptions.for_external_resources(
        create_page, create_resource, resource_url))
```

The three factory interfaces (`IPageStreamFactory`, `IResourceStreamFactory`, `IFileStreamFactory`) all accept Python callables — no bridge imports needed. The callable returns any file-like object (`open(...)` or `io.BytesIO()`); the bridge reads from it after `view()` returns.

## Save attachments

```python
from groupdocs.viewer import Viewer

with Viewer("with_attachments.msg") as viewer:
    for attachment in viewer.get_attachments():
        # Pass a filesystem path — the wrapper opens the file, writes,
        # and closes it. Parent directories are created as needed.
        viewer.save_attachment(attachment, f"./out/{attachment.file_name}")

        # Equivalent stream form (explicit control over the sink):
        # import io
        # buf = io.BytesIO()
        # viewer.save_attachment(attachment, buf)
        # buf.getvalue()   # attachment bytes
```

**Note**: .NET 26.4's native `SaveAttachment` only exposes the
`(Attachment, Stream)` overload. The path-accepting form is a Python-
side convenience layered on top — it wraps the open/close for you.

## Font sources

`FontSettings.set_font_sources(...)` is the .NET
`params IFontSource[]` method and accepts any of these call shapes:

```python
from groupdocs.viewer.fonts import FontSettings, FolderFontSource, SearchOption

src1 = FolderFontSource("C:/fonts/primary", SearchOption.ALL_FOLDERS)
src2 = FolderFontSource("C:/fonts/backup", SearchOption.TOP_FOLDER_ONLY)

FontSettings.set_font_sources(src1, src2)          # varargs
FontSettings.set_font_sources([src1, src2])        # single list
FontSettings.set_font_sources([src1], [src2])      # multiple lists (flattened)
FontSettings.set_font_sources([src1, src2], src3)  # mixed — also flattened

FontSettings.reset_font_sources()   # clear
```

All four shapes normalize to the same flat list before crossing the
bridge. Strings are never flattened (a string path is passed through
as-is, not exploded into characters).

## Licensing

```python
from groupdocs.viewer import License

# From file
License().set_license("path/to/license.lic")

# From stream
with open("license.lic", "rb") as f:
    License().set_license(f)
```

Or auto-apply: `export GROUPDOCS_LIC_PATH="path/to/license.lic"`

**Evaluation vs licensed.** Without a license the library still runs, but PDF output carries an evaluation watermark stamp and non-PDF targets show an equivalent evaluation mark; there is also a page/document count cap. Set `GROUPDOCS_LIC_PATH` (or call `License().set_license(...)`) and re-run to clear both. A 30-day full license is free: https://purchase.groupdocs.com/temporary-license

## API Reference

### Viewer

| Method | Returns | Description |
|---|---|---|
| `__init__(source, load_options=None, settings=None, leave_open=None)` | | `source` is a path, bytes, or stream |
| `view(options, cancellation_token=None, page_numbers=None)` | `None` | Render with `HtmlViewOptions` / `PngViewOptions` / `JpgViewOptions` / `PdfViewOptions` |
| `get_view_info(options)` | `ViewInfo` | Page count, size, layout info (use `ViewInfoOptions.for_html_view()` etc.) |
| `get_file_info()` | `FileInfo` | Format, name, encrypted flag without viewing |
| `get_attachments(cancellation_token=None)` | `list[Attachment]` | Embedded attachments (emails, PDFs) |
| `save_attachment(attachment, destination)` | `None` | Extract one attachment. `destination` can be a filesystem path (`str` / `os.PathLike`) or a writable stream (`BytesIO` / `open(..., "wb")`). Paths: the wrapper opens the file, writes through, and closes it — parent dirs are auto-created. Streams: passed straight to the bridge; caller owns the lifetime. |
| `get_all_fonts()` | `list` | Fonts embedded in the document |
| `search(options)` | `None` | Search with `SearchHighlightOptions` |

### HtmlViewOptions

Accepts the factory methods `for_embedded_resources(...)` and `for_external_resources(...)`. Each factory takes either a format string (e.g. `"page_{0}.html"`) or callables for `CreatePageStream` / `CreateResourceStream` / `CreateResourceUrl`.

| Property | Type | Writable |
|---|---|---|
| `render_responsive` | `bool` | yes |
| `minify` | `bool` | yes |
| `render_to_single_page` | `bool` | yes |
| `for_printing` | `bool` | yes |
| `exclude_fonts` | `bool` | yes |
| `fonts_to_exclude` | `list[str]` | yes |
| `remove_java_script` | `bool` | yes |
| `image_width` / `image_height` | `int` | yes |
| `image_max_width` / `image_max_height` | `int` | yes |
| `watermark` | `Watermark` | yes (inherited from `ViewOptions`) |
| `render_comments` | `bool` | yes (inherited from `BaseViewOptions`) |
| `render_hidden_pages` | `bool` | yes (inherited from `BaseViewOptions`) |
| `render_notes` | `bool` | yes (inherited from `BaseViewOptions`) |
| `default_font_name` | `str` | yes (inherited from `BaseViewOptions`) |
| `*_options` (`archive_options`, `cad_options`, `email_options`, `outlook_options`, `pdf_options`, `presentation_options`, `project_management_options`, `spreadsheet_options`, `text_options`, `visio_rendering_options`, `web_document_options`, `word_processing_options`, `mail_storage_options`) | format-specific tweaks | yes |

### PngViewOptions / JpgViewOptions

Constructor takes `file_path_format` (e.g. `"page_{0}.png"`) OR a `CreatePageStream` callable.

| Property | Type | Writable |
|---|---|---|
| `width` / `height` | `int` | yes |
| `max_width` / `max_height` | `int` | yes |
| `quality` (JPG only) | `int` 1-100 | yes |
| `extract_text` | `bool` | yes |
| `watermark`, `render_comments`, `render_hidden_pages`, `render_notes`, `default_font_name`, and all `*_options` | | yes |

### PdfViewOptions

Constructor takes `output_file_path` (single PDF output) OR a `CreateFileStream` callable.

| Property | Type | Writable |
|---|---|---|
| `security` | `Security` | yes |
| `pdf_optimization_options` | `PdfOptimizationOptions` | yes |
| `image_width` / `image_height` | `int` | yes |
| `image_max_width` / `image_max_height` | `int` | yes |
| `watermark`, `render_comments`, `render_hidden_pages`, `render_notes`, `default_font_name`, and all `*_options` | | yes |

Also has `rotate_page(page_number, rotation)` — rotates a specific page in the output PDF. `rotation` is one of `Rotation.ON_90_DEGREE`, `ON_180_DEGREE`, `ON_270_DEGREE`.

### ViewInfoOptions

Factory methods: `for_html_view()`, `for_png_view()`, `for_jpg_view()`, `for_pdf_view()`.

| Property | Type | Writable |
|---|---|---|
| `width` / `height` | `int` | yes |
| `max_width` / `max_height` | `int` | yes |
| `extract_text` | `bool` | yes |
| Same `render_comments`, `render_hidden_pages`, `render_notes`, `default_font_name`, and `*_options` as `BaseViewOptions` | | yes |

### LoadOptions

Pass to `Viewer(source, load_options)` to control how the source document is parsed.

| Property | Type | Writable |
|---|---|---|
| `file_type` | `FileType` | yes |
| `password` | `str` | yes |
| `encoding` | `str` | yes |
| `detect_encoding` | `bool` | yes |
| `try_repair` | `bool` | yes |
| `resource_loading_timeout` | `timedelta` | yes |
| `skip_external_resources` | `bool` | yes |
| `whitelisted_resources` | `list[str]` | yes |

### Watermark

Construct with `Watermark(text)` then tweak appearance.

| Property | Type | Writable |
|---|---|---|
| `text` | `str` | yes |
| `color` | color (Argb32Color / KnownColors) | yes |
| `position` | `Position` | yes |
| `size` | `int` | yes |
| `font_name` | `str` | yes |

## FileType enum

Viewer exposes 190+ file formats on a single flat `FileType` class — access via `FileType.DOCX`, `FileType.PDF`, etc. (case-insensitive). Members grouped by family:

<!-- begin:filetypes -->
| Family | Members |
| :- | :- |
| Archives / Compression | `ZIP, TAR, XZ, TXZ, TARXZ, TGZ, TARGZ, BZ2, RAR, GZ, GZIP, SevenZip, CPIO, Zstandard, Tzst, TarZst, Iso, Lha, Cab` |
| CAD | `DXF, DWG, DWT, STL, IFC, DWF, FBX, DWFX, DGN, PLT, CF2, OBJ, HPG, IGS` |
| Diagrams (Visio) | `VSD, VSDX, VSS, VSSX, VSDM, VST, VSTX, VSTM, VSSM, VSX, VTX` |
| Word-processing | `DOC, DOCM, DOCX, DOT, DOTM, DOTX, RTF, ODT, OTT, TXT, FlatOpc` |
| Spreadsheets | `XLS, XLSX, XLSM, XLSB, ODS, OTS, XLT, XLTX, XLTM, CSV, TSV, DIF, SXC, FlatOpc, Numbers` |
| Presentations | `PPT, PPS, PPTX, PPSX, ODP, OTP, POTX, POT, POTM, PPTM, PPSM, FlatOpc` |
| PDF / Page Description | `PDF, PS, EPS, XPS, OXPS, TEX, PCL` |
| eBook | `EPUB, MOBI, AZW3, CHM` |
| Email | `MSG, EML, EMLX, VCF, MBOX, PST, OST, OLM, ICS` |
| Images | `JPG, JPEG, JFIF, PNG, BMP, DIB, TIFF, TIF, GIF, ICO, WebP, EMZ, WMZ, EMF, WMF, SVG, SVGZ, DCM, DICOM, CDR, CMX, DjVu, DNG, Jp2, J2C, J2K, JPX, JPF, JPM, JPC, JLS, TGA, HEIC, AVIF, PSD, PSB, AI, APNG` |
| Project Management | `MPP, MPT, MPX, XER` |
| Web / Markup | `HTML, HTM, MHT, MHTML, XML, JSON, CSS` |
| 3D | `Usd, Usdz, Obj, Ply, Gltf, Glb, ThreeDS, ThreeMF` |
| Fonts | `TTF, EOT, OTF, CFF, WOFF, WOFF2, Type1` |
| Source code / Text | `MD, LOG, AS, AS3, ASM, BAT, C, CC, CMAKE, CPP, CS, CXX, DIFF, ...` (190+ total — use `FileType.get_supported_file_types()` to enumerate at runtime) |
<!-- end:filetypes -->

Use `FileType.from_extension("docx")` when you don't know which family owns a format — it returns the correct `FileType` instance. `FileType.from_stream(stream)` sniffs file headers. `FileType.get_supported_file_types()` returns the full list.

## Key Patterns

- **Properties**: use `snake_case` -- auto-mapped to .NET `PascalCase`
- **Context managers**: `with Viewer(...) as x:` ensures resources are released
- **Streams**: pass `open("file", "rb")` or `io.BytesIO(data)` where .NET expects Stream
- **Stream write-back**: `BytesIO` objects are updated after .NET writes to them
- **Enums**: case-insensitive, lazy-loaded (e.g., `FileType.DOCX`)
- **Collections**: `for item in result` and `len(result)` work on .NET collections
- **Callbacks**: Python functions work for handler interfaces including the three stream factories (`CreatePageStream`, `CreateResourceStream`, `CreateFileStream`). See [Render to custom streams](#render-to-custom-streams) above — the bridge auto-wraps Python callables that return file-like objects as .NET `Stream` factories.
- **Factory methods**: `HtmlViewOptions.for_embedded_resources("path/page_{0}.html")` and `.for_external_resources(page_fmt, resource_fmt, url_fmt)` accept either string path templates OR callback factories. The dispatcher Python-side type-checks before calling into .NET, so positional strings route to the string overload without a bridge round-trip.

## Platform Requirements

| Platform | Requirements |
|---|---|
| Windows | None |
| Linux | `apt install libgdiplus libfontconfig1 ttf-mscorefonts-installer` |
| macOS | `brew install mono-libgdiplus` |

## Troubleshooting

**`IncorrectPasswordException` / `PasswordRequiredException`** -- the document is encrypted. Pass `LoadOptions(password="...")` to `Viewer(...)`.

**`Cannot convert String to CreatePageStream`** (fixed in 26.4.0+) -- older wheels had a static-factory dispatcher that leaked .NET cast errors. Upgrade with `pip install --upgrade groupdocs-viewer-net`.

**`System.Drawing.Common is not supported`** -- install libgdiplus: `sudo apt install libgdiplus` (Linux) / `brew install mono-libgdiplus` (macOS)

**`Gdip` type initializer exception** -- outdated libgdiplus: `brew reinstall mono-libgdiplus` (macOS)

**Garbled text / missing fonts** -- install fonts: `sudo apt install ttf-mscorefonts-installer fontconfig && sudo fc-cache -f`

**`DllNotFoundException: libSkiaSharp`** -- stale system copy conflicts with bundled version. Rename it: `sudo mv /usr/local/lib/libSkiaSharp.dylib /usr/local/lib/libSkiaSharp.dylib.bak`

**`DOTNET_SYSTEM_GLOBALIZATION_INVARIANT` errors** -- do NOT set this. Install ICU: `sudo apt install libicu-dev`

**`TypeLoadException`** -- reinstall: `pip install --force-reinstall groupdocs-viewer-net`

**Still stuck?** Post your question at https://forum.groupdocs.com/c/viewer/ -- the development team responds directly.
````

## See also

- [Quick Start Guide]({{< ref "viewer/python-net/getting-started/quick-start-guide" >}}) — your first rendering in five minutes
- [Developer Guide]({{< ref "viewer/python-net/developer-guide" >}}) — runnable examples for every API surface
- [Rendering Basics]({{< ref "viewer/python-net/rendering-basics" >}}) — per-format rendering guides
- [API Reference](https://reference.groupdocs.com/viewer/python-net) — full class and method documentation
