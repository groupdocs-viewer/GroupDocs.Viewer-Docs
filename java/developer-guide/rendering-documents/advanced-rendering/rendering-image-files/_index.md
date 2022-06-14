---
id: view-image-files
url: viewer/java/view-image-files
title: Rendering Image Files
weight: 16
description: "This article contains use-cases of viewing image files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
For today there a lot of image files formats that contain pixel bit map with color (or black and white) values, some of them you can find in cameras (like JPEG, CR2) or in FAXes/scanners (TIF, TIFF). Some formats use image compression (like JPEG), for some formats use it optional (TIF/TIFF).

## Online Image Viewer

To view images online please check out free **[Image viewer](https://products.groupdocs.app/viewer/image)**

## Supported Image Formats

The following image formats are supported by the GroupDocs.Viewer for Java. 

Auto Detection means that GroupDocs.Viewer can determine the type of the image file by reading the information in the file header.

| File Extension | File Type | Auto Detection |
| --- | --- | --- |
| [.BMP](https://docs.fileformat.com/image/bmp) | [Bitmap Picture (BMP)](https://docs.fileformat.com/image/bmp) | Yes |
| [.CGM](https://docs.fileformat.com/page-description-language/cgm) | [Computer Graphics Metafile](https://docs.fileformat.com/page-description-language/cgm) | Yes |
| [.CDR](https://docs.fileformat.com/image/cdr) | [CorelDraw Vector Graphic Drawing (CDR)](https://docs.fileformat.com/image/cdr)[](https://docs.fileformat.com/image/cdr/) | Yes |
| [.CMX](https://docs.fileformat.com/image/cmx) | [Corel Metafile Exchange (CMX)](https://docs.fileformat.com/image/cmx)[](https://docs.fileformat.com/image/cmx/) | Yes |
| [.DCM](https://docs.fileformat.com/image/dcm) | [Digital Imaging and Communications in Medicine (DICOM)](https://docs.fileformat.com/image/dicom) | Yes |
| [.DJVU](https://docs.fileformat.com/image/djvu) | [Deja Vu (DjVu)](https://docs.fileformat.com/image/djvu) | Yes |
| [.DNG](https://docs.fileformat.com/image/dng) | [Digital Negative Specification](https://docs.fileformat.com/image/dng) | Yes |
| [.DIB](https://docs.fileformat.com/image/dib) | [Device-independent bitmap](https://docs.fileformat.com/image/dib) | Yes |
| [.EPS](https://docs.fileformat.com/page-description-language/eps) | [Encapsulated PostScript](https://docs.fileformat.com/page-description-language/eps) | Yes |
| [.GIF](https://docs.fileformat.com/image/gif) | [Graphics Interchange Format (GIF)](https://docs.fileformat.com/image/gif) | Yes |
| [.ICO](https://docs.fileformat.com/image/ico) | [Windows Icon](https://docs.fileformat.com/image/ico) | Yes |
| [.JP2](https://docs.fileformat.com/image/jp2) | [JPEG 2000 Core Image File](https://docs.fileformat.com/image/jp2) | Yes |
| .JPF | JPEG 2000 Image File | Yes |
| [.JPX](https://docs.fileformat.com/image/jp2) | [JPEG 2000 Image File](https://docs.fileformat.com/image/jp2) | Yes |
| .JPM | JPEG 2000 Image File | Yes |
| .J2C | JPEG 2000 Code Stream | Yes |
| [.J2K](https://docs.fileformat.com/image/jp2) | [JPEG 2000 Code Stream](https://docs.fileformat.com/image/jp2) | Yes |
| [.JPC](https://docs.fileformat.com/image/jp2) | [JPEG 2000 Code Stream](https://docs.fileformat.com/image/jp2) | Yes |
| [.JPG, .JPEG](https://docs.fileformat.com/image/jpeg) | [Joint Photographic Experts Group (JPEG)](https://docs.fileformat.com/image/jpeg) | Yes |
| [.ODG](https://docs.fileformat.com/image/odg) | [Open Document Graphic (ODG)](https://docs.fileformat.com/image/odg) | Yes |
| .FODG | Flat XML ODF Template | Yes |
| [.PCL](https://docs.fileformat.com/page-description-language/pcl) | [Printer Command Language (PCL)](https://docs.fileformat.com/page-description-language/pcl) | Yes |
| [.PNG](https://docs.fileformat.com/image/png) | [Portable Network Graphics (PNG)](https://docs.fileformat.com/image/png) | Yes |
| [.PS](https://docs.fileformat.com/page-description-language/ps) | [PostScript (PS)](https://docs.fileformat.com/page-description-language/ps) | Yes |
| [.PSD](https://docs.fileformat.com/image/psd) | [Adobe Photoshop Document (PSD)](https://docs.fileformat.com/image/psd) | Yes |
| [.PSB](https://docs.fileformat.com/image/psb) | [Photoshop Large Document Format (PSB)](https://docs.fileformat.com/image/psb) | Yes |
| [.SVG](https://docs.fileformat.com/page-description-language/svg) | [Scalable Vector Graphics (SVG)](https://docs.fileformat.com/page-description-language/svg) | Yes |
| [.SVGZ](https://fileinfo.com/extension/svgz) | [Scalable Vector Graphics gZipped (SVGZ)](https://fileinfo.com/extension/svgz) | Yes |
| [.TIF, .TIFF](https://docs.fileformat.com/image/tiff) | [Tagged Image File Format (TIFF)](https://docs.fileformat.com/image/tiff) | Yes |
| [.WEBP](https://docs.fileformat.com/image/webp) | [WebP Image](https://docs.fileformat.com/image/webp) | Yes |
| [.EMF](https://docs.fileformat.com/image/emf) | [Windows Enhanced Metafile (EMF)](https://docs.fileformat.com/image/emf)  | Yes |
| [.WMF](https://docs.fileformat.com/image/wmf) | [Windows Metafile (WMF)](https://docs.fileformat.com/image/wmf) | Yes |

*Note:* _to get actual information about supported formats it is recommended to call [getSupportedFileTypes()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType#getSupportedFileTypes()) method of [FileType](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class_

## In this section

The articles given in this section describes the usage of GroupDocs.Viewer to convert Image formats with different available options.
