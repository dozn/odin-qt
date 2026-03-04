# Qt Wrapper TODO

## 1. Fix Signal Data Forwarding
- [x] Add `Cell_Callback` type `proc"c"(row, col: c.int, user_data: rawptr)` for table signals
- [x] Add `Item_Callback` type `proc"c"(item: rawptr, column: c.int, user_data: rawptr)` for tree signals
- [x] Add `Point_Callback` type `proc"c"(x, y: c.int, user_data: rawptr)` for position signals
- [x] Update `table_widget_connect_cell_clicked` to forward row/col
- [x] Update `tree_widget_connect_item_clicked` to forward item/column
- [x] Add `customContextMenuRequested` signal (with position callback)

## 2. Fill Getter/Setter Asymmetries
- [x] QPushButton: `get_text`, `set_flat`/`is_flat`, `set_checkable`/`is_checked`/`set_checked`
- [x] QRadioButton: `set_text`, `get_text`
- [x] QTextEdit: `set_html`, `get_html`, `append`, `insert_plain_text`, `is_read_only`
- [x] QPlainTextEdit: `is_read_only`, `append_plain_text`, `insert_plain_text`
- [x] QWidget: `is_visible`, `get_window_title`, `get_tool_tip`, `get_style_sheet`, `set_fixed_width`, `set_fixed_height`, `set_object_name`, `get_object_name`
- [x] QLineEdit: `is_read_only`, `get_placeholder_text`, `select_all`, `set_max_length`, `get_max_length`
- [x] QAction: `set_text`, `get_text`, `is_enabled`, `is_checkable`, `set_visible`, `is_visible`
- [x] QCheckBox: `get_text`, tristate support (`set_tristate`, `is_tristate`, `get_check_state`, `set_check_state`) + `Check_State` enum
- [x] QFrame: `get_frame_shape`, `get_frame_shadow`, `get_line_width`
- [x] QGroupBox: `get_title`, `set_flat`/`is_flat`
- [x] QPushButton: `set_icon` (deferred to QIcon/QPixmap section)

## 3. Missing Common Operations on Existing Widgets
- [x] QTabWidget: `remove_tab`, `insert_tab`, `set_tab_enabled`/`is_tab_enabled`, `set_tabs_closable`, `set_movable`, `get_widget`, `index_of`
- [x] QTabWidget signals: `tab_close_requested`
- [x] QTableWidget: `insert_row`, `insert_column`, `remove_row`, `remove_column`, `set_selection_mode`, `set_selection_behaviour`, `set_alternating_row_colours`, `set_sorting_enabled`, `set_column_width`, `set_row_height`, `resize_columns_to_contents`, `resize_rows_to_contents`
- [x] QTableWidget signals: `cell_double_clicked`, `cell_changed`, `item_selection_changed`
- [x] QTreeWidget: `remove_top_level_item`, `set_current_item`, `expand_all`, `collapse_all`, `expand_item`, `collapse_item`, `set_selection_mode`, `set_sorting_enabled`
- [x] QTreeWidgetItem: `child_count`, `get_child`, `get_parent`, `remove_child`, `set_expanded`/`is_expanded`
- [x] QTreeWidget signals: `item_double_clicked`, `item_expanded`, `item_collapsed`, `current_item_changed`
- [x] QListWidget: `insert_item`, `sort_items`, `set_selection_mode`
- [x] QListWidget signals: `item_clicked`, `item_double_clicked`, `item_selection_changed`
- [x] QComboBox: `insert_item`, `set_item_text`, `get_item_text`, `find_text`, `set_current_text`
- [x] QComboBox signals: `current_text_changed`
- [x] QProgressBar: `reset`, `set_orientation`
- [x] QProgressBar signals: `value_changed`
- [x] QSpinBox/QDoubleSpinBox: `set_read_only`, `is_read_only`, `set_wrapping`
- [x] QSlider: `set_tick_position`, `set_tick_interval`, `set_single_step`, `set_page_step`
- [x] QSlider signals: `slider_pressed`, `slider_released`
- [x] QMenu: `popup`, `clear`
- [x] QMenuBar: `clear`
- [x] QDockWidget: `set_allowed_areas`, `set_features`, `is_floating`, `set_floating`, `toggle_view_action`
- [x] QDockWidget signals: `visibility_changed`
- [x] QToolBar: `set_movable`/`is_movable`, `set_icon_size`, `set_tool_button_style`
- [x] QDialog signals: `accepted`, `rejected`, `finished`
- [x] QStatusBar: `add_widget`, `remove_widget`
- [x] QScrollArea: `get_widget`, `set_horizontal_scroll_bar_policy`, `set_vertical_scroll_bar_policy`
- [x] QSplitter: `set_sizes`, `get_sizes`, `set_stretch_factor`, `get_count`, `set_collapsible`
- [x] QStackedWidget: `remove_widget`, `get_widget`, `index_of`, `set_current_widget`
- [x] QMessageBox: version with custom `Standard_Buttons` bitmask
- [x] QFileDialog: `get_open_file_names` (multi-select)
- [x] QTimer: `get_interval`, `get_remaining_time`, `single_shot` (static convenience)
- [x] Signal disconnection mechanism

## 4. New Widget Types
- [x] QIcon / QPixmap (load from file, set on buttons/actions/windows/tabs/labels)
- [x] QShortcut (standalone keyboard shortcuts)
- [x] QDialogButtonBox (standard OK/Cancel/Apply bars)
- [x] QToolButton (toolbar buttons with dropdown menus)
- [x] QButtonGroup (logical grouping with ID signals)
- [x] QCalendarWidget (date picker)
- [x] QDateEdit / QTimeEdit / QDateTimeEdit (date/time input)
- [x] QDial (rotary input)
- [x] QProgressDialog (modal progress with cancel)
- [x] QTextBrowser (read-only rich text with hyperlinks)
- [x] QHeaderView (section resize modes, sort indicators)
- [x] QSystemTrayIcon (tray icon with context menu)

## 5. Application & Utility Features
- [x] QSettings (persistent app settings)
- [x] QDesktopServices::openUrl() (open links in browser)
- [x] QStandardPaths (platform-specific directories)
- [x] QScreen (geometry, DPI)
- [x] QFontMetrics (text measurement)
- [x] QApplication: `set_style`, `set_style_sheet`, `set_font`, `set_window_icon`, `set_application_version`
- [x] QCompleter (auto-completion for line edits/combo boxes)
- [x] QValidator (QIntValidator, QDoubleValidator, QRegularExpressionValidator)
- [x] QToolTip::showText() (tooltip at arbitrary position)

## 6. Event System
- [x] Event filters (installEventFilter/removeEventFilter)
- [x] Close event interception (for "unsaved changes?" prompts)
- [x] Key press/release event handling
- [x] Mouse event handling

## 7. Layout Extras
- [ ] QGridLayout::addLayout() (nest layouts in grid cells)
- [ ] QFormLayout::addRow(widget, widget) variant
- [ ] QLayout::count(), itemAt(), takeAt()
- [ ] QBoxLayout::insertWidget() (insert at position)
- [ ] QSpacerItem (explicit spacers)
- [ ] QLayout::setAlignment() per widget

## 8. Lower Priority
- [ ] Model/View framework (QFileSystemModel, QStandardItemModel, QSortFilterProxyModel)
- [ ] QPainter / custom drawing
- [ ] Drag and drop support
- [ ] QSyntaxHighlighter
- [ ] QPropertyAnimation / QParallelAnimationGroup
- [ ] QObject::deleteLater()
- [ ] Dynamic properties (setProperty/property)