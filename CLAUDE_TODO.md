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
QPageLayout, QPageSize

---

## Batch 1: Missing QtWidgets ✅
- [x] QTabBar
- [x] QToolBox
- [x] QScrollBar
- [x] QLCDNumber
- [x] QCommandLinkButton
- [x] QKeySequenceEdit
- [x] QFontComboBox
- [x] QSplashScreen
- [x] QStackedLayout
- [x] QWidgetAction
- [x] QActionGroup
- [x] QErrorMessage
- [x] QMdiArea
- [x] QMdiSubWindow
- [x] QWizard
- [x] QWizardPage
- [x] QColumnView
- [x] QUndoView
- [x] QRubberBand
- [x] QFocusFrame
- [x] QSizeGrip
- [x] QWhatsThis

## Batch 2: QtGui Essentials ✅
- [x] QImage
- [x] QColor (standalone)
- [x] QFont (standalone)
- [x] QPen (standalone)
- [x] QBrush (standalone)
- [x] QPalette
- [x] QCursor (standalone)
- [x] QPainterPath
- [x] QTransform
- [x] QRegion
- [x] QGradient / QLinearGradient / QRadialGradient / QConicalGradient
- [x] QTextCursor
- [x] QTextDocument
- [x] QFontDatabase
- [x] QKeySequence (standalone)
- [x] QMovie
- [x] QImageReader
- [x] QImageWriter
- [x] QBitmap
- [x] QStaticText
- [x] QPicture
- [x] QPageLayout / QPageSize

## Batch 3: QtCore Essentials
- [ ] QFile
- [ ] QFileInfo
- [ ] QDir
- [ ] QProcess
- [ ] QThread
- [ ] QMutex
- [ ] QReadWriteLock
- [ ] QSemaphore
- [ ] QWaitCondition
- [ ] QBuffer
- [ ] QTextStream
- [ ] QDataStream
- [ ] QJsonDocument
- [ ] QJsonObject
- [ ] QJsonArray
- [ ] QXmlStreamReader
- [ ] QXmlStreamWriter
- [ ] QDateTime (standalone)
- [ ] QDate (standalone)
- [ ] QTime (standalone)
- [ ] QLocale
- [ ] QRegularExpression (standalone)
- [ ] QUrl
- [ ] QUrlQuery
- [ ] QUuid
- [ ] QElapsedTimer
- [ ] QCryptographicHash
- [ ] QMimeType / QMimeDatabase
- [ ] QStorageInfo
- [ ] QVersionNumber
- [ ] QTranslator
- [ ] QCommandLineParser / QCommandLineOption
- [ ] QTemporaryFile
- [ ] QTemporaryDir
- [ ] QSaveFile
- [ ] QFileSystemWatcher
- [ ] QStringListModel
- [ ] QItemSelectionModel

## Batch 4: Advanced Features
- [ ] QUndoStack / QUndoCommand / QUndoGroup
- [ ] QDataWidgetMapper
- [ ] QStyledItemDelegate / QItemDelegate
- [ ] QGraphicsScene
- [ ] QGraphicsView
- [ ] QGraphicsItem (base + all item types)
- [ ] QGraphicsItemGroup
- [ ] QGraphicsProxyWidget
- [ ] QGraphicsEffect (Blur, Colorize, DropShadow, Opacity)
- [ ] QStyle / QStyleFactory
- [ ] QScroller / QScrollerProperties
- [ ] QIdentityProxyModel
- [ ] QTransposeProxyModel
- [ ] QConcatenateTablesProxyModel
- [ ] QSignalMapper
- [ ] QLockFile
- [ ] QTimeLine
- [ ] QCalendar
- [ ] QRandomGenerator
- [ ] QEventLoop
- [ ] QSysInfo
- [ ] QLibrary
- [ ] QSharedMemory
- [ ] QSystemSemaphore

## Batch 5: Add demos for each item to the application