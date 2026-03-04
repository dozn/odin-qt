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

### Missing Methods/Signals on Existing Classes

#### QLabel
- `clear`
- `setScaledContents` -- auto-scale pixmap to label size
- `setTextFormat` -- plain text vs rich text vs auto
- `setTextInteractionFlags` -- selectable text
- `setOpenExternalLinks` -- clickable links
- `setBuddy` -- keyboard focus buddy
- `setIndent`
- `setMargin`

#### QPushButton
- `setDefault` / `isDefault` -- dialog default button
- `setAutoDefault` / `isAutoDefault`
- `setMenu` -- dropdown menu on button
- `showMenu`

#### QLineEdit
- `setAlignment`
- `setCursorPosition` / `getCursorPosition`
- `setInputMask`
- `hasSelectedText` / `getSelectedText`
- `setSelection`
- `undo` / `redo`
- `isModified` / `setModified`
- `setDragEnabled`
- `home` / `end`

#### QTextEdit
- `setTabStopDistance` / `getTabStopDistance`
- `setLineWrapMode`
- `setWordWrapMode`
- `setAcceptRichText`
- `find` -- text search
- `undo` / `redo`
- `zoomIn` / `zoomOut`
- `getTextCursor` -- getter (setter exists)
- `getDocument` -- getter
- `setCurrentFont` / `setFontWeight` / `setFontItalic` / `setFontUnderline`
- `setFontPointSize` / `setFontFamily`
- `setTextColour` / `setTextBackgroundColour`
- `setAlignment` -- paragraph alignment
- `moveCursor` / `ensureCursorVisible`
- `setOverwriteMode`
- `canPaste`
- `verticalScrollBar` / `horizontalScrollBar` -- access scroll bars
- Signal: `cursorPositionChanged`
- Signal: `selectionChanged`
- Signal: `copyAvailable`
- Signal: `undoAvailable` / `redoAvailable`

#### QPlainTextEdit
- `setTabStopDistance` / `getTabStopDistance`
- `setLineWrapMode`
- `find` -- text search
- `undo` / `redo`
- `zoomIn` / `zoomOut`
- `getTextCursor` -- getter (setter exists)
- `getDocument` -- getter
- `getBlockCount`
- `setMaximumBlockCount`
- `moveCursor` / `ensureCursorVisible`
- `setOverwriteMode`
- `verticalScrollBar` / `horizontalScrollBar`
- Signal: `cursorPositionChanged`
- Signal: `selectionChanged`
- Signal: `blockCountChanged`
- Signal: `copyAvailable`
- Signal: `undoAvailable` / `redoAvailable`

#### QComboBox
- `addItems` -- batch add from string array
- `insertItems` -- batch insert
- `setMaxVisibleItems`
- `setMaxCount`
- `setInsertPolicy`
- `setDuplicatesEnabled`
- `getLineEdit` -- access embedded line edit when editable
- `showPopup` / `hidePopup`
- `setModel` / `getModel`
- `setSizeAdjustPolicy`
- Signal: `activated`
- Signal: `highlighted`
- Signal: `editTextChanged`

#### QTableWidget
- `setCellWidget` / `getCellWidget` -- embed widgets in cells (very common)
- `getItem` / `getCurrentItem` -- get QTableWidgetItem objects
- `setCurrentCell`
- `getSelectedItems`
- `setShowGrid`
- `setSpan` / `getRowSpan` / `getColumnSpan` -- merge cells
- `scrollToItem`
- `findItems`
- `setWordWrap`
- `setCornerButtonEnabled`
- Signal: `currentCellChanged`
- Signal: `currentItemChanged`

#### QTreeWidget
- `insertTopLevelItem`
- `getTopLevelItem` -- by index
- `indexOfTopLevelItem`
- `getSelectedItems`
- `findItems`
- `scrollToItem`
- `sortItems`
- `setIndentation`
- `setUniformRowHeights` -- performance optimization for large trees
- `setAnimated`
- `setHeaderHidden`
- Signal: `itemChanged`
- Signal: `itemSelectionChanged`

#### QTreeWidgetItem
- `setIcon`
- `setCheckState` / `getCheckState`
- `setFlags`
- `setData` / `getData` -- custom role data
- `setToolTip`
- `setHidden` / `isHidden`
- `setDisabled` / `isDisabled`
- `setSelected` / `isSelected`
- `setFirstColumnSpanned`
- `getTreeWidget`
- `takeChild`
- `sortChildren`

