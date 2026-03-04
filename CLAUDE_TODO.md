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

## Batch 3: QtCore Essentials ✅
- [x] QFile
- [x] QFileInfo
- [x] QDir
- [x] QProcess
- [x] QThread
- [x] QMutex
- [x] QReadWriteLock
- [x] QSemaphore
- [x] QBuffer
- [x] QJsonDocument
- [x] QJsonObject
- [x] QJsonArray
- [x] QXmlStreamReader
- [x] QXmlStreamWriter
- [x] QDateTime (standalone)
- [x] QDate (standalone)
- [x] QTime (standalone)
- [x] QLocale
- [x] QRegularExpression (standalone)
- [x] QUrl
- [x] QUuid
- [x] QElapsedTimer
- [x] QCryptographicHash
- [x] QMimeType / QMimeDatabase
- [x] QStorageInfo
- [x] QVersionNumber
- [x] QTranslator
- [x] QCommandLineParser / QCommandLineOption
- [x] QTemporaryFile
- [x] QTemporaryDir
- [x] QSaveFile
- [x] QFileSystemWatcher
- [x] QStringListModel
- [x] QItemSelectionModel
- Deferred: QWaitCondition, QTextStream, QDataStream, QUrlQuery (low value for typical GUI use)

## Batch 4: Advanced Features ✅
- [x] QUndoStack / QUndoCommand / QUndoGroup
- [x] QDataWidgetMapper
- [x] QStyledItemDelegate / QItemDelegate
- [x] QGraphicsScene
- [x] QGraphicsView
- [x] QGraphicsItem (base + all item types)
- [x] QGraphicsItemGroup
- [x] QGraphicsProxyWidget
- [x] QGraphicsEffect (Blur, Colorize, DropShadow, Opacity)
- [x] QStyle / QStyleFactory
- [x] QScroller / QScrollerProperties
- [x] QIdentityProxyModel
- [x] QTransposeProxyModel
- [x] QConcatenateTablesProxyModel
- [x] QSignalMapper
- [x] QLockFile
- [x] QTimeLine
- [x] QCalendar
- [x] QRandomGenerator
- [x] QEventLoop
- [x] QSysInfo
- [x] QLibrary
- [x] QSharedMemory
- [x] QSystemSemaphore

## Batch 5: Add demos for each item to the application
- [x] Extra Widgets tab (QTabBar, QToolBox, QScrollBar, QLCDNumber, QCommandLinkButton, QKeySequenceEdit, QFontComboBox, QStackedLayout, QErrorMessage, QWhatsThis)
- [x] MDI & Wizard tab (QMdiArea, QMdiSubWindow, QWizard, QWizardPage, QActionGroup)
- [x] Graphics Scene tab (QGraphicsScene, QGraphicsView, QGraphicsRectItem, QGraphicsEllipseItem, QGraphicsTextItem, QGraphicsLineItem, QGraphicsPathItem, QGraphicsProxyWidget)
- [x] Undo & Mapping tab (QUndoStack, QUndoCommand, QUndoView, QDataWidgetMapper)
- [x] QtGui Objects tab (QPen, QBrush, QPainterPath, QTransform, QStaticText, QColor, QFont, QFontDatabase, QKeySequence)
- [x] File & Data tab (QDir, QFileInfo, QJsonObject, QJsonArray, QJsonDocument, QXmlStreamWriter)
- [x] Core Utilities tab (QDateTime, QDate, QTime, QLocale, QCalendar, QUrl, QUuid, QRegularExpression, QCryptographicHash, QElapsedTimer, QRandomGenerator, QVersionNumber, QSysInfo, QStorageInfo, QMimeDatabase)
- [x] Advanced Models tab (QStringListModel, QListView, QTransposeProxyModel, QStyle, QStyleFactory, QTimeLine, QSignalMapper)
- [x] Register all 8 new tabs in main()
