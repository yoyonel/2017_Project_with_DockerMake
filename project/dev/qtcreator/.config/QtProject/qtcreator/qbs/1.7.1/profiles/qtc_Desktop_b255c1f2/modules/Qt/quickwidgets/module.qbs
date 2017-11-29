import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/qt57/lib/libQt5Quick.so.5.7.1", "/opt/qt57/lib/libQt5Qml.so.5.7.1", "/opt/qt57/lib/libQt5Widgets.so.5.7.1", "/opt/qt57/lib/libQt5Gui.so.5.7.1", "/opt/qt57/lib/libQt5Network.so.5.7.1", "/opt/qt57/lib/libQt5Core.so.5.7.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QuickWidgets"
    libNameForLinkerRelease: "Qt5QuickWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt57/lib/libQt5QuickWidgets.so.5.7.1"
    cpp.defines: ["QT_QUICKWIDGETS_LIB"]
    cpp.includePaths: ["/opt/qt57/include", "/opt/qt57/include/QtQuickWidgets"]
    cpp.libraryPaths: ["/opt/qt57/lib", "/opt/qt57/lib"]
    
}
