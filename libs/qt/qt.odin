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
Line_Edit :: distinct rawptr
Text_Edit :: distinct rawptr
Check_Box :: distinct rawptr
Combo_Box :: distinct rawptr
Slider :: distinct rawptr
Progress_Bar :: distinct rawptr
Spin_Box :: distinct rawptr
Layout :: distinct rawptr
Menu_Bar :: distinct rawptr
Menu :: distinct rawptr
Action :: distinct rawptr
Tool_Bar :: distinct rawptr
Tab_Widget :: distinct rawptr
Group_Box :: distinct rawptr

/* ── Colour struct ─────────────────────────────────────────────────── */

Colour :: struct {
	r: c.int,
	g: c.int,
	b: c.int,
	a: c.int,
}

/* ── Callback types ────────────────────────────────────────────────── */

Callback :: #type proc "c" (user_data: rawptr)
Int_Callback :: #type proc "c" (value: c.int, user_data: rawptr)
String_Callback :: #type proc "c" (text: cstring, user_data: rawptr)

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

/* ── Foreign declarations ──────────────────────────────────────────── */

@(default_calling_convention = "c", link_prefix = "qt_")
foreign qt_lib {

	/* QApplication */

	@(require_results) application_create :: proc(argc: ^c.int, argv: [^]cstring) -> Application ---
	application_destroy :: proc(application: Application) ---
	@(require_results) application_exec :: proc(application: Application) -> c.int ---

	/* QMainWindow */

	@(require_results) main_window_create :: proc(parent: Widget) -> Main_Window ---
	main_window_set_central_widget :: proc(window: Main_Window, widget: Widget) ---
	@(require_results) main_window_menu_bar :: proc(window: Main_Window) -> Menu_Bar ---
	main_window_add_toolbar :: proc(window: Main_Window, area: Tool_Bar_Area, toolbar: Tool_Bar) ---
	main_window_statusbar_show_message :: proc(window: Main_Window, message: cstring, timeout_ms: c.int) ---

	/* QWidget */

	@(require_results) widget_create :: proc(parent: Widget) -> Widget ---
	widget_destroy :: proc(widget: Widget) ---
	widget_show :: proc(widget: Widget) ---
	widget_hide :: proc(widget: Widget) ---
	widget_set_visible :: proc(widget: Widget, is_visible: c.int) ---
	widget_set_enabled :: proc(widget: Widget, is_enabled: c.int) ---
	@(require_results) widget_is_enabled :: proc(widget: Widget) -> c.int ---
	widget_set_window_title :: proc(widget: Widget, title: cstring) ---
	widget_resize :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_fixed_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_minimum_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	widget_set_maximum_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	@(require_results) widget_get_width :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_get_height :: proc(widget: Widget) -> c.int ---
	widget_set_tooltip :: proc(widget: Widget, tooltip: cstring) ---
	widget_set_style_sheet :: proc(widget: Widget, style_sheet: cstring) ---
	widget_set_layout :: proc(widget: Widget, layout: Layout) ---

	/* QLabel */

	@(require_results) label_create :: proc(parent: Widget, text: cstring) -> Label ---
	label_set_text :: proc(label: Label, text: cstring) ---
	label_set_alignment :: proc(label: Label, alignment: Alignment) ---

	/* QPushButton */

	@(require_results) push_button_create :: proc(parent: Widget, text: cstring) -> Push_Button ---
	push_button_set_text :: proc(button: Push_Button, text: cstring) ---

	/* QLineEdit */

	@(require_results) line_edit_create :: proc(parent: Widget) -> Line_Edit ---
	line_edit_set_text :: proc(line_edit: Line_Edit, text: cstring) ---
	line_edit_set_placeholder_text :: proc(line_edit: Line_Edit, text: cstring) ---
	line_edit_set_read_only :: proc(line_edit: Line_Edit, is_read_only: c.int) ---
	line_edit_clear :: proc(line_edit: Line_Edit) ---

	/* QTextEdit */

	@(require_results) text_edit_create :: proc(parent: Widget) -> Text_Edit ---
	text_edit_set_plain_text :: proc(text_edit: Text_Edit, text: cstring) ---
	text_edit_set_read_only :: proc(text_edit: Text_Edit, is_read_only: c.int) ---
	text_edit_clear :: proc(text_edit: Text_Edit) ---

	/* QCheckBox */

	@(require_results) check_box_create :: proc(parent: Widget, text: cstring) -> Check_Box ---
	@(require_results) check_box_is_checked :: proc(check_box: Check_Box) -> c.int ---
	check_box_set_checked :: proc(check_box: Check_Box, is_checked: c.int) ---

	/* QComboBox */

	@(require_results) combo_box_create :: proc(parent: Widget) -> Combo_Box ---
	combo_box_add_item :: proc(combo_box: Combo_Box, text: cstring) ---
	@(require_results) combo_box_get_current_index :: proc(combo_box: Combo_Box) -> c.int ---
	combo_box_set_current_index :: proc(combo_box: Combo_Box, index: c.int) ---
	@(require_results) combo_box_get_count :: proc(combo_box: Combo_Box) -> c.int ---
	combo_box_clear :: proc(combo_box: Combo_Box) ---

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

	/* QSpinBox */

	@(require_results) spin_box_create :: proc(parent: Widget) -> Spin_Box ---
	spin_box_set_range :: proc(spin_box: Spin_Box, min_val: c.int, max_val: c.int) ---
	@(require_results) spin_box_get_value :: proc(spin_box: Spin_Box) -> c.int ---
	spin_box_set_value :: proc(spin_box: Spin_Box, value: c.int) ---

	/* Layouts (QVBoxLayout, QHBoxLayout, QGridLayout) */

	@(require_results) vbox_layout_create :: proc(parent: Widget) -> Layout ---
	@(require_results) hbox_layout_create :: proc(parent: Widget) -> Layout ---
	@(require_results) grid_layout_create :: proc(parent: Widget) -> Layout ---
	layout_add_widget :: proc(layout: Layout, widget: Widget) ---
	grid_layout_add_widget :: proc(layout: Layout, widget: Widget, row: c.int, col: c.int, row_span: c.int, col_span: c.int) ---
	box_layout_add_layout :: proc(layout: Layout, child_layout: Layout) ---
	layout_set_spacing :: proc(layout: Layout, spacing: c.int) ---
	layout_set_contents_margins :: proc(layout: Layout, left: c.int, top: c.int, right: c.int, bottom: c.int) ---

	/* QMenuBar */

	@(require_results) menu_bar_add_menu :: proc(menu_bar: Menu_Bar, title: cstring) -> Menu ---

	/* QMenu */

	@(require_results) menu_add_action :: proc(menu: Menu, text: cstring) -> Action ---
	menu_add_separator :: proc(menu: Menu) ---

	/* QAction */

	action_set_enabled :: proc(action: Action, is_enabled: c.int) ---

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

	/* QGroupBox */

	@(require_results) group_box_create :: proc(parent: Widget, title: cstring) -> Group_Box ---
	group_box_set_title :: proc(group_box: Group_Box, title: cstring) ---

	/* Dialog helpers */

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
	check_box_connect_toggled :: proc(check_box: Check_Box, callback: Int_Callback, user_data: rawptr) ---
	slider_connect_value_changed :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) ---
	spin_box_connect_value_changed :: proc(spin_box: Spin_Box, callback: Int_Callback, user_data: rawptr) ---
	line_edit_connect_text_changed :: proc(line_edit: Line_Edit, callback: String_Callback, user_data: rawptr) ---
	line_edit_connect_return_pressed :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) ---
	text_edit_connect_text_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) ---
	combo_box_connect_index_changed :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) ---
	action_connect_triggered :: proc(action: Action, callback: Callback, user_data: rawptr) ---
	tab_widget_connect_current_changed :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) ---
}
