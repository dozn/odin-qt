#+vet explicit-allocators
package qt

import "core:c"

foreign import qt_lib {
	"wrapper/qt_wrapper.lib",
	"../qt6-static/lib/Qt6Widgets.lib",
	"../qt6-static/lib/Qt6Gui.lib",
	"../qt6-static/lib/Qt6Core.lib",
	"../qt6-static/lib/Qt6OpenGL.lib",
	"../qt6-static/lib/Qt6BundledHarfbuzz.lib",
	"../qt6-static/lib/Qt6BundledFreetype.lib",
	"../qt6-static/lib/Qt6BundledLibpng.lib",
	"../qt6-static/lib/Qt6BundledPcre2.lib",
	"../qt6-static/lib/Qt6BundledZLIB.lib",
	"../qt6-static/plugins/platforms/qwindows.lib",
	"../qt6-static/plugins/styles/qmodernwindowsstyle.lib",
	"system:user32.lib",
	"system:gdi32.lib",
	"system:shell32.lib",
	"system:ole32.lib",
	"system:advapi32.lib",
	"system:ws2_32.lib",
	"system:dwmapi.lib",
	"system:uxtheme.lib",
	"system:imm32.lib",
	"system:winmm.lib",
	"system:version.lib",
	"system:setupapi.lib",
	"system:shlwapi.lib",
	"system:opengl32.lib",
	"system:uuid.lib",
	"system:oleaut32.lib",
	"system:winspool.lib",
	"system:comdlg32.lib",
	"system:wtsapi32.lib",
	"system:userenv.lib",
	"system:netapi32.lib",
	"system:mpr.lib",
	"system:authz.lib",
	"system:synchronization.lib",
	"system:shcore.lib",
	"system:d3d9.lib",
	"system:d3d11.lib",
	"system:d3d12.lib",
	"system:dxgi.lib",
	"system:dxguid.lib",
	"system:d2d1.lib",
	"system:dwrite.lib",
	"system:runtimeobject.lib",
	"system:uiautomationcore.lib",
	"system:msvcrt.lib",
	"system:ucrt.lib",
	"system:vcruntime.lib",
}

/* ── Opaque handle types ───────────────────────────────────────────── */

Application :: distinct rawptr
Main_Window :: distinct rawptr
Widget :: distinct rawptr
Label :: distinct rawptr
Push_Button :: distinct rawptr
Radio_Button :: distinct rawptr
Line_Edit :: distinct rawptr
Text_Edit :: distinct rawptr
Plain_Text_Edit :: distinct rawptr
Check_Box :: distinct rawptr
Combo_Box :: distinct rawptr
Slider :: distinct rawptr
Progress_Bar :: distinct rawptr
Spin_Box :: distinct rawptr
Double_Spin_Box :: distinct rawptr
Layout :: distinct rawptr
Menu_Bar :: distinct rawptr
Menu :: distinct rawptr
Action :: distinct rawptr
Tool_Bar :: distinct rawptr
Tab_Widget :: distinct rawptr
Group_Box :: distinct rawptr
List_Widget :: distinct rawptr
Tree_Widget :: distinct rawptr
Tree_Widget_Item :: distinct rawptr
Table_Widget :: distinct rawptr
Scroll_Area :: distinct rawptr
Splitter :: distinct rawptr
Stacked_Widget :: distinct rawptr
Frame :: distinct rawptr
Dialog :: distinct rawptr
Dock_Widget :: distinct rawptr
Status_Bar :: distinct rawptr
Timer :: distinct rawptr

/* ── Colour struct ─────────────────────────────────────────────────── */

Colour :: struct {
	r: c.int,
	g: c.int,
	b: c.int,
	a: c.int,
}

/* ── Callback types ────────────────────────────────────────────────── */

Callback :: #type proc"c"(user_data: rawptr)
Int_Callback :: #type proc"c"(value: c.int, user_data: rawptr)
Double_Callback :: #type proc"c"(value: c.double, user_data: rawptr)
String_Callback :: #type proc"c"(text: cstring, user_data: rawptr)