#### QListWidget
- `getItem` -- by row
- `getItemAt` -- by point
- `getCurrentItem`
- `setCurrentItem`
- `getSelectedItems`
- `addItems` -- batch add
- `findItems`
- `scrollToItem`
- `setViewMode` -- list vs icon mode
- `setIconSize`
- `setGridSize`
- `setFlow`
- `setSpacing`
- `setSortingEnabled`
- Signal: `itemChanged`
- Signal: `itemActivated`

#### QMenu
- `addSection` -- section headers
- `insertAction` / `insertSeparator` / `insertMenu`
- `setTitle` / `getTitle`
- `setIcon`
- `setTearOffEnabled`
- `setDefaultAction`
- `getActions`
- `isEmpty`
- Signal: `aboutToShow`
- Signal: `aboutToHide`
- Signal: `triggered` (with action parameter)

#### QAction
- `setShortcutContext`
- `setStatusTip`
- `setWhatsThis`
- `setAutoRepeat`
- `setData` / `getData` -- attach arbitrary data
- `trigger` -- programmatic trigger
- `setMenuRole`
- Signal: `toggled`
- Signal: `hovered`

#### QDialog
- `setModal`
- `open` -- non-blocking show (vs exec which blocks)
- `done`
- `setResult` / `getResult`
- `setSizeGripEnabled`

#### QTabWidget
- `getCurrentWidget`
- `clear`
- `setDocumentMode`
- `setElideMode`
- `setUsesScrollButtons`
- `setTabBarAutoHide`
- `setCornerWidget`
- Signal: `tabBarClicked`
- Signal: `tabBarDoubleClicked`

#### QSplitter
- `getWidget` -- by index
- `indexOf`
- `setChildrenCollapsible`
- `setOpaqueResize`
- `setHandleWidth`
- `saveState` / `restoreState` -- persist splitter layout
- Signal: `splitterMoved`

#### QScrollArea
- `ensureVisible`
- `ensureWidgetVisible`
- `takeWidget`
- `getVerticalScrollBar` / `getHorizontalScrollBar`
- `setAlignment`

#### QToolBar
- `insertAction` / `insertSeparator` / `insertWidget`
- `setAllowedAreas`
- `setFloatable`
- `setOrientation`
- `toggleViewAction`
- `widgetForAction`
- `clear`
- Signal: `actionTriggered`
- Signal: `visibilityChanged`
- Signal: `topLevelChanged`

#### QSlider
- `setOrientation` -- change orientation after creation
- `setMinimum` / `setMaximum` / `getMinimum` / `getMaximum`
- `setInvertedAppearance` / `setInvertedControls`
- Signal: `sliderMoved`
- Signal: `rangeChanged`

#### QProgressBar
- `setMinimum` / `setMaximum` / `getMinimum` / `getMaximum`
- `isTextVisible`
- `getText`

#### QStatusBar
- `insertWidget` / `insertPermanentWidget`
- `getCurrentMessage`
- `setSizeGripEnabled`

#### QPainter
- `setPen` (QPen object) / `setBrush` (QBrush object) -- use full pen/brush objects
- `drawImage`
- `drawPoint` / `drawPoints`
- `drawPolyline`
- `drawConvexPolygon`
- `drawChord`
- `eraseRect`
- `setRenderHint` / `setRenderHints` (Render_Hint enum)
- `setCompositionMode` / `getCompositionMode`
- `setClipping` / `hasClipping`
- `getClipBoundingRect`
- `boundingRect` -- text bounding rect calculation
- `begin` / `end` -- manual painter sessions on QPixmap/QImage
- `isActive`

#### QPixmap
- `scaled` / `scaledToWidth` / `scaledToHeight`
- `fill` -- fill with colour
- `save` -- save to file
- `load` -- load from file (alternative to create_from_file)
- `copy` -- copy sub-region
- `size` / `rect`
- `fromImage` (static)
- `createMaskFromColour`
- `setMask` / `getMask`

#### QIcon
- `addFile` / `addPixmap` -- add size variants
- `getPixmap` -- extract pixmap at specific size
- `fromTheme` (static) -- system theme icons
- `hasThemeIcon` (static)
- `setThemeName` / `getThemeName` (static)
- `availableSizes`

