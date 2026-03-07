# odin-qt

Static Qt 6.8.3 bindings for the [Odin programming language](https://odin-lang.org/) on Windows.

Qt is a C++ library, so Odin cannot bind to it directly. This project bridges the gap with a thin `extern "C"` wrapper layer that exposes Qt's API through C-ABI functions, which Odin can call via `foreign import`. Everything is statically linked — no DLLs, no `platforms/` directory, no runtime dependencies beyond the MSVC CRT.

## Features

- **~310 opaque handle types** covering QtWidgets, QtGui, QtCore, QtPrintSupport, and QtOpenGL
- **~100 enums** and **~25 callback types** for signals, events, and custom models
- **Type-safe handles** — each Qt class is a `distinct rawptr` on the Odin side (e.g. `qt.Label`, `qt.Push_Button`)
- **Signals and slots** via C function pointer callbacks with user data
- **Event system** — filters for close, key, mouse, wheel, resize, focus, hover, and gesture events
- **Model/View framework** — `QStandardItemModel`, `QFileSystemModel`, proxy models, and a callback-driven `CCustomItemModel` for Odin-native data models
- **Custom drawing** via `QPainter` on paintable widgets
- **Graphics scene** — `QGraphicsScene`/`QGraphicsView` with rect, ellipse, text, line, path, polygon, pixmap, and proxy widget items, plus effects and layouts
- **Rich text** — `QTextCursor`, `QTextDocument`, `QTextTable`, `QTextList`, `QTextFrame`, and all associated format classes
- **Animations** — `QPropertyAnimation`, parallel/sequential groups, easing curves, `QTimeLine`
- **Threading** — `QThread`, `QMutex`, `QReadWriteLock`, `QSemaphore`, `QWaitCondition`, `QThreadPool`
- **File I/O** — `QFile`, `QDir`, `QFileInfo`, `QProcess`, `QTemporaryFile`, `QSaveFile`, `QFileSystemWatcher`
- **Serialisation** — `QJsonDocument`/`QJsonObject`/`QJsonArray`, `QXmlStreamReader`/`QXmlStreamWriter`, `QCborValue`/`QCborMap`/`QCborArray`, `QDataStream`, `QTextStream`
- **Print support** — `QPrinter`, `QPrintDialog`, `QPrintPreviewDialog`, `QPdfWriter`
- **OpenGL** — `QOpenGLWindow`, `QOpenGLShaderProgram`, `QOpenGLBuffer`, `QOpenGLTexture`, `QOpenGLFramebufferObject`, `QRhiWidget`
- **Undo/redo** — `QUndoStack`, `QUndoCommand`, `QUndoGroup`, `QUndoView`
- **Drag and drop**, syntax highlighting, clipboard, system tray, settings, desktop services, and more
- **All bindings annotated** with links to the official Qt 6.8 documentation

## Architecture

```
┌─────────────────────────────────────────────────────┐
│  Odin application  (src/main.odin)                  │
│    import qt "../libs/qt"                           │
│    qt.application_create(...)                       │
├─────────────────────────────────────────────────────┤
│  Odin bindings  (libs/qt/qt.odin)                   │
│    foreign import qt_lib { "wrapper/qt_wrapper.lib",│
│      Qt6Widgets.lib, Qt6Gui.lib, Qt6Core.lib, ... } │
│    foreign qt_lib { ... }                           │
├─────────────────────────────────────────────────────┤
│  C wrapper  (libs/qt/wrapper/qt_wrapper.cpp)        │
│    extern "C" void* qt_push_button_create(...)      │
│    → return new QPushButton(text, parent);          │
├─────────────────────────────────────────────────────┤
│  Static Qt 6.8.3  (libs/qt6-static/)                │
│    Qt6Widgets.lib, Qt6Gui.lib, Qt6Core.lib, ...     │
│    qwindows.lib (statically linked platform plugin) │
└─────────────────────────────────────────────────────┘
```

## Prerequisites

- **Windows** (the bindings currently target Windows only)
- **Odin compiler** on PATH
- **MSVC Build Tools** (`cl.exe`, `lib.exe`, `link.exe` on PATH — open a VS Developer Command Prompt)
- **Static Qt 6.8.3** installed at `libs/qt6-static/` (see [Building Qt from source](#building-qt-from-source) below)

## Quick Start

```bat
:: 1. Build the C++ wrapper (only needed once, or after editing qt_wrapper.cpp)
libs\qt\wrapper\build.bat

:: 2. Build and run the demo
odin run src -debug -error-pos-style:unix
```

The demo application is a 26-tab window that exercises virtually every wrapped feature — basic inputs, numeric controls, text editing, data widgets, containers, dialogs, timers, model/view, custom drawing, syntax highlighting, animations, drag and drop, graphics scenes, undo/redo, rich text, print support, and more.

## Building Qt from Source

Qt must be built as a static library. The pre-built Qt binaries distributed by the Qt Company are shared (DLL) only.

```bat
:: Download source
curl -L -o libs\qtbase-src.zip ^
    "https://download.qt.io/official_releases/qt/6.8/6.8.3/submodules/qtbase-everywhere-src-6.8.3.zip"
python -c "import zipfile; zipfile.ZipFile(r'libs\qtbase-src.zip').extractall(r'libs')"

:: Configure (Ninja + MSVC, static, /MD CRT, minimal features)
cmake -G Ninja ^
    -S libs\qtbase-everywhere-src-6.8.3 ^
    -B libs\qt6-static-build ^
    -DCMAKE_INSTALL_PREFIX=libs\qt6-static ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreadedDLL ^
    -DCMAKE_C_COMPILER=cl -DCMAKE_CXX_COMPILER=cl ^
    -DQT_BUILD_EXAMPLES=OFF -DQT_BUILD_TESTS=OFF ^
    -DFEATURE_dbus=OFF -DFEATURE_sql=OFF -DFEATURE_network=OFF ^
    -DFEATURE_testlib=OFF -DFEATURE_concurrent=OFF ^
    -DFEATURE_openssl=OFF -DFEATURE_printsupport=OFF

:: Build and install
cmake --build libs\qt6-static-build --parallel
cmake --install libs\qt6-static-build
```

After installation, the `libs/qt6-static/` directory will contain the headers and `.lib` files needed by the bindings.

## Project Structure

```
odin-qt/
├── src/
│   └── main.odin                  # 26-tab demo application (4,259 lines)
├── libs/
│   └── qt/
│       ├── qt.odin                # Odin foreign bindings (6,882 lines)
│       └── wrapper/
│           ├── qt_wrapper.h       # C function declarations (4,857 lines)
│           ├── qt_wrapper.cpp     # C++ implementation (18,811 lines)
│           ├── build.bat          # Compiles wrapper into qt_wrapper.lib
│           └── qt_wrapper.lib     # Build output (gitignored)
├── CLAUDE.md                      # Development guidelines
└── CLAUDE_TODO.md                 # Tracks which Qt classes have been wrapped
```

## Adding New Bindings

1. Declare the C function in `libs/qt/wrapper/qt_wrapper.h`
2. Implement it in `libs/qt/wrapper/qt_wrapper.cpp` (cast `void*` to the Qt type, call the Qt method, return)
3. Run `libs\qt\wrapper\build.bat`
4. Add the corresponding `foreign` proc in `libs/qt/qt.odin`

## Usage Example

```odin
package main

import qt "../libs/qt"

main :: proc() {
    app := qt.application_create()
    defer qt.application_destroy(app)

    window := qt.main_window_create(nil)
    qt.window_set_title(window, "Hello from Odin")
    qt.window_resize(window, 400, 300)

    label := qt.label_create("Hello, Qt!", window)
    qt.main_window_set_central_widget(window, label)

    qt.widget_show(window)
    qt.application_exec(app)
}
```

## Licence

This project wraps Qt, which is available under the [LGPL v3](https://www.gnu.org/licenses/lgpl-3.0.html) and [commercial licences](https://www.qt.io/licensing). Because Qt is statically linked here, your application must comply with the LGPL's static-linking requirements (or use a commercial licence). The binding code itself (the wrapper and Odin bindings) is provided as-is.