/* ── Enums ─────────────────────────────────────────────────────────── */

Orientation :: enum c.int {
	Horizontal = 1,
	Vertical = 2,
}

Alignment :: enum c.int {
	Left = 0x0001,
	Right = 0x0002,
	H_Centre = 0x0004,
	Top = 0x0020,
	Bottom = 0x0040,
	V_Centre = 0x0080,
	Centre = 0x0084,
}

Tool_Bar_Area :: enum c.int {
	Left = 0x1,
	Right = 0x2,
	Top = 0x4,
	Bottom = 0x8,
}

Dock_Widget_Area :: enum c.int {
	Left = 0x1,
	Right = 0x2,
	Top = 0x4,
	Bottom = 0x8,
}

Standard_Button :: enum c.int {
	None = 0x00000000,
	Ok = 0x00000400,
	Save = 0x00000800,
	Open = 0x00002000,
	Yes = 0x00004000,
	Yes_To_All = 0x00008000,
	No = 0x00010000,
	No_To_All = 0x00020000,
	Abort = 0x00040000,
	Retry = 0x00080000,
	Ignore = 0x00100000,
	Close = 0x00200000,
	Cancel = 0x00400000,
	Discard = 0x00800000,
	Help = 0x01000000,
	Apply = 0x02000000,
	Reset = 0x04000000,
}

Font_Weight :: enum c.int {
	Thin = 100,
	Extra_Light = 200,
	Light = 300,
	Normal = 400,
	Medium = 500,
	Demi_Bold = 600,
	Bold = 700,
	Extra_Bold = 800,
	Black = 900,
}

Echo_Mode :: enum c.int {
	Normal = 0,
	No_Echo = 1,
	Password = 2,
	Password_Echo_On_Edit = 3,
}

Cursor_Shape :: enum c.int {
	Arrow = 0,
	Up_Arrow = 1,
	Cross = 2,
	Wait = 3,
	I_Beam = 4,
	Size_Vertical = 5,
	Size_Horizontal = 6,
	Size_B_Diagonal = 7,
	Size_F_Diagonal = 8,
	Size_All = 9,
	Blank = 10,
	Split_Vertical = 11,
	Split_Horizontal = 12,
	Pointing_Hand = 13,
	Forbidden = 14,
	Whats_This = 15,
	Busy = 16,
	Open_Hand = 17,
	Closed_Hand = 18,
}

Frame_Shape :: enum c.int {
	No_Frame = 0,
	Box = 0x0001,
	Panel = 0x0002,
	Win_Panel = 0x0003,
	H_Line = 0x0004,
	V_Line = 0x0005,
	Styled_Panel = 0x0006,
}

Frame_Shadow :: enum c.int {
	Plain = 0x0010,
	Raised = 0x0020,
	Sunken = 0x0030,
}

Size_Policy :: enum c.int {
	Fixed = 0,
	Minimum = 1,
	Minimum_Expanding = 3,
	Maximum = 4,
	Preferred = 5,
	Expanding = 7,
	Ignored = 13,
}

Context_Menu_Policy :: enum c.int {
	No_Context_Menu = 0,
	Default_Context_Menu = 1,
	Actions_Context_Menu = 2,
	Custom_Context_Menu = 3,
	Prevent_Context_Menu = 4,
}

/* ── Foreign declarations ──────────────────────────────────────────── */

