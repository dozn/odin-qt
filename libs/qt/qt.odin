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
Pixmap :: distinct rawptr
Icon :: distinct rawptr
Shortcut :: distinct rawptr
Dialog_Button_Box :: distinct rawptr
Tool_Button :: distinct rawptr
Button_Group :: distinct rawptr
Calendar_Widget :: distinct rawptr
Date_Edit :: distinct rawptr
Time_Edit :: distinct rawptr
Date_Time_Edit :: distinct rawptr
Dial :: distinct rawptr
Progress_Dialog :: distinct rawptr
Text_Browser :: distinct rawptr
Header_View :: distinct rawptr
System_Tray_Icon :: distinct rawptr
Settings :: distinct rawptr
Font_Metrics :: distinct rawptr
Completer :: distinct rawptr
Validator :: distinct rawptr
Connection_Id :: distinct c.int

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
Cell_Callback :: #type proc"c"(value_a: c.int, value_b: c.int, user_data: rawptr)
Item_Callback :: #type proc"c"(item: rawptr, column: c.int, user_data: rawptr)
Point_Callback :: #type proc"c"(x: c.int, y: c.int, user_data: rawptr)

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

Check_State :: enum c.int {
	Unchecked = 0,
	Partially_Checked = 1,
	Checked = 2,
}

Selection_Mode :: enum c.int {
	No_Selection = 0,
	Single_Selection = 1,
	Multi_Selection = 2,
	Extended_Selection = 3,
	Contiguous_Selection = 4,
}

Selection_Behaviour :: enum c.int {
	Select_Items = 0,
	Select_Rows = 1,
	Select_Columns = 2,
}

Sort_Order :: enum c.int {
	Ascending = 0,
	Descending = 1,
}

Tick_Position :: enum c.int {
	No_Ticks = 0,
	Ticks_Above = 1,
	Ticks_Below = 2,
	Ticks_Both_Sides = 3,
}

Scroll_Bar_Policy :: enum c.int {
	As_Needed = 0,
	Always_Off = 1,
	Always_On = 2,
}

Tool_Button_Style :: enum c.int {
	Icon_Only = 0,
	Text_Only = 1,
	Text_Beside_Icon = 2,
	Text_Under_Icon = 3,
	Follow_Style = 4,
}

Dock_Widget_Feature :: enum c.int {
	Closable = 0x01,
	Movable = 0x02,
	Floatable = 0x04,
	Vertical_Title_Bar = 0x08,
	No_Features = 0x00,
	All_Features = 0x07,
}

Tool_Button_Popup_Mode :: enum c.int {
	Delayed_Popup = 0,
	Menu_Button_Popup = 1,
	Instant_Popup = 2,
}

Header_Resize_Mode :: enum c.int {
	Interactive = 0,
	Stretch = 1,
	Fixed = 2,
	Resize_To_Contents = 3,
}

System_Tray_Message_Icon :: enum c.int {
	No_Icon = 0,
	Information = 1,
	Warning = 2,
	Critical = 3,
}

System_Tray_Activation_Reason :: enum c.int {
	Unknown = 0,
	Context = 1,
	Double_Click = 2,
	Trigger = 3,
	Middle_Click = 4,
}

Standard_Location :: enum c.int {
	Desktop = 0,
	Documents = 1,
	Fonts = 2,
	Applications = 3,
	Music = 4,
	Movies = 5,
	Pictures = 6,
	Temp = 7,
	Home = 8,
	App_Local_Data = 9,
	Cache = 10,
	Generic_Data = 11,
	Runtime = 12,
	Config = 13,
	Download = 14,
	Generic_Cache = 15,
	Generic_Config = 16,
	App_Data = 17,
	App_Config = 18,
	Public_Share = 19,
	Templates = 20,
}

Case_Sensitivity :: enum c.int {
	Insensitive = 0,
	Sensitive = 1,
}

