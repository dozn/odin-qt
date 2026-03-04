# CLAUDE.md
This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Linting & Code Style/Standards
- Procedures that return results MUST be annotated with `@(require_results)`
- Procedures which use allocators MUST request them via a parameter, and MUST NOT have a default value
- All names MUST use `[<boolean_prefix>_]<subject>_<verb>[_<object>]`
- - Type conversions MUST use `<input_type>_to_<output_type>`
- All errors MUST be explicitly handled or ignored via a `_ =`
- If a procedure returns more than one error, a new error union/enum MUST be created directly above it and returned from it, named `Err_<Procedure_Name>`
- All error unions MUST use `#shared_nil`
- Each `.odin` file MUST have `#+vet explicit-allocators` at the top
- Attributes (`@(<attribute>)`) MUST be on the same line as what they're affecting
- Attribute key-value pairs MUST NOT have spaces around `=` (e.g., `@(link_prefix="qt_")`, not `@(link_prefix = "qt_")`)
- Use single-line error checking `if` statements when possible (`if err := some_proc(); err != nil {`)
- Use `core:os` instead of `core:os/os2`
- All error names should look like `err_<what_we_were_doing>`, or if it's a type that's returned from a procedure, `Err_<Procedure_Name>`
- All `*print` procedures have a `<print_proc>ln` equivalent which MUST be used instead of adding a `\n`
- `cast()` MUST be preferred to `transmute()`, if possible
- Prioritize code legibility over comments
- Comments should ONLY be used when it's not obvious what the code does by reading it
- All booleans MUST begin with `is_`, `are_`, `should_`, `has_`, `have_`, `was_`, `did_`, `does_`, or `do_`
- - This includes returned booleans on procedures
- - For procedures returning a `bool`, the boolean prefix comes first in the procedure name (e.g., `has_url_scheme`, `is_url_valid`), not after the subject
- Procedures with obvious return values do not need to be named
- When two switch arms do the same thing, combine them in a single `case`
- Be descriptive with names, and don't use overly generic terms such as `data`
- Do NOT optimize for variable name length — prefer spelling names out (e.g., `existing_build` over `b`, `pkg_idx` over `i`)
- Prefer a `switch` to multiple `if/if else/else` chains
- Prefer `.Shorthand` enum syntax whenever possible
- - When returning from a procedure whose return type is a union, shorthand works as long as the variant name is unambiguous across all enum types in the union. Use fully qualified names (e.g., `Err_Config_Parse.Invalid_Odin_Property`) when the variant could belong to multiple enum types in the union
- `import` statements CANNOT be placed inside `when` blocks — use `@(require)` on the import instead
- Never use `#partial switch` to avoid handling `.None` — always handle `.None` explicitly
- Use `unreachable()` for switch/case arms that are logically impossible but required by the compiler, with a comment explaining why the case is unreachable
- NEVER align struct fields or parameters with extra spaces — use single spaces only
- Calling convention annotations on `proc` MUST NOT have spaces: `proc"c"()` not `proc "c" ()`
- I'm Canadian, so use wording such as `colour` instead of `color`

## Odin Language Notes
- `import` statements CANNOT be placed inside `when` blocks — use `@(require)` on the import instead

## Code Review & Improvement Sessions
- Always provide clickable links to referenced files and line numbers (e.g., `[fonts.odin:47](client/src/config/fonts.odin#L47)`)
- When suggesting improvements, present a numbered list and wait for the user to select which ones to implement before proceeding
- Do NOT assume all suggestions are valid — the user will reject incorrect ones
- Before fixing a bug, verify the bug actually exists by reading the surrounding code context thoroughly
- When fixing memory issues (use-after-free, memory leaks, double-free), verify the fix by tracing the pointer/allocation lifecycle end-to-end before declaring it fixed
- When doing bulk renames across the codebase, exclude string literals and comments UNLESS they're actually referencing the identifiers
- Ask clarifying questions when there's uncertainty

## System Commands
- NEVER try to use the `cd` command with a `/d` flag. It doesn't exist
- Do NOT use `git -C <path>` with Windows backslash paths — the backslashes get consumed by the shell. Run git commands directly from the working directory instead

## Commits & Pushes
- Don't add a signature to the commit messages

## Directory Structure
```
odin-qt/
  src/
    main.odin               # Application entry point
  libs/
    qt/
      qt.odin               # Odin bindings package (import qt "../libs/qt")
      wrapper/
        qt_wrapper.h         # C header for the Qt wrapper
        qt_wrapper.cpp       # C++ implementation (thin extern "C" layer over Qt)
        build.bat            # Compiles wrapper into a static .lib
        qt_wrapper.lib       # Build output (checked in or rebuilt locally)
    qt6-static/              # Static Qt 6.8.3 install (headers + .lib files)
    qt6-static-build/        # CMake build tree (can be deleted after install)
    qtbase-everywhere-src-*/ # Qt source (can be deleted after build)
    vcpkg/                   # vcpkg checkout (unused; Qt was built from source)
```

## Build & Run Commands

### Rebuild the Qt C wrapper (only needed after changing qt_wrapper.cpp)
```
libs\qt\wrapper\build.bat
```

### Build and run (Windows, debug)
```
odin run src -debug -error-pos-style:unix
```

### Build only
```
odin build src -debug -error-pos-style:unix
```

### Tests
```
odin test src
```

### Prerequisites
- Odin compiler
- MSVC Build Tools (cl.exe, lib.exe, link.exe on PATH)
- Static Qt 6.8.3 installed at `libs/qt6-static/` (see below)

### Building Qt from source (one-time setup)
Qt must be built as a static library. The pre-built Qt binaries are shared (DLL) only.
```bat
:: Download source
curl -L -o libs\qtbase-src.zip "https://download.qt.io/official_releases/qt/6.8/6.8.3/submodules/qtbase-everywhere-src-6.8.3.zip"
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

## Architecture

### Qt Binding Approach
Qt is a C++ library. Odin can only bind to C ABI functions. The binding uses three layers:
1. **C++ wrapper** (`libs/qt/wrapper/qt_wrapper.cpp`) — thin `extern "C"` functions that forward to Qt's C++ API. Includes `Q_IMPORT_PLUGIN(QWindowsIntegrationPlugin)` so the Windows platform plugin is statically linked (no runtime DLL or `platforms/` directory needed).
2. **Static library** (`libs/qt/wrapper/qt_wrapper.lib`) — the compiled wrapper plus Qt resource `.obj` files, archived via `lib.exe`.
3. **Odin bindings** (`libs/qt/qt.odin`) — `foreign import` block that references the wrapper `.lib`, all Qt static `.lib` files, and all required Windows system `.lib` files.

Opaque handle types (`Application`, `Main_Window`, `Widget`) are `distinct rawptr` for type safety on the Odin side.

### Adding New Qt Wrapper Functions
1. Add the C function declaration to `qt_wrapper.h`
2. Implement it in `qt_wrapper.cpp` (cast `void *` to the appropriate Qt type)
3. Run `libs\qt\wrapper\build.bat` to recompile the static lib
4. Add the corresponding `foreign` proc declaration in `libs/qt/qt.odin`

### Error Handling
Uses Odin union types for typed errors (e.g., `Err_Search_Page :: union #shared_nil { mem.Allocator_Error, ... }`). The `@(require_results)` annotation enforces callers handle errors.

### Memory Management
Explicit allocators enforced via `#+vet explicit-allocators`. Debug builds use tracking allocators for leak detection. Virtual arenas for large allocations. Temporary allocators reset per frame/operation.