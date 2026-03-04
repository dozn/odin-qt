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

@(default_calling_convention = "c")
foreign qt_lib {

	/* QApplication */

	@(link_name = "qt_application_create") @(require_results) application_create :: proc(argc: ^c.int, argv: [^]cstring) -> Application ---
	@(link_name = "qt_application_destroy") application_destroy :: proc(application: Application) ---
	@(link_name = "qt_application_exec") @(require_results) application_exec :: proc(application: Application) -> c.int ---

	/* QMainWindow */

	@(link_name = "qt_main_window_create") @(require_results) main_window_create :: proc(parent: Widget) -> Main_Window ---
	@(link_name = "qt_main_window_set_central_widget") main_window_set_central_widget :: proc(window: Main_Window, widget: Widget) ---
	@(link_name = "qt_main_window_menu_bar") @(require_results) main_window_get_menu_bar :: proc(window: Main_Window) -> Menu_Bar ---
	@(link_name = "qt_main_window_add_toolbar") main_window_add_toolbar :: proc(window: Main_Window, area: Tool_Bar_Area, toolbar: Tool_Bar) ---
	@(link_name = "qt_main_window_statusbar_show_message") main_window_statusbar_show_message :: proc(window: Main_Window, message: cstring, timeout_ms: c.int) ---

	/* QWidget */

	@(link_name = "qt_widget_create") @(require_results) widget_create :: proc(parent: Widget) -> Widget ---
	@(link_name = "qt_widget_destroy") widget_destroy :: proc(widget: Widget) ---
	@(link_name = "qt_widget_show") widget_show :: proc(widget: Widget) ---
	@(link_name = "qt_widget_hide") widget_hide :: proc(widget: Widget) ---
	@(link_name = "qt_widget_set_visible") widget_set_visible :: proc(widget: Widget, is_visible: c.int) ---
	@(link_name = "qt_widget_set_enabled") widget_set_enabled :: proc(widget: Widget, is_enabled: c.int) ---
	@(link_name = "qt_widget_is_enabled") @(require_results) is_widget_enabled :: proc(widget: Widget) -> c.int ---
	@(link_name = "qt_widget_set_window_title") widget_set_title :: proc(widget: Widget, title: cstring) ---
	@(link_name = "qt_widget_resize") widget_resize :: proc(widget: Widget, width: c.int, height: c.int) ---
	@(link_name = "qt_widget_set_fixed_size") widget_set_fixed_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	@(link_name = "qt_widget_set_minimum_size") widget_set_minimum_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	@(link_name = "qt_widget_set_maximum_size") widget_set_maximum_size :: proc(widget: Widget, width: c.int, height: c.int) ---
	@(link_name = "qt_widget_get_width") @(require_results) widget_get_width :: proc(widget: Widget) -> c.int ---
	@(link_name = "qt_widget_get_height") @(require_results) widget_get_height :: proc(widget: Widget) -> c.int ---
	@(link_name = "qt_widget_set_tooltip") widget_set_tooltip :: proc(widget: Widget, tooltip: cstring) ---
	@(link_name = "qt_widget_set_style_sheet") widget_set_style_sheet :: proc(widget: Widget, style_sheet: cstring) ---
	@(link_name = "qt_widget_set_layout") widget_set_layout :: proc(widget: Widget, layout: Layout) ---

	/* QLabel */

	@(link_name = "qt_label_create") @(require_results) label_create :: proc(parent: Widget, text: cstring) -> Label ---
	@(link_name = "qt_label_set_text") label_set_text :: proc(label: Label, text: cstring) ---
	@(link_name = "qt_label_set_alignment") label_set_alignment :: proc(label: Label, alignment: Alignment) ---

	/* QPushButton */

	@(link_name = "qt_push_button_create") @(require_results) push_button_create :: proc(parent: Widget, text: cstring) -> Push_Button ---
	@(link_name = "qt_push_button_set_text") push_button_set_text :: proc(button: Push_Button, text: cstring) ---

	/* QLineEdit */

	@(link_name = "qt_line_edit_create") @(require_results) line_edit_create :: proc(parent: Widget) -> Line_Edit ---
	@(link_name = "qt_line_edit_set_text") line_edit_set_text :: proc(line_edit: Line_Edit, text: cstring) ---
	@(link_name = "qt_line_edit_set_placeholder_text") line_edit_set_placeholder_text :: proc(line_edit: Line_Edit, text: cstring) ---
	@(link_name = "qt_line_edit_set_read_only") line_edit_set_read_only :: proc(line_edit: Line_Edit, is_read_only: c.int) ---
	@(link_name = "qt_line_edit_clear") line_edit_clear :: proc(line_edit: Line_Edit) ---

	/* QTextEdit */

	@(link_name = "qt_text_edit_create") @(require_results) text_edit_create :: proc(parent: Widget) -> Text_Edit ---
	@(link_name = "qt_text_edit_set_plain_text") text_edit_set_plain_text :: proc(text_edit: Text_Edit, text: cstring) ---
	@(link_name = "qt_text_edit_set_read_only") text_edit_set_read_only :: proc(text_edit: Text_Edit, is_read_only: c.int) ---
	@(link_name = "qt_text_edit_clear") text_edit_clear :: proc(text_edit: Text_Edit) ---

	/* QCheckBox */

	@(link_name = "qt_check_box_create") @(require_results) check_box_create :: proc(parent: Widget, text: cstring) -> Check_Box ---
	@(link_name = "qt_check_box_is_checked") @(require_results) is_check_box_checked :: proc(check_box: Check_Box) -> c.int ---
	@(link_name = "qt_check_box_set_checked") check_box_set_checked :: proc(check_box: Check_Box, is_checked: c.int) ---

	/* QComboBox */

	@(link_name = "qt_combo_box_create") @(require_results) combo_box_create :: proc(parent: Widget) -> Combo_Box ---
	@(link_name = "qt_combo_box_add_item") combo_box_add_item :: proc(combo_box: Combo_Box, text: cstring) ---
	@(link_name = "qt_combo_box_get_current_index") @(require_results) combo_box_get_current_index :: proc(combo_box: Combo_Box) -> c.int ---
	@(link_name = "qt_combo_box_set_current_index") combo_box_set_current_index :: proc(combo_box: Combo_Box, index: c.int) ---
	@(link_name = "qt_combo_box_get_count") @(require_results) combo_box_get_count :: proc(combo_box: Combo_Box) -> c.int ---
	@(link_name = "qt_combo_box_clear") combo_box_clear :: proc(combo_box: Combo_Box) ---

	/* QSlider */

	@(link_name = "qt_slider_create") @(require_results) slider_create :: proc(orientation: Orientation, parent: Widget) -> Slider ---
	@(link_name = "qt_slider_set_range") slider_set_range :: proc(slider: Slider, min_val: c.int, max_val: c.int) ---
	@(link_name = "qt_slider_get_value") @(require_results) slider_get_value :: proc(slider: Slider) -> c.int ---
	@(link_name = "qt_slider_set_value") slider_set_value :: proc(slider: Slider, value: c.int) ---

	/* QProgressBar */

	@(link_name = "qt_progress_bar_create") @(require_results) progress_bar_create :: proc(parent: Widget) -> Progress_Bar ---
	@(link_name = "qt_progress_bar_set_range") progress_bar_set_range :: proc(progress_bar: Progress_Bar, min_val: c.int, max_val: c.int) ---
	@(link_name = "qt_progress_bar_get_value") @(require_results) progress_bar_get_value :: proc(progress_bar: Progress_Bar) -> c.int ---
	@(link_name = "qt_progress_bar_set_value") progress_bar_set_value :: proc(progress_bar: Progress_Bar, value: c.int) ---

	/* QSpinBox */

	@(link_name = "qt_spin_box_create") @(require_results) spin_box_create :: proc(parent: Widget) -> Spin_Box ---
	@(link_name = "qt_spin_box_set_range") spin_box_set_range :: proc(spin_box: Spin_Box, min_val: c.int, max_val: c.int) ---
	@(link_name = "qt_spin_box_get_value") @(require_results) spin_box_get_value :: proc(spin_box: Spin_Box) -> c.int ---
	@(link_name = "qt_spin_box_set_value") spin_box_set_value :: proc(spin_box: Spin_Box, value: c.int) ---

	/* Layouts (QVBoxLayout, QHBoxLayout, QGridLayout) */

	@(link_name = "qt_vbox_layout_create") @(require_results) vbox_layout_create :: proc(parent: Widget) -> Layout ---
	@(link_name = "qt_hbox_layout_create") @(require_results) hbox_layout_create :: proc(parent: Widget) -> Layout ---
	@(link_name = "qt_grid_layout_create") @(require_results) grid_layout_create :: proc(parent: Widget) -> Layout ---
	@(link_name = "qt_layout_add_widget") layout_add_widget :: proc(layout: Layout, widget: Widget) ---
	@(link_name = "qt_grid_layout_add_widget") grid_layout_add_widget :: proc(layout: Layout, widget: Widget, row: c.int, col: c.int, row_span: c.int, col_span: c.int) ---
	@(link_name = "qt_box_layout_add_layout") box_layout_add_layout :: proc(layout: Layout, child_layout: Layout) ---
	@(link_name = "qt_layout_set_spacing") layout_set_spacing :: proc(layout: Layout, spacing: c.int) ---
	@(link_name = "qt_layout_set_contents_margins") layout_set_contents_margins :: proc(layout: Layout, left: c.int, top: c.int, right: c.int, bottom: c.int) ---

	/* QMenuBar */

	@(link_name = "qt_menu_bar_add_menu") @(require_results) menu_bar_add_menu :: proc(menu_bar: Menu_Bar, title: cstring) -> Menu ---

	/* QMenu */

	@(link_name = "qt_menu_add_action") @(require_results) menu_add_action :: proc(menu: Menu, text: cstring) -> Action ---
	@(link_name = "qt_menu_add_separator") menu_add_separator :: proc(menu: Menu) ---

	/* QAction */

	@(link_name = "qt_action_set_enabled") action_set_enabled :: proc(action: Action, is_enabled: c.int) ---

	/* QToolBar */

	@(link_name = "qt_toolbar_create") @(require_results) toolbar_create :: proc(parent: Widget, title: cstring) -> Tool_Bar ---
	@(link_name = "qt_toolbar_add_action") @(require_results) toolbar_add_action :: proc(toolbar: Tool_Bar, text: cstring) -> Action ---
	@(link_name = "qt_toolbar_add_separator") toolbar_add_separator :: proc(toolbar: Tool_Bar) ---
	@(link_name = "qt_toolbar_add_widget") toolbar_add_widget :: proc(toolbar: Tool_Bar, widget: Widget) ---

	/* QTabWidget */

	@(link_name = "qt_tab_widget_create") @(require_results) tab_widget_create :: proc(parent: Widget) -> Tab_Widget ---
	@(link_name = "qt_tab_widget_add_tab") @(require_results) tab_widget_add_tab :: proc(tab_widget: Tab_Widget, widget: Widget, label: cstring) -> c.int ---
	@(link_name = "qt_tab_widget_get_current_index") @(require_results) tab_widget_get_current_index :: proc(tab_widget: Tab_Widget) -> c.int ---
	@(link_name = "qt_tab_widget_set_current_index") tab_widget_set_current_index :: proc(tab_widget: Tab_Widget, index: c.int) ---
	@(link_name = "qt_tab_widget_get_count") @(require_results) tab_widget_get_count :: proc(tab_widget: Tab_Widget) -> c.int ---

	/* QGroupBox */

	@(link_name = "qt_group_box_create") @(require_results) group_box_create :: proc(parent: Widget, title: cstring) -> Group_Box ---
	@(link_name = "qt_group_box_set_title") group_box_set_title :: proc(group_box: Group_Box, title: cstring) ---

	/* Dialog helpers */

	@(link_name = "qt_dialog_free_string") dialog_free_string :: proc(str: cstring) ---

	/* QFileDialog */

	@(link_name = "qt_file_dialog_get_open_file_name") @(require_results) file_dialog_get_open_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring ---
	@(link_name = "qt_file_dialog_get_save_file_name") @(require_results) file_dialog_get_save_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring ---
	@(link_name = "qt_file_dialog_get_existing_directory") @(require_results) file_dialog_get_existing_directory :: proc(parent: Widget, caption: cstring, dir: cstring) -> cstring ---

	/* QMessageBox */

	@(link_name = "qt_message_box_show_information") @(require_results) message_box_show_information :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(link_name = "qt_message_box_show_warning") @(require_results) message_box_show_warning :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(link_name = "qt_message_box_show_critical") @(require_results) message_box_show_critical :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(link_name = "qt_message_box_show_question") @(require_results) message_box_show_question :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---

	/* QColorDialog */

	@(link_name = "qt_colour_dialog_get_colour") @(require_results) colour_dialog_get_colour :: proc(parent: Widget, initial_r: c.int, initial_g: c.int, initial_b: c.int, initial_a: c.int, result_r: ^c.int, result_g: ^c.int, result_b: ^c.int, result_a: ^c.int) -> c.int ---

	/* QFontDialog */

	@(link_name = "qt_font_dialog_get_font") @(require_results) font_dialog_get_font :: proc(parent: Widget, family_buf: [^]u8, family_buf_size: c.int, point_size: ^c.int, weight: ^c.int, is_italic: ^c.int) -> c.int ---

	/* QInputDialog */

	@(link_name = "qt_input_dialog_get_text") @(require_results) input_dialog_get_text :: proc(parent: Widget, title: cstring, label: cstring, default_text: cstring, is_ok: ^c.int) -> cstring ---
	@(link_name = "qt_input_dialog_get_int") @(require_results) input_dialog_get_int :: proc(parent: Widget, title: cstring, label: cstring, value: c.int, min_val: c.int, max_val: c.int, step: c.int, is_ok: ^c.int) -> c.int ---
	@(link_name = "qt_input_dialog_get_double") @(require_results) input_dialog_get_double :: proc(parent: Widget, title: cstring, label: cstring, value: c.double, min_val: c.double, max_val: c.double, decimals: c.int, is_ok: ^c.int) -> c.double ---
	@(link_name = "qt_input_dialog_get_item") @(require_results) input_dialog_get_item :: proc(parent: Widget, title: cstring, label: cstring, items: [^]cstring, items_count: c.int, current: c.int, is_editable: c.int, is_ok: ^c.int) -> cstring ---

	/* Signal connections */

	@(link_name = "qt_push_button_connect_clicked") push_button_connect_clicked :: proc(button: Push_Button, callback: Callback, user_data: rawptr) ---
	@(link_name = "qt_check_box_connect_toggled") check_box_connect_toggled :: proc(check_box: Check_Box, callback: Int_Callback, user_data: rawptr) ---
	@(link_name = "qt_slider_connect_value_changed") slider_connect_value_changed :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) ---
	@(link_name = "qt_spin_box_connect_value_changed") spin_box_connect_value_changed :: proc(spin_box: Spin_Box, callback: Int_Callback, user_data: rawptr) ---
	@(link_name = "qt_line_edit_connect_text_changed") line_edit_connect_text_changed :: proc(line_edit: Line_Edit, callback: String_Callback, user_data: rawptr) ---
	@(link_name = "qt_line_edit_connect_return_pressed") line_edit_connect_return_pressed :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) ---
	@(link_name = "qt_text_edit_connect_text_changed") text_edit_connect_text_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) ---
	@(link_name = "qt_combo_box_connect_index_changed") combo_box_connect_index_changed :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) ---
	@(link_name = "qt_action_connect_triggered") action_connect_triggered :: proc(action: Action, callback: Callback, user_data: rawptr) ---
	@(link_name = "qt_tab_widget_connect_current_changed") tab_widget_connect_current_changed :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) ---
}
