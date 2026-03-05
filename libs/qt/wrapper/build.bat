@echo off
setlocal

set QT_DIR=%~dp0..\..\qt6-static
set RES_DIR=%QT_DIR%\lib\objects-Release
set PLUGIN_DIR=%QT_DIR%\plugins

echo Building qt_wrapper.lib (static) ...

cl /nologo /EHsc /std:c++17 /Zc:__cplusplus /permissive- /MD /c /O2 ^
    /I "%QT_DIR%\include" ^
    /I "%QT_DIR%\include\QtCore" ^
    /I "%QT_DIR%\include\QtGui" ^
    /I "%QT_DIR%\include\QtWidgets" ^
    /I "%QT_DIR%\include\QtOpenGL" ^
    qt_wrapper.cpp

if %ERRORLEVEL% neq 0 (
    echo COMPILE FAILED
    exit /b 1
)

lib /nologo /OUT:qt_wrapper.lib ^
    qt_wrapper.obj ^
    "%RES_DIR%\Gui_resources_1\.qt\rcc\qrc_qpdf_init.cpp.obj" ^
    "%RES_DIR%\Gui_resources_2\.qt\rcc\qrc_gui_shaders_init.cpp.obj" ^
    "%RES_DIR%\Widgets_resources_1\.qt\rcc\qrc_qstyle_init.cpp.obj" ^
    "%RES_DIR%\Widgets_resources_2\.qt\rcc\qrc_qstyle1_init.cpp.obj" ^
    "%RES_DIR%\Widgets_resources_3\.qt\rcc\qrc_qstyle_fusion_init.cpp.obj" ^
    "%RES_DIR%\Widgets_resources_4\.qt\rcc\qrc_qmessagebox_init.cpp.obj" ^
    "%RES_DIR%\QWindowsIntegrationPlugin_resources_1\.qt\rcc\qrc_openglblacklists_init.cpp.obj" ^
    "%RES_DIR%\QWindowsIntegrationPlugin_resources_2\.qt\rcc\qrc_cursors_init.cpp.obj" ^
    "%PLUGIN_DIR%\styles\objects-Release\QModernWindowsStylePlugin_init\QModernWindowsStylePlugin_init.cpp.obj"

if %ERRORLEVEL% neq 0 (
    echo LIB FAILED
    exit /b 1
)

del qt_wrapper.obj 2>nul
echo Build succeeded: qt_wrapper.lib
endlocal
