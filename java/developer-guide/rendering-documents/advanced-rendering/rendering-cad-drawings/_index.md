---
id: view-cad-drawings
url: viewer/java/view-cad-drawings
title: Rendering CAD Drawings
weight: 18
description: "This article contains use-cases of rendering CAD drawings, view stl files or create dwg viewer with GroupDocs.Viewer within your Java applications."
keywords: STL Viewer, Stereo Lithography, view stl, dwg viewer
hideChildren: False
---
**CAD** (Computer-Aided Design) files may contain 2D or 3D designs. They are generated by CAD software programs, which can be used to create models or architectural plans. 2D CAD files are often referred to as drawings, while 3D files are often called models, parts, or assemblies. The AutoCAD is arguably the most prevalent CAD software on the market. It’s used by professionals and hobbyists alike. If you work with CAD, you’re likely to already be familiar with some of AutoCAD’s most common file formats, such as **DWG** and **DXF**.

## Supported CAD Formats

The following CAD formats are supported by the GroupDocs.Viewer for Java. Auto Detection means that GroupDocs.Viewer for Java can determine the type of the CAD drawing by reading the information in the file header.

| File Extension | File Type | Auto Detection | Note |
| --- | --- | --- | --- |
| [.DGN](https://docs.fileformat.com/cad/dgn) | [MicroStation Design File (V7)](https://docs.fileformat.com/cad/dgn) | Yes |   |
| [.DWF](https://docs.fileformat.com/cad/dwf) | [Autodesk Design Web Format](https://docs.fileformat.com/cad/dwf) | Yes |   |
| [.DWG](https://docs.fileformat.com/cad/dwg) | [AutoCAD Drawing](https://docs.fileformat.com/cad/dwg) | Yes | Supported formats: Release 11, 12, 13, 14; DWG 2000, 2000i, 2002; DWG 2004, 2005, 2006; DWG 2010, 2011, 2012; DWG 2013, 2014, 2015, 2016 |
| [.DWT](https://docs.fileformat.com/cad/dwt) | [AutoCAD Drawing Template](https://docs.fileformat.com/cad/dwt) | Yes |   |
| [.DXF](https://docs.fileformat.com/cad/dxf) | [AutoCAD Drawing Interchange](https://docs.fileformat.com/cad/dxf) | Yes |   |
| [.IFC](https://docs.fileformat.com/cad/ifc) | [Industry Foundation Classes](https://docs.fileformat.com/cad/ifc) | Yes |   |
| [.STL](https://docs.fileformat.com/cad/stl) | [Stereo Lithography](https://docs.fileformat.com/cad/stl) | Yes |   |
| [.PLT](https://docs.fileformat.com/cad/plt) | [AutoCAD Plotter Document](https://docs.fileformat.com/cad/plt) | Yes |   |
| .OBJ | Wavefront 3D Object File | Yes |   |
| .CF2 | Common File Format File | Yes |   |
| .IGS | Initial Graphics Exchange Specification (IGES) File | Yes |   |
| .HPG | HPGL Plot File | Yes |   |

*Note:* _to get actual information about supported formats it is recommended to call [getSupportedFileTypes()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType#getSupportedFileTypes()) method of [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class_

## Articles in this section

The articles given in this section describes the usage of GroupDocs.Viewer to render the CAD drawings with different available options.