# Qt Wrapping TODO

Complete list of Qt classes to wrap. Each class needs:
1. C function declarations in `qt_wrapper.h`
2. C++ implementations in `qt_wrapper.cpp`
3. Odin foreign bindings in `qt.odin`

## Already Wrapped
QApplication, QMainWindow, QWidget, QLabel, QPushButton, QRadioButton,
QLineEdit, QTextEdit, QPlainTextEdit, QCheckBox, QComboBox,
QSlider, QProgressBar, QSpinBox, QDoubleSpinBox,
QVBoxLayout, QHBoxLayout, QGridLayout, QFormLayout,
QListWidget, QTreeWidget, QTreeWidgetItem, QTableWidget,
QScrollArea, QSplitter, QStackedWidget, QFrame,
QMenuBar, QMenu, QAction, QToolBar, QTabWidget, QGroupBox,
QDialog, QDockWidget, QStatusBar, QTimer,
QPixmap, QIcon, QShortcut,
QDialogButtonBox, QToolButton, QButtonGroup,
QCalendarWidget, QDateEdit, QTimeEdit, QDateTimeEdit,
QDial, QProgressDialog, QTextBrowser,
QHeaderView, QSystemTrayIcon,
Clipboard, QSettings, QDesktopServices, QStandardPaths, QScreen, QFontMetrics,
QCompleter, QValidator (Int/Double/Regex), QToolTip,
Event filters (generic/close/key/mouse),
QStandardItem, QStandardItemModel, QFileSystemModel, QSortFilterProxyModel,
QTreeView, QTableView, QListView, Model Index,
QPainter (custom drawing), Paintable Widget,
Drag and Drop, QSyntaxHighlighter,
QPropertyAnimation, QParallelAnimationGroup, QSequentialAnimationGroup,
Dynamic properties, QObject utilities,
QTableWidgetItem,
QTabBar, QToolBox, QScrollBar, QLCDNumber, QCommandLinkButton,
QKeySequenceEdit, QFontComboBox, QSplashScreen, QStackedLayout,
QWidgetAction, QActionGroup, QErrorMessage, QMdiArea, QMdiSubWindow,
QWizard, QWizardPage, QColumnView, QUndoView, QRubberBand,
QFocusFrame, QSizeGrip, QWhatsThis,
QImage, QColor, QFont, QPen, QBrush, QPalette, QCursor,
QPainterPath, QTransform, QRegion,
QLinearGradient, QRadialGradient, QConicalGradient,
QTextCursor, QTextDocument, QFontDatabase, QKeySequence,
QMovie, QImageReader, QImageWriter, QBitmap, QStaticText, QPicture,
QPageLayout, QPageSize,
QFile, QFileInfo, QDir, QProcess, QThread, QMutex, QReadWriteLock,
QSemaphore, QBuffer, QJsonDocument, QJsonObject, QJsonArray,
QXmlStreamReader, QXmlStreamWriter, QDateTime, QDate, QTime,
QLocale, QRegularExpression, QUrl, QUuid, QElapsedTimer,
QCryptographicHash, QMimeDatabase, QStorageInfo, QVersionNumber,
QTranslator, QCommandLineParser, QTemporaryFile, QTemporaryDir,
QSaveFile, QFileSystemWatcher, QStringListModel, QItemSelectionModel,
QUndoCommand, QUndoStack, QUndoGroup, QDataWidgetMapper,
QStyledItemDelegate, QItemDelegate,
QGraphicsScene, QGraphicsView, QGraphicsItem,
QGraphicsRectItem, QGraphicsEllipseItem, QGraphicsTextItem,
QGraphicsLineItem, QGraphicsPixmapItem, QGraphicsPathItem,
QGraphicsItemGroup, QGraphicsProxyWidget,
QGraphicsBlurEffect, QGraphicsColorizeEffect, QGraphicsDropShadowEffect, QGraphicsOpacityEffect,
QStyle, QStyleFactory, QScroller, QScrollerProperties,
QIdentityProxyModel, QTransposeProxyModel, QConcatenateTablesProxyModel,
QSignalMapper, QLockFile, QTimeLine, QCalendar, QRandomGenerator,
QEventLoop, QSysInfo, QLibrary, QSharedMemory, QSystemSemaphore,
QPauseAnimation, QTextBlock, QTextOption, QDrag, QPolygon, QPolygonF,
QPdfWriter, QTextStream, QDataStream, QTextTable, QTextTableCell,
QTextList, QTextFrame, QDeadlineTimer, QCollator,
QAbstractItemModel helper (CCustomItemModel),
QListWidgetItem, QMimeData