@(default_calling_convention="c", link_prefix="qt_")
foreign qt_lib {

	/* QApplication */

	@(require_results) application_create :: proc(argc: ^c.int, argv: [^]cstring) -> Application ---
	application_destroy :: proc(application: Application) ---
	@(require_results) application_exec :: proc(application: Application) -> c.int ---
	application_quit :: proc(application: Application) ---
	application_process_events :: proc(application: Application) ---
	application_set_application_name :: proc(application: Application, name: cstring) ---
	application_set_organization_name :: proc(application: Application, name: cstring) ---

	/* QMainWindow */

	@(require_results) main_window_create :: proc(parent: Widget) -> Main_Window ---
	main_window_set_central_widget :: proc(window: Main_Window, widget: Widget) ---
	@(require_results) main_window_menu_bar :: proc(window: Main_Window) -> Menu_Bar ---
	main_window_add_toolbar :: proc(window: Main_Window, area: Tool_Bar_Area, toolbar: Tool_Bar) ---
	main_window_statusbar_show_message :: proc(window: Main_Window, message: cstring, timeout_ms: c.int) ---
	main_window_add_dock_widget :: proc(window: Main_Window, area: Dock_Widget_Area, dock_widget: Dock_Widget) ---
	@(require_results) main_window_get_statusbar :: proc(window: Main_Window) -> Status_Bar ---

	/* QWidget */

	@(require_results) widget_create :: proc(parent: Widget) -> Widget ---
	widget_destroy :: proc(widget: Widget) ---
	widget_show :: proc(widget: Widget) ---
	widget_hide :: proc(widget: Widget) ---
	widget_close :: proc(widget: Widget) ---
	widget_set_visible :: proc(widget: Widget, is_visible: c.int) ---
	widget_set_enabled :: proc(widget: Widget, is_enabled: c.int) ---
	@(require_results) widget_is_enabled :: proc(widget: Widget) -> c.int ---
	widget_set_window_title :: proc(widget: Widget, title: cstring) ---
	widget_resize :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_fixed_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_minimum_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_maximum_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_minimum_width :: proc(widget: Widget, width: c.int) ---
	widget_set_minimum_height :: proc(widget: Widget, height: c.int) ---
	widget_set_maximum_width :: proc(widget: Widget, width: c.int) ---
	widget_set_maximum_height :: proc(widget: Widget, height: c.int) ---
	@(require_results) widget_get_width :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_get_height :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_get_x :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_get_y :: proc(widget: Widget) -> c.int ---
	widget_move :: proc(widget: Widget, x: c.int, y: c.int) ---
	widget_set_font :: proc(widget: Widget, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) ---
	widget_set_focus :: proc(widget: Widget) ---
	@(require_results) widget_has_focus :: proc(widget: Widget) -> c.int ---
	widget_set_cursor :: proc(widget: Widget, cursor_shape: Cursor_Shape) ---
	widget_update :: proc(widget: Widget) ---
	widget_raise :: proc(widget: Widget) ---
	widget_lower :: proc(widget: Widget) ---
	widget_set_tooltip :: proc(widget: Widget, tooltip: cstring) ---
	widget_set_style_sheet :: proc(widget: Widget, style_sheet: cstring) ---
	widget_set_layout :: proc(widget: Widget, layout: Layout) ---
	widget_set_size_policy :: proc(widget: Widget, horizontal: Size_Policy, vertical: Size_Policy) ---
	widget_set_context_menu_policy :: proc(widget: Widget, policy: Context_Menu_Policy) ---
	widget_add_action :: proc(widget: Widget, action: Action) ---

	/* QLabel */

	@(require_results) label_create :: proc(parent: Widget, text: cstring) -> Label ---
	label_set_text :: proc(label: Label, text: cstring) ---
	@(require_results) label_get_text :: proc(label: Label) -> cstring ---
	label_set_alignment :: proc(label: Label, alignment: Alignment) ---
	label_set_word_wrap :: proc(label: Label, is_word_wrap: c.int) ---

	/* QPushButton */

	@(require_results) push_button_create :: proc(parent: Widget, text: cstring) -> Push_Button ---
	push_button_set_text :: proc(button: Push_Button, text: cstring) ---

	/* QRadioButton */

	@(require_results) radio_button_create :: proc(parent: Widget, text: cstring) -> Radio_Button ---
	@(require_results) radio_button_is_checked :: proc(radio_button: Radio_Button) -> c.int ---
	radio_button_set_checked :: proc(radio_button: Radio_Button, is_checked: c.int) ---

	/* QLineEdit */

	@(require_results) line_edit_create :: proc(parent: Widget) -> Line_Edit ---
	line_edit_set_text :: proc(line_edit: Line_Edit, text: cstring) ---
	@(require_results) line_edit_get_text :: proc(line_edit: Line_Edit) -> cstring ---
	line_edit_set_placeholder_text :: proc(line_edit: Line_Edit, text: cstring) ---
	line_edit_set_read_only :: proc(line_edit: Line_Edit, is_read_only: c.int) ---
	line_edit_set_echo_mode :: proc(line_edit: Line_Edit, mode: Echo_Mode) ---
	line_edit_clear :: proc(line_edit: Line_Edit) ---

	/* QTextEdit */

	@(require_results) text_edit_create :: proc(parent: Widget) -> Text_Edit ---
	text_edit_set_plain_text :: proc(text_edit: Text_Edit, text: cstring) ---
	@(require_results) text_edit_get_plain_text :: proc(text_edit: Text_Edit) -> cstring ---
	text_edit_set_read_only :: proc(text_edit: Text_Edit, is_read_only: c.int) ---
	text_edit_clear :: proc(text_edit: Text_Edit) ---

	/* QPlainTextEdit */

	@(require_results) plain_text_edit_create :: proc(parent: Widget) -> Plain_Text_Edit ---
	plain_text_edit_set_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---
	@(require_results) plain_text_edit_get_plain_text :: proc(plain_text_edit: Plain_Text_Edit) -> cstring ---
	plain_text_edit_set_read_only :: proc(plain_text_edit: Plain_Text_Edit, is_read_only: c.int) ---
	plain_text_edit_clear :: proc(plain_text_edit: Plain_Text_Edit) ---

	/* QCheckBox */

	@(require_results) check_box_create :: proc(parent: Widget, text: cstring) -> Check_Box ---
	@(require_results) check_box_is_checked :: proc(check_box: Check_Box) -> c.int ---
	check_box_set_checked :: proc(check_box: Check_Box, is_checked: c.int) ---
	check_box_set_text :: proc(check_box: Check_Box, text: cstring) ---

	/* QComboBox */

	@(require_results) combo_box_create :: proc(parent: Widget) -> Combo_Box ---
	combo_box_add_item :: proc(combo_box: Combo_Box, text: cstring) ---
	combo_box_remove_item :: proc(combo_box: Combo_Box, index: c.int) ---
	@(require_results) combo_box_get_current_index :: proc(combo_box: Combo_Box) -> c.int ---
	combo_box_set_current_index :: proc(combo_box: Combo_Box, index: c.int) ---
	@(require_results) combo_box_get_current_text :: proc(combo_box: Combo_Box) -> cstring ---
	@(require_results) combo_box_get_count :: proc(combo_box: Combo_Box) -> c.int ---
	combo_box_clear :: proc(combo_box: Combo_Box) ---
	combo_box_set_editable :: proc(combo_box: Combo_Box, is_editable: c.int) ---

	/* QSlider */

	@(require_results) slider_create :: proc(orientation: Orientation, parent: Widget) -> Slider ---
	slider_set_range :: proc(slider: Slider, min_val: c.int, max_val: c.int) ---
	@(require_results) slider_get_value :: proc(slider: Slider) -> c.int ---
	slider_set_value :: proc(slider: Slider, value: c.int) ---

	/* QProgressBar */

	@(require_results) progress_bar_create :: proc(parent: Widget) -> Progress_Bar ---
	progress_bar_set_range :: proc(progress_bar: Progress_Bar, min_val: c.int, max_val: c.int) ---
	@(require_results) progress_bar_get_value :: proc(progress_bar: Progress_Bar) -> c.int ---
	progress_bar_set_value :: proc(progress_bar: Progress_Bar, value: c.int) ---
	progress_bar_set_format :: proc(progress_bar: Progress_Bar, format: cstring) ---
	progress_bar_set_text_visible :: proc(progress_bar: Progress_Bar, is_visible: c.int) ---

	/* QSpinBox */

	@(require_results) spin_box_create :: proc(parent: Widget) -> Spin_Box ---
	spin_box_set_range :: proc(spin_box: Spin_Box, min_val: c.int, max_val: c.int) ---
	@(require_results) spin_box_get_value :: proc(spin_box: Spin_Box) -> c.int ---
	spin_box_set_value :: proc(spin_box: Spin_Box, value: c.int) ---
	spin_box_set_prefix :: proc(spin_box: Spin_Box, prefix: cstring) ---
	spin_box_set_suffix :: proc(spin_box: Spin_Box, suffix: cstring) ---
	spin_box_set_single_step :: proc(spin_box: Spin_Box, step: c.int) ---

	/* QDoubleSpinBox */

	@(require_results) double_spin_box_create :: proc(parent: Widget) -> Double_Spin_Box ---
	double_spin_box_set_range :: proc(double_spin_box: Double_Spin_Box, min_val: c.double, max_val: c.double) ---
	@(require_results) double_spin_box_get_value :: proc(double_spin_box: Double_Spin_Box) -> c.double ---
	double_spin_box_set_value :: proc(double_spin_box: Double_Spin_Box, value: c.double) ---
	double_spin_box_set_decimals :: proc(double_spin_box: Double_Spin_Box, decimals: c.int) ---
	double_spin_box_set_single_step :: proc(double_spin_box: Double_Spin_Box, step: c.double) ---
	double_spin_box_set_prefix :: proc(double_spin_box: Double_Spin_Box, prefix: cstring) ---
	double_spin_box_set_suffix :: proc(double_spin_box: Double_Spin_Box, suffix: cstring) ---

	/* Layouts (QVBoxLayout, QHBoxLayout, QGridLayout, QFormLayout) */

	@(require_results) vbox_layout_create :: proc(parent: Widget) -> Layout ---
	@(require_results) hbox_layout_create :: proc(parent: Widget) -> Layout ---
	@(require_results) grid_layout_create :: proc(parent: Widget) -> Layout ---
	@(require_results) form_layout_create :: proc(parent: Widget) -> Layout ---
	layout_add_widget :: proc(layout: Layout, widget: Widget) ---
	grid_layout_add_widget :: proc(layout: Layout, widget: Widget, row: c.int, col: c.int, row_span: c.int, col_span: c.int) ---
	form_layout_add_row :: proc(layout: Layout, label: cstring, widget: Widget) ---
	box_layout_add_layout :: proc(layout: Layout, child_layout: Layout) ---
	box_layout_add_stretch :: proc(layout: Layout, stretch: c.int) ---
	box_layout_add_spacing :: proc(layout: Layout, size: c.int) ---
	box_layout_add_widget_with_stretch :: proc(layout: Layout, widget: Widget, stretch: c.int, alignment: Alignment) ---
	layout_set_spacing :: proc(layout: Layout, spacing: c.int) ---
	layout_set_contents_margins :: proc(layout: Layout, left: c.int, top: c.int, right: c.int, bottom: c.int) ---
	layout_remove_widget :: proc(layout: Layout, widget: Widget) ---
	grid_layout_set_row_stretch :: proc(layout: Layout, row: c.int, stretch: c.int) ---
	grid_layout_set_column_stretch :: proc(layout: Layout, column: c.int, stretch: c.int) ---

	/* QListWidget */

	@(require_results) list_widget_create :: proc(parent: Widget) -> List_Widget ---
	list_widget_add_item :: proc(list_widget: List_Widget, text: cstring) ---
	list_widget_remove_item :: proc(list_widget: List_Widget, row: c.int) ---
	@(require_results) list_widget_get_current_row :: proc(list_widget: List_Widget) -> c.int ---
	list_widget_set_current_row :: proc(list_widget: List_Widget, row: c.int) ---
	@(require_results) list_widget_get_count :: proc(list_widget: List_Widget) -> c.int ---
	list_widget_clear :: proc(list_widget: List_Widget) ---
	@(require_results) list_widget_get_item_text :: proc(list_widget: List_Widget, row: c.int) -> cstring ---

	/* QTreeWidget */

	@(require_results) tree_widget_create :: proc(parent: Widget) -> Tree_Widget ---
	tree_widget_set_column_count :: proc(tree_widget: Tree_Widget, count: c.int) ---
	tree_widget_set_header_labels :: proc(tree_widget: Tree_Widget, labels: [^]cstring, count: c.int) ---
	tree_widget_add_top_level_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) ---
	tree_widget_clear :: proc(tree_widget: Tree_Widget) ---
	@(require_results) tree_widget_get_top_level_item_count :: proc(tree_widget: Tree_Widget) -> c.int ---
	@(require_results) tree_widget_get_current_item :: proc(tree_widget: Tree_Widget) -> Tree_Widget_Item ---

	/* QTreeWidgetItem */

	@(require_results) tree_widget_item_create :: proc(texts: [^]cstring, count: c.int) -> Tree_Widget_Item ---
	tree_widget_item_add_child :: proc(item: Tree_Widget_Item, child: Tree_Widget_Item) ---
	tree_widget_item_set_text :: proc(item: Tree_Widget_Item, column: c.int, text: cstring) ---
	@(require_results) tree_widget_item_get_text :: proc(item: Tree_Widget_Item, column: c.int) -> cstring ---

	/* QTableWidget */

	@(require_results) table_widget_create :: proc(rows: c.int, cols: c.int, parent: Widget) -> Table_Widget ---
	table_widget_set_row_count :: proc(table_widget: Table_Widget, count: c.int) ---
	table_widget_set_column_count :: proc(table_widget: Table_Widget, count: c.int) ---
	table_widget_set_horizontal_header_labels :: proc(table_widget: Table_Widget, labels: [^]cstring, count: c.int) ---
	table_widget_set_vertical_header_labels :: proc(table_widget: Table_Widget, labels: [^]cstring, count: c.int) ---
	table_widget_set_item :: proc(table_widget: Table_Widget, row: c.int, col: c.int, text: cstring) ---
	@(require_results) table_widget_get_item_text :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> cstring ---
	@(require_results) table_widget_get_current_row :: proc(table_widget: Table_Widget) -> c.int ---
	@(require_results) table_widget_get_current_column :: proc(table_widget: Table_Widget) -> c.int ---
	@(require_results) table_widget_get_row_count :: proc(table_widget: Table_Widget) -> c.int ---
	@(require_results) table_widget_get_column_count :: proc(table_widget: Table_Widget) -> c.int ---
	table_widget_clear :: proc(table_widget: Table_Widget) ---
	table_widget_clear_contents :: proc(table_widget: Table_Widget) ---

	/* QScrollArea */

	@(require_results) scroll_area_create :: proc(parent: Widget) -> Scroll_Area ---
	scroll_area_set_widget :: proc(scroll_area: Scroll_Area, widget: Widget) ---
	scroll_area_set_widget_resizable :: proc(scroll_area: Scroll_Area, is_resizable: c.int) ---

	/* QSplitter */

	@(require_results) splitter_create :: proc(orientation: Orientation, parent: Widget) -> Splitter ---
	splitter_add_widget :: proc(splitter: Splitter, widget: Widget) ---

	/* QStackedWidget */

	@(require_results) stacked_widget_create :: proc(parent: Widget) -> Stacked_Widget ---
	@(require_results) stacked_widget_add_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) -> c.int ---
	stacked_widget_set_current_index :: proc(stacked_widget: Stacked_Widget, index: c.int) ---
	@(require_results) stacked_widget_get_current_index :: proc(stacked_widget: Stacked_Widget) -> c.int ---
	@(require_results) stacked_widget_get_count :: proc(stacked_widget: Stacked_Widget) -> c.int ---

	/* QFrame */

	@(require_results) frame_create :: proc(parent: Widget) -> Frame ---
	frame_set_frame_shape :: proc(frame: Frame, shape: Frame_Shape) ---
	frame_set_frame_shadow :: proc(frame: Frame, shadow: Frame_Shadow) ---
	frame_set_line_width :: proc(frame: Frame, width: c.int) ---

	/* QMenuBar */

	@(require_results) menu_bar_add_menu :: proc(menu_bar: Menu_Bar, title: cstring) -> Menu ---

	/* QMenu */

	@(require_results) menu_add_action :: proc(menu: Menu, text: cstring) -> Action ---
	menu_add_separator :: proc(menu: Menu) ---
	@(require_results) menu_add_menu :: proc(menu: Menu, title: cstring) -> Menu ---

	/* QAction */

	action_set_enabled :: proc(action: Action, is_enabled: c.int) ---
	action_set_shortcut :: proc(action: Action, shortcut: cstring) ---
	action_set_checkable :: proc(action: Action, is_checkable: c.int) ---
	@(require_results) action_is_checked :: proc(action: Action) -> c.int ---
	action_set_checked :: proc(action: Action, is_checked: c.int) ---
	action_set_tooltip :: proc(action: Action, tooltip: cstring) ---

	/* QToolBar */

	@(require_results) toolbar_create :: proc(parent: Widget, title: cstring) -> Tool_Bar ---
	@(require_results) toolbar_add_action :: proc(toolbar: Tool_Bar, text: cstring) -> Action ---
	toolbar_add_separator :: proc(toolbar: Tool_Bar) ---
	toolbar_add_widget :: proc(toolbar: Tool_Bar, widget: Widget) ---

	/* QTabWidget */

	@(require_results) tab_widget_create :: proc(parent: Widget) -> Tab_Widget ---
	@(require_results) tab_widget_add_tab :: proc(tab_widget: Tab_Widget, widget: Widget, label: cstring) -> c.int ---
	@(require_results) tab_widget_get_current_index :: proc(tab_widget: Tab_Widget) -> c.int ---
	tab_widget_set_current_index :: proc(tab_widget: Tab_Widget, index: c.int) ---
	@(require_results) tab_widget_get_count :: proc(tab_widget: Tab_Widget) -> c.int ---
	tab_widget_set_tab_text :: proc(tab_widget: Tab_Widget, index: c.int, text: cstring) ---

	/* QGroupBox */

	@(require_results) group_box_create :: proc(parent: Widget, title: cstring) -> Group_Box ---
	group_box_set_title :: proc(group_box: Group_Box, title: cstring) ---
	group_box_set_checkable :: proc(group_box: Group_Box, is_checkable: c.int) ---
	@(require_results) group_box_is_checked :: proc(group_box: Group_Box) -> c.int ---
	group_box_set_checked :: proc(group_box: Group_Box, is_checked: c.int) ---

	/* QDialog */

	@(require_results) dialog_create :: proc(parent: Widget) -> Dialog ---
	@(require_results) dialog_exec :: proc(dialog: Dialog) -> c.int ---
	dialog_accept :: proc(dialog: Dialog) ---
	dialog_reject :: proc(dialog: Dialog) ---

	/* QDockWidget */

	@(require_results) dock_widget_create :: proc(parent: Widget, title: cstring) -> Dock_Widget ---
	dock_widget_set_widget :: proc(dock_widget: Dock_Widget, widget: Widget) ---

	/* QStatusBar */

	statusbar_show_message :: proc(statusbar: Status_Bar, message: cstring, timeout_ms: c.int) ---
	statusbar_clear_message :: proc(statusbar: Status_Bar) ---
	statusbar_add_permanent_widget :: proc(statusbar: Status_Bar, widget: Widget) ---

	/* QTimer */

	@(require_results) timer_create :: proc(parent: Widget) -> Timer ---
	timer_destroy :: proc(timer: Timer) ---
	timer_start :: proc(timer: Timer, interval_ms: c.int) ---
	timer_stop :: proc(timer: Timer) ---
	timer_set_single_shot :: proc(timer: Timer, is_single_shot: c.int) ---
	@(require_results) timer_is_active :: proc(timer: Timer) -> c.int ---

	/* Clipboard */

	@(require_results) clipboard_get_text :: proc() -> cstring ---
	clipboard_set_text :: proc(text: cstring) ---

	/* String management */

	free_string :: proc(str: cstring) ---
	dialog_free_string :: proc(str: cstring) ---

	/* QFileDialog */

	@(require_results) file_dialog_get_open_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring ---
	@(require_results) file_dialog_get_save_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring ---
	@(require_results) file_dialog_get_existing_directory :: proc(parent: Widget, caption: cstring, dir: cstring) -> cstring ---

	/* QMessageBox */

	@(require_results) message_box_show_information :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_warning :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_critical :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_question :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---

	/* QColorDialog */

	@(require_results) colour_dialog_get_colour :: proc(parent: Widget, initial_r: c.int, initial_g: c.int, initial_b: c.int, initial_a: c.int, result_r: ^c.int, result_g: ^c.int, result_b: ^c.int, result_a: ^c.int) -> c.int ---

	/* QFontDialog */

	@(require_results) font_dialog_get_font :: proc(parent: Widget, family_buf: [^]u8, family_buf_size: c.int, point_size: ^c.int, weight: ^c.int, is_italic: ^c.int) -> c.int ---

	/* QInputDialog */

	@(require_results) input_dialog_get_text :: proc(parent: Widget, title: cstring, label: cstring, default_text: cstring, is_ok: ^c.int) -> cstring ---
	@(require_results) input_dialog_get_int :: proc(parent: Widget, title: cstring, label: cstring, value: c.int, min_val: c.int, max_val: c.int, step: c.int, is_ok: ^c.int) -> c.int ---
	@(require_results) input_dialog_get_double :: proc(parent: Widget, title: cstring, label: cstring, value: c.double, min_val: c.double, max_val: c.double, decimals: c.int, is_ok: ^c.int) -> c.double ---
	@(require_results) input_dialog_get_item :: proc(parent: Widget, title: cstring, label: cstring, items: [^]cstring, items_count: c.int, current: c.int, is_editable: c.int, is_ok: ^c.int) -> cstring ---

	/* Signal connections */

	push_button_connect_clicked :: proc(button: Push_Button, callback: Callback, user_data: rawptr) ---
	push_button_connect_pressed :: proc(button: Push_Button, callback: Callback, user_data: rawptr) ---
	push_button_connect_released :: proc(button: Push_Button, callback: Callback, user_data: rawptr) ---
	check_box_connect_toggled :: proc(check_box: Check_Box, callback: Int_Callback, user_data: rawptr) ---
	radio_button_connect_toggled :: proc(radio_button: Radio_Button, callback: Int_Callback, user_data: rawptr) ---
	slider_connect_value_changed :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) ---
	spin_box_connect_value_changed :: proc(spin_box: Spin_Box, callback: Int_Callback, user_data: rawptr) ---
	double_spin_box_connect_value_changed :: proc(double_spin_box: Double_Spin_Box, callback: Double_Callback, user_data: rawptr) ---
	line_edit_connect_text_changed :: proc(line_edit: Line_Edit, callback: String_Callback, user_data: rawptr) ---
	line_edit_connect_return_pressed :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) ---
	line_edit_connect_editing_finished :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) ---
	text_edit_connect_text_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) ---
	plain_text_edit_connect_text_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) ---
	combo_box_connect_index_changed :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) ---
	list_widget_connect_current_row_changed :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) ---
	tree_widget_connect_item_clicked :: proc(tree_widget: Tree_Widget, callback: Callback, user_data: rawptr) ---
	table_widget_connect_cell_clicked :: proc(table_widget: Table_Widget, callback: Callback, user_data: rawptr) ---
	action_connect_triggered :: proc(action: Action, callback: Callback, user_data: rawptr) ---
	tab_widget_connect_current_changed :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) ---
	group_box_connect_toggled :: proc(group_box: Group_Box, callback: Int_Callback, user_data: rawptr) ---
	stacked_widget_connect_current_changed :: proc(stacked_widget: Stacked_Widget, callback: Int_Callback, user_data: rawptr) ---
	timer_connect_timeout :: proc(timer: Timer, callback: Callback, user_data: rawptr) ---
}
