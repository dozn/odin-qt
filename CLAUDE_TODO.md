# Qt Wrapper TODO

## 1. Fix Signal Data Forwarding
- [x] Add `Cell_Callback` type `proc"c"(row, col: c.int, user_data: rawptr)` for table signals
- [x] Add `Item_Callback` type `proc"c"(item: rawptr, column: c.int, user_data: rawptr)` for tree signals
- [x] Add `Point_Callback` type `proc"c"(x, y: c.int, user_data: rawptr)` for position signals
- [x] Update `table_widget_connect_cell_clicked` to forward row/col
- [x] Update `tree_widget_connect_item_clicked` to forward item/column
- [x] Add `customContextMenuRequested` signal (with position callback)

## 2. Fill Getter/Setter Asymmetries
- [ ] QPushButton: `get_text`, `set_icon`, `set_flat`/`is_flat`, `set_checkable`/`is_checked`/`set_checked`
- [ ] QRadioButton: `set_text`, `get_text`
- [ ] QTextEdit: `set_html`, `to_html`, `append`, `insert_plain_text`
- [ ] QWidget: `is_visible`, `get_window_title`, `get_tool_tip`, `get_style_sheet`, `set_fixed_width`, `set_fixed_height`, `set_object_name`, `get_object_name`
- [ ] QLineEdit: `is_read_only`, `get_placeholder_text`, `select_all`, `set_max_length`, `get_max_length`
- [ ] QAction: `set_text`, `get_text`, `is_enabled`, `is_checkable`, `set_visible`, `is_visible`
- [ ] QCheckBox: `get_text`, tristate support (`set_tristate`, `is_tristate`, `get_check_state`, `set_check_state`)
- [ ] QTextEdit/QPlainTextEdit: `is_read_only`
- [ ] QFrame: `get_frame_shape`, `get_frame_shadow`, `get_line_width`
- [ ] QGroupBox: `get_title`, `set_flat`/`is_flat`

## 3. Missing Common Operations on Existing Widgets
- [ ] QTabWidget: `remove_tab`, `insert_tab`, `set_tab_enabled`/`is_tab_enabled`, `set_tabs_closable`, `set_movable`, `get_widget`, `index_of`
- [ ] QTabWidget signals: `tab_close_requested`
- [ ] QTableWidget: `insert_row`, `insert_column`, `remove_row`, `remove_column`, `set_selection_mode`, `set_selection_behaviour`, `set_alternating_row_colours`, `set_sorting_enabled`, `set_column_width`, `set_row_height`, `resize_columns_to_contents`, `resize_rows_to_contents`
- [ ] QTableWidget signals: `cell_double_clicked`, `cell_changed`, `item_selection_changed`
- [ ] QTreeWidget: `remove_top_level_item`, `set_current_item`, `expand_all`, `collapse_all`, `expand_item`, `collapse_item`, `set_selection_mode`, `set_sorting_enabled`
- [ ] QTreeWidgetItem: `child_count`, `get_child`, `get_parent`, `remove_child`, `set_expanded`/`is_expanded`
- [ ] QTreeWidget signals: `item_double_clicked`, `item_expanded`, `item_collapsed`, `current_item_changed`
- [ ] QListWidget: `insert_item`, `sort_items`, `set_selection_mode`
- [ ] QListWidget signals: `item_clicked`, `item_double_clicked`, `item_selection_changed`
- [ ] QComboBox: `insert_item`, `set_item_text`, `get_item_text`, `find_text`, `set_current_text`
- [ ] QComboBox signals: `current_text_changed`
- [ ] QProgressBar: `reset`, `set_orientation`
- [ ] QProgressBar signals: `value_changed`
- [ ] QSpinBox/QDoubleSpinBox: `set_read_only`, `is_read_only`, `set_wrapping`
- [ ] QSlider: `set_tick_position`, `set_tick_interval`, `set_single_step`, `set_page_step`
- [ ] QSlider signals: `slider_pressed`, `slider_released`
- [ ] QMenu: `popup`, `clear`
- [ ] QMenuBar: `clear`
- [ ] QDockWidget: `set_allowed_areas`, `set_features`, `is_floating`, `set_floating`, `toggle_view_action`
- [ ] QDockWidget signals: `visibility_changed`
- [ ] QToolBar: `set_movable`/`is_movable`, `set_icon_size`, `set_tool_button_style`
- [ ] QDialog signals: `accepted`, `rejected`, `finished`
- [ ] QStatusBar: `add_widget`, `remove_widget`
- [ ] QScrollArea: `get_widget`, `set_horizontal_scroll_bar_policy`, `set_vertical_scroll_bar_policy`
- [ ] QSplitter: `set_sizes`, `get_sizes`, `set_stretch_factor`, `get_count`, `set_collapsible`
- [ ] QStackedWidget: `remove_widget`, `get_widget`, `index_of`, `set_current_widget`
- [ ] QMessageBox: version with custom `Standard_Buttons` bitmask
- [ ] QFileDialog: `get_open_file_names` (multi-select)
- [ ] QTimer: `get_interval`, `get_remaining_time`, `single_shot` (static convenience)
- [ ] Signal disconnection mechanism

## 4. New Widget Types
- [ ] QIcon / QPixmap (load from file, set on buttons/actions/windows/tabs/labels)
- [ ] QShortcut (standalone keyboard shortcuts)
- [ ] QDialogButtonBox (standard OK/Cancel/Apply bars)
- [ ] QToolButton (toolbar buttons with dropdown menus)
- [ ] QButtonGroup (logical grouping with ID signals)
- [ ] QCalendarWidget (date picker)
- [ ] QDateEdit / QTimeEdit / QDateTimeEdit (date/time input)
- [ ] QDial (rotary input)
- [ ] QProgressDialog (modal progress with cancel)
- [ ] QTextBrowser (read-only rich text with hyperlinks)
- [ ] QHeaderView (section resize modes, sort indicators)
- [ ] QSystemTrayIcon (tray icon with context menu)

## 5. Application & Utility Features
- [ ] QSettings (persistent app settings)
- [ ] QDesktopServices::openUrl() (open links in browser)
- [ ] QStandardPaths (platform-specific directories)
- [ ] QScreen (geometry, DPI)
- [ ] QFontMetrics (text measurement)
- [ ] QApplication: `set_style`, `set_style_sheet`, `set_font`, `set_window_icon`, `set_application_version`
- [ ] QCompleter (auto-completion for line edits/combo boxes)
- [ ] QValidator (QIntValidator, QDoubleValidator, QRegularExpressionValidator)
- [ ] QToolTip::showText() (tooltip at arbitrary position)

## 6. Event System
- [ ] Event filters (installEventFilter/removeEventFilter)
- [ ] Close event interception (for "unsaved changes?" prompts)
- [ ] Key press/release event handling
- [ ] Mouse event handling

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