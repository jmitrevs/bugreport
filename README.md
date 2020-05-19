# QtQuick Resources Problem in Windows

This package shows a problem running under Windows with Imagine and a resource. If you do the following steps on a Windows machine with PySide2 installed:

* `pyside2-rcc.exe -o style_rc.py style.qrc`
* `python main.py`

you will see that the `File` menu is replaced with `F...`. 

This works fine as is on both Macs and Linux PCs, so it's specifically Windows-related. I had a bug report in in the Qt for Python side but was told it's not Python-specific, which is why I am creating it here.

One thing I noticed was that if `qsTr("&File")` was replaced by just `"&File"` the menu item displayed propery. Interestingly, even if instead of qsTr I use:

```javascript
function myQsTr(foo) {
    return foo;
}
```
I saw the problem, which I can't really explain. It is as if it's the function call mechanism that causes the problem not `qsTr` in particular.

Note I left the code using `myQsTr` for `File` and no function call for `Quit`.

I am committing my `style_rc.py` to the repository for simpler reproducibilty. 
