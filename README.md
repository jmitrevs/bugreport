# QtQuick Resources Problem in Windows

This package shows a problem running under Windows with Imagine and a resource. If you do the following steps on a Windows machine with PySide2 installed:

* `pyside2-rcc.exe -o style_rc.py style.qrc`
* `python main.py`

I get the following error message

`DirectWrite: CreateFontFaceFromHDC() failed (Indicates an error in an input file such as a font file.) for QFontDef(Family="MS Shell Dlg 2", pointsize=8.5, pixelsize=11, styleHint=5, weight=50, stretch=100, hintingPreference=0) LOGFONT("Open Sans", lfWidth=0, lfHeight=-11) dpi=96
DirectWrite: CreateFontFaceFromHDC() failed (Indicates an error in an input file such as a font file.) for QFontDef(Family="MS Shell Dlg 2", pointsize=8.5, pixelsize=11, styleHint=5, weight=50, stretch=100, hintingPreference=0) LOGFONT("Open Sans", lfWidth=0, lfHeight=-11) dpi=96`

and "File" and "Quit" are replaced by "..." in the menu bar.

Replacing the `style_rc.py` with a version created on Linux did not change the behavior.
