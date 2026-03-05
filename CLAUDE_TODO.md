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
QEventLoop, QSysInfo, QLibrary, QSharedMemory, QSystemSemaphore

---

## Not Yet Implemented

### New Classes to Wrap

#### High Priority
- `QPauseAnimation` -- needed for animation sequences with delays
- `QOpenGLWidget` -- OpenGL/3D rendering integration
- `QPolygon` / `QPolygonF` -- geometric polygon shapes (used with QPainter)
- `QTextBlock` -- rich text block iteration (needed for syntax highlighters, line numbers)
- `QTextOption` -- text layout options (wrap mode, alignment, tab stops)
- `QDrag` -- explicit drag source object (currently only drop target via filter)

#### Medium Priority
- `QPdfWriter` -- PDF generation
- `QTextStream` / `QDataStream` -- stream-based I/O
- `QTextTable` / `QTextList` / `QTextFrame` -- rich text structure manipulation
- `QDeadlineTimer` -- timeout management with deadline semantics
- `QCollator` -- locale-aware string comparison and sorting
- `QAbstractItemModel` helper class -- custom model support (like CPaintableWidget pattern for models)
