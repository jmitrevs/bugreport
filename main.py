#!/usr/bin/env python
"""
Simple application to show problem in Windows
"""

from pathlib import Path
from PySide2 import QtGui, QtQml, QtCore

QtCore.QCoreApplication.setAttribute(QtCore.Qt.AA_EnableHighDpiScaling)
app = QtGui.QGuiApplication()
engine = QtQml.QQmlApplicationEngine()

# Load the QML file
qmlFile = Path(Path.cwd(), Path(__file__).parent, "main.qml")
engine.load(QtCore.QUrl.fromLocalFile(str(qmlFile)))

# execute and cleanup
app.exec_()