Match_Flag :: enum c.int {
	Contains = 1,
	Starts_With = 2,
	Ends_With = 3,
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
	@(require_results) widget_is_visible :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_get_window_title :: proc(widget: Widget) -> cstring ---
	@(require_results) widget_get_tool_tip :: proc(widget: Widget) -> cstring ---
	@(require_results) widget_get_style_sheet :: proc(widget: Widget) -> cstring ---
	widget_set_fixed_width :: proc(widget: Widget, width: c.int) ---
	widget_set_fixed_height :: proc(widget: Widget, height: c.int) ---
	widget_set_object_name :: proc(widget: Widget, name: cstring) ---
	@(require_results) widget_get_object_name :: proc(widget: Widget) -> cstring ---

	/* QLabel */

	@(require_results) label_create :: proc(parent: Widget, text: cstring) -> Label ---
	label_set_text :: proc(label: Label, text: cstring) ---
	@(require_results) label_get_text :: proc(label: Label) -> cstring ---
	label_set_alignment :: proc(label: Label, alignment: Alignment) ---
	label_set_word_wrap :: proc(label: Label, is_word_wrap: c.int) ---

	/* QPushButton */

	@(require_results) push_button_create :: proc(parent: Widget, text: cstring) -> Push_Button ---
	push_button_set_text :: proc(button: Push_Button, text: cstring) ---
	@(require_results) push_button_get_text :: proc(button: Push_Button) -> cstring ---
	push_button_set_flat :: proc(button: Push_Button, is_flat: c.int) ---
	@(require_results) push_button_is_flat :: proc(button: Push_Button) -> c.int ---
	push_button_set_checkable :: proc(button: Push_Button, is_checkable: c.int) ---
	@(require_results) push_button_is_checked :: proc(button: Push_Button) -> c.int ---
	push_button_set_checked :: proc(button: Push_Button, is_checked: c.int) ---

	/* QRadioButton */

	@(require_results) radio_button_create :: proc(parent: Widget, text: cstring) -> Radio_Button ---
	radio_button_set_text :: proc(radio_button: Radio_Button, text: cstring) ---
	@(require_results) radio_button_get_text :: proc(radio_button: Radio_Button) -> cstring ---
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
	@(require_results) line_edit_is_read_only :: proc(line_edit: Line_Edit) -> c.int ---
	@(require_results) line_edit_get_placeholder_text :: proc(line_edit: Line_Edit) -> cstring ---
	line_edit_select_all :: proc(line_edit: Line_Edit) ---
	line_edit_set_max_length :: proc(line_edit: Line_Edit, length: c.int) ---
	@(require_results) line_edit_get_max_length :: proc(line_edit: Line_Edit) -> c.int ---

	/* QTextEdit */

	@(require_results) text_edit_create :: proc(parent: Widget) -> Text_Edit ---
	text_edit_set_plain_text :: proc(text_edit: Text_Edit, text: cstring) ---
	@(require_results) text_edit_get_plain_text :: proc(text_edit: Text_Edit) -> cstring ---
	text_edit_set_read_only :: proc(text_edit: Text_Edit, is_read_only: c.int) ---
	@(require_results) text_edit_is_read_only :: proc(text_edit: Text_Edit) -> c.int ---
	text_edit_clear :: proc(text_edit: Text_Edit) ---
	text_edit_set_html :: proc(text_edit: Text_Edit, html: cstring) ---
	@(require_results) text_edit_get_html :: proc(text_edit: Text_Edit) -> cstring ---
	text_edit_append :: proc(text_edit: Text_Edit, text: cstring) ---
	text_edit_insert_plain_text :: proc(text_edit: Text_Edit, text: cstring) ---

	/* QPlainTextEdit */

	@(require_results) plain_text_edit_create :: proc(parent: Widget) -> Plain_Text_Edit ---
	plain_text_edit_set_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---
	@(require_results) plain_text_edit_get_plain_text :: proc(plain_text_edit: Plain_Text_Edit) -> cstring ---
	plain_text_edit_set_read_only :: proc(plain_text_edit: Plain_Text_Edit, is_read_only: c.int) ---
	@(require_results) plain_text_edit_is_read_only :: proc(plain_text_edit: Plain_Text_Edit) -> c.int ---
	plain_text_edit_clear :: proc(plain_text_edit: Plain_Text_Edit) ---
	plain_text_edit_append_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---
	plain_text_edit_insert_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---

	/* QCheckBox */

	@(require_results) check_box_create :: proc(parent: Widget, text: cstring) -> Check_Box ---
	@(require_results) check_box_is_checked :: proc(check_box: Check_Box) -> c.int ---
	check_box_set_checked :: proc(check_box: Check_Box, is_checked: c.int) ---
	check_box_set_text :: proc(check_box: Check_Box, text: cstring) ---
	@(require_results) check_box_get_text :: proc(check_box: Check_Box) -> cstring ---
	check_box_set_tristate :: proc(check_box: Check_Box, is_tristate: c.int) ---
	@(require_results) check_box_is_tristate :: proc(check_box: Check_Box) -> c.int ---
	@(require_results) check_box_get_check_state :: proc(check_box: Check_Box) -> Check_State ---
	check_box_set_check_state :: proc(check_box: Check_Box, state: Check_State) ---

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
	combo_box_insert_item :: proc(combo_box: Combo_Box, index: c.int, text: cstring) ---
	combo_box_set_item_text :: proc(combo_box: Combo_Box, index: c.int, text: cstring) ---
	@(require_results) combo_box_get_item_text :: proc(combo_box: Combo_Box, index: c.int) -> cstring ---
	@(require_results) combo_box_find_text :: proc(combo_box: Combo_Box, text: cstring) -> c.int ---
	combo_box_set_current_text :: proc(combo_box: Combo_Box, text: cstring) ---

	/* QSlider */

	@(require_results) slider_create :: proc(orientation: Orientation, parent: Widget) -> Slider ---
	slider_set_range :: proc(slider: Slider, min_val: c.int, max_val: c.int) ---
	@(require_results) slider_get_value :: proc(slider: Slider) -> c.int ---
	slider_set_value :: proc(slider: Slider, value: c.int) ---
	slider_set_tick_position :: proc(slider: Slider, position: Tick_Position) ---
	slider_set_tick_interval :: proc(slider: Slider, interval: c.int) ---
	slider_set_single_step :: proc(slider: Slider, step: c.int) ---
	slider_set_page_step :: proc(slider: Slider, step: c.int) ---

	/* QProgressBar */

	@(require_results) progress_bar_create :: proc(parent: Widget) -> Progress_Bar ---
	progress_bar_set_range :: proc(progress_bar: Progress_Bar, min_val: c.int, max_val: c.int) ---
	@(require_results) progress_bar_get_value :: proc(progress_bar: Progress_Bar) -> c.int ---
	progress_bar_set_value :: proc(progress_bar: Progress_Bar, value: c.int) ---
	progress_bar_set_format :: proc(progress_bar: Progress_Bar, format: cstring) ---
	progress_bar_set_text_visible :: proc(progress_bar: Progress_Bar, is_visible: c.int) ---
	progress_bar_reset :: proc(progress_bar: Progress_Bar) ---
	progress_bar_set_orientation :: proc(progress_bar: Progress_Bar, orientation: Orientation) ---

	/* QSpinBox */

	@(require_results) spin_box_create :: proc(parent: Widget) -> Spin_Box ---
	spin_box_set_range :: proc(spin_box: Spin_Box, min_val: c.int, max_val: c.int) ---
	@(require_results) spin_box_get_value :: proc(spin_box: Spin_Box) -> c.int ---
	spin_box_set_value :: proc(spin_box: Spin_Box, value: c.int) ---
	spin_box_set_prefix :: proc(spin_box: Spin_Box, prefix: cstring) ---
	spin_box_set_suffix :: proc(spin_box: Spin_Box, suffix: cstring) ---
	spin_box_set_single_step :: proc(spin_box: Spin_Box, step: c.int) ---
	spin_box_set_read_only :: proc(spin_box: Spin_Box, is_read_only: c.int) ---
	@(require_results) spin_box_is_read_only :: proc(spin_box: Spin_Box) -> c.int ---
	spin_box_set_wrapping :: proc(spin_box: Spin_Box, is_wrapping: c.int) ---

	/* QDoubleSpinBox */

	@(require_results) double_spin_box_create :: proc(parent: Widget) -> Double_Spin_Box ---
	double_spin_box_set_range :: proc(double_spin_box: Double_Spin_Box, min_val: c.double, max_val: c.double) ---
	@(require_results) double_spin_box_get_value :: proc(double_spin_box: Double_Spin_Box) -> c.double ---
	double_spin_box_set_value :: proc(double_spin_box: Double_Spin_Box, value: c.double) ---
	double_spin_box_set_decimals :: proc(double_spin_box: Double_Spin_Box, decimals: c.int) ---
	double_spin_box_set_single_step :: proc(double_spin_box: Double_Spin_Box, step: c.double) ---
	double_spin_box_set_prefix :: proc(double_spin_box: Double_Spin_Box, prefix: cstring) ---
	double_spin_box_set_suffix :: proc(double_spin_box: Double_Spin_Box, suffix: cstring) ---
	double_spin_box_set_read_only :: proc(double_spin_box: Double_Spin_Box, is_read_only: c.int) ---
	@(require_results) double_spin_box_is_read_only :: proc(double_spin_box: Double_Spin_Box) -> c.int ---
	double_spin_box_set_wrapping :: proc(double_spin_box: Double_Spin_Box, is_wrapping: c.int) ---

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
	list_widget_insert_item :: proc(list_widget: List_Widget, row: c.int, text: cstring) ---
	list_widget_sort_items :: proc(list_widget: List_Widget, order: Sort_Order) ---
	list_widget_set_selection_mode :: proc(list_widget: List_Widget, mode: Selection_Mode) ---

	/* QTreeWidget */

	@(require_results) tree_widget_create :: proc(parent: Widget) -> Tree_Widget ---
	tree_widget_set_column_count :: proc(tree_widget: Tree_Widget, count: c.int) ---
	tree_widget_set_header_labels :: proc(tree_widget: Tree_Widget, labels: [^]cstring, count: c.int) ---
	tree_widget_add_top_level_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) ---
	tree_widget_clear :: proc(tree_widget: Tree_Widget) ---
	@(require_results) tree_widget_get_top_level_item_count :: proc(tree_widget: Tree_Widget) -> c.int ---
	@(require_results) tree_widget_get_current_item :: proc(tree_widget: Tree_Widget) -> Tree_Widget_Item ---
	tree_widget_remove_top_level_item :: proc(tree_widget: Tree_Widget, index: c.int) ---
	tree_widget_set_current_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) ---
	tree_widget_expand_all :: proc(tree_widget: Tree_Widget) ---
	tree_widget_collapse_all :: proc(tree_widget: Tree_Widget) ---
	tree_widget_expand_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) ---
	tree_widget_collapse_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) ---
	tree_widget_set_selection_mode :: proc(tree_widget: Tree_Widget, mode: Selection_Mode) ---
	tree_widget_set_sorting_enabled :: proc(tree_widget: Tree_Widget, is_enabled: c.int) ---

	/* QTreeWidgetItem */

	@(require_results) tree_widget_item_create :: proc(texts: [^]cstring, count: c.int) -> Tree_Widget_Item ---
	tree_widget_item_add_child :: proc(item: Tree_Widget_Item, child: Tree_Widget_Item) ---
	tree_widget_item_set_text :: proc(item: Tree_Widget_Item, column: c.int, text: cstring) ---
	@(require_results) tree_widget_item_get_text :: proc(item: Tree_Widget_Item, column: c.int) -> cstring ---
	@(require_results) tree_widget_item_child_count :: proc(item: Tree_Widget_Item) -> c.int ---
	@(require_results) tree_widget_item_get_child :: proc(item: Tree_Widget_Item, index: c.int) -> Tree_Widget_Item ---
	@(require_results) tree_widget_item_get_parent :: proc(item: Tree_Widget_Item) -> Tree_Widget_Item ---
	tree_widget_item_remove_child :: proc(item: Tree_Widget_Item, child: Tree_Widget_Item) ---
	tree_widget_item_set_expanded :: proc(item: Tree_Widget_Item, is_expanded: c.int) ---
	@(require_results) tree_widget_item_is_expanded :: proc(item: Tree_Widget_Item) -> c.int ---

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
	table_widget_insert_row :: proc(table_widget: Table_Widget, row: c.int) ---
	table_widget_insert_column :: proc(table_widget: Table_Widget, column: c.int) ---
	table_widget_remove_row :: proc(table_widget: Table_Widget, row: c.int) ---
	table_widget_remove_column :: proc(table_widget: Table_Widget, column: c.int) ---
	table_widget_set_selection_mode :: proc(table_widget: Table_Widget, mode: Selection_Mode) ---
	table_widget_set_selection_behaviour :: proc(table_widget: Table_Widget, behaviour: Selection_Behaviour) ---
	table_widget_set_alternating_row_colours :: proc(table_widget: Table_Widget, is_alternating: c.int) ---
	table_widget_set_sorting_enabled :: proc(table_widget: Table_Widget, is_enabled: c.int) ---
	table_widget_set_column_width :: proc(table_widget: Table_Widget, column: c.int, width: c.int) ---
	table_widget_set_row_height :: proc(table_widget: Table_Widget, row: c.int, height: c.int) ---
	table_widget_resize_columns_to_contents :: proc(table_widget: Table_Widget) ---
	table_widget_resize_rows_to_contents :: proc(table_widget: Table_Widget) ---

	/* QScrollArea */

	@(require_results) scroll_area_create :: proc(parent: Widget) -> Scroll_Area ---
	scroll_area_set_widget :: proc(scroll_area: Scroll_Area, widget: Widget) ---
	scroll_area_set_widget_resizable :: proc(scroll_area: Scroll_Area, is_resizable: c.int) ---
	@(require_results) scroll_area_get_widget :: proc(scroll_area: Scroll_Area) -> Widget ---
	scroll_area_set_horizontal_scroll_bar_policy :: proc(scroll_area: Scroll_Area, policy: Scroll_Bar_Policy) ---
	scroll_area_set_vertical_scroll_bar_policy :: proc(scroll_area: Scroll_Area, policy: Scroll_Bar_Policy) ---

	/* QSplitter */

	@(require_results) splitter_create :: proc(orientation: Orientation, parent: Widget) -> Splitter ---
	splitter_add_widget :: proc(splitter: Splitter, widget: Widget) ---
	splitter_set_sizes :: proc(splitter: Splitter, sizes: [^]c.int, count: c.int) ---
	splitter_get_sizes :: proc(splitter: Splitter, sizes_out: [^]c.int, count: c.int) ---
	splitter_set_stretch_factor :: proc(splitter: Splitter, index: c.int, stretch: c.int) ---
	@(require_results) splitter_get_count :: proc(splitter: Splitter) -> c.int ---
	splitter_set_collapsible :: proc(splitter: Splitter, index: c.int, is_collapsible: c.int) ---

	/* QStackedWidget */

	@(require_results) stacked_widget_create :: proc(parent: Widget) -> Stacked_Widget ---
	@(require_results) stacked_widget_add_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) -> c.int ---
	stacked_widget_set_current_index :: proc(stacked_widget: Stacked_Widget, index: c.int) ---
	@(require_results) stacked_widget_get_current_index :: proc(stacked_widget: Stacked_Widget) -> c.int ---
	@(require_results) stacked_widget_get_count :: proc(stacked_widget: Stacked_Widget) -> c.int ---
	stacked_widget_remove_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) ---
	@(require_results) stacked_widget_get_widget :: proc(stacked_widget: Stacked_Widget, index: c.int) -> Widget ---
	@(require_results) stacked_widget_index_of :: proc(stacked_widget: Stacked_Widget, widget: Widget) -> c.int ---
	stacked_widget_set_current_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) ---

	/* QFrame */

	@(require_results) frame_create :: proc(parent: Widget) -> Frame ---
	frame_set_frame_shape :: proc(frame: Frame, shape: Frame_Shape) ---
	frame_set_frame_shadow :: proc(frame: Frame, shadow: Frame_Shadow) ---
	frame_set_line_width :: proc(frame: Frame, width: c.int) ---
	@(require_results) frame_get_frame_shape :: proc(frame: Frame) -> Frame_Shape ---
	@(require_results) frame_get_frame_shadow :: proc(frame: Frame) -> Frame_Shadow ---
	@(require_results) frame_get_line_width :: proc(frame: Frame) -> c.int ---

	/* QMenuBar */

	@(require_results) menu_bar_add_menu :: proc(menu_bar: Menu_Bar, title: cstring) -> Menu ---
	menu_bar_clear :: proc(menu_bar: Menu_Bar) ---

	/* QMenu */

	@(require_results) menu_create :: proc(parent: Widget) -> Menu ---
	@(require_results) menu_add_action :: proc(menu: Menu, text: cstring) -> Action ---
	menu_add_separator :: proc(menu: Menu) ---
	@(require_results) menu_add_menu :: proc(menu: Menu, title: cstring) -> Menu ---
	menu_popup :: proc(menu: Menu, global_x: c.int, global_y: c.int) ---
	menu_clear :: proc(menu: Menu) ---

	/* QAction */

	action_set_enabled :: proc(action: Action, is_enabled: c.int) ---
	action_set_shortcut :: proc(action: Action, shortcut: cstring) ---
	action_set_checkable :: proc(action: Action, is_checkable: c.int) ---
	@(require_results) action_is_checked :: proc(action: Action) -> c.int ---
	action_set_checked :: proc(action: Action, is_checked: c.int) ---
	action_set_tooltip :: proc(action: Action, tooltip: cstring) ---
	action_set_text :: proc(action: Action, text: cstring) ---
	@(require_results) action_get_text :: proc(action: Action) -> cstring ---
	@(require_results) action_is_enabled :: proc(action: Action) -> c.int ---
	@(require_results) action_is_checkable :: proc(action: Action) -> c.int ---
	action_set_visible :: proc(action: Action, is_visible: c.int) ---
	@(require_results) action_is_visible :: proc(action: Action) -> c.int ---

	/* QToolBar */

	@(require_results) toolbar_create :: proc(parent: Widget, title: cstring) -> Tool_Bar ---
	@(require_results) toolbar_add_action :: proc(toolbar: Tool_Bar, text: cstring) -> Action ---
	toolbar_add_separator :: proc(toolbar: Tool_Bar) ---
	toolbar_add_widget :: proc(toolbar: Tool_Bar, widget: Widget) ---
	toolbar_set_movable :: proc(toolbar: Tool_Bar, is_movable: c.int) ---
	@(require_results) toolbar_is_movable :: proc(toolbar: Tool_Bar) -> c.int ---
	toolbar_set_icon_size :: proc(toolbar: Tool_Bar, width: c.int, height: c.int) ---
	toolbar_set_tool_button_style :: proc(toolbar: Tool_Bar, style: Tool_Button_Style) ---

	/* QTabWidget */

	@(require_results) tab_widget_create :: proc(parent: Widget) -> Tab_Widget ---
	@(require_results) tab_widget_add_tab :: proc(tab_widget: Tab_Widget, widget: Widget, label: cstring) -> c.int ---
	@(require_results) tab_widget_get_current_index :: proc(tab_widget: Tab_Widget) -> c.int ---
	tab_widget_set_current_index :: proc(tab_widget: Tab_Widget, index: c.int) ---
	@(require_results) tab_widget_get_count :: proc(tab_widget: Tab_Widget) -> c.int ---
	tab_widget_set_tab_text :: proc(tab_widget: Tab_Widget, index: c.int, text: cstring) ---
	tab_widget_remove_tab :: proc(tab_widget: Tab_Widget, index: c.int) ---
	@(require_results) tab_widget_insert_tab :: proc(tab_widget: Tab_Widget, index: c.int, widget: Widget, label: cstring) -> c.int ---
	tab_widget_set_tab_enabled :: proc(tab_widget: Tab_Widget, index: c.int, is_enabled: c.int) ---
	@(require_results) tab_widget_is_tab_enabled :: proc(tab_widget: Tab_Widget, index: c.int) -> c.int ---
	tab_widget_set_tabs_closable :: proc(tab_widget: Tab_Widget, is_closable: c.int) ---
	tab_widget_set_movable :: proc(tab_widget: Tab_Widget, is_movable: c.int) ---
	@(require_results) tab_widget_get_widget :: proc(tab_widget: Tab_Widget, index: c.int) -> Widget ---
	@(require_results) tab_widget_index_of :: proc(tab_widget: Tab_Widget, widget: Widget) -> c.int ---

	/* QGroupBox */

	@(require_results) group_box_create :: proc(parent: Widget, title: cstring) -> Group_Box ---
	group_box_set_title :: proc(group_box: Group_Box, title: cstring) ---
	group_box_set_checkable :: proc(group_box: Group_Box, is_checkable: c.int) ---
	@(require_results) group_box_is_checked :: proc(group_box: Group_Box) -> c.int ---
	group_box_set_checked :: proc(group_box: Group_Box, is_checked: c.int) ---
	@(require_results) group_box_get_title :: proc(group_box: Group_Box) -> cstring ---
	group_box_set_flat :: proc(group_box: Group_Box, is_flat: c.int) ---
	@(require_results) group_box_is_flat :: proc(group_box: Group_Box) -> c.int ---

	/* QDialog */

	@(require_results) dialog_create :: proc(parent: Widget) -> Dialog ---
	@(require_results) dialog_exec :: proc(dialog: Dialog) -> c.int ---
	dialog_accept :: proc(dialog: Dialog) ---
	dialog_reject :: proc(dialog: Dialog) ---

	/* QDockWidget */

	@(require_results) dock_widget_create :: proc(parent: Widget, title: cstring) -> Dock_Widget ---
	dock_widget_set_widget :: proc(dock_widget: Dock_Widget, widget: Widget) ---
	dock_widget_set_allowed_areas :: proc(dock_widget: Dock_Widget, areas: c.int) ---
	dock_widget_set_features :: proc(dock_widget: Dock_Widget, features: c.int) ---
	@(require_results) dock_widget_is_floating :: proc(dock_widget: Dock_Widget) -> c.int ---
	dock_widget_set_floating :: proc(dock_widget: Dock_Widget, is_floating: c.int) ---
	@(require_results) dock_widget_toggle_view_action :: proc(dock_widget: Dock_Widget) -> Action ---

	/* QStatusBar */

	statusbar_show_message :: proc(statusbar: Status_Bar, message: cstring, timeout_ms: c.int) ---
	statusbar_clear_message :: proc(statusbar: Status_Bar) ---
	statusbar_add_permanent_widget :: proc(statusbar: Status_Bar, widget: Widget) ---
	statusbar_add_widget :: proc(statusbar: Status_Bar, widget: Widget) ---
	statusbar_remove_widget :: proc(statusbar: Status_Bar, widget: Widget) ---

	/* QTimer */

	@(require_results) timer_create :: proc(parent: Widget) -> Timer ---
	timer_destroy :: proc(timer: Timer) ---
	timer_start :: proc(timer: Timer, interval_ms: c.int) ---
	timer_stop :: proc(timer: Timer) ---
	timer_set_single_shot :: proc(timer: Timer, is_single_shot: c.int) ---
	@(require_results) timer_is_active :: proc(timer: Timer) -> c.int ---
	@(require_results) timer_get_interval :: proc(timer: Timer) -> c.int ---
	@(require_results) timer_get_remaining_time :: proc(timer: Timer) -> c.int ---
	timer_single_shot :: proc(interval_ms: c.int, callback: Callback, user_data: rawptr) ---

	/* QPixmap */

	@(require_results) pixmap_create_from_file :: proc(file_path: cstring) -> Pixmap ---
	pixmap_destroy :: proc(pixmap: Pixmap) ---
	@(require_results) pixmap_get_width :: proc(pixmap: Pixmap) -> c.int ---
	@(require_results) pixmap_get_height :: proc(pixmap: Pixmap) -> c.int ---
	@(require_results) pixmap_is_null :: proc(pixmap: Pixmap) -> c.int ---

	/* QIcon */

	@(require_results) icon_create :: proc() -> Icon ---
	@(require_results) icon_create_from_file :: proc(file_path: cstring) -> Icon ---
	@(require_results) icon_create_from_pixmap :: proc(pixmap: Pixmap) -> Icon ---
	icon_destroy :: proc(icon: Icon) ---
	@(require_results) icon_is_null :: proc(icon: Icon) -> c.int ---

	/* Icon/pixmap setters on existing widgets */

	push_button_set_icon :: proc(button: Push_Button, icon: Icon) ---
	action_set_icon :: proc(action: Action, icon: Icon) ---
	widget_set_window_icon :: proc(widget: Widget, icon: Icon) ---
	tab_widget_set_tab_icon :: proc(tab_widget: Tab_Widget, index: c.int, icon: Icon) ---
	label_set_pixmap :: proc(label: Label, pixmap: Pixmap) ---

	/* QShortcut */

	@(require_results) shortcut_create :: proc(parent: Widget, key_sequence: cstring) -> Shortcut ---
	shortcut_destroy :: proc(shortcut: Shortcut) ---
	shortcut_set_key :: proc(shortcut: Shortcut, key_sequence: cstring) ---
	shortcut_set_enabled :: proc(shortcut: Shortcut, is_enabled: c.int) ---

	/* QDialogButtonBox */

	@(require_results) dialog_button_box_create :: proc(parent: Widget) -> Dialog_Button_Box ---
	@(require_results) dialog_button_box_create_with_buttons :: proc(buttons: c.int, parent: Widget) -> Dialog_Button_Box ---
	@(require_results) dialog_button_box_add_button :: proc(button_box: Dialog_Button_Box, button: Standard_Button) -> Push_Button ---
	dialog_button_box_set_orientation :: proc(button_box: Dialog_Button_Box, orientation: Orientation) ---

	/* QToolButton */

	@(require_results) tool_button_create :: proc(parent: Widget) -> Tool_Button ---
	tool_button_set_text :: proc(tool_button: Tool_Button, text: cstring) ---
	tool_button_set_icon :: proc(tool_button: Tool_Button, icon: Icon) ---
	tool_button_set_popup_mode :: proc(tool_button: Tool_Button, mode: Tool_Button_Popup_Mode) ---
	tool_button_set_menu :: proc(tool_button: Tool_Button, menu: Menu) ---
	tool_button_set_default_action :: proc(tool_button: Tool_Button, action: Action) ---
	tool_button_set_auto_raise :: proc(tool_button: Tool_Button, is_auto_raise: c.int) ---
	tool_button_set_tool_button_style :: proc(tool_button: Tool_Button, style: Tool_Button_Style) ---

	/* QButtonGroup */

	@(require_results) button_group_create :: proc(parent: Widget) -> Button_Group ---
	button_group_destroy :: proc(button_group: Button_Group) ---
	button_group_add_button :: proc(button_group: Button_Group, button: Widget, id: c.int) ---
	button_group_remove_button :: proc(button_group: Button_Group, button: Widget) ---
	button_group_set_exclusive :: proc(button_group: Button_Group, is_exclusive: c.int) ---
	@(require_results) button_group_get_checked_id :: proc(button_group: Button_Group) -> c.int ---

	/* QCalendarWidget */

	@(require_results) calendar_widget_create :: proc(parent: Widget) -> Calendar_Widget ---
	calendar_widget_get_selected_date :: proc(calendar: Calendar_Widget, year: ^c.int, month: ^c.int, day: ^c.int) ---
	calendar_widget_set_selected_date :: proc(calendar: Calendar_Widget, year: c.int, month: c.int, day: c.int) ---
	calendar_widget_set_minimum_date :: proc(calendar: Calendar_Widget, year: c.int, month: c.int, day: c.int) ---
	calendar_widget_set_maximum_date :: proc(calendar: Calendar_Widget, year: c.int, month: c.int, day: c.int) ---
	calendar_widget_set_grid_visible :: proc(calendar: Calendar_Widget, is_visible: c.int) ---

	/* QDateEdit */

	@(require_results) date_edit_create :: proc(parent: Widget) -> Date_Edit ---
	date_edit_get_date :: proc(date_edit: Date_Edit, year: ^c.int, month: ^c.int, day: ^c.int) ---
	date_edit_set_date :: proc(date_edit: Date_Edit, year: c.int, month: c.int, day: c.int) ---
	date_edit_set_minimum_date :: proc(date_edit: Date_Edit, year: c.int, month: c.int, day: c.int) ---
	date_edit_set_maximum_date :: proc(date_edit: Date_Edit, year: c.int, month: c.int, day: c.int) ---
	date_edit_set_display_format :: proc(date_edit: Date_Edit, format: cstring) ---
	date_edit_set_calendar_popup :: proc(date_edit: Date_Edit, is_enabled: c.int) ---

	/* QTimeEdit */

	@(require_results) time_edit_create :: proc(parent: Widget) -> Time_Edit ---
	time_edit_get_time :: proc(time_edit: Time_Edit, hour: ^c.int, minute: ^c.int, second: ^c.int) ---
	time_edit_set_time :: proc(time_edit: Time_Edit, hour: c.int, minute: c.int, second: c.int) ---
	time_edit_set_display_format :: proc(time_edit: Time_Edit, format: cstring) ---

	/* QDateTimeEdit */

	@(require_results) date_time_edit_create :: proc(parent: Widget) -> Date_Time_Edit ---
	date_time_edit_get_date_time :: proc(date_time_edit: Date_Time_Edit, year: ^c.int, month: ^c.int, day: ^c.int, hour: ^c.int, minute: ^c.int, second: ^c.int) ---
	date_time_edit_set_date_time :: proc(date_time_edit: Date_Time_Edit, year: c.int, month: c.int, day: c.int, hour: c.int, minute: c.int, second: c.int) ---
	date_time_edit_set_display_format :: proc(date_time_edit: Date_Time_Edit, format: cstring) ---
	date_time_edit_set_calendar_popup :: proc(date_time_edit: Date_Time_Edit, is_enabled: c.int) ---

	/* QDial */

	@(require_results) dial_create :: proc(parent: Widget) -> Dial ---
	dial_set_range :: proc(dial: Dial, min_val: c.int, max_val: c.int) ---
	@(require_results) dial_get_value :: proc(dial: Dial) -> c.int ---
	dial_set_value :: proc(dial: Dial, value: c.int) ---
	dial_set_notch_target :: proc(dial: Dial, target: c.double) ---
	dial_set_notches_visible :: proc(dial: Dial, is_visible: c.int) ---
	dial_set_wrapping :: proc(dial: Dial, is_wrapping: c.int) ---
	dial_set_single_step :: proc(dial: Dial, step: c.int) ---

	/* QProgressDialog */

	@(require_results) progress_dialog_create :: proc(parent: Widget, label_text: cstring, cancel_button_text: cstring, minimum: c.int, maximum: c.int) -> Progress_Dialog ---
	progress_dialog_set_value :: proc(progress_dialog: Progress_Dialog, progress: c.int) ---
	@(require_results) progress_dialog_get_value :: proc(progress_dialog: Progress_Dialog) -> c.int ---
	progress_dialog_set_label_text :: proc(progress_dialog: Progress_Dialog, text: cstring) ---
	progress_dialog_set_cancel_button_text :: proc(progress_dialog: Progress_Dialog, text: cstring) ---
	progress_dialog_set_range :: proc(progress_dialog: Progress_Dialog, minimum: c.int, maximum: c.int) ---
	progress_dialog_set_minimum_duration :: proc(progress_dialog: Progress_Dialog, ms: c.int) ---
	progress_dialog_set_auto_close :: proc(progress_dialog: Progress_Dialog, is_auto_close: c.int) ---
	progress_dialog_set_auto_reset :: proc(progress_dialog: Progress_Dialog, is_auto_reset: c.int) ---
	@(require_results) progress_dialog_was_canceled :: proc(progress_dialog: Progress_Dialog) -> c.int ---
	progress_dialog_reset :: proc(progress_dialog: Progress_Dialog) ---

	/* QTextBrowser */

	@(require_results) text_browser_create :: proc(parent: Widget) -> Text_Browser ---
	text_browser_set_html :: proc(text_browser: Text_Browser, html: cstring) ---
	text_browser_set_source :: proc(text_browser: Text_Browser, url: cstring) ---
	text_browser_set_open_external_links :: proc(text_browser: Text_Browser, is_open: c.int) ---
	text_browser_backward :: proc(text_browser: Text_Browser) ---
	text_browser_forward :: proc(text_browser: Text_Browser) ---
	text_browser_home :: proc(text_browser: Text_Browser) ---

	/* QHeaderView */

	header_view_set_section_resize_mode :: proc(header_view: Header_View, mode: Header_Resize_Mode) ---
	header_view_set_section_resize_mode_for :: proc(header_view: Header_View, section: c.int, mode: Header_Resize_Mode) ---
	header_view_set_stretch_last_section :: proc(header_view: Header_View, is_stretch: c.int) ---
	header_view_set_visible :: proc(header_view: Header_View, is_visible: c.int) ---
	header_view_set_sort_indicator :: proc(header_view: Header_View, section: c.int, order: Sort_Order) ---
	header_view_set_sort_indicator_shown :: proc(header_view: Header_View, is_shown: c.int) ---
	@(require_results) table_widget_get_horizontal_header :: proc(table_widget: Table_Widget) -> Header_View ---
	@(require_results) table_widget_get_vertical_header :: proc(table_widget: Table_Widget) -> Header_View ---
	@(require_results) tree_widget_get_header :: proc(tree_widget: Tree_Widget) -> Header_View ---

	/* QSystemTrayIcon */

	@(require_results) system_tray_icon_create :: proc(parent: Widget) -> System_Tray_Icon ---
	system_tray_icon_destroy :: proc(system_tray_icon: System_Tray_Icon) ---
	system_tray_icon_set_icon :: proc(system_tray_icon: System_Tray_Icon, icon: Icon) ---
	system_tray_icon_set_tooltip :: proc(system_tray_icon: System_Tray_Icon, tooltip: cstring) ---
	system_tray_icon_set_context_menu :: proc(system_tray_icon: System_Tray_Icon, menu: Menu) ---
	system_tray_icon_show :: proc(system_tray_icon: System_Tray_Icon) ---
	system_tray_icon_hide :: proc(system_tray_icon: System_Tray_Icon) ---
	system_tray_icon_show_message :: proc(system_tray_icon: System_Tray_Icon, title: cstring, message: cstring, icon_type: System_Tray_Message_Icon, timeout_ms: c.int) ---
	@(require_results) system_tray_icon_is_available :: proc() -> c.int ---

	/* Clipboard */

	@(require_results) clipboard_get_text :: proc() -> cstring ---
	clipboard_set_text :: proc(text: cstring) ---

	/* String management */

	free_string :: proc(str: cstring) ---
	dialog_free_string :: proc(str: cstring) ---
	free_string_array :: proc(names: [^]cstring, count: c.int) ---

	/* QFileDialog */

	@(require_results) file_dialog_get_open_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring ---
	@(require_results) file_dialog_get_save_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring ---
	@(require_results) file_dialog_get_existing_directory :: proc(parent: Widget, caption: cstring, dir: cstring) -> cstring ---
	@(require_results) file_dialog_get_open_file_names :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring, out_names: ^[^]cstring, out_count: ^c.int) -> c.int ---

	/* QMessageBox */

	@(require_results) message_box_show_information :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_warning :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_critical :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_question :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button ---
	@(require_results) message_box_show_information_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button ---
	@(require_results) message_box_show_warning_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button ---
	@(require_results) message_box_show_critical_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button ---
	@(require_results) message_box_show_question_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button ---

	/* QColorDialog */

	@(require_results) colour_dialog_get_colour :: proc(parent: Widget, initial_r: c.int, initial_g: c.int, initial_b: c.int, initial_a: c.int, result_r: ^c.int, result_g: ^c.int, result_b: ^c.int, result_a: ^c.int) -> c.int ---

	/* QFontDialog */

	@(require_results) font_dialog_get_font :: proc(parent: Widget, family_buf: [^]u8, family_buf_size: c.int, point_size: ^c.int, weight: ^c.int, is_italic: ^c.int) -> c.int ---

	/* QInputDialog */

	@(require_results) input_dialog_get_text :: proc(parent: Widget, title: cstring, label: cstring, default_text: cstring, is_ok: ^c.int) -> cstring ---
	@(require_results) input_dialog_get_int :: proc(parent: Widget, title: cstring, label: cstring, value: c.int, min_val: c.int, max_val: c.int, step: c.int, is_ok: ^c.int) -> c.int ---
	@(require_results) input_dialog_get_double :: proc(parent: Widget, title: cstring, label: cstring, value: c.double, min_val: c.double, max_val: c.double, decimals: c.int, is_ok: ^c.int) -> c.double ---
	@(require_results) input_dialog_get_item :: proc(parent: Widget, title: cstring, label: cstring, items: [^]cstring, items_count: c.int, current: c.int, is_editable: c.int, is_ok: ^c.int) -> cstring ---

	/* QSettings */

	@(require_results) settings_create :: proc(parent: Widget) -> Settings ---
	settings_destroy :: proc(settings: Settings) ---
	settings_set_value_int :: proc(settings: Settings, key: cstring, value: c.int) ---
	@(require_results) settings_get_value_int :: proc(settings: Settings, key: cstring, default_value: c.int) -> c.int ---
	settings_set_value_string :: proc(settings: Settings, key: cstring, value: cstring) ---
	@(require_results) settings_get_value_string :: proc(settings: Settings, key: cstring, default_value: cstring) -> cstring ---
	settings_set_value_bool :: proc(settings: Settings, key: cstring, value: c.int) ---
	@(require_results) settings_get_value_bool :: proc(settings: Settings, key: cstring, default_value: c.int) -> c.int ---
	settings_set_value_double :: proc(settings: Settings, key: cstring, value: c.double) ---
	@(require_results) settings_get_value_double :: proc(settings: Settings, key: cstring, default_value: c.double) -> c.double ---
	settings_remove :: proc(settings: Settings, key: cstring) ---
	@(require_results) settings_contains :: proc(settings: Settings, key: cstring) -> c.int ---
	settings_sync :: proc(settings: Settings) ---
	settings_begin_group :: proc(settings: Settings, prefix: cstring) ---
	settings_end_group :: proc(settings: Settings) ---

	/* QDesktopServices */

	@(require_results) desktop_services_open_url :: proc(url: cstring) -> c.int ---

	/* QStandardPaths */

	@(require_results) standard_paths_writable_location :: proc(type: Standard_Location) -> cstring ---
	@(require_results) standard_paths_display_name :: proc(type: Standard_Location) -> cstring ---

	/* QScreen */

	screen_get_geometry :: proc(x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) ---
	@(require_results) screen_get_device_pixel_ratio :: proc() -> c.double ---
	@(require_results) screen_get_logical_dpi_x :: proc() -> c.double ---
	@(require_results) screen_get_logical_dpi_y :: proc() -> c.double ---
	@(require_results) screen_get_name :: proc() -> cstring ---

	/* QFontMetrics */

	@(require_results) font_metrics_create :: proc(family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) -> Font_Metrics ---
	font_metrics_destroy :: proc(font_metrics: Font_Metrics) ---
	@(require_results) font_metrics_get_horizontal_advance :: proc(font_metrics: Font_Metrics, text: cstring) -> c.int ---
	@(require_results) font_metrics_get_height :: proc(font_metrics: Font_Metrics) -> c.int ---
	@(require_results) font_metrics_get_ascent :: proc(font_metrics: Font_Metrics) -> c.int ---
	@(require_results) font_metrics_get_descent :: proc(font_metrics: Font_Metrics) -> c.int ---
	@(require_results) font_metrics_get_leading :: proc(font_metrics: Font_Metrics) -> c.int ---
	@(require_results) font_metrics_get_average_char_width :: proc(font_metrics: Font_Metrics) -> c.int ---
	font_metrics_get_bounding_rect :: proc(font_metrics: Font_Metrics, text: cstring, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) ---

	/* QApplication extras */

	application_set_style :: proc(application: Application, style_name: cstring) ---
	application_set_style_sheet :: proc(application: Application, style_sheet: cstring) ---
	application_set_font :: proc(application: Application, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) ---
	application_set_window_icon :: proc(application: Application, icon: Icon) ---
	application_set_application_version :: proc(application: Application, version: cstring) ---

	/* QCompleter */

	@(require_results) completer_create :: proc(items: [^]cstring, count: c.int, parent: Widget) -> Completer ---
	completer_destroy :: proc(completer: Completer) ---
	completer_set_case_sensitivity :: proc(completer: Completer, case_sensitivity: Case_Sensitivity) ---
	completer_set_filter_mode :: proc(completer: Completer, filter_mode: Match_Flag) ---
	line_edit_set_completer :: proc(line_edit: Line_Edit, completer: Completer) ---
	combo_box_set_completer :: proc(combo_box: Combo_Box, completer: Completer) ---

	/* QValidator */

	@(require_results) int_validator_create :: proc(minimum: c.int, maximum: c.int, parent: Widget) -> Validator ---
	@(require_results) double_validator_create :: proc(minimum: c.double, maximum: c.double, decimals: c.int, parent: Widget) -> Validator ---
	@(require_results) regex_validator_create :: proc(pattern: cstring, parent: Widget) -> Validator ---
	validator_destroy :: proc(validator: Validator) ---
	line_edit_set_validator :: proc(line_edit: Line_Edit, validator: Validator) ---

	/* QToolTip */

	tooltip_show_text :: proc(global_x: c.int, global_y: c.int, text: cstring, widget: Widget) ---
	tooltip_hide_text :: proc() ---

	/* Signal connections (all return Connection_Id for disconnect) */

	push_button_connect_clicked :: proc(button: Push_Button, callback: Callback, user_data: rawptr) -> Connection_Id ---
	push_button_connect_pressed :: proc(button: Push_Button, callback: Callback, user_data: rawptr) -> Connection_Id ---
	push_button_connect_released :: proc(button: Push_Button, callback: Callback, user_data: rawptr) -> Connection_Id ---
	check_box_connect_toggled :: proc(check_box: Check_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	radio_button_connect_toggled :: proc(radio_button: Radio_Button, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	slider_connect_value_changed :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	spin_box_connect_value_changed :: proc(spin_box: Spin_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	double_spin_box_connect_value_changed :: proc(double_spin_box: Double_Spin_Box, callback: Double_Callback, user_data: rawptr) -> Connection_Id ---
	line_edit_connect_text_changed :: proc(line_edit: Line_Edit, callback: String_Callback, user_data: rawptr) -> Connection_Id ---
	line_edit_connect_return_pressed :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	line_edit_connect_editing_finished :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	text_edit_connect_text_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	plain_text_edit_connect_text_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	combo_box_connect_index_changed :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	list_widget_connect_current_row_changed :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_item_clicked :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	table_widget_connect_cell_clicked :: proc(table_widget: Table_Widget, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
	widget_connect_custom_context_menu_requested :: proc(widget: Widget, callback: Point_Callback, user_data: rawptr) -> Connection_Id ---
	action_connect_triggered :: proc(action: Action, callback: Callback, user_data: rawptr) -> Connection_Id ---
	tab_widget_connect_current_changed :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	group_box_connect_toggled :: proc(group_box: Group_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	stacked_widget_connect_current_changed :: proc(stacked_widget: Stacked_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	timer_connect_timeout :: proc(timer: Timer, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* New signals */

	tab_widget_connect_tab_close_requested :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	table_widget_connect_cell_double_clicked :: proc(table_widget: Table_Widget, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
	table_widget_connect_cell_changed :: proc(table_widget: Table_Widget, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
	table_widget_connect_item_selection_changed :: proc(table_widget: Table_Widget, callback: Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_item_double_clicked :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_item_expanded :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_item_collapsed :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_current_item_changed :: proc(tree_widget: Tree_Widget, callback: Callback, user_data: rawptr) -> Connection_Id ---
	list_widget_connect_item_clicked :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	list_widget_connect_item_double_clicked :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	list_widget_connect_item_selection_changed :: proc(list_widget: List_Widget, callback: Callback, user_data: rawptr) -> Connection_Id ---
	combo_box_connect_current_text_changed :: proc(combo_box: Combo_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id ---
	progress_bar_connect_value_changed :: proc(progress_bar: Progress_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	slider_connect_slider_pressed :: proc(slider: Slider, callback: Callback, user_data: rawptr) -> Connection_Id ---
	slider_connect_slider_released :: proc(slider: Slider, callback: Callback, user_data: rawptr) -> Connection_Id ---
	dock_widget_connect_visibility_changed :: proc(dock_widget: Dock_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	dialog_connect_accepted :: proc(dialog: Dialog, callback: Callback, user_data: rawptr) -> Connection_Id ---
	dialog_connect_rejected :: proc(dialog: Dialog, callback: Callback, user_data: rawptr) -> Connection_Id ---
	dialog_connect_finished :: proc(dialog: Dialog, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* New signals for section 4 */

	shortcut_connect_activated :: proc(shortcut: Shortcut, callback: Callback, user_data: rawptr) -> Connection_Id ---
	dialog_button_box_connect_accepted :: proc(button_box: Dialog_Button_Box, callback: Callback, user_data: rawptr) -> Connection_Id ---
	dialog_button_box_connect_rejected :: proc(button_box: Dialog_Button_Box, callback: Callback, user_data: rawptr) -> Connection_Id ---
	tool_button_connect_clicked :: proc(tool_button: Tool_Button, callback: Callback, user_data: rawptr) -> Connection_Id ---
	button_group_connect_id_clicked :: proc(button_group: Button_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	button_group_connect_id_toggled :: proc(button_group: Button_Group, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
	calendar_widget_connect_selection_changed :: proc(calendar: Calendar_Widget, callback: Callback, user_data: rawptr) -> Connection_Id ---
	date_edit_connect_date_changed :: proc(date_edit: Date_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	time_edit_connect_time_changed :: proc(time_edit: Time_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	date_time_edit_connect_date_time_changed :: proc(date_time_edit: Date_Time_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	dial_connect_value_changed :: proc(dial: Dial, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	progress_dialog_connect_canceled :: proc(progress_dialog: Progress_Dialog, callback: Callback, user_data: rawptr) -> Connection_Id ---
	text_browser_connect_anchor_clicked :: proc(text_browser: Text_Browser, callback: String_Callback, user_data: rawptr) -> Connection_Id ---
	system_tray_icon_connect_activated :: proc(system_tray_icon: System_Tray_Icon, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* Signal disconnection */

	disconnect :: proc(connection_id: Connection_Id) ---
}