---

## Not Yet Wrapped

### High Priority — Commonly needed functionality

**Graphics scene gaps:**
- QGraphicsPolygonItem — polygon shape in scene (completes the shape family)
- QGraphicsSimpleTextItem — lightweight plain text in scene

**Drawing:**
- QPainterPathStroker — convert path to stroke outline (hit testing, outlines)

**Rich text formatting:**
- QTextBlockFormat — paragraph-level formatting (alignment, indent, line spacing)
- QTextListFormat — list bullet/numbering style
- QTextTableFormat / QTextTableCellFormat — table formatting in rich text
- QTextImageFormat — embedding images in rich text documents
- QTextFrameFormat — frame formatting
- QTextDocumentFragment — inserting/extracting document snippets
- QTextDocumentWriter — exporting QTextDocument to HTML/ODF/plaintext

**Styling/theming:**
- QProxyStyle — overlay to customize specific style elements without rewriting everything

**File system:**
- QDirIterator / QDirListing — recursive directory traversal

**Date/time:**
- QTimeZone — timezone handling for QDateTime

### Medium Priority — Useful but less commonly needed

**Graphics scene (advanced):**
- QGraphicsWidget — QWidget-like item in scene (supports layouts, stylesheets)
- QGraphicsObject — QObject-based graphics item (signals/slots on items)
- QGraphicsAnchorLayout / QGraphicsGridLayout / QGraphicsLinearLayout — scene layouts
- QGraphicsItemAnimation — timeline-driven animation of scene items
- QGraphicsScene*Event classes — mouse, hover, drag/drop events within scenes

**Item views:**
- QTreeWidgetItemIterator — flat iteration over all tree items
- QTableWidgetSelectionRange — querying selection ranges as row/col spans
- QFileIconProvider — platform-native file/folder icons

**Font/colour:**
- QFontInfo — query what font was actually matched
- QFontMetricsF — floating-point precision font metrics
- QColorSpace / QColorTransform — ICC/colour space management

**Drawing:**
- QPixmapCache — global pixmap cache for performance
- QTextLayout / QTextLine — low-level text layout for custom QPainter rendering

**Gestures:**
- QGesture, QGestureRecognizer, QPanGesture, QPinchGesture, QSwipeGesture,
  QTapAndHoldGesture, QTapGesture — touch/gesture support

**URL:**
- QUrlQuery — URL query parameter manipulation

### Low Priority — Niche or rarely needed

**Core:**
- QBasicTimer — lightweight timer (avoids QObject overhead)
- QBitArray — bit manipulation
- QTextBoundaryFinder — word/sentence/line boundary detection
- QRunnable / QThreadPool — task-based threading
- QWaitCondition — thread synchronization
- QCBOR* — CBOR binary format
- QFileSelector — platform-specific file overrides
- QPluginLoader — dynamic library/plugin loading
- QLoggingCategory — structured logging
- QPageRanges — page range specification for printing

**Widgets:**
- QRhiWidget — RHI-based custom rendering (newer Qt 6 GPU widget)
- QPlainTextDocumentLayout — custom layout engine for plain text
- QStyleOption* family — custom style painting primitives
- QStylePainter — convenience for drawing style-aware elements
- QCommonStyle — base for custom style implementations
- QSplitterHandle — customizing splitter handles

**Gui:**
- QWindow — platform window (lower-level than QWidget)
- QBackingStore — low-level window backing store
- QRawFont — low-level font access
- QGlyphRun — glyph-level text rendering
- QOffscreenSurface — offscreen rendering
- QOpenGL* — OpenGL integration (Qt6OpenGL.lib is linked but unused)