#### QImage
- `convertToFormat`
- `rgbSwapped`
- `transformed`
- `setText` / `getText` -- metadata
- `allGray` / `isGrayscale`

#### QFont
- `setStyleStrategy`
- `fromString` / already has `toString`
- `exactMatch`
- `setOverline` / `isOverline`
- `setCapitalization`
- `setHintingPreference`

#### QColor
- `setAlpha` / `getAlpha`
- `setRed` / `getRed` / `setGreen` / `getGreen` / `setBlue` / `getBlue`
- `toRgb` / `toHsv` / `toHsl` -- format conversion
- `getSpec` -- which colour space is native
- `setNamedColour`

#### QPen
- `setBrush` / `getBrush`
- `setDashPattern` / `getDashPattern`
- `setCosmetic` / `isCosmetic`
- `setMiterLimit` / `getMiterLimit`

#### QPainterPath
- `addPath`
- `addPolygon`
- `getBoundingRect`
- `getLength`
- `percentAtLength` / `pointAtPercent` / `angleAtPercent`
- `united` / `intersected` / `subtracted` -- boolean operations
- `simplified`
- `translated`
- `toReversed`
- `intersects` -- collision testing (rect or path)
- `setFillRule` / `getFillRule`
- `getElementCount`

#### QTextCursor
- `insertBlock`
- `insertImage`
- `insertTable`
- `insertList`
- `deleteChar` / `deletePreviousChar`
- `setCharFormat` / `getCharFormat` / `mergeCharFormat`
- `setBlockFormat` / `getBlockFormat` / `mergeBlockFormat`
- `clearSelection`
- `getSelectionStart` / `getSelectionEnd`
- `getBlock`

#### QTextDocument
- `find` -- search text
- `setDefaultStyleSheet`
- `setPageSize` / `getPageSize`
- `setTextWidth` / `getTextWidth`
- `getIdealWidth`
- `getLineCount`
- Signal: `contentsChanged`
- Signal: `modificationChanged`
- Signal: `undoAvailable` / `redoAvailable`

#### QGraphicsScene
- `addWidget` -- returns QGraphicsProxyWidget
- `itemAt`
- `getItems` -- all items or items in region
- `collidingItems`
- `render` -- render to QPainter
- `getWidth` / `getHeight`
- `invalidate`
- `advance`
- `setFocusItem` / `getFocusItem`
- Signal: `changed`
- Signal: `sceneRectChanged`

#### QGraphicsView
- `setViewport` -- for QOpenGLWidget
- `setBackgroundBrush` / `setForegroundBrush`
- `setTransform` / `getTransform`
- `getItems` / `getItemAt`
- `getViewport`
- Signal: `rubberBandChanged`

#### QGraphicsItem
- `setTransform` / `getTransform`
- `setTransformOriginPoint`
- `mapToScene` / `mapFromScene` / `mapToParent` / `mapFromParent`
- `collidesWithItem` / `collidesWithPath`
- `isSelected` / `setSelected`
- `contains` -- point containment
- `getShape`
- `update`
- `getChildItems`
- `getSceneBoundingRect`
- `setAcceptHoverEvents` / `setAcceptDrops`

#### QProcess
- `setEnvironment` / `setProcessEnvironment`
- `setStandardOutputProcess` -- pipe to another process
- `readAllStandardOutput` / `readAllStandardError` exist, but:
- `setReadChannel`
- `setProcessChannelMode`
- Signal: `readyReadStandardOutput`
- Signal: `readyReadStandardError`

#### QTimer
- `setInterval` -- change interval without restart
- `setTimerType` -- precise vs coarse

#### QFrame
- `setMidLineWidth` / `getMidLineWidth`

#### QGroupBox
- `setAlignment`

#### QDockWidget
- `setTitleBarWidget` / `getTitleBarWidget`

#### QToolButton
- `setArrowType`
- `getDefaultAction`

#### QHeaderView
- `setSectionHidden` / `isSectionHidden`
- `resizeSection` / `getSectionSize`
- `moveSection`
- `setSortIndicatorClearable`
- `getCount`
- `swapSections`
- `setMinimumSectionSize` / `setMaximumSectionSize`
- Signal: `sectionClicked`
- Signal: `sectionResized`
- Signal: `sectionMoved`
- Signal: `sortIndicatorChanged`

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
