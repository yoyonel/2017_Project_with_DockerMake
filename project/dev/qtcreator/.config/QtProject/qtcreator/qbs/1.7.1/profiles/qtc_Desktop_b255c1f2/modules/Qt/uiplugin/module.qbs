import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiPlugin"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: ["QT_UIPLUGIN_LIB"]
    cpp.includePaths: ["/opt/qt57/include", "/opt/qt57/include/QtUiPlugin"]
    cpp.libraryPaths: []
    
}
