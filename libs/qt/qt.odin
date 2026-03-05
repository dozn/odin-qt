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
List_Widget_Item :: distinct rawptr
Tree_Widget :: distinct rawptr
Tree_Widget_Item :: distinct rawptr
Table_Widget :: distinct rawptr
Table_Widget_Item :: distinct rawptr
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
Event_Filter :: distinct rawptr
Layout_Item :: distinct rawptr
Spacer_Item :: distinct rawptr
Connection_Id :: distinct c.int
Standard_Item :: distinct rawptr
Standard_Item_Model :: distinct rawptr
Abstract_Item_Model :: distinct rawptr
Model_Index :: distinct rawptr
File_System_Model :: distinct rawptr
Sort_Filter_Proxy_Model :: distinct rawptr
Tree_View :: distinct rawptr
Table_View :: distinct rawptr
List_View :: distinct rawptr
Paintable_Widget :: distinct rawptr
Painter :: distinct rawptr
Text_Char_Format :: distinct rawptr
Syntax_Highlighter :: distinct rawptr
Property_Animation :: distinct rawptr
Parallel_Animation_Group :: distinct rawptr
Sequential_Animation_Group :: distinct rawptr
Pause_Animation :: distinct rawptr
Drag :: distinct rawptr
Polygon :: distinct rawptr
Polygon_F :: distinct rawptr
Drag_Drop_Filter :: distinct rawptr
Tab_Bar :: distinct rawptr
Tool_Box :: distinct rawptr
Scroll_Bar :: distinct rawptr
LCD_Number :: distinct rawptr
Command_Link_Button :: distinct rawptr
Key_Sequence_Edit :: distinct rawptr
Font_Combo_Box :: distinct rawptr
Splash_Screen :: distinct rawptr
Stacked_Layout :: distinct rawptr
Widget_Action :: distinct rawptr
Action_Group :: distinct rawptr
Error_Message :: distinct rawptr
Mdi_Area :: distinct rawptr
Mdi_Sub_Window :: distinct rawptr
Wizard :: distinct rawptr
Wizard_Page :: distinct rawptr
Column_View :: distinct rawptr
Undo_View :: distinct rawptr
Undo_Stack :: distinct rawptr
Undo_Group :: distinct rawptr
Rubber_Band :: distinct rawptr
Focus_Frame :: distinct rawptr
Size_Grip :: distinct rawptr
Image :: distinct rawptr
Colour_Handle :: distinct rawptr
Font_Handle :: distinct rawptr
Pen :: distinct rawptr
Brush :: distinct rawptr
Palette :: distinct rawptr
Cursor_Handle :: distinct rawptr
Painter_Path :: distinct rawptr
Transform :: distinct rawptr
Region :: distinct rawptr
Gradient :: distinct rawptr
Text_Cursor :: distinct rawptr
Text_Document :: distinct rawptr
Text_Block :: distinct rawptr
Text_Option :: distinct rawptr
Key_Sequence :: distinct rawptr
Movie :: distinct rawptr
Image_Reader :: distinct rawptr
Image_Writer :: distinct rawptr
Bitmap :: distinct rawptr
Static_Text :: distinct rawptr
Picture :: distinct rawptr
Page_Size :: distinct rawptr
Page_Layout :: distinct rawptr
File :: distinct rawptr
File_Info :: distinct rawptr
Dir :: distinct rawptr
Process :: distinct rawptr
Mutex :: distinct rawptr
Read_Write_Lock :: distinct rawptr
Semaphore :: distinct rawptr
Buffer :: distinct rawptr
Json_Document :: distinct rawptr
Json_Object :: distinct rawptr
Json_Array :: distinct rawptr
Xml_Stream_Reader :: distinct rawptr
Xml_Stream_Writer :: distinct rawptr
Date_Time :: distinct rawptr
Date :: distinct rawptr
Time_Handle :: distinct rawptr
Locale :: distinct rawptr
Regex :: distinct rawptr
Url :: distinct rawptr
Uuid :: distinct rawptr
Elapsed_Timer :: distinct rawptr
Crypto_Hash :: distinct rawptr
Mime_Database :: distinct rawptr
Storage_Info :: distinct rawptr
Version_Number :: distinct rawptr
Translator :: distinct rawptr
Command_Line_Parser :: distinct rawptr
Temporary_File :: distinct rawptr
Temporary_Dir :: distinct rawptr
Save_File :: distinct rawptr
File_System_Watcher :: distinct rawptr
String_List_Model :: distinct rawptr
Item_Selection_Model :: distinct rawptr
Undo_Command :: distinct rawptr
Data_Widget_Mapper :: distinct rawptr
Styled_Item_Delegate :: distinct rawptr
Item_Delegate :: distinct rawptr
Graphics_Scene :: distinct rawptr
Graphics_View :: distinct rawptr
Graphics_Item :: distinct rawptr
Graphics_Rect_Item :: distinct rawptr
Graphics_Ellipse_Item :: distinct rawptr
Graphics_Text_Item :: distinct rawptr
Graphics_Line_Item :: distinct rawptr
Graphics_Pixmap_Item :: distinct rawptr
Graphics_Path_Item :: distinct rawptr
Graphics_Polygon_Item :: distinct rawptr
Graphics_Simple_Text_Item :: distinct rawptr
Graphics_Item_Group :: distinct rawptr
Graphics_Proxy_Widget :: distinct rawptr
Graphics_Effect :: distinct rawptr
Graphics_Blur_Effect :: distinct rawptr
Graphics_Colourize_Effect :: distinct rawptr
Graphics_Drop_Shadow_Effect :: distinct rawptr
Graphics_Opacity_Effect :: distinct rawptr
Style :: distinct rawptr
Scroller :: distinct rawptr
Scroller_Properties :: distinct rawptr
Identity_Proxy_Model :: distinct rawptr
Transpose_Proxy_Model :: distinct rawptr
Concatenate_Tables_Proxy_Model :: distinct rawptr
Signal_Mapper :: distinct rawptr
Lock_File :: distinct rawptr
Time_Line :: distinct rawptr
Calendar :: distinct rawptr
Event_Loop :: distinct rawptr
Library :: distinct rawptr
Shared_Memory :: distinct rawptr
System_Semaphore :: distinct rawptr
Deadline_Timer :: distinct rawptr
Collator :: distinct rawptr
Pdf_Writer :: distinct rawptr
Text_Stream :: distinct rawptr
Data_Stream :: distinct rawptr
Text_Table :: distinct rawptr
Text_List :: distinct rawptr
Text_Frame :: distinct rawptr
Custom_Item_Model :: distinct rawptr
Mime_Data :: distinct rawptr
Painter_Path_Stroker :: distinct rawptr
Text_Block_Format :: distinct rawptr
Text_List_Format :: distinct rawptr
Text_Image_Format :: distinct rawptr
Text_Frame_Format :: distinct rawptr
Text_Table_Format :: distinct rawptr
Text_Table_Cell_Format :: distinct rawptr
Text_Document_Fragment :: distinct rawptr
Text_Document_Writer :: distinct rawptr
Proxy_Style :: distinct rawptr
Dir_Iterator :: distinct rawptr
Time_Zone :: distinct rawptr
Graphics_Widget :: distinct rawptr
Graphics_Linear_Layout :: distinct rawptr
Graphics_Grid_Layout :: distinct rawptr
Tree_Widget_Item_Iterator :: distinct rawptr
File_Icon_Provider :: distinct rawptr
Font_Info :: distinct rawptr
Font_Metrics_F :: distinct rawptr
Url_Query :: distinct rawptr
Colour_Space :: distinct rawptr
Colour_Transform :: distinct rawptr
Text_Layout :: distinct rawptr
Text_Line :: distinct rawptr

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
Event_Filter_Callback :: #type proc"c"(event_type: c.int, user_data: rawptr) -> c.int
Close_Event_Callback :: #type proc"c"(user_data: rawptr) -> c.int
Key_Event_Callback :: #type proc"c"(event_type: c.int, key: c.int, modifiers: c.int, is_auto_repeat: c.int, text: cstring, user_data: rawptr) -> c.int
Mouse_Event_Callback :: #type proc"c"(event_type: c.int, button: c.int, x: c.int, y: c.int, global_x: c.int, global_y: c.int, modifiers: c.int, user_data: rawptr) -> c.int
Paint_Callback :: #type proc"c"(painter: Painter, width: c.int, height: c.int, user_data: rawptr)
Drag_Enter_Callback :: #type proc"c"(mime_text: cstring, user_data: rawptr) -> c.int
Drop_Callback :: #type proc"c"(mime_text: cstring, x: c.int, y: c.int, user_data: rawptr)
Four_Int_Callback :: #type proc"c"(a: c.int, b: c.int, c_val: c.int, d: c.int, user_data: rawptr)
Two_Pointer_Callback :: #type proc"c"(first: rawptr, second: rawptr, user_data: rawptr)
Model_Row_Count_Callback :: #type proc"c"(parent_index: rawptr, user_data: rawptr) -> c.int
Model_Column_Count_Callback :: #type proc"c"(parent_index: rawptr, user_data: rawptr) -> c.int
Model_Data_Callback :: #type proc"c"(index: rawptr, role: c.int, user_data: rawptr) -> cstring
Model_Flags_Callback :: #type proc"c"(index: rawptr, user_data: rawptr) -> c.int
Model_Header_Data_Callback :: #type proc"c"(section: c.int, orientation: c.int, role: c.int, user_data: rawptr) -> cstring

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

Elide_Mode :: enum c.int {
	Left = 0,
	Right = 1,
	Middle = 2,
	None = 3,
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

Scroll_Hint :: enum c.int {
	Ensure_Visible = 0,
	Position_At_Top = 1,
	Position_At_Bottom = 2,
	Position_At_Centre = 3,
}

List_Widget_View_Mode :: enum c.int {
	List_Mode = 0,
	Icon_Mode = 1,
}

List_View_Flow :: enum c.int {
	Left_To_Right = 0,
	Top_To_Bottom = 1,
}

Shortcut_Context :: enum c.int {
	Widget_Shortcut = 0,
	Window_Shortcut = 1,
	Application_Shortcut = 2,
	Widget_With_Children_Shortcut = 3,
}

Menu_Role :: enum c.int {
	No_Role = 0,
	Text_Heuristic_Role = 1,
	Application_Specific_Role = 2,
	About_Qt_Role = 3,
	About_Role = 4,
	Preferences_Role = 5,
	Quit_Role = 6,
}

Item_Flag :: enum c.int {
	No_Flags = 0x0000,
	Is_Selectable = 0x0001,
	Is_Editable = 0x0002,
	Is_Drag_Enabled = 0x0004,
	Is_Drop_Enabled = 0x0008,
	Is_User_Checkable = 0x0010,
	Is_Enabled = 0x0020,
	Is_Auto_Tristate = 0x0040,
	Is_User_Tristate = 0x0080,
}

Item_Data_Role :: enum c.int {
	Display = 0,
	Decoration = 1,
	Edit = 2,
	Tool_Tip = 3,
	Status_Tip = 4,
	Whats_This = 5,
	Font = 6,
	Text_Alignment = 7,
	Background = 8,
	Foreground = 9,
	Check_State = 10,
	Size_Hint = 13,
	User = 0x0100,
}

Event_Type :: enum c.int {
	Mouse_Button_Press = 2,
	Mouse_Button_Release = 3,
	Mouse_Button_Double_Click = 4,
	Mouse_Move = 5,
	Key_Press = 6,
	Key_Release = 7,
	Focus_In = 8,
	Focus_Out = 9,
	Enter = 10,
	Leave = 11,
	Paint = 12,
	Move = 13,
	Resize = 14,
	Show = 17,
	Hide = 18,
	Close = 19,
	Wheel = 31,
	Context_Menu = 82,
	Tool_Tip = 110,
}

Mouse_Button :: enum c.int {
	None = 0,
	Left = 1,
	Right = 2,
	Middle = 4,
	Back = 8,
	Forward = 16,
}

Easing_Curve :: enum c.int {
	Linear = 0,
	In_Quad = 1,
	Out_Quad = 2,
	In_Out_Quad = 3,
	Out_In_Quad = 4,
	In_Cubic = 5,
	Out_Cubic = 6,
	In_Out_Cubic = 7,
	Out_In_Cubic = 8,
	In_Quart = 9,
	Out_Quart = 10,
	In_Out_Quart = 11,
	Out_In_Quart = 12,
	In_Quint = 13,
	Out_Quint = 14,
	In_Out_Quint = 15,
	Out_In_Quint = 16,
	In_Sine = 17,
	Out_Sine = 18,
	In_Out_Sine = 19,
	Out_In_Sine = 20,
	In_Expo = 21,
	Out_Expo = 22,
	In_Out_Expo = 23,
	Out_In_Expo = 24,
	In_Circ = 25,
	Out_Circ = 26,
	In_Out_Circ = 27,
	Out_In_Circ = 28,
	In_Elastic = 29,
	Out_Elastic = 30,
	In_Out_Elastic = 31,
	Out_In_Elastic = 32,
	In_Back = 33,
	Out_Back = 34,
	In_Out_Back = 35,
	Out_In_Back = 36,
	In_Bounce = 37,
	Out_Bounce = 38,
	In_Out_Bounce = 39,
}

Keyboard_Modifier :: enum c.int {
	None = 0x00000000,
	Shift = 0x02000000,
	Control = 0x04000000,
	Alt = 0x08000000,
	Meta = 0x10000000,
	Keypad = 0x20000000,
}

Key :: enum c.int {
	Escape = 0x01000000,
	Tab = 0x01000001,
	Backtab = 0x01000002,
	Backspace = 0x01000003,
	Return = 0x01000004,
	Enter = 0x01000005,
	Insert = 0x01000006,
	Delete = 0x01000007,
	Pause = 0x01000008,
	Print = 0x01000009,
	Home = 0x01000010,
	End = 0x01000011,
	Left = 0x01000012,
	Up = 0x01000013,
	Right = 0x01000014,
	Down = 0x01000015,
	Page_Up = 0x01000016,
	Page_Down = 0x01000017,
	Shift = 0x01000020,
	Control = 0x01000021,
	Meta = 0x01000022,
	Alt = 0x01000023,
	Caps_Lock = 0x01000024,
	Num_Lock = 0x01000025,
	Scroll_Lock = 0x01000026,
	F1 = 0x01000030,
	F2 = 0x01000031,
	F3 = 0x01000032,
	F4 = 0x01000033,
	F5 = 0x01000034,
	F6 = 0x01000035,
	F7 = 0x01000036,
	F8 = 0x01000037,
	F9 = 0x01000038,
	F10 = 0x01000039,
	F11 = 0x0100003a,
	F12 = 0x0100003b,
	Space = 0x20,
	Exclam = 0x21,
	Apostrophe = 0x27,
	Comma = 0x2c,
	Minus = 0x2d,
	Period = 0x2e,
	Slash = 0x2f,
	Num_0 = 0x30,
	Num_1 = 0x31,
	Num_2 = 0x32,
	Num_3 = 0x33,
	Num_4 = 0x34,
	Num_5 = 0x35,
	Num_6 = 0x36,
	Num_7 = 0x37,
	Num_8 = 0x38,
	Num_9 = 0x39,
	Semicolon = 0x3b,
	Equal = 0x3d,
	A = 0x41,
	B = 0x42,
	C = 0x43,
	D = 0x44,
	E = 0x45,
	F = 0x46,
	G = 0x47,
	H = 0x48,
	I = 0x49,
	J = 0x4a,
	K = 0x4b,
	L = 0x4c,
	M = 0x4d,
	N = 0x4e,
	O = 0x4f,
	P = 0x50,
	Q = 0x51,
	R = 0x52,
	S = 0x53,
	T = 0x54,
	U = 0x55,
	V = 0x56,
	W = 0x57,
	X = 0x58,
	Y = 0x59,
	Z = 0x5a,
	Bracket_Left = 0x5b,
	Backslash = 0x5c,
	Bracket_Right = 0x5d,
	Grave_Accent = 0x60,
}

Tab_Bar_Shape :: enum c.int {
	Rounded_North = 0,
	Rounded_South = 1,
	Rounded_West = 2,
	Rounded_East = 3,
	Triangular_North = 4,
	Triangular_South = 5,
	Triangular_West = 6,
	Triangular_East = 7,
}

LCD_Number_Mode :: enum c.int {
	Hex = 0,
	Dec = 1,
	Oct = 2,
	Bin = 3,
}

LCD_Number_Segment_Style :: enum c.int {
	Outline = 0,
	Filled = 1,
	Flat = 2,
}

Font_Combo_Box_Font_Filter :: enum c.int {
	All = 0,
	Scalable = 0x1,
	Non_Scalable = 0x2,
	Monospaced = 0x4,
	Proportional = 0x8,
}

Stacked_Layout_Stacking_Mode :: enum c.int {
	Stack_One = 0,
	Stack_All = 1,
}

Mdi_Area_View_Mode :: enum c.int {
	Sub_Window = 0,
	Tabbed = 1,
}

Wizard_Style :: enum c.int {
	Classic = 0,
	Modern = 1,
	Mac = 2,
	Aero = 3,
}

Wizard_Option :: enum c.int {
	Independent_Pages = 0x00000001,
	Ignore_Sub_Titles = 0x00000002,
	Extended_Watermark_Pixmap = 0x00000004,
	No_Default_Button = 0x00000008,
	No_Back_Button_On_Start_Page = 0x00000010,
	No_Back_Button_On_Last_Page = 0x00000020,
	Disabled_Back_Button_On_Last_Page = 0x00000040,
	Have_Next_Button_On_Last_Page = 0x00000080,
	Have_Finish_Button_On_Early_Pages = 0x00000100,
	No_Cancel_Button = 0x00000200,
	Cancel_Button_On_Left = 0x00000400,
	Have_Help_Button = 0x00000800,
	Help_Button_On_Right = 0x00001000,
	Have_Custom_Button_1 = 0x00002000,
	Have_Custom_Button_2 = 0x00004000,
	Have_Custom_Button_3 = 0x00008000,
	No_Cancel_Button_On_Last_Page = 0x00010000,
}

Wizard_Button :: enum c.int {
	Back = 0,
	Next = 1,
	Commit = 2,
	Finish = 3,
	Cancel = 4,
	Help = 5,
	Custom_1 = 6,
	Custom_2 = 7,
	Custom_3 = 8,
}

Rubber_Band_Shape :: enum c.int {
	Line = 0,
	Rectangle = 1,
}

Image_Format :: enum c.int {
	Invalid = 0,
	Mono = 1,
	Mono_LSB = 2,
	Indexed_8 = 3,
	RGB_32 = 4,
	ARGB_32 = 5,
	ARGB_32_Premultiplied = 6,
	RGB_16 = 7,
	ARGB_8565_Premultiplied = 8,
	RGB_666 = 9,
	ARGB_6666_Premultiplied = 10,
	RGB_555 = 11,
	ARGB_8555_Premultiplied = 12,
	RGB_888 = 13,
	RGB_444 = 14,
	ARGB_4444_Premultiplied = 15,
	RGBX_8888 = 16,
	RGBA_8888 = 17,
	RGBA_8888_Premultiplied = 18,
	Grayscale_8 = 24,
	Grayscale_16 = 28,
	RGBA_16FPx4 = 31,
	RGBA_16FPx4_Premultiplied = 32,
	RGBA_32FPx4 = 33,
	RGBA_32FPx4_Premultiplied = 34,
}

Aspect_Ratio_Mode :: enum c.int {
	Ignore = 0,
	Keep = 1,
	Keep_By_Expanding = 2,
}

Transformation_Mode :: enum c.int {
	Fast = 0,
	Smooth = 1,
}

Pen_Style :: enum c.int {
	No_Pen = 0,
	Solid = 1,
	Dash = 2,
	Dot = 3,
	Dash_Dot = 4,
	Dash_Dot_Dot = 5,
	Custom_Dash = 6,
}

Pen_Cap_Style :: enum c.int {
	Flat = 0x00,
	Square = 0x10,
	Round = 0x20,
}

Pen_Join_Style :: enum c.int {
	Miter = 0x00,
	Bevel = 0x40,
	Round = 0x80,
	Svg_Miter = 0x100,
}

Brush_Style :: enum c.int {
	No_Brush = 0,
	Solid = 1,
	Dense_1 = 2,
	Dense_2 = 3,
	Dense_3 = 4,
	Dense_4 = 5,
	Dense_5 = 6,
	Dense_6 = 7,
	Dense_7 = 8,
	Horizontal = 9,
	Vertical = 10,
	Cross = 11,
	B_Diagonal = 12,
	F_Diagonal = 13,
	Diagonal_Cross = 14,
	Linear_Gradient = 15,
	Radial_Gradient = 16,
	Conical_Gradient = 17,
	Texture = 24,
}

Palette_Colour_Group :: enum c.int {
	Active = 0,
	Disabled = 1,
	Inactive = 2,
	All = 3,
}

Palette_Colour_Role :: enum c.int {
	Window = 10,
	Window_Text = 0,
	Base = 9,
	Alternate_Base = 16,
	Text = 6,
	Button = 1,
	Button_Text = 8,
	Bright_Text = 7,
	Light = 2,
	Midlight = 3,
	Dark = 4,
	Mid = 5,
	Shadow = 11,
	Highlight = 12,
	Highlighted_Text = 13,
	Link = 14,
	Link_Visited = 15,
	Tool_Tip_Base = 18,
	Tool_Tip_Text = 19,
	Placeholder_Text = 20,
	Accent = 21,
}

Gradient_Spread :: enum c.int {
	Pad = 0,
	Reflect = 1,
	Repeat = 2,
}

Text_Cursor_Move_Mode :: enum c.int {
	Move_Anchor = 0,
	Keep_Anchor = 1,
}

Text_Cursor_Move_Operation :: enum c.int {
	No_Move = 0,
	Start = 1,
	Up = 2,
	Start_Of_Line = 3,
	Start_Of_Block = 4,
	Start_Of_Word = 5,
	Previous_Block = 6,
	Previous_Character = 7,
	Previous_Word = 8,
	Left = 9,
	Word_Left = 10,
	End = 11,
	Down = 12,
	End_Of_Line = 13,
	End_Of_Word = 14,
	End_Of_Block = 15,
	Next_Block = 16,
	Next_Character = 17,
	Next_Word = 18,
	Right = 19,
	Word_Right = 20,
}

Text_Cursor_Selection_Type :: enum c.int {
	Word_Under_Cursor = 0,
	Line_Under_Cursor = 1,
	Block_Under_Cursor = 2,
	Document = 3,
}

Find_Flag :: enum c.int {
	Backward = 1,
	Case_Sensitively = 2,
	Whole_Words = 4,
}

Text_Edit_Line_Wrap_Mode :: enum c.int {
	No_Wrap = 0,
	Widget_Width = 1,
	Fixed_Pixel_Width = 2,
	Fixed_Column_Width = 3,
}

Plain_Text_Edit_Line_Wrap_Mode :: enum c.int {
	No_Wrap = 0,
	Widget_Width = 1,
}

Word_Wrap_Mode :: enum c.int {
	No_Wrap = 0,
	Word_Wrap = 1,
	Manual_Wrap = 2,
	Wrap_Anywhere = 3,
	Wrap_At_Word_Boundary_Or_Anywhere = 4,
}

Text_List_Style :: enum c.int {
	Disc = -1,
	Circle = -2,
	Square = -3,
	Decimal = -4,
	Lower_Alpha = -5,
	Upper_Alpha = -6,
	Lower_Roman = -7,
	Upper_Roman = -8,
}

Key_Sequence_Standard_Key :: enum c.int {
	Unknown_Key = 0,
	Help_Contents = 1,
	Whats_This = 2,
	Open = 3,
	Close = 4,
	Save = 5,
	New = 6,
	Delete = 7,
	Cut = 8,
	Copy = 9,
	Paste = 10,
	Undo = 11,
	Redo = 12,
	Back = 13,
	Forward = 14,
	Refresh = 15,
	Zoom_In = 16,
	Zoom_Out = 17,
	Print = 18,
	Add_Tab = 19,
	Next_Child = 20,
	Previous_Child = 21,
	Find = 22,
	Find_Next = 23,
	Find_Previous = 24,
	Replace = 25,
	Select_All = 26,
	Bold = 27,
	Italic = 28,
	Underline = 29,
	Move_To_Next_Char = 30,
	Move_To_Previous_Char = 31,
	Move_To_Next_Word = 32,
	Move_To_Previous_Word = 33,
	Move_To_Next_Line = 34,
	Move_To_Previous_Line = 35,
	Move_To_Next_Page = 36,
	Move_To_Previous_Page = 37,
	Move_To_Start_Of_Line = 38,
	Move_To_End_Of_Line = 39,
	Move_To_Start_Of_Block = 40,
	Move_To_End_Of_Block = 41,
	Move_To_Start_Of_Document = 42,
	Move_To_End_Of_Document = 43,
	Select_Next_Char = 44,
	Select_Previous_Char = 45,
	Select_Next_Word = 46,
	Select_Previous_Word = 47,
	Select_Next_Line = 48,
	Select_Previous_Line = 49,
	Select_Next_Page = 50,
	Select_Previous_Page = 51,
	Select_Start_Of_Line = 52,
	Select_End_Of_Line = 53,
	Select_Start_Of_Block = 54,
	Select_End_Of_Block = 55,
	Select_Start_Of_Document = 56,
	Select_End_Of_Document = 57,
	Delete_Start_Of_Word = 58,
	Delete_End_Of_Word = 59,
	Delete_End_Of_Line = 60,
	Deselect = 67,
	Backspace = 69,
	Cancel = 70,
	Full_Screen = 71,
	Preferences = 64,
	Quit = 65,
}

Key_Sequence_Match :: enum c.int {
	No_Match = 0,
	Partial_Match = 1,
	Exact_Match = 2,
}

Movie_State :: enum c.int {
	Not_Running = 0,
	Paused = 1,
	Running = 2,
}

Text_Format :: enum c.int {
	Plain_Text = 0,
	Rich_Text = 1,
	Auto_Text = 2,
	Markdown = 3,
}

Font_Style_Hint :: enum c.int {
	Any_Style = 5,
	Serif = 0,
	Sans_Serif = 1,
	Type_Writer = 2,
	Decorative = 3,
	Monospace = 7,
	Fantasy = 8,
	Cursive = 6,
	System = 4,
}

Font_Spacing_Type :: enum c.int {
	Percentage = 0,
	Absolute = 1,
}

Page_Size_Id :: enum c.int {
	A4 = 0,
	B5 = 1,
	Letter = 2,
	Legal = 3,
	Executive = 4,
	A0 = 5,
	A1 = 6,
	A2 = 7,
	A3 = 8,
	A5 = 9,
	A6 = 10,
	A7 = 11,
	A8 = 12,
	A9 = 13,
	B0 = 14,
	B1 = 15,
	B10 = 16,
	B2 = 17,
	B3 = 18,
	B4 = 19,
	B6 = 20,
	B7 = 21,
	B8 = 22,
	B9 = 23,
	Custom = 30,
}

Page_Size_Unit :: enum c.int {
	Millimeter = 0,
	Point = 1,
	Inch = 2,
	Pica = 3,
	Didot = 4,
	Cicero = 5,
}

Page_Layout_Orientation :: enum c.int {
	Portrait = 0,
	Landscape = 1,
}

File_Open_Mode :: enum c.int {
	Not_Open = 0x0000,
	Read_Only = 0x0001,
	Write_Only = 0x0002,
	Read_Write = 0x0003,
	Append = 0x0004,
	Truncate = 0x0008,
	Text = 0x0010,
	Unbuffered = 0x0020,
	New_Only = 0x0040,
	Existing_Only = 0x0080,
}

Dir_Filter :: enum c.int {
	Dirs = 0x001,
	Files = 0x002,
	Drives = 0x004,
	No_Sym_Links = 0x008,
	All_Entries = 0x007,
	No_Dot_And_Dot_Dot = 0x1000,
	No_Dot = 0x2000,
	No_Dot_Dot = 0x4000,
	Hidden = 0x100,
	System = 0x200,
}

Process_State :: enum c.int {
	Not_Running = 0,
	Starting = 1,
	Running = 2,
}

Process_Exit_Status :: enum c.int {
	Normal_Exit = 0,
	Crash_Exit = 1,
}

Process_Error :: enum c.int {
	Failed_To_Start = 0,
	Crashed = 1,
	Timed_Out = 2,
	Read_Error = 3,
	Write_Error = 4,
	Unknown_Error = 5,
}

Crypto_Hash_Algorithm :: enum c.int {
	Md4 = 0,
	Md5 = 1,
	Sha1 = 2,
	Sha224 = 3,
	Sha256 = 4,
	Sha384 = 5,
	Sha512 = 6,
	Sha3_224 = 7,
	Sha3_256 = 8,
	Sha3_384 = 9,
	Sha3_512 = 10,
	Blake2b_160 = 15,
	Blake2b_256 = 16,
	Blake2b_384 = 17,
	Blake2b_512 = 18,
	Blake2s_128 = 19,
	Blake2s_160 = 20,
	Blake2s_224 = 21,
	Blake2s_256 = 22,
}

Regex_Pattern_Option :: enum c.int {
	No_Pattern_Option = 0x0000,
	Case_Insensitive = 0x0001,
	Dot_Matches_Everything = 0x0002,
	Multiline = 0x0004,
	Extended_Pattern_Syntax = 0x0008,
	Inverted_Greediness = 0x0010,
	Dont_Capture = 0x0020,
	Use_Unicode_Properties = 0x0040,
}

Xml_Token_Type :: enum c.int {
	No_Token = 0,
	Invalid = 1,
	Start_Document = 2,
	End_Document = 3,
	Start_Element = 4,
	End_Element = 5,
	Characters = 6,
	Comment = 7,
	DTD = 8,
	Entity_Reference = 9,
	Processing_Instruction = 10,
}

Item_Selection_Flag :: enum c.int {
	No_Update = 0x0000,
	Clear = 0x0001,
	Select = 0x0002,
	Deselect = 0x0004,
	Toggle = 0x0008,
	Current = 0x0010,
	Rows = 0x0020,
	Columns = 0x0040,
	Select_Current = 0x0012,
	Toggle_Current = 0x0018,
	Clear_And_Select = 0x0003,
}

Data_Widget_Mapper_Submit_Policy :: enum c.int {
	Auto_Submit = 0,
	Manual_Submit = 1,
}

Graphics_View_Drag_Mode :: enum c.int {
	No_Drag = 0,
	Scroll_Hand_Drag = 1,
	Rubber_Band_Drag = 2,
}

Graphics_View_Viewport_Update_Mode :: enum c.int {
	Full_Viewport_Update = 0,
	Minimal_Viewport_Update = 1,
	Smart_Viewport_Update = 2,
	No_Viewport_Update = 3,
	Bounding_Rect_Viewport_Update = 4,
}

Graphics_View_Viewport_Anchor :: enum c.int {
	No_Anchor = 0,
	Anchor_View_Centre = 1,
	Anchor_Under_Mouse = 2,
}

Graphics_Item_Flag :: enum c.int {
	Is_Movable = 0x1,
	Is_Selectable = 0x2,
	Is_Focusable = 0x4,
	Clips_To_Shape = 0x8,
	Clips_Children_To_Shape = 0x10,
	Ignores_Transformations = 0x20,
	Ignores_Parent_Opacity = 0x40,
	Does_Not_Propagate_Opacity_To_Children = 0x80,
	Stacks_Behind_Parent = 0x100,
	Sends_Geometry_Changes = 0x800,
	Accepts_Input_Method = 0x1000,
	Is_Panel = 0x4000,
	Sends_Scene_Position_Changes = 0x10000,
	Contains_Children_In_Shape = 0x80000,
}

Graphics_Pixmap_Item_Shape_Mode :: enum c.int {
	Mask_Shape = 0,
	Bounding_Rect_Shape = 1,
	Heuristic_Mask_Shape = 2,
}

Text_Interaction_Flag :: enum c.int {
	No_Text_Interaction = 0,
	Text_Selectable_By_Mouse = 1,
	Text_Selectable_By_Keyboard = 2,
	Links_Accessible_By_Mouse = 4,
	Links_Accessible_By_Keyboard = 8,
	Text_Editable = 16,
	Text_Editor_Interaction = 19,
	Text_Browser_Interaction = 13,
}

Graphics_Blur_Hint :: enum c.int {
	Performance_Hint = 0x00,
	Quality_Hint = 0x01,
	Animation_Hint = 0x02,
}

Render_Hint :: enum c.int {
	Antialiasing = 0x01,
	Text_Antialiasing = 0x02,
	Smooth_Pixmap_Transform = 0x04,
	Vertical_Subpixel_Positioning = 0x08,
	Lossless_Image_Rendering = 0x40,
	Non_Cosmetic_Brush_Patterns = 0x80,
}

Composition_Mode :: enum c.int {
	Source_Over = 0,
	Destination_Over = 1,
	Clear = 2,
	Source = 3,
	Destination = 4,
	Source_In = 5,
	Destination_In = 6,
	Source_Out = 7,
	Destination_Out = 8,
	Source_Atop = 9,
	Destination_Atop = 10,
	Xor = 11,
	Plus = 12,
	Multiply = 13,
	Screen = 14,
	Overlay = 15,
	Darken = 16,
	Lighten = 17,
	Colour_Dodge = 18,
	Colour_Burn = 19,
	Hard_Light = 20,
	Soft_Light = 21,
	Difference = 22,
	Exclusion = 23,
	Raster_Source_Or_Destination = 24,
	Raster_Source_And_Destination = 25,
	Raster_Source_Xor_Destination = 26,
	Raster_Not_Source_And_Not_Destination = 27,
	Raster_Not_Source_Or_Not_Destination = 28,
	Raster_Not_Source_Xor_Destination = 29,
	Raster_Not_Source = 30,
	Raster_Not_Source_And_Destination = 31,
	Raster_Source_And_Not_Destination = 32,
	Raster_Not_Source_Or_Destination = 33,
	Raster_Source_Or_Not_Destination = 34,
	Raster_Clear_Destination = 35,
	Raster_Set_Destination = 36,
}

Mask_Mode :: enum c.int {
	Mask_In_Colour = 0,
	Mask_Out_Colour = 1,
}

Time_Line_State :: enum c.int {
	Not_Running = 0,
	Paused = 1,
	Running = 2,
}

Time_Line_Direction :: enum c.int {
	Forward = 0,
	Backward = 1,
}

Calendar_System :: enum c.int {
	Gregorian = 0,
	Julian = 8,
	Milankovic = 9,
}

Event_Loop_Flag :: enum c.int {
	All_Events = 0x00,
	Exclude_User_Input_Events = 0x01,
	Exclude_Socket_Notifiers = 0x02,
	Wait_For_More_Events = 0x04,
}

Library_Load_Hint :: enum c.int {
	Resolve_All_Symbols_Hint = 0x01,
	Export_External_Symbols_Hint = 0x02,
	Load_Archive_Member_Hint = 0x04,
	Prevent_Unload_Hint = 0x08,
	Deep_Bind_Hint = 0x10,
}

Shared_Memory_Access_Mode :: enum c.int {
	Read_Only = 0,
	Read_Write = 1,
}

Shared_Memory_Error :: enum c.int {
	No_Error = 0,
	Permission_Denied = 1,
	Invalid_Size = 2,
	Key_Error = 3,
	Already_Exists = 4,
	Not_Found = 5,
	Lock_Error = 6,
	Out_Of_Resources = 7,
	Unknown_Error = 8,
}

System_Semaphore_Access_Mode :: enum c.int {
	Open = 0,
	Create = 1,
}

System_Semaphore_Error :: enum c.int {
	No_Error = 0,
	Permission_Denied = 1,
	Key_Error = 2,
	Already_Exists = 3,
	Not_Found = 4,
	Out_Of_Resources = 5,
	Unknown_Error = 6,
}

Lock_File_Error :: enum c.int {
	No_Error = 0,
	Lock_Failed_Error = 1,
	Permission_Error = 2,
	Unknown_Error = 3,
}

Dock_Option :: enum c.int {
	Animated_Docks = 0x01,
	Allow_Nested_Docks = 0x02,
	Allow_Tabbed_Docks = 0x04,
	Force_Tabbed_Docks = 0x08,
	Vertical_Tabs = 0x10,
	Grouped_Dragging = 0x20,
}

Corner :: enum c.int {
	Top_Left = 0x00000,
	Top_Right = 0x00001,
	Bottom_Left = 0x00002,
	Bottom_Right = 0x00003,
}

Scroller_Gesture_Type :: enum c.int {
	Touch = 0,
	Left_Mouse_Button = 1,
	Middle_Mouse_Button = 2,
	Right_Mouse_Button = 3,
}

Scroller_State :: enum c.int {
	Inactive = 0,
	Pressed = 1,
	Dragging = 2,
	Scrolling = 3,
}

Scroller_Metric :: enum c.int {
	Mouse_Press_Event_Delay = 0,
	Drag_Start_Distance = 1,
	Drag_Velocity_Smoothing_Factor = 2,
	Axis_Lock_Threshold = 3,
	Scrolling_Curve = 4,
	Deceleration_Factor = 5,
	Minimum_Velocity = 6,
	Maximum_Velocity = 7,
	Maximum_Click_Through_Velocity = 8,
	Accelerating_Flick_Maximum_Time = 9,
	Accelerating_Flick_Speed_Up_Factor = 10,
	Snap_Position_Ratio = 11,
	Snap_Time = 12,
	Overshoot_Drag_Resistance_Factor = 13,
	Overshoot_Drag_Distance_Factor = 14,
	Overshoot_Scroll_Distance_Factor = 15,
	Overshoot_Scroll_Time = 16,
	Horizontal_Overshoot_Policy = 17,
	Vertical_Overshoot_Policy = 18,
	Frame_Rate = 19,
}

Style_Pixel_Metric :: enum c.int {
	Button_Margin = 0,
	Dock_Widget_Title_Bar_Button_Margin = 1,
	Button_Default_Indicator = 2,
	Menu_Button_Indicator = 3,
	Button_Shift_Horizontal = 4,
	Button_Shift_Vertical = 5,
	Default_Frame_Width = 6,
	Spin_Box_Frame_Width = 7,
	Combo_Box_Frame_Width = 8,
	Max_Popup_Width = 9,
	Scrollbar_Extent = 10,
	Scrollbar_Slider_Min = 11,
	Slider_Thickness = 12,
	Slider_Control_Thickness = 13,
	Slider_Length = 14,
	Slider_Tick_Space_Available = 15,
	Slider_Space_Available = 16,
	Dock_Widget_Separator_Extent = 17,
	Dock_Widget_Handle_Extent = 18,
	Dock_Widget_Frame_Width = 19,
	Tab_Bar_Tab_Overlap = 20,
	Tab_Bar_Tab_Horizontal_Shift = 21,
	Tab_Bar_Tab_Vertical_Shift = 22,
	Tab_Bar_Base_Height = 23,
	Tab_Bar_Base_Overlap = 24,
	Progress_Bar_Chunk_Width = 25,
	Splitter_Width = 26,
	Title_Bar_Height = 27,
	Menu_Scrollable_Style = 28,
	Menu_Horizontal_Padding = 29,
	Menu_Vertical_Padding = 30,
	Menu_Desktop_Frame_Width = 31,
	Menu_Tearoff_Height = 32,
	Header_Margin = 33,
	Header_Mark_Size = 34,
	Header_Grip_Margin = 35,
	Tab_Bar_Tab_Shift_Horizontal = 36,
	Tab_Bar_Tab_Shift_Vertical = 37,
	Tab_Bar_Scroll_Button_Width = 38,
	Tool_Bar_Frame_Width = 39,
	Tool_Bar_Handle_Extent = 40,
	Tool_Bar_Item_Spacing = 41,
	Tool_Bar_Item_Margin = 42,
	Tool_Bar_Separator_Extent = 43,
	Tool_Bar_Extension_Extent = 44,
	Small_Icon_Size = 49,
	Large_Icon_Size = 50,
	Focus_Frame_V_Margin = 51,
	Focus_Frame_H_Margin = 52,
	Tool_Bar_Icon_Size = 53,
	Icon_View_Icon_Size = 62,
	Layout_Left_Margin = 67,
	Layout_Top_Margin = 68,
	Layout_Right_Margin = 69,
	Layout_Bottom_Margin = 70,
	Layout_Horizontal_Spacing = 71,
	Layout_Vertical_Spacing = 72,
}

Window_Flag :: enum c.int {
	Widget = 0x00000000,
	Window = 0x00000001,
	Dialog = 0x00000003,
	Sheet = 0x00000005,
	Popup = 0x00000009,
	Tool = 0x0000000d,
	Tool_Tip = 0x0000000f,
	Splash_Screen = 0x0000000f | 0x00000004,
	Sub_Window = 0x00000012,
	Frameless_Window_Hint = 0x00000800,
	Custom_Window_Hint = 0x00000000,
	Window_Title_Hint = 0x00001000,
	Window_System_Menu_Hint = 0x00002000,
	Window_Minimize_Button_Hint = 0x00004000,
	Window_Maximize_Button_Hint = 0x00008000,
	Window_Min_Max_Buttons_Hint = 0x0000C000,
	Window_Close_Button_Hint = 0x08000000,
	Window_Context_Help_Button_Hint = 0x00010000,
	Window_Stays_On_Top_Hint = 0x00040000,
	Window_Stays_On_Bottom_Hint = 0x04000000,
}

Window_State :: enum c.int {
	No_State = 0x00000000,
	Minimized = 0x00000001,
	Maximized = 0x00000002,
	Full_Screen = 0x00000004,
	Active = 0x00000008,
}

Window_Modality :: enum c.int {
	Non_Modal = 0,
	Window_Modal = 1,
	Application_Modal = 2,
}

Focus_Policy :: enum c.int {
	No_Focus = 0,
	Tab_Focus = 0x1,
	Click_Focus = 0x2,
	Strong_Focus = 0xb,
	Wheel_Focus = 0xf,
}

Widget_Attribute :: enum c.int {
	Delete_On_Close = 55,
	Transparent_For_Mouse_Events = 51,
	No_System_Background = 9,
	Translucent_Background = 120,
	Styled_Background = 100,
	Accepts_Touches = 122,
	Always_Show_Tool_Tips = 84,
	Hover = 74,
	Input_Method_Enabled = 14,
	Mouse_No_Mask = 71,
	Touch_Padding = 126,
	Mac_Always_Show_Tool_Window = 36,
}

Combo_Box_Insert_Policy :: enum c.int {
	No_Insert = 0,
	Insert_At_Top = 1,
	Insert_At_Current = 2,
	Insert_At_Bottom = 3,
	Insert_After_Current = 4,
	Insert_Before_Current = 5,
	Insert_Alphabetically = 6,
}

Combo_Box_Size_Adjust_Policy :: enum c.int {
	Adjust_To_Contents = 0,
	Adjust_To_Contents_On_First_Show = 1,
	Adjust_To_Minimum_Contents_Length_With_Icon = 2,
}

Icon_Mode :: enum c.int {
	Normal = 0,
	Disabled = 1,
	Active = 2,
	Selected = 3,
}

Icon_State :: enum c.int {
	On = 0,
	Off = 1,
}

Font_Style_Strategy :: enum c.int {
	Prefer_Default = 0x0001,
	Prefer_Bitmap = 0x0002,
	Prefer_Device = 0x0004,
	Prefer_Outline = 0x0008,
	Force_Outline = 0x0010,
	Prefer_Match = 0x0020,
	Prefer_Quality = 0x0040,
	Prefer_Antialias = 0x0080,
	No_Antialias = 0x0100,
	No_Font_Merging = 0x8000,
	Prefer_No_Shaping = 0x1000,
}

Font_Capitalization :: enum c.int {
	Mixed_Case = 0,
	All_Uppercase = 1,
	All_Lowercase = 2,
	Small_Caps = 3,
	Capitalize = 4,
}

Font_Hinting_Preference :: enum c.int {
	Default_Hinting = 0,
	No_Hinting = 1,
	Vertical_Hinting = 2,
	Full_Hinting = 3,
}

Colour_Spec :: enum c.int {
	Invalid = 0,
	Rgb = 1,
	Hsv = 2,
	Cmyk = 3,
	Hsl = 4,
	Extended_Rgb = 5,
}

Named_Colour_Space :: enum c.int {
	Srgb = 1,
	Srgb_Linear = 2,
	Adobe_Rgb = 3,
	Display_P3 = 4,
	Pro_Photo_Rgb = 5,
}

Colour_Space_Primaries :: enum c.int {
	Custom = 0,
	Srgb = 1,
	Adobe_Rgb = 2,
	Dci_P3_D65 = 3,
	Pro_Photo_Rgb = 4,
}

Colour_Space_Transfer_Function :: enum c.int {
	Custom = 0,
	Linear = 1,
	Gamma = 2,
	Srgb = 3,
	Pro_Photo_Rgb = 4,
}

Fill_Rule :: enum c.int {
	Odd_Even = 0,
	Winding = 1,
}

Timer_Type :: enum c.int {
	Precise = 0,
	Coarse = 1,
	Very_Coarse = 2,
}

Text_Stream_Status :: enum c.int {
	Ok = 0,
	Read_Past_End = 1,
	Read_Corrupt_Data = 2,
	Write_Failed = 3,
}

Data_Stream_Status :: enum c.int {
	Ok = 0,
	Read_Past_End = 1,
	Read_Corrupt_Data = 2,
	Write_Failed = 3,
	Size_Limit_Exceeded = 4,
}

Data_Stream_Byte_Order :: enum c.int {
	Big_Endian = 0,
	Little_Endian = 1,
}

Data_Stream_Floating_Point_Precision :: enum c.int {
	Single_Precision = 0,
	Double_Precision = 1,
}

Pdf_Version :: enum c.int {
	Version_1_4 = 0,
	Version_A1b = 1,
	Version_1_6 = 2,
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
	@(require_results) main_window_get_central_widget :: proc(window: Main_Window) -> Widget ---
	main_window_remove_dock_widget :: proc(window: Main_Window, dock_widget: Dock_Widget) ---
	main_window_tabify_dock_widget :: proc(window: Main_Window, first: Dock_Widget, second: Dock_Widget) ---
	main_window_set_dock_options :: proc(window: Main_Window, options: c.int) ---
	main_window_set_tool_button_style :: proc(window: Main_Window, style: Tool_Button_Style) ---
	main_window_set_animated :: proc(window: Main_Window, is_animated: c.int) ---
	main_window_set_corner :: proc(window: Main_Window, corner: Corner, area: Dock_Widget_Area) ---
	@(require_results) main_window_save_state :: proc(window: Main_Window, out_len: ^c.int, version: c.int) -> [^]u8 ---
	@(require_results) main_window_restore_state :: proc(window: Main_Window, data: [^]u8, len: c.int, version: c.int) -> c.int ---

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
	widget_set_window_flags :: proc(widget: Widget, flags: c.int) ---
	@(require_results) widget_get_window_flags :: proc(widget: Widget) -> c.int ---
	widget_set_window_state :: proc(widget: Widget, state: c.int) ---
	@(require_results) widget_get_window_state :: proc(widget: Widget) -> c.int ---
	widget_show_minimized :: proc(widget: Widget) ---
	widget_show_maximized :: proc(widget: Widget) ---
	widget_show_full_screen :: proc(widget: Widget) ---
	widget_show_normal :: proc(widget: Widget) ---
	@(require_results) widget_is_minimized :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_is_maximized :: proc(widget: Widget) -> c.int ---
	@(require_results) widget_is_full_screen :: proc(widget: Widget) -> c.int ---
	widget_set_window_modality :: proc(widget: Widget, modality: c.int) ---
	widget_set_window_opacity :: proc(widget: Widget, opacity: c.double) ---
	@(require_results) widget_get_window_opacity :: proc(widget: Widget) -> c.double ---
	widget_set_geometry :: proc(widget: Widget, x: c.int, y: c.int, w: c.int, h: c.int) ---
	widget_get_geometry :: proc(widget: Widget, out_x: ^c.int, out_y: ^c.int, out_w: ^c.int, out_h: ^c.int) ---
	widget_map_to_global :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) ---
	widget_map_from_global :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) ---
	widget_map_to_parent :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) ---
	widget_map_from_parent :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) ---
	widget_set_parent :: proc(widget: Widget, parent: Widget) ---
	@(require_results) widget_get_parent_widget :: proc(widget: Widget) -> Widget ---
	widget_set_focus_policy :: proc(widget: Widget, policy: c.int) ---
	widget_set_attribute :: proc(widget: Widget, attribute: c.int, on: c.int) ---
	@(require_results) widget_test_attribute :: proc(widget: Widget, attribute: c.int) -> c.int ---
	widget_adjust_size :: proc(widget: Widget) ---
	widget_set_contents_margins :: proc(widget: Widget, left: c.int, top: c.int, right: c.int, bottom: c.int) ---
	widget_get_contents_margins :: proc(widget: Widget, left: ^c.int, top: ^c.int, right: ^c.int, bottom: ^c.int) ---
	widget_repaint :: proc(widget: Widget) ---
	widget_set_tab_order :: proc(first: Widget, second: Widget) ---
	@(require_results) widget_grab :: proc(widget: Widget) -> Pixmap ---
	widget_get_rect :: proc(widget: Widget, out_x: ^c.int, out_y: ^c.int, out_w: ^c.int, out_h: ^c.int) ---
	widget_get_size :: proc(widget: Widget, out_w: ^c.int, out_h: ^c.int) ---
	widget_get_pos :: proc(widget: Widget, out_x: ^c.int, out_y: ^c.int) ---

	/* QLabel */

	@(require_results) label_create :: proc(parent: Widget, text: cstring) -> Label ---
	label_set_text :: proc(label: Label, text: cstring) ---
	@(require_results) label_get_text :: proc(label: Label) -> cstring ---
	label_set_alignment :: proc(label: Label, alignment: Alignment) ---
	label_set_word_wrap :: proc(label: Label, is_word_wrap: c.int) ---
	label_clear :: proc(label: Label) ---
	label_set_scaled_contents :: proc(label: Label, is_scaled: c.int) ---
	label_set_text_format :: proc(label: Label, format: Text_Format) ---
	label_set_text_interaction_flags :: proc(label: Label, flags: c.int) ---
	label_set_open_external_links :: proc(label: Label, is_open: c.int) ---
	label_set_buddy :: proc(label: Label, buddy: Widget) ---
	label_set_indent :: proc(label: Label, indent: c.int) ---
	label_set_margin :: proc(label: Label, margin: c.int) ---

	/* QPushButton */

	@(require_results) push_button_create :: proc(parent: Widget, text: cstring) -> Push_Button ---
	push_button_set_text :: proc(button: Push_Button, text: cstring) ---
	@(require_results) push_button_get_text :: proc(button: Push_Button) -> cstring ---
	push_button_set_flat :: proc(button: Push_Button, is_flat: c.int) ---
	@(require_results) push_button_is_flat :: proc(button: Push_Button) -> c.int ---
	push_button_set_checkable :: proc(button: Push_Button, is_checkable: c.int) ---
	@(require_results) push_button_is_checked :: proc(button: Push_Button) -> c.int ---
	push_button_set_checked :: proc(button: Push_Button, is_checked: c.int) ---
	push_button_set_default :: proc(button: Push_Button, is_default: c.int) ---
	@(require_results) push_button_is_default :: proc(button: Push_Button) -> c.int ---
	push_button_set_auto_default :: proc(button: Push_Button, is_auto_default: c.int) ---
	@(require_results) push_button_is_auto_default :: proc(button: Push_Button) -> c.int ---
	push_button_set_menu :: proc(button: Push_Button, menu: Menu) ---
	push_button_show_menu :: proc(button: Push_Button) ---

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
	line_edit_set_alignment :: proc(line_edit: Line_Edit, alignment: Alignment) ---
	line_edit_set_cursor_position :: proc(line_edit: Line_Edit, position: c.int) ---
	@(require_results) line_edit_get_cursor_position :: proc(line_edit: Line_Edit) -> c.int ---
	line_edit_set_input_mask :: proc(line_edit: Line_Edit, mask: cstring) ---
	@(require_results) line_edit_has_selected_text :: proc(line_edit: Line_Edit) -> c.int ---
	@(require_results) line_edit_get_selected_text :: proc(line_edit: Line_Edit) -> cstring ---
	line_edit_set_selection :: proc(line_edit: Line_Edit, start: c.int, length: c.int) ---
	line_edit_undo :: proc(line_edit: Line_Edit) ---
	line_edit_redo :: proc(line_edit: Line_Edit) ---
	@(require_results) line_edit_is_modified :: proc(line_edit: Line_Edit) -> c.int ---
	line_edit_set_modified :: proc(line_edit: Line_Edit, is_modified: c.int) ---
	line_edit_set_drag_enabled :: proc(line_edit: Line_Edit, is_drag_enabled: c.int) ---
	line_edit_home :: proc(line_edit: Line_Edit, is_mark: c.int) ---
	line_edit_end :: proc(line_edit: Line_Edit, is_mark: c.int) ---

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
	text_edit_set_tab_stop_distance :: proc(text_edit: Text_Edit, distance: c.double) ---
	@(require_results) text_edit_get_tab_stop_distance :: proc(text_edit: Text_Edit) -> c.double ---
	text_edit_set_line_wrap_mode :: proc(text_edit: Text_Edit, mode: Text_Edit_Line_Wrap_Mode) ---
	text_edit_set_word_wrap_mode :: proc(text_edit: Text_Edit, mode: Word_Wrap_Mode) ---
	text_edit_set_accept_rich_text :: proc(text_edit: Text_Edit, is_accept: c.int) ---
	@(require_results) text_edit_find :: proc(text_edit: Text_Edit, text: cstring, flags: c.int) -> c.int ---
	text_edit_undo :: proc(text_edit: Text_Edit) ---
	text_edit_redo :: proc(text_edit: Text_Edit) ---
	text_edit_zoom_in :: proc(text_edit: Text_Edit, range: c.int) ---
	text_edit_zoom_out :: proc(text_edit: Text_Edit, range: c.int) ---
	@(require_results) text_edit_get_text_cursor :: proc(text_edit: Text_Edit) -> Text_Cursor ---
	@(require_results) text_edit_get_document :: proc(text_edit: Text_Edit) -> Text_Document ---
	text_edit_set_current_font :: proc(text_edit: Text_Edit, font: Font_Handle) ---
	text_edit_set_font_weight :: proc(text_edit: Text_Edit, weight: c.int) ---
	text_edit_set_font_italic :: proc(text_edit: Text_Edit, is_italic: c.int) ---
	text_edit_set_font_underline :: proc(text_edit: Text_Edit, is_underline: c.int) ---
	text_edit_set_font_point_size :: proc(text_edit: Text_Edit, size: c.double) ---
	text_edit_set_font_family :: proc(text_edit: Text_Edit, family: cstring) ---
	text_edit_set_text_colour :: proc(text_edit: Text_Edit, colour: Colour_Handle) ---
	text_edit_set_text_background_colour :: proc(text_edit: Text_Edit, colour: Colour_Handle) ---
	text_edit_set_alignment :: proc(text_edit: Text_Edit, alignment: c.int) ---
	text_edit_move_cursor :: proc(text_edit: Text_Edit, operation: Text_Cursor_Move_Operation, mode: Text_Cursor_Move_Mode) ---
	text_edit_ensure_cursor_visible :: proc(text_edit: Text_Edit) ---
	text_edit_set_overwrite_mode :: proc(text_edit: Text_Edit, is_overwrite: c.int) ---
	@(require_results) text_edit_can_paste :: proc(text_edit: Text_Edit) -> c.int ---
	@(require_results) text_edit_get_vertical_scroll_bar :: proc(text_edit: Text_Edit) -> Scroll_Bar ---
	@(require_results) text_edit_get_horizontal_scroll_bar :: proc(text_edit: Text_Edit) -> Scroll_Bar ---

	/* QPlainTextEdit */

	@(require_results) plain_text_edit_create :: proc(parent: Widget) -> Plain_Text_Edit ---
	plain_text_edit_set_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---
	@(require_results) plain_text_edit_get_plain_text :: proc(plain_text_edit: Plain_Text_Edit) -> cstring ---
	plain_text_edit_set_read_only :: proc(plain_text_edit: Plain_Text_Edit, is_read_only: c.int) ---
	@(require_results) plain_text_edit_is_read_only :: proc(plain_text_edit: Plain_Text_Edit) -> c.int ---
	plain_text_edit_clear :: proc(plain_text_edit: Plain_Text_Edit) ---
	plain_text_edit_append_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---
	plain_text_edit_insert_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) ---
	plain_text_edit_set_tab_stop_distance :: proc(plain_text_edit: Plain_Text_Edit, distance: c.double) ---
	@(require_results) plain_text_edit_get_tab_stop_distance :: proc(plain_text_edit: Plain_Text_Edit) -> c.double ---
	plain_text_edit_set_line_wrap_mode :: proc(plain_text_edit: Plain_Text_Edit, mode: Plain_Text_Edit_Line_Wrap_Mode) ---
	@(require_results) plain_text_edit_find :: proc(plain_text_edit: Plain_Text_Edit, text: cstring, flags: c.int) -> c.int ---
	plain_text_edit_undo :: proc(plain_text_edit: Plain_Text_Edit) ---
	plain_text_edit_redo :: proc(plain_text_edit: Plain_Text_Edit) ---
	plain_text_edit_zoom_in :: proc(plain_text_edit: Plain_Text_Edit, range: c.int) ---
	plain_text_edit_zoom_out :: proc(plain_text_edit: Plain_Text_Edit, range: c.int) ---
	@(require_results) plain_text_edit_get_text_cursor :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Cursor ---
	@(require_results) plain_text_edit_get_document :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Document ---
	@(require_results) plain_text_edit_get_block_count :: proc(plain_text_edit: Plain_Text_Edit) -> c.int ---
	plain_text_edit_set_maximum_block_count :: proc(plain_text_edit: Plain_Text_Edit, count: c.int) ---
	plain_text_edit_move_cursor :: proc(plain_text_edit: Plain_Text_Edit, operation: Text_Cursor_Move_Operation, mode: Text_Cursor_Move_Mode) ---
	plain_text_edit_ensure_cursor_visible :: proc(plain_text_edit: Plain_Text_Edit) ---
	plain_text_edit_set_overwrite_mode :: proc(plain_text_edit: Plain_Text_Edit, is_overwrite: c.int) ---
	@(require_results) plain_text_edit_get_vertical_scroll_bar :: proc(plain_text_edit: Plain_Text_Edit) -> Scroll_Bar ---
	@(require_results) plain_text_edit_get_horizontal_scroll_bar :: proc(plain_text_edit: Plain_Text_Edit) -> Scroll_Bar ---

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
	combo_box_add_items :: proc(combo_box: Combo_Box, items: [^]cstring, count: c.int) ---
	combo_box_insert_items :: proc(combo_box: Combo_Box, index: c.int, items: [^]cstring, count: c.int) ---
	combo_box_set_max_visible_items :: proc(combo_box: Combo_Box, max_items: c.int) ---
	combo_box_set_max_count :: proc(combo_box: Combo_Box, max_count: c.int) ---
	combo_box_set_insert_policy :: proc(combo_box: Combo_Box, policy: Combo_Box_Insert_Policy) ---
	combo_box_set_duplicates_enabled :: proc(combo_box: Combo_Box, is_duplicates_enabled: c.int) ---
	@(require_results) combo_box_get_line_edit :: proc(combo_box: Combo_Box) -> Line_Edit ---
	combo_box_show_popup :: proc(combo_box: Combo_Box) ---
	combo_box_hide_popup :: proc(combo_box: Combo_Box) ---
	combo_box_set_model :: proc(combo_box: Combo_Box, model: Abstract_Item_Model) ---
	@(require_results) combo_box_get_model :: proc(combo_box: Combo_Box) -> Abstract_Item_Model ---
	combo_box_set_size_adjust_policy :: proc(combo_box: Combo_Box, policy: Combo_Box_Size_Adjust_Policy) ---

	/* QSlider */

	@(require_results) slider_create :: proc(orientation: Orientation, parent: Widget) -> Slider ---
	slider_set_range :: proc(slider: Slider, min_val: c.int, max_val: c.int) ---
	@(require_results) slider_get_value :: proc(slider: Slider) -> c.int ---
	slider_set_value :: proc(slider: Slider, value: c.int) ---
	slider_set_tick_position :: proc(slider: Slider, position: Tick_Position) ---
	slider_set_tick_interval :: proc(slider: Slider, interval: c.int) ---
	slider_set_single_step :: proc(slider: Slider, step: c.int) ---
	slider_set_page_step :: proc(slider: Slider, step: c.int) ---
	slider_set_orientation :: proc(slider: Slider, orientation: Orientation) ---
	slider_set_minimum :: proc(slider: Slider, min_val: c.int) ---
	slider_set_maximum :: proc(slider: Slider, max_val: c.int) ---
	@(require_results) slider_get_minimum :: proc(slider: Slider) -> c.int ---
	@(require_results) slider_get_maximum :: proc(slider: Slider) -> c.int ---
	slider_set_inverted_appearance :: proc(slider: Slider, is_inverted: c.int) ---
	slider_set_inverted_controls :: proc(slider: Slider, is_inverted: c.int) ---

	/* QProgressBar */

	@(require_results) progress_bar_create :: proc(parent: Widget) -> Progress_Bar ---
	progress_bar_set_range :: proc(progress_bar: Progress_Bar, min_val: c.int, max_val: c.int) ---
	@(require_results) progress_bar_get_value :: proc(progress_bar: Progress_Bar) -> c.int ---
	progress_bar_set_value :: proc(progress_bar: Progress_Bar, value: c.int) ---
	progress_bar_set_format :: proc(progress_bar: Progress_Bar, format: cstring) ---
	progress_bar_set_text_visible :: proc(progress_bar: Progress_Bar, is_visible: c.int) ---
	progress_bar_reset :: proc(progress_bar: Progress_Bar) ---
	progress_bar_set_orientation :: proc(progress_bar: Progress_Bar, orientation: Orientation) ---
	progress_bar_set_minimum :: proc(progress_bar: Progress_Bar, min_val: c.int) ---
	progress_bar_set_maximum :: proc(progress_bar: Progress_Bar, max_val: c.int) ---
	@(require_results) progress_bar_get_minimum :: proc(progress_bar: Progress_Bar) -> c.int ---
	@(require_results) progress_bar_get_maximum :: proc(progress_bar: Progress_Bar) -> c.int ---
	@(require_results) progress_bar_is_text_visible :: proc(progress_bar: Progress_Bar) -> c.int ---
	@(require_results) progress_bar_get_text :: proc(progress_bar: Progress_Bar) -> cstring ---

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
	grid_layout_add_layout :: proc(layout: Layout, child_layout: Layout, row: c.int, col: c.int, row_span: c.int, col_span: c.int) ---
	form_layout_add_row_widgets :: proc(layout: Layout, label_widget: Widget, field_widget: Widget) ---
	@(require_results) layout_get_count :: proc(layout: Layout) -> c.int ---
	@(require_results) layout_item_at :: proc(layout: Layout, index: c.int) -> Layout_Item ---
	@(require_results) layout_take_at :: proc(layout: Layout, index: c.int) -> Layout_Item ---
	@(require_results) layout_item_get_widget :: proc(item: Layout_Item) -> Widget ---
	layout_item_destroy :: proc(item: Layout_Item) ---
	box_layout_insert_widget :: proc(layout: Layout, index: c.int, widget: Widget, stretch: c.int, alignment: Alignment) ---
	@(require_results) spacer_item_create :: proc(width: c.int, height: c.int, horizontal_policy: Size_Policy, vertical_policy: Size_Policy) -> Spacer_Item ---
	box_layout_add_spacer_item :: proc(layout: Layout, spacer: Spacer_Item) ---
	grid_layout_add_spacer_item :: proc(layout: Layout, spacer: Spacer_Item, row: c.int, col: c.int, row_span: c.int, col_span: c.int) ---
	@(require_results) layout_set_widget_alignment :: proc(layout: Layout, widget: Widget, alignment: Alignment) -> c.int ---

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
	@(require_results) list_widget_get_item :: proc(list_widget: List_Widget, row: c.int) -> List_Widget_Item ---
	@(require_results) list_widget_get_item_at :: proc(list_widget: List_Widget, x: c.int, y: c.int) -> List_Widget_Item ---
	@(require_results) list_widget_get_current_item :: proc(list_widget: List_Widget) -> List_Widget_Item ---
	list_widget_set_current_item :: proc(list_widget: List_Widget, item: List_Widget_Item) ---
	list_widget_get_selected_items :: proc(list_widget: List_Widget, out_items: ^[^]rawptr, out_count: ^c.int) ---
	list_widget_add_items :: proc(list_widget: List_Widget, items: [^]cstring, count: c.int) ---
	list_widget_find_items :: proc(list_widget: List_Widget, text: cstring, flags: Match_Flag, out_items: ^[^]rawptr, out_count: ^c.int) ---
	list_widget_scroll_to_item :: proc(list_widget: List_Widget, item: List_Widget_Item, scroll_hint: Scroll_Hint) ---
	list_widget_set_view_mode :: proc(list_widget: List_Widget, mode: List_Widget_View_Mode) ---
	list_widget_set_icon_size :: proc(list_widget: List_Widget, width: c.int, height: c.int) ---
	list_widget_set_grid_size :: proc(list_widget: List_Widget, width: c.int, height: c.int) ---
	list_widget_set_flow :: proc(list_widget: List_Widget, flow: List_View_Flow) ---
	list_widget_set_spacing :: proc(list_widget: List_Widget, spacing: c.int) ---
	list_widget_set_sorting_enabled :: proc(list_widget: List_Widget, is_enabled: c.int) ---

	/* QListWidgetItem */

	@(require_results) list_widget_item_create :: proc(text: cstring) -> List_Widget_Item ---
	list_widget_item_set_text :: proc(item: List_Widget_Item, text: cstring) ---
	@(require_results) list_widget_item_get_text :: proc(item: List_Widget_Item) -> cstring ---
	list_widget_item_set_font :: proc(item: List_Widget_Item, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) ---
	list_widget_item_set_foreground :: proc(item: List_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) ---
	list_widget_item_set_background :: proc(item: List_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) ---
	list_widget_item_set_icon :: proc(item: List_Widget_Item, icon: Icon) ---
	list_widget_item_set_flags :: proc(item: List_Widget_Item, flags: c.int) ---
	@(require_results) list_widget_item_get_flags :: proc(item: List_Widget_Item) -> c.int ---
	list_widget_item_set_size_hint :: proc(item: List_Widget_Item, w: c.int, h: c.int) ---
	list_widget_item_set_text_alignment :: proc(item: List_Widget_Item, alignment: c.int) ---
	@(require_results) list_widget_item_get_text_alignment :: proc(item: List_Widget_Item) -> c.int ---
	list_widget_item_set_tool_tip :: proc(item: List_Widget_Item, tooltip: cstring) ---
	@(require_results) list_widget_item_get_tool_tip :: proc(item: List_Widget_Item) -> cstring ---
	list_widget_item_set_check_state :: proc(item: List_Widget_Item, state: Check_State) ---
	@(require_results) list_widget_item_get_check_state :: proc(item: List_Widget_Item) -> Check_State ---
	list_widget_item_set_hidden :: proc(item: List_Widget_Item, is_hidden: c.int) ---
	@(require_results) list_widget_item_is_hidden :: proc(item: List_Widget_Item) -> c.int ---
	list_widget_item_set_selected :: proc(item: List_Widget_Item, is_selected: c.int) ---
	@(require_results) list_widget_item_is_selected :: proc(item: List_Widget_Item) -> c.int ---
	@(require_results) list_widget_item_get_row :: proc(item: List_Widget_Item) -> c.int ---
	list_widget_add_item_object :: proc(list_widget: List_Widget, item: List_Widget_Item) ---
	list_widget_insert_item_object :: proc(list_widget: List_Widget, row: c.int, item: List_Widget_Item) ---

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
	tree_widget_insert_top_level_item :: proc(tree_widget: Tree_Widget, index: c.int, item: Tree_Widget_Item) ---
	@(require_results) tree_widget_get_top_level_item :: proc(tree_widget: Tree_Widget, index: c.int) -> Tree_Widget_Item ---
	@(require_results) tree_widget_index_of_top_level_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) -> c.int ---
	tree_widget_get_selected_items :: proc(tree_widget: Tree_Widget, out_items: ^[^]rawptr, out_count: ^c.int) ---
	tree_widget_find_items :: proc(tree_widget: Tree_Widget, text: cstring, flags: Match_Flag, column: c.int, out_items: ^[^]rawptr, out_count: ^c.int) ---
	tree_widget_scroll_to_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item, scroll_hint: Scroll_Hint) ---
	tree_widget_sort_items :: proc(tree_widget: Tree_Widget, column: c.int, order: Sort_Order) ---
	tree_widget_set_indentation :: proc(tree_widget: Tree_Widget, indentation: c.int) ---
	tree_widget_set_uniform_row_heights :: proc(tree_widget: Tree_Widget, is_uniform: c.int) ---
	tree_widget_set_animated :: proc(tree_widget: Tree_Widget, is_animated: c.int) ---
	tree_widget_set_header_hidden :: proc(tree_widget: Tree_Widget, is_hidden: c.int) ---

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
	tree_widget_item_set_icon :: proc(item: Tree_Widget_Item, column: c.int, icon: Icon) ---
	tree_widget_item_set_check_state :: proc(item: Tree_Widget_Item, column: c.int, state: Check_State) ---
	@(require_results) tree_widget_item_get_check_state :: proc(item: Tree_Widget_Item, column: c.int) -> Check_State ---
	tree_widget_item_set_flags :: proc(item: Tree_Widget_Item, flags: c.int) ---
	tree_widget_item_set_data :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role, value: c.int) ---
	@(require_results) tree_widget_item_get_data :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role) -> c.int ---
	tree_widget_item_set_data_string :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role, value: cstring) ---
	@(require_results) tree_widget_item_get_data_string :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role) -> cstring ---
	tree_widget_item_set_tool_tip :: proc(item: Tree_Widget_Item, column: c.int, tooltip: cstring) ---
	tree_widget_item_set_hidden :: proc(item: Tree_Widget_Item, is_hidden: c.int) ---
	@(require_results) tree_widget_item_is_hidden :: proc(item: Tree_Widget_Item) -> c.int ---
	tree_widget_item_set_disabled :: proc(item: Tree_Widget_Item, is_disabled: c.int) ---
	@(require_results) tree_widget_item_is_disabled :: proc(item: Tree_Widget_Item) -> c.int ---
	tree_widget_item_set_selected :: proc(item: Tree_Widget_Item, is_selected: c.int) ---
	@(require_results) tree_widget_item_is_selected :: proc(item: Tree_Widget_Item) -> c.int ---
	tree_widget_item_set_first_column_spanned :: proc(item: Tree_Widget_Item, is_spanned: c.int) ---
	@(require_results) tree_widget_item_get_tree_widget :: proc(item: Tree_Widget_Item) -> Tree_Widget ---
	@(require_results) tree_widget_item_take_child :: proc(item: Tree_Widget_Item, index: c.int) -> Tree_Widget_Item ---
	tree_widget_item_sort_children :: proc(item: Tree_Widget_Item, column: c.int, order: Sort_Order) ---

	/* QTreeWidgetItemIterator */

	@(require_results) tree_widget_item_iterator_create :: proc(tree: Tree_Widget, flags: c.int) -> Tree_Widget_Item_Iterator ---
	tree_widget_item_iterator_destroy :: proc(iter: Tree_Widget_Item_Iterator) ---
	@(require_results) tree_widget_item_iterator_is_valid :: proc(iter: Tree_Widget_Item_Iterator) -> c.int ---
	@(require_results) tree_widget_item_iterator_get_item :: proc(iter: Tree_Widget_Item_Iterator) -> Tree_Widget_Item ---
	tree_widget_item_iterator_next :: proc(iter: Tree_Widget_Item_Iterator) ---

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
	table_widget_set_cell_widget :: proc(table_widget: Table_Widget, row: c.int, col: c.int, widget: Widget) ---
	@(require_results) table_widget_get_cell_widget :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> Widget ---
	@(require_results) table_widget_get_item :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> Table_Widget_Item ---
	@(require_results) table_widget_get_current_item :: proc(table_widget: Table_Widget) -> Table_Widget_Item ---
	table_widget_set_current_cell :: proc(table_widget: Table_Widget, row: c.int, col: c.int) ---
	table_widget_get_selected_items :: proc(table_widget: Table_Widget, out_items: ^[^]Table_Widget_Item, out_count: ^c.int) ---
	table_widget_set_show_grid :: proc(table_widget: Table_Widget, is_show: c.int) ---
	table_widget_set_span :: proc(table_widget: Table_Widget, row: c.int, col: c.int, row_span: c.int, col_span: c.int) ---
	@(require_results) table_widget_get_row_span :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> c.int ---
	@(require_results) table_widget_get_column_span :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> c.int ---
	table_widget_scroll_to_item :: proc(table_widget: Table_Widget, item: Table_Widget_Item, scroll_hint: Scroll_Hint) ---
	table_widget_find_items :: proc(table_widget: Table_Widget, text: cstring, flags: Match_Flag, out_items: ^[^]Table_Widget_Item, out_count: ^c.int) ---
	table_widget_set_word_wrap :: proc(table_widget: Table_Widget, is_word_wrap: c.int) ---
	table_widget_set_corner_button_enabled :: proc(table_widget: Table_Widget, is_enabled: c.int) ---

	/* QTableWidgetItem */

	@(require_results) table_widget_item_create :: proc(text: cstring) -> Table_Widget_Item ---
	table_widget_item_set_text :: proc(item: Table_Widget_Item, text: cstring) ---
	@(require_results) table_widget_item_get_text :: proc(item: Table_Widget_Item) -> cstring ---
	table_widget_item_set_font :: proc(item: Table_Widget_Item, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) ---
	table_widget_item_set_foreground :: proc(item: Table_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) ---
	table_widget_item_set_background :: proc(item: Table_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) ---
	table_widget_item_set_icon :: proc(item: Table_Widget_Item, icon: Icon) ---
	table_widget_item_set_flags :: proc(item: Table_Widget_Item, flags: c.int) ---
	@(require_results) table_widget_item_get_flags :: proc(item: Table_Widget_Item) -> c.int ---
	table_widget_item_set_text_alignment :: proc(item: Table_Widget_Item, alignment: c.int) ---
	@(require_results) table_widget_item_get_text_alignment :: proc(item: Table_Widget_Item) -> c.int ---
	table_widget_item_set_tool_tip :: proc(item: Table_Widget_Item, tooltip: cstring) ---
	@(require_results) table_widget_item_get_tool_tip :: proc(item: Table_Widget_Item) -> cstring ---
	table_widget_item_set_check_state :: proc(item: Table_Widget_Item, state: Check_State) ---
	@(require_results) table_widget_item_get_check_state :: proc(item: Table_Widget_Item) -> Check_State ---
	table_widget_item_set_data :: proc(item: Table_Widget_Item, role: c.int, value: cstring) ---
	@(require_results) table_widget_item_get_data :: proc(item: Table_Widget_Item, role: c.int) -> cstring ---
	table_widget_item_set_size_hint :: proc(item: Table_Widget_Item, w: c.int, h: c.int) ---
	@(require_results) table_widget_item_get_row :: proc(item: Table_Widget_Item) -> c.int ---
	@(require_results) table_widget_item_get_column :: proc(item: Table_Widget_Item) -> c.int ---
	table_widget_item_set_selected :: proc(item: Table_Widget_Item, is_selected: c.int) ---
	@(require_results) table_widget_item_is_selected :: proc(item: Table_Widget_Item) -> c.int ---
	table_widget_set_item_object :: proc(table_widget: Table_Widget, row: c.int, col: c.int, item: Table_Widget_Item) ---

	/* QTableWidgetSelectionRange */

	@(require_results) table_widget_get_selection_ranges :: proc(table_widget: Table_Widget, out_ranges: ^[^]c.int, out_count: ^c.int) -> c.int ---
	table_widget_free_selection_ranges :: proc(ranges: [^]c.int) ---
	table_widget_set_range_selected :: proc(table_widget: Table_Widget, top_row: c.int, left_col: c.int, bottom_row: c.int, right_col: c.int, is_selected: c.int) ---

	/* QFileIconProvider */

	@(require_results) file_icon_provider_create :: proc() -> File_Icon_Provider ---
	file_icon_provider_destroy :: proc(provider: File_Icon_Provider) ---
	@(require_results) file_icon_provider_get_icon_for_file :: proc(provider: File_Icon_Provider, file_path: cstring) -> Icon ---
	@(require_results) file_icon_provider_get_icon_for_type :: proc(provider: File_Icon_Provider, icon_type: c.int) -> Icon ---

	/* QScrollArea */

	@(require_results) scroll_area_create :: proc(parent: Widget) -> Scroll_Area ---
	scroll_area_set_widget :: proc(scroll_area: Scroll_Area, widget: Widget) ---
	scroll_area_set_widget_resizable :: proc(scroll_area: Scroll_Area, is_resizable: c.int) ---
	@(require_results) scroll_area_get_widget :: proc(scroll_area: Scroll_Area) -> Widget ---
	scroll_area_set_horizontal_scroll_bar_policy :: proc(scroll_area: Scroll_Area, policy: Scroll_Bar_Policy) ---
	scroll_area_set_vertical_scroll_bar_policy :: proc(scroll_area: Scroll_Area, policy: Scroll_Bar_Policy) ---
	scroll_area_ensure_visible :: proc(scroll_area: Scroll_Area, x: c.int, y: c.int, x_margin: c.int, y_margin: c.int) ---
	scroll_area_ensure_widget_visible :: proc(scroll_area: Scroll_Area, widget: Widget, x_margin: c.int, y_margin: c.int) ---
	@(require_results) scroll_area_take_widget :: proc(scroll_area: Scroll_Area) -> Widget ---
	@(require_results) scroll_area_get_vertical_scroll_bar :: proc(scroll_area: Scroll_Area) -> Scroll_Bar ---
	@(require_results) scroll_area_get_horizontal_scroll_bar :: proc(scroll_area: Scroll_Area) -> Scroll_Bar ---
	scroll_area_set_alignment :: proc(scroll_area: Scroll_Area, alignment: Alignment) ---

	/* QSplitter */

	@(require_results) splitter_create :: proc(orientation: Orientation, parent: Widget) -> Splitter ---
	splitter_add_widget :: proc(splitter: Splitter, widget: Widget) ---
	splitter_set_sizes :: proc(splitter: Splitter, sizes: [^]c.int, count: c.int) ---
	splitter_get_sizes :: proc(splitter: Splitter, sizes_out: [^]c.int, count: c.int) ---
	splitter_set_stretch_factor :: proc(splitter: Splitter, index: c.int, stretch: c.int) ---
	@(require_results) splitter_get_count :: proc(splitter: Splitter) -> c.int ---
	splitter_set_collapsible :: proc(splitter: Splitter, index: c.int, is_collapsible: c.int) ---
	@(require_results) splitter_get_widget :: proc(splitter: Splitter, index: c.int) -> Widget ---
	@(require_results) splitter_index_of :: proc(splitter: Splitter, widget: Widget) -> c.int ---
	splitter_set_children_collapsible :: proc(splitter: Splitter, is_collapsible: c.int) ---
	splitter_set_opaque_resize :: proc(splitter: Splitter, is_opaque: c.int) ---
	splitter_set_handle_width :: proc(splitter: Splitter, width: c.int) ---
	@(require_results) splitter_save_state :: proc(splitter: Splitter, out_len: ^c.int) -> [^]byte ---
	@(require_results) splitter_restore_state :: proc(splitter: Splitter, data: [^]byte, len: c.int) -> c.int ---

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
	frame_set_mid_line_width :: proc(frame: Frame, width: c.int) ---
	@(require_results) frame_get_mid_line_width :: proc(frame: Frame) -> c.int ---

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
	@(require_results) menu_add_section :: proc(menu: Menu, text: cstring) -> Action ---
	menu_insert_action :: proc(menu: Menu, before: Action, action: Action) ---
	@(require_results) menu_insert_separator :: proc(menu: Menu, before: Action) -> Action ---
	@(require_results) menu_insert_menu :: proc(menu: Menu, before: Action, submenu: Menu) -> Action ---
	menu_set_title :: proc(menu: Menu, title: cstring) ---
	@(require_results) menu_get_title :: proc(menu: Menu) -> cstring ---
	menu_set_icon :: proc(menu: Menu, icon: Icon) ---
	menu_set_tear_off_enabled :: proc(menu: Menu, is_enabled: c.int) ---
	menu_set_default_action :: proc(menu: Menu, action: Action) ---
	menu_get_actions :: proc(menu: Menu, out_actions: ^[^]rawptr, out_count: ^c.int) ---
	@(require_results) menu_is_empty :: proc(menu: Menu) -> c.int ---

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
	action_set_shortcut_context :: proc(action: Action, shortcut_context: Shortcut_Context) ---
	action_set_status_tip :: proc(action: Action, tip: cstring) ---
	action_set_whats_this :: proc(action: Action, text: cstring) ---
	action_set_auto_repeat :: proc(action: Action, is_enabled: c.int) ---
	action_set_data :: proc(action: Action, data: cstring) ---
	@(require_results) action_get_data :: proc(action: Action) -> cstring ---
	action_trigger :: proc(action: Action) ---
	action_set_menu_role :: proc(action: Action, role: Menu_Role) ---

	/* QToolBar */

	@(require_results) toolbar_create :: proc(parent: Widget, title: cstring) -> Tool_Bar ---
	@(require_results) toolbar_add_action :: proc(toolbar: Tool_Bar, text: cstring) -> Action ---
	toolbar_add_separator :: proc(toolbar: Tool_Bar) ---
	toolbar_add_widget :: proc(toolbar: Tool_Bar, widget: Widget) ---
	toolbar_set_movable :: proc(toolbar: Tool_Bar, is_movable: c.int) ---
	@(require_results) toolbar_is_movable :: proc(toolbar: Tool_Bar) -> c.int ---
	toolbar_set_icon_size :: proc(toolbar: Tool_Bar, width: c.int, height: c.int) ---
	toolbar_set_tool_button_style :: proc(toolbar: Tool_Bar, style: Tool_Button_Style) ---
	toolbar_insert_action :: proc(toolbar: Tool_Bar, before: Action, action: Action) ---
	@(require_results) toolbar_insert_separator :: proc(toolbar: Tool_Bar, before: Action) -> Action ---
	@(require_results) toolbar_insert_widget :: proc(toolbar: Tool_Bar, before: Action, widget: Widget) -> Action ---
	toolbar_set_allowed_areas :: proc(toolbar: Tool_Bar, areas: c.int) ---
	toolbar_set_floatable :: proc(toolbar: Tool_Bar, is_floatable: c.int) ---
	toolbar_set_orientation :: proc(toolbar: Tool_Bar, orientation: Orientation) ---
	@(require_results) toolbar_toggle_view_action :: proc(toolbar: Tool_Bar) -> Action ---
	@(require_results) toolbar_widget_for_action :: proc(toolbar: Tool_Bar, action: Action) -> Widget ---
	toolbar_clear :: proc(toolbar: Tool_Bar) ---

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
	@(require_results) tab_widget_get_current_widget :: proc(tab_widget: Tab_Widget) -> Widget ---
	tab_widget_clear :: proc(tab_widget: Tab_Widget) ---
	tab_widget_set_document_mode :: proc(tab_widget: Tab_Widget, is_document_mode: c.int) ---
	tab_widget_set_elide_mode :: proc(tab_widget: Tab_Widget, mode: Elide_Mode) ---
	tab_widget_set_uses_scroll_buttons :: proc(tab_widget: Tab_Widget, is_uses: c.int) ---
	tab_widget_set_tab_bar_auto_hide :: proc(tab_widget: Tab_Widget, is_auto_hide: c.int) ---
	tab_widget_set_corner_widget :: proc(tab_widget: Tab_Widget, widget: Widget, corner: Corner) ---

	/* QGroupBox */

	@(require_results) group_box_create :: proc(parent: Widget, title: cstring) -> Group_Box ---
	group_box_set_title :: proc(group_box: Group_Box, title: cstring) ---
	group_box_set_checkable :: proc(group_box: Group_Box, is_checkable: c.int) ---
	@(require_results) group_box_is_checked :: proc(group_box: Group_Box) -> c.int ---
	group_box_set_checked :: proc(group_box: Group_Box, is_checked: c.int) ---
	@(require_results) group_box_get_title :: proc(group_box: Group_Box) -> cstring ---
	group_box_set_flat :: proc(group_box: Group_Box, is_flat: c.int) ---
	@(require_results) group_box_is_flat :: proc(group_box: Group_Box) -> c.int ---
	group_box_set_alignment :: proc(group_box: Group_Box, alignment: Alignment) ---

	/* QDialog */

	@(require_results) dialog_create :: proc(parent: Widget) -> Dialog ---
	@(require_results) dialog_exec :: proc(dialog: Dialog) -> c.int ---
	dialog_accept :: proc(dialog: Dialog) ---
	dialog_reject :: proc(dialog: Dialog) ---
	dialog_set_modal :: proc(dialog: Dialog, is_modal: c.int) ---
	dialog_open :: proc(dialog: Dialog) ---
	dialog_done :: proc(dialog: Dialog, result: c.int) ---
	dialog_set_result :: proc(dialog: Dialog, result: c.int) ---
	@(require_results) dialog_get_result :: proc(dialog: Dialog) -> c.int ---
	dialog_set_size_grip_enabled :: proc(dialog: Dialog, is_enabled: c.int) ---

	/* QDockWidget */

	@(require_results) dock_widget_create :: proc(parent: Widget, title: cstring) -> Dock_Widget ---
	dock_widget_set_widget :: proc(dock_widget: Dock_Widget, widget: Widget) ---
	dock_widget_set_allowed_areas :: proc(dock_widget: Dock_Widget, areas: c.int) ---
	dock_widget_set_features :: proc(dock_widget: Dock_Widget, features: c.int) ---
	@(require_results) dock_widget_is_floating :: proc(dock_widget: Dock_Widget) -> c.int ---
	dock_widget_set_floating :: proc(dock_widget: Dock_Widget, is_floating: c.int) ---
	@(require_results) dock_widget_toggle_view_action :: proc(dock_widget: Dock_Widget) -> Action ---
	dock_widget_set_title_bar_widget :: proc(dock_widget: Dock_Widget, widget: Widget) ---
	@(require_results) dock_widget_get_title_bar_widget :: proc(dock_widget: Dock_Widget) -> Widget ---

	/* QStatusBar */

	statusbar_show_message :: proc(statusbar: Status_Bar, message: cstring, timeout_ms: c.int) ---
	statusbar_clear_message :: proc(statusbar: Status_Bar) ---
	statusbar_add_permanent_widget :: proc(statusbar: Status_Bar, widget: Widget) ---
	statusbar_add_widget :: proc(statusbar: Status_Bar, widget: Widget) ---
	statusbar_remove_widget :: proc(statusbar: Status_Bar, widget: Widget) ---
	@(require_results) statusbar_insert_widget :: proc(statusbar: Status_Bar, index: c.int, widget: Widget, stretch: c.int) -> c.int ---
	@(require_results) statusbar_insert_permanent_widget :: proc(statusbar: Status_Bar, index: c.int, widget: Widget, stretch: c.int) -> c.int ---
	@(require_results) statusbar_get_current_message :: proc(statusbar: Status_Bar) -> cstring ---
	statusbar_set_size_grip_enabled :: proc(statusbar: Status_Bar, is_enabled: c.int) ---

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
	timer_set_interval :: proc(timer: Timer, interval_ms: c.int) ---
	timer_set_timer_type :: proc(timer: Timer, timer_type: c.int) ---

	/* QPixmap */

	@(require_results) pixmap_create_from_file :: proc(file_path: cstring) -> Pixmap ---
	pixmap_destroy :: proc(pixmap: Pixmap) ---
	@(require_results) pixmap_get_width :: proc(pixmap: Pixmap) -> c.int ---
	@(require_results) pixmap_get_height :: proc(pixmap: Pixmap) -> c.int ---
	@(require_results) pixmap_is_null :: proc(pixmap: Pixmap) -> c.int ---
	@(require_results) pixmap_scaled :: proc(pixmap: Pixmap, w: c.int, h: c.int, aspect_ratio_mode: Aspect_Ratio_Mode, transform_mode: Transformation_Mode) -> Pixmap ---
	@(require_results) pixmap_scaled_to_width :: proc(pixmap: Pixmap, width: c.int, transform_mode: Transformation_Mode) -> Pixmap ---
	@(require_results) pixmap_scaled_to_height :: proc(pixmap: Pixmap, height: c.int, transform_mode: Transformation_Mode) -> Pixmap ---
	pixmap_fill :: proc(pixmap: Pixmap, colour: Colour_Handle) ---
	@(require_results) pixmap_save :: proc(pixmap: Pixmap, file_path: cstring) -> c.int ---
	@(require_results) pixmap_load :: proc(pixmap: Pixmap, file_path: cstring) -> c.int ---
	@(require_results) pixmap_copy :: proc(pixmap: Pixmap, x: c.int, y: c.int, w: c.int, h: c.int) -> Pixmap ---
	pixmap_get_size :: proc(pixmap: Pixmap, w: ^c.int, h: ^c.int) ---
	pixmap_get_rect :: proc(pixmap: Pixmap, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) ---
	@(require_results) pixmap_from_image :: proc(image: Image) -> Pixmap ---
	@(require_results) pixmap_create_mask_from_colour :: proc(pixmap: Pixmap, colour: Colour_Handle, mode: Mask_Mode) -> Pixmap ---
	pixmap_set_mask :: proc(pixmap: Pixmap, bitmap: Bitmap) ---
	@(require_results) pixmap_get_mask :: proc(pixmap: Pixmap) -> Pixmap ---

	/* QPixmapCache */

	@(require_results) pixmap_cache_get_cache_limit :: proc() -> c.int ---
	pixmap_cache_set_cache_limit :: proc(kilobytes: c.int) ---
	@(require_results) pixmap_cache_find :: proc(key: cstring, pixmap_out: Pixmap) -> c.int ---
	@(require_results) pixmap_cache_insert :: proc(key: cstring, pixmap: Pixmap) -> c.int ---
	pixmap_cache_remove :: proc(key: cstring) ---
	pixmap_cache_clear :: proc() ---

	/* QIcon */

	@(require_results) icon_create :: proc() -> Icon ---
	@(require_results) icon_create_from_file :: proc(file_path: cstring) -> Icon ---
	@(require_results) icon_create_from_pixmap :: proc(pixmap: Pixmap) -> Icon ---
	icon_destroy :: proc(icon: Icon) ---
	@(require_results) icon_is_null :: proc(icon: Icon) -> c.int ---
	icon_add_file :: proc(icon: Icon, filename: cstring, w: c.int, h: c.int, mode: Icon_Mode, state: Icon_State) ---
	icon_add_pixmap :: proc(icon: Icon, pixmap: Pixmap, mode: Icon_Mode, state: Icon_State) ---
	@(require_results) icon_get_pixmap :: proc(icon: Icon, w: c.int, h: c.int, mode: Icon_Mode, state: Icon_State) -> Pixmap ---
	@(require_results) icon_from_theme :: proc(name: cstring) -> Icon ---
	@(require_results) icon_has_theme_icon :: proc(name: cstring) -> c.int ---
	icon_set_theme_name :: proc(name: cstring) ---
	@(require_results) icon_get_theme_name :: proc() -> cstring ---
	icon_get_available_sizes :: proc(icon: Icon, mode: Icon_Mode, state: Icon_State, out_sizes: ^[^]c.int, out_count: ^c.int) ---
	icon_free_available_sizes :: proc(sizes: [^]c.int) ---

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
	tool_button_set_arrow_type :: proc(tool_button: Tool_Button, arrow_type: c.int) ---
	@(require_results) tool_button_get_default_action :: proc(tool_button: Tool_Button) -> Action ---

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
	header_view_set_section_hidden :: proc(header_view: Header_View, section: c.int, is_hidden: c.int) ---
	@(require_results) header_view_is_section_hidden :: proc(header_view: Header_View, section: c.int) -> c.int ---
	header_view_resize_section :: proc(header_view: Header_View, section: c.int, size: c.int) ---
	@(require_results) header_view_get_section_size :: proc(header_view: Header_View, section: c.int) -> c.int ---
	header_view_move_section :: proc(header_view: Header_View, from: c.int, to: c.int) ---
	header_view_set_sort_indicator_clearable :: proc(header_view: Header_View, is_clearable: c.int) ---
	@(require_results) header_view_get_count :: proc(header_view: Header_View) -> c.int ---
	header_view_swap_sections :: proc(header_view: Header_View, first: c.int, second: c.int) ---
	header_view_set_minimum_section_size :: proc(header_view: Header_View, size: c.int) ---
	header_view_set_maximum_section_size :: proc(header_view: Header_View, size: c.int) ---
	@(require_results) header_view_connect_section_clicked :: proc(header_view: Header_View, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) header_view_connect_section_resized :: proc(header_view: Header_View, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) header_view_connect_section_moved :: proc(header_view: Header_View, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) header_view_connect_sort_indicator_changed :: proc(header_view: Header_View, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
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
	free_item_array :: proc(items: [^]rawptr) ---

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

	/* QFontInfo */

	@(require_results) font_info_create :: proc(font: Font_Handle) -> Font_Info ---
	font_info_destroy :: proc(info: Font_Info) ---
	@(require_results) font_info_get_family :: proc(info: Font_Info) -> cstring ---
	@(require_results) font_info_get_point_size :: proc(info: Font_Info) -> c.int ---
	@(require_results) font_info_get_weight :: proc(info: Font_Info) -> c.int ---
	@(require_results) font_info_is_italic :: proc(info: Font_Info) -> c.int ---
	@(require_results) font_info_is_fixed_pitch :: proc(info: Font_Info) -> c.int ---
	@(require_results) font_info_is_exact_match :: proc(info: Font_Info) -> c.int ---

	/* QFontMetricsF */

	@(require_results) font_metrics_f_create :: proc(font: Font_Handle) -> Font_Metrics_F ---
	font_metrics_f_destroy :: proc(metrics: Font_Metrics_F) ---
	@(require_results) font_metrics_f_get_horizontal_advance :: proc(metrics: Font_Metrics_F, text: cstring) -> c.double ---
	@(require_results) font_metrics_f_get_height :: proc(metrics: Font_Metrics_F) -> c.double ---
	@(require_results) font_metrics_f_get_ascent :: proc(metrics: Font_Metrics_F) -> c.double ---
	@(require_results) font_metrics_f_get_descent :: proc(metrics: Font_Metrics_F) -> c.double ---
	@(require_results) font_metrics_f_get_leading :: proc(metrics: Font_Metrics_F) -> c.double ---
	@(require_results) font_metrics_f_get_average_char_width :: proc(metrics: Font_Metrics_F) -> c.double ---
	font_metrics_f_get_bounding_rect :: proc(metrics: Font_Metrics_F, text: cstring, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) ---

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
	combo_box_connect_activated :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	combo_box_connect_highlighted :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	combo_box_connect_edit_text_changed :: proc(combo_box: Combo_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id ---
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

	/* New signals for QTableWidget and QTreeWidget */

	table_widget_connect_current_cell_changed :: proc(table_widget: Table_Widget, callback: Four_Int_Callback, user_data: rawptr) -> Connection_Id ---
	table_widget_connect_current_item_changed :: proc(table_widget: Table_Widget, callback: Two_Pointer_Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_item_changed :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	tree_widget_connect_item_selection_changed :: proc(tree_widget: Tree_Widget, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QTextEdit signals */

	text_edit_connect_cursor_position_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	text_edit_connect_selection_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	text_edit_connect_copy_available :: proc(text_edit: Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	text_edit_connect_undo_available :: proc(text_edit: Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	text_edit_connect_redo_available :: proc(text_edit: Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QPlainTextEdit signals */

	plain_text_edit_connect_cursor_position_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	plain_text_edit_connect_selection_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id ---
	plain_text_edit_connect_block_count_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	plain_text_edit_connect_copy_available :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	plain_text_edit_connect_undo_available :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	plain_text_edit_connect_redo_available :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QListWidget, QMenu, QAction signals */

	list_widget_connect_item_changed :: proc(list_widget: List_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	list_widget_connect_item_activated :: proc(list_widget: List_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	menu_connect_about_to_show :: proc(menu: Menu, callback: Callback, user_data: rawptr) -> Connection_Id ---
	menu_connect_about_to_hide :: proc(menu: Menu, callback: Callback, user_data: rawptr) -> Connection_Id ---
	menu_connect_triggered :: proc(menu: Menu, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	action_connect_toggled :: proc(action: Action, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	action_connect_hovered :: proc(action: Action, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QTabWidget, QSplitter, QToolBar, QSlider, QStatusBar signals */

	tab_widget_connect_tab_bar_clicked :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	tab_widget_connect_tab_bar_double_clicked :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	splitter_connect_splitter_moved :: proc(splitter: Splitter, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
	toolbar_connect_action_triggered :: proc(toolbar: Tool_Bar, callback: Item_Callback, user_data: rawptr) -> Connection_Id ---
	toolbar_connect_visibility_changed :: proc(toolbar: Tool_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	toolbar_connect_top_level_changed :: proc(toolbar: Tool_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	slider_connect_slider_moved :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	slider_connect_range_changed :: proc(slider: Slider, callback: Cell_Callback, user_data: rawptr) -> Connection_Id ---
	statusbar_connect_message_changed :: proc(statusbar: Status_Bar, callback: String_Callback, user_data: rawptr) -> Connection_Id ---

	/* Signal disconnection */

	disconnect :: proc(connection_id: Connection_Id) ---

	/* Event system */

	@(require_results) event_filter_create :: proc(callback: Event_Filter_Callback, user_data: rawptr) -> Event_Filter ---
	event_filter_destroy :: proc(filter: Event_Filter) ---
	widget_install_event_filter :: proc(widget: Widget, filter: Event_Filter) ---
	widget_remove_event_filter :: proc(widget: Widget, filter: Event_Filter) ---
	@(require_results) close_event_filter_create :: proc(callback: Close_Event_Callback, user_data: rawptr) -> Event_Filter ---
	@(require_results) key_event_filter_create :: proc(callback: Key_Event_Callback, user_data: rawptr) -> Event_Filter ---
	@(require_results) mouse_event_filter_create :: proc(callback: Mouse_Event_Callback, user_data: rawptr) -> Event_Filter ---
	widget_set_mouse_tracking :: proc(widget: Widget, is_enabled: c.int) ---
	@(require_results) widget_has_mouse_tracking :: proc(widget: Widget) -> c.int ---

	/* QObject utilities */

	object_delete_later :: proc(object: Widget) ---

	/* Dynamic properties */

	object_set_property_int :: proc(object: Widget, name: cstring, value: c.int) ---
	@(require_results) object_get_property_int :: proc(object: Widget, name: cstring, default_value: c.int) -> c.int ---
	object_set_property_string :: proc(object: Widget, name: cstring, value: cstring) ---
	@(require_results) object_get_property_string :: proc(object: Widget, name: cstring, default_value: cstring) -> cstring ---
	object_set_property_bool :: proc(object: Widget, name: cstring, value: c.int) ---
	@(require_results) object_get_property_bool :: proc(object: Widget, name: cstring, default_value: c.int) -> c.int ---
	object_set_property_double :: proc(object: Widget, name: cstring, value: c.double) ---
	@(require_results) object_get_property_double :: proc(object: Widget, name: cstring, default_value: c.double) -> c.double ---

	/* QStandardItem */

	@(require_results) standard_item_create :: proc(text: cstring) -> Standard_Item ---
	standard_item_set_text :: proc(item: Standard_Item, text: cstring) ---
	@(require_results) standard_item_get_text :: proc(item: Standard_Item) -> cstring ---
	standard_item_set_editable :: proc(item: Standard_Item, is_editable: c.int) ---
	@(require_results) standard_item_is_editable :: proc(item: Standard_Item) -> c.int ---
	standard_item_set_checkable :: proc(item: Standard_Item, is_checkable: c.int) ---
	@(require_results) standard_item_is_checkable :: proc(item: Standard_Item) -> c.int ---
	standard_item_set_check_state :: proc(item: Standard_Item, state: c.int) ---
	@(require_results) standard_item_get_check_state :: proc(item: Standard_Item) -> c.int ---
	standard_item_set_icon :: proc(item: Standard_Item, icon: Icon) ---
	standard_item_set_selectable :: proc(item: Standard_Item, is_selectable: c.int) ---
	standard_item_set_enabled :: proc(item: Standard_Item, is_enabled: c.int) ---
	standard_item_append_row :: proc(parent: Standard_Item, items: [^]Standard_Item, count: c.int) ---
	standard_item_append_child :: proc(parent: Standard_Item, child: Standard_Item) ---
	@(require_results) standard_item_row_count :: proc(item: Standard_Item) -> c.int ---
	@(require_results) standard_item_get_child :: proc(item: Standard_Item, row: c.int, column: c.int) -> Standard_Item ---

	/* QStandardItemModel */

	@(require_results) standard_item_model_create :: proc(rows: c.int, columns: c.int, parent: Widget) -> Standard_Item_Model ---
	standard_item_model_destroy :: proc(model: Standard_Item_Model) ---
	standard_item_model_set_item :: proc(model: Standard_Item_Model, row: c.int, column: c.int, item: Standard_Item) ---
	@(require_results) standard_item_model_get_item :: proc(model: Standard_Item_Model, row: c.int, column: c.int) -> Standard_Item ---
	standard_item_model_set_horizontal_header_labels :: proc(model: Standard_Item_Model, labels: [^]cstring, count: c.int) ---
	standard_item_model_set_vertical_header_labels :: proc(model: Standard_Item_Model, labels: [^]cstring, count: c.int) ---
	@(require_results) standard_item_model_get_row_count :: proc(model: Standard_Item_Model) -> c.int ---
	@(require_results) standard_item_model_get_column_count :: proc(model: Standard_Item_Model) -> c.int ---
	standard_item_model_clear :: proc(model: Standard_Item_Model) ---
	standard_item_model_append_row :: proc(model: Standard_Item_Model, items: [^]Standard_Item, count: c.int) ---
	standard_item_model_insert_row :: proc(model: Standard_Item_Model, row: c.int, items: [^]Standard_Item, count: c.int) ---
	standard_item_model_remove_row :: proc(model: Standard_Item_Model, row: c.int) ---
	standard_item_model_remove_column :: proc(model: Standard_Item_Model, column: c.int) ---
	@(require_results) standard_item_model_get_invisible_root_item :: proc(model: Standard_Item_Model) -> Standard_Item ---

	/* Model Index */

	model_index_destroy :: proc(index: Model_Index) ---
	@(require_results) model_index_get_row :: proc(index: Model_Index) -> c.int ---
	@(require_results) model_index_get_column :: proc(index: Model_Index) -> c.int ---
	@(require_results) model_index_is_valid :: proc(index: Model_Index) -> c.int ---

	/* QFileSystemModel */

	@(require_results) file_system_model_create :: proc(parent: Widget) -> File_System_Model ---
	file_system_model_destroy :: proc(model: File_System_Model) ---
	@(require_results) file_system_model_set_root_path :: proc(model: File_System_Model, path: cstring) -> Model_Index ---
	file_system_model_set_name_filters :: proc(model: File_System_Model, filters: [^]cstring, count: c.int) ---
	file_system_model_set_name_filter_disables :: proc(model: File_System_Model, is_disables: c.int) ---
	file_system_model_set_read_only :: proc(model: File_System_Model, is_read_only: c.int) ---
	@(require_results) file_system_model_is_read_only :: proc(model: File_System_Model) -> c.int ---
	@(require_results) file_system_model_get_file_path :: proc(model: File_System_Model, index: Model_Index) -> cstring ---

	/* QSortFilterProxyModel */

	@(require_results) sort_filter_proxy_model_create :: proc(parent: Widget) -> Sort_Filter_Proxy_Model ---
	sort_filter_proxy_model_destroy :: proc(proxy: Sort_Filter_Proxy_Model) ---
	sort_filter_proxy_model_set_source_model :: proc(proxy: Sort_Filter_Proxy_Model, source: Standard_Item_Model) ---
	sort_filter_proxy_model_set_filter_key_column :: proc(proxy: Sort_Filter_Proxy_Model, column: c.int) ---
	sort_filter_proxy_model_set_filter_regular_expression :: proc(proxy: Sort_Filter_Proxy_Model, pattern: cstring) ---
	sort_filter_proxy_model_set_filter_case_sensitivity :: proc(proxy: Sort_Filter_Proxy_Model, case_sensitivity: c.int) ---
	sort_filter_proxy_model_set_sort_case_sensitivity :: proc(proxy: Sort_Filter_Proxy_Model, case_sensitivity: c.int) ---
	sort_filter_proxy_model_invalidate :: proc(proxy: Sort_Filter_Proxy_Model) ---
	sort_filter_proxy_model_sort :: proc(proxy: Sort_Filter_Proxy_Model, column: c.int, order: c.int) ---

	/* Model/View — Views */

	@(require_results) tree_view_create :: proc(parent: Widget) -> Tree_View ---
	tree_view_set_model :: proc(view: Tree_View, model: File_System_Model) ---
	tree_view_set_root_index :: proc(view: Tree_View, index: Model_Index) ---
	tree_view_expand_all :: proc(view: Tree_View) ---
	tree_view_collapse_all :: proc(view: Tree_View) ---
	tree_view_set_sorting_enabled :: proc(view: Tree_View, is_enabled: c.int) ---
	tree_view_set_header_hidden :: proc(view: Tree_View, is_hidden: c.int) ---

	@(require_results) table_view_create :: proc(parent: Widget) -> Table_View ---
	table_view_set_model :: proc(view: Table_View, model: Standard_Item_Model) ---
	table_view_set_sorting_enabled :: proc(view: Table_View, is_enabled: c.int) ---
	table_view_resize_columns_to_contents :: proc(view: Table_View) ---
	table_view_resize_rows_to_contents :: proc(view: Table_View) ---
	table_view_set_selection_behaviour :: proc(view: Table_View, behaviour: c.int) ---
	table_view_set_selection_mode :: proc(view: Table_View, mode: c.int) ---
	table_view_set_alternating_row_colours :: proc(view: Table_View, is_alternating: c.int) ---

	@(require_results) list_view_create :: proc(parent: Widget) -> List_View ---
	list_view_set_model :: proc(view: List_View, model: Standard_Item_Model) ---
	list_view_set_selection_mode :: proc(view: List_View, mode: c.int) ---

	/* QPainter / Custom drawing */

	@(require_results) paintable_widget_create :: proc(parent: Widget, callback: Paint_Callback, user_data: rawptr) -> Paintable_Widget ---

	painter_set_pen_colour :: proc(painter: Painter, r: c.int, g: c.int, b: c.int, a: c.int) ---
	painter_set_pen_width :: proc(painter: Painter, width: c.int) ---
	painter_set_no_pen :: proc(painter: Painter) ---
	painter_set_pen :: proc(painter: Painter, pen: Pen) ---
	painter_set_brush_colour :: proc(painter: Painter, r: c.int, g: c.int, b: c.int, a: c.int) ---
	painter_set_no_brush :: proc(painter: Painter) ---
	painter_set_brush :: proc(painter: Painter, brush: Brush) ---
	painter_set_font :: proc(painter: Painter, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) ---
	painter_set_antialiasing :: proc(painter: Painter, is_enabled: c.int) ---
	painter_set_opacity :: proc(painter: Painter, opacity: c.double) ---
	painter_set_render_hint :: proc(painter: Painter, hint: Render_Hint, is_on: c.int) ---
	painter_set_render_hints :: proc(painter: Painter, hints: c.int, is_on: c.int) ---
	painter_set_composition_mode :: proc(painter: Painter, mode: Composition_Mode) ---
	@(require_results) painter_get_composition_mode :: proc(painter: Painter) -> Composition_Mode ---
	painter_set_clipping :: proc(painter: Painter, is_enabled: c.int) ---
	@(require_results) painter_has_clipping :: proc(painter: Painter) -> c.int ---
	painter_get_clip_bounding_rect :: proc(painter: Painter, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) ---
	painter_draw_line :: proc(painter: Painter, x1: c.int, y1: c.int, x2: c.int, y2: c.int) ---
	painter_draw_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int) ---
	painter_fill_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, r: c.int, g: c.int, b: c.int, a: c.int) ---
	painter_erase_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int) ---
	painter_draw_ellipse :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int) ---
	painter_draw_arc :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, start_angle: c.int, span_angle: c.int) ---
	painter_draw_pie :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, start_angle: c.int, span_angle: c.int) ---
	painter_draw_chord :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, start_angle: c.int, span_angle: c.int) ---
	painter_draw_rounded_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, x_radius: c.double, y_radius: c.double) ---
	painter_draw_text :: proc(painter: Painter, x: c.int, y: c.int, text: cstring) ---
	painter_draw_text_in_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, flags: c.int, text: cstring) ---
	painter_bounding_rect :: proc(painter: Painter, x: c.int, y: c.int, w: c.int, h: c.int, flags: c.int, text: cstring, out_x: ^c.int, out_y: ^c.int, out_w: ^c.int, out_h: ^c.int) ---
	painter_draw_pixmap :: proc(painter: Painter, x: c.int, y: c.int, pixmap: Pixmap) ---
	painter_draw_image :: proc(painter: Painter, x: c.int, y: c.int, image: Image) ---
	painter_draw_point :: proc(painter: Painter, x: c.int, y: c.int) ---
	painter_draw_points :: proc(painter: Painter, points: [^]c.int, point_count: c.int) ---
	painter_draw_polygon :: proc(painter: Painter, points: [^]c.int, point_count: c.int) ---
	painter_draw_polyline :: proc(painter: Painter, points: [^]c.int, point_count: c.int) ---
	painter_draw_convex_polygon :: proc(painter: Painter, points: [^]c.int, point_count: c.int) ---
	painter_save :: proc(painter: Painter) ---
	painter_restore :: proc(painter: Painter) ---
	painter_translate :: proc(painter: Painter, dx: c.double, dy: c.double) ---
	painter_rotate :: proc(painter: Painter, angle: c.double) ---
	painter_scale :: proc(painter: Painter, sx: c.double, sy: c.double) ---
	@(require_results) painter_create :: proc() -> Painter ---
	painter_destroy :: proc(painter: Painter) ---
	@(require_results) painter_begin :: proc(painter: Painter, device: rawptr) -> c.int ---
	@(require_results) painter_begin_pdf_writer :: proc(painter: Painter, pdf_writer: Pdf_Writer) -> c.int ---
	@(require_results) painter_end :: proc(painter: Painter) -> c.int ---
	@(require_results) painter_is_active :: proc(painter: Painter) -> c.int ---

	/* Drag and Drop */

	widget_set_accept_drops :: proc(widget: Widget, is_accept: c.int) ---
	@(require_results) drag_drop_filter_create :: proc(enter_cb: Drag_Enter_Callback, drop_cb: Drop_Callback, user_data: rawptr) -> Drag_Drop_Filter ---
	widget_start_drag :: proc(widget: Widget, mime_text: cstring) ---

	/* QSyntaxHighlighter */

	@(require_results) text_char_format_create :: proc() -> Text_Char_Format ---
	text_char_format_destroy :: proc(format: Text_Char_Format) ---
	text_char_format_set_foreground :: proc(format: Text_Char_Format, r: c.int, g: c.int, b: c.int, a: c.int) ---
	text_char_format_set_background :: proc(format: Text_Char_Format, r: c.int, g: c.int, b: c.int, a: c.int) ---
	text_char_format_set_font_weight :: proc(format: Text_Char_Format, weight: c.int) ---
	text_char_format_set_font_italic :: proc(format: Text_Char_Format, is_italic: c.int) ---
	text_char_format_set_font_underline :: proc(format: Text_Char_Format, is_underline: c.int) ---

	@(require_results) syntax_highlighter_create_for_text_edit :: proc(text_edit: Text_Edit) -> Syntax_Highlighter ---
	@(require_results) syntax_highlighter_create_for_plain_text_edit :: proc(plain_text_edit: Plain_Text_Edit) -> Syntax_Highlighter ---
	syntax_highlighter_destroy :: proc(highlighter: Syntax_Highlighter) ---
	syntax_highlighter_add_rule :: proc(highlighter: Syntax_Highlighter, pattern: cstring, format: Text_Char_Format) ---
	syntax_highlighter_clear_rules :: proc(highlighter: Syntax_Highlighter) ---
	syntax_highlighter_rehighlight :: proc(highlighter: Syntax_Highlighter) ---

	/* QPropertyAnimation / Animation groups */

	@(require_results) property_animation_create :: proc(target: Widget, property_name: cstring) -> Property_Animation ---
	property_animation_destroy :: proc(animation: Property_Animation) ---
	property_animation_set_duration :: proc(animation: Property_Animation, ms: c.int) ---
	property_animation_set_start_value_int :: proc(animation: Property_Animation, value: c.int) ---
	property_animation_set_end_value_int :: proc(animation: Property_Animation, value: c.int) ---
	property_animation_set_start_value_double :: proc(animation: Property_Animation, value: c.double) ---
	property_animation_set_end_value_double :: proc(animation: Property_Animation, value: c.double) ---
	property_animation_set_start_value_rect :: proc(animation: Property_Animation, x: c.int, y: c.int, w: c.int, h: c.int) ---
	property_animation_set_end_value_rect :: proc(animation: Property_Animation, x: c.int, y: c.int, w: c.int, h: c.int) ---
	property_animation_set_start_value_size :: proc(animation: Property_Animation, w: c.int, h: c.int) ---
	property_animation_set_end_value_size :: proc(animation: Property_Animation, w: c.int, h: c.int) ---
	property_animation_set_start_value_point :: proc(animation: Property_Animation, x: c.int, y: c.int) ---
	property_animation_set_end_value_point :: proc(animation: Property_Animation, x: c.int, y: c.int) ---
	property_animation_set_easing_curve :: proc(animation: Property_Animation, curve_type: Easing_Curve) ---
	property_animation_set_clamp_range :: proc(animation: Property_Animation, min_val: c.int, max_val: c.int) ---
	property_animation_start :: proc(animation: Property_Animation) ---
	property_animation_stop :: proc(animation: Property_Animation) ---
	property_animation_pause :: proc(animation: Property_Animation) ---
	property_animation_resume :: proc(animation: Property_Animation) ---
	property_animation_set_loop_count :: proc(animation: Property_Animation, count: c.int) ---
	property_animation_connect_finished :: proc(animation: Property_Animation, callback: Callback, user_data: rawptr) -> Connection_Id ---

	@(require_results) parallel_animation_group_create :: proc(parent: Widget) -> Parallel_Animation_Group ---
	parallel_animation_group_destroy :: proc(group: Parallel_Animation_Group) ---
	parallel_animation_group_add_animation :: proc(group: Parallel_Animation_Group, animation: Property_Animation) ---
	parallel_animation_group_start :: proc(group: Parallel_Animation_Group) ---
	parallel_animation_group_stop :: proc(group: Parallel_Animation_Group) ---
	parallel_animation_group_connect_finished :: proc(group: Parallel_Animation_Group, callback: Callback, user_data: rawptr) -> Connection_Id ---

	@(require_results) sequential_animation_group_create :: proc(parent: Widget) -> Sequential_Animation_Group ---
	sequential_animation_group_destroy :: proc(group: Sequential_Animation_Group) ---
	sequential_animation_group_add_animation :: proc(group: Sequential_Animation_Group, animation: Property_Animation) ---
	sequential_animation_group_start :: proc(group: Sequential_Animation_Group) ---
	sequential_animation_group_stop :: proc(group: Sequential_Animation_Group) ---
	sequential_animation_group_connect_finished :: proc(group: Sequential_Animation_Group, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QPauseAnimation */

	@(require_results) pause_animation_create :: proc(duration_ms: c.int, parent: rawptr) -> Pause_Animation ---
	pause_animation_destroy :: proc(animation: Pause_Animation) ---
	pause_animation_set_duration :: proc(animation: Pause_Animation, ms: c.int) ---
	@(require_results) pause_animation_get_duration :: proc(animation: Pause_Animation) -> c.int ---

	/* QTabBar */

	@(require_results) tab_bar_create :: proc(parent: Widget) -> Tab_Bar ---
	@(require_results) tab_bar_add_tab :: proc(tab_bar: Tab_Bar, text: cstring) -> c.int ---
	@(require_results) tab_bar_insert_tab :: proc(tab_bar: Tab_Bar, index: c.int, text: cstring) -> c.int ---
	tab_bar_remove_tab :: proc(tab_bar: Tab_Bar, index: c.int) ---
	@(require_results) tab_bar_get_current_index :: proc(tab_bar: Tab_Bar) -> c.int ---
	tab_bar_set_current_index :: proc(tab_bar: Tab_Bar, index: c.int) ---
	@(require_results) tab_bar_get_count :: proc(tab_bar: Tab_Bar) -> c.int ---
	tab_bar_set_tab_text :: proc(tab_bar: Tab_Bar, index: c.int, text: cstring) ---
	@(require_results) tab_bar_get_tab_text :: proc(tab_bar: Tab_Bar, index: c.int) -> cstring ---
	tab_bar_set_tab_enabled :: proc(tab_bar: Tab_Bar, index: c.int, is_enabled: c.int) ---
	@(require_results) tab_bar_is_tab_enabled :: proc(tab_bar: Tab_Bar, index: c.int) -> c.int ---
	tab_bar_set_tab_visible :: proc(tab_bar: Tab_Bar, index: c.int, is_visible: c.int) ---
	@(require_results) tab_bar_is_tab_visible :: proc(tab_bar: Tab_Bar, index: c.int) -> c.int ---
	tab_bar_set_tabs_closable :: proc(tab_bar: Tab_Bar, is_closable: c.int) ---
	tab_bar_set_movable :: proc(tab_bar: Tab_Bar, is_movable: c.int) ---
	tab_bar_set_expanding :: proc(tab_bar: Tab_Bar, is_expanding: c.int) ---
	tab_bar_set_shape :: proc(tab_bar: Tab_Bar, shape: Tab_Bar_Shape) ---
	tab_bar_set_icon_size :: proc(tab_bar: Tab_Bar, width: c.int, height: c.int) ---
	tab_bar_set_document_mode :: proc(tab_bar: Tab_Bar, is_document_mode: c.int) ---
	tab_bar_set_draw_base :: proc(tab_bar: Tab_Bar, is_draw_base: c.int) ---
	tab_bar_set_tab_icon :: proc(tab_bar: Tab_Bar, index: c.int, icon: Icon) ---
	tab_bar_connect_current_changed :: proc(tab_bar: Tab_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	tab_bar_connect_tab_close_requested :: proc(tab_bar: Tab_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QToolBox */

	@(require_results) tool_box_create :: proc(parent: Widget) -> Tool_Box ---
	@(require_results) tool_box_add_item :: proc(tool_box: Tool_Box, widget: Widget, text: cstring) -> c.int ---
	@(require_results) tool_box_insert_item :: proc(tool_box: Tool_Box, index: c.int, widget: Widget, text: cstring) -> c.int ---
	tool_box_remove_item :: proc(tool_box: Tool_Box, index: c.int) ---
	@(require_results) tool_box_get_current_index :: proc(tool_box: Tool_Box) -> c.int ---
	tool_box_set_current_index :: proc(tool_box: Tool_Box, index: c.int) ---
	@(require_results) tool_box_get_count :: proc(tool_box: Tool_Box) -> c.int ---
	tool_box_set_item_text :: proc(tool_box: Tool_Box, index: c.int, text: cstring) ---
	@(require_results) tool_box_get_item_text :: proc(tool_box: Tool_Box, index: c.int) -> cstring ---
	tool_box_set_item_enabled :: proc(tool_box: Tool_Box, index: c.int, is_enabled: c.int) ---
	@(require_results) tool_box_is_item_enabled :: proc(tool_box: Tool_Box, index: c.int) -> c.int ---
	tool_box_set_item_icon :: proc(tool_box: Tool_Box, index: c.int, icon: Icon) ---
	@(require_results) tool_box_get_widget :: proc(tool_box: Tool_Box, index: c.int) -> Widget ---
	tool_box_connect_current_changed :: proc(tool_box: Tool_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QScrollBar */

	@(require_results) scroll_bar_create :: proc(orientation: Orientation, parent: Widget) -> Scroll_Bar ---
	scroll_bar_set_range :: proc(scroll_bar: Scroll_Bar, min_val: c.int, max_val: c.int) ---
	@(require_results) scroll_bar_get_value :: proc(scroll_bar: Scroll_Bar) -> c.int ---
	scroll_bar_set_value :: proc(scroll_bar: Scroll_Bar, value: c.int) ---
	scroll_bar_set_single_step :: proc(scroll_bar: Scroll_Bar, step: c.int) ---
	scroll_bar_set_page_step :: proc(scroll_bar: Scroll_Bar, step: c.int) ---
	scroll_bar_set_orientation :: proc(scroll_bar: Scroll_Bar, orientation: Orientation) ---
	scroll_bar_connect_value_changed :: proc(scroll_bar: Scroll_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QLCDNumber */

	@(require_results) lcd_number_create :: proc(parent: Widget) -> LCD_Number ---
	lcd_number_display_int :: proc(lcd: LCD_Number, value: c.int) ---
	lcd_number_display_double :: proc(lcd: LCD_Number, value: c.double) ---
	lcd_number_display_string :: proc(lcd: LCD_Number, text: cstring) ---
	lcd_number_set_digit_count :: proc(lcd: LCD_Number, count: c.int) ---
	@(require_results) lcd_number_get_digit_count :: proc(lcd: LCD_Number) -> c.int ---
	lcd_number_set_mode :: proc(lcd: LCD_Number, mode: LCD_Number_Mode) ---
	@(require_results) lcd_number_get_mode :: proc(lcd: LCD_Number) -> LCD_Number_Mode ---
	lcd_number_set_segment_style :: proc(lcd: LCD_Number, style: LCD_Number_Segment_Style) ---
	@(require_results) lcd_number_get_segment_style :: proc(lcd: LCD_Number) -> LCD_Number_Segment_Style ---
	lcd_number_set_small_decimal_point :: proc(lcd: LCD_Number, is_small: c.int) ---

	/* QCommandLinkButton */

	@(require_results) command_link_button_create :: proc(parent: Widget, text: cstring, description: cstring) -> Command_Link_Button ---
	command_link_button_set_description :: proc(button: Command_Link_Button, description: cstring) ---
	@(require_results) command_link_button_get_description :: proc(button: Command_Link_Button) -> cstring ---

	/* QKeySequenceEdit */

	@(require_results) key_sequence_edit_create :: proc(parent: Widget) -> Key_Sequence_Edit ---
	@(require_results) key_sequence_edit_get_key_sequence :: proc(edit: Key_Sequence_Edit) -> cstring ---
	key_sequence_edit_set_key_sequence :: proc(edit: Key_Sequence_Edit, key_sequence: cstring) ---
	key_sequence_edit_clear :: proc(edit: Key_Sequence_Edit) ---
	key_sequence_edit_connect_key_sequence_changed :: proc(edit: Key_Sequence_Edit, callback: String_Callback, user_data: rawptr) -> Connection_Id ---

	/* QFontComboBox */

	@(require_results) font_combo_box_create :: proc(parent: Widget) -> Font_Combo_Box ---
	@(require_results) font_combo_box_get_current_font_family :: proc(combo: Font_Combo_Box) -> cstring ---
	font_combo_box_set_current_font_family :: proc(combo: Font_Combo_Box, family: cstring) ---
	font_combo_box_set_font_filters :: proc(combo: Font_Combo_Box, filters: Font_Combo_Box_Font_Filter) ---
	font_combo_box_connect_current_font_changed :: proc(combo: Font_Combo_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id ---

	/* QSplashScreen */

	@(require_results) splash_screen_create :: proc() -> Splash_Screen ---
	@(require_results) splash_screen_create_with_pixmap :: proc(pixmap: Pixmap) -> Splash_Screen ---
	splash_screen_show_message :: proc(splash: Splash_Screen, message: cstring, alignment: Alignment, colour_r: c.int, colour_g: c.int, colour_b: c.int) ---
	splash_screen_clear_message :: proc(splash: Splash_Screen) ---
	splash_screen_finish :: proc(splash: Splash_Screen, main_window: Widget) ---

	/* QStackedLayout */

	@(require_results) stacked_layout_create :: proc(parent: Widget) -> Stacked_Layout ---
	@(require_results) stacked_layout_add_widget :: proc(layout: Stacked_Layout, widget: Widget) -> c.int ---
	@(require_results) stacked_layout_insert_widget :: proc(layout: Stacked_Layout, index: c.int, widget: Widget) -> c.int ---
	stacked_layout_set_current_index :: proc(layout: Stacked_Layout, index: c.int) ---
	@(require_results) stacked_layout_get_current_index :: proc(layout: Stacked_Layout) -> c.int ---
	@(require_results) stacked_layout_get_count :: proc(layout: Stacked_Layout) -> c.int ---
	@(require_results) stacked_layout_get_widget :: proc(layout: Stacked_Layout, index: c.int) -> Widget ---
	stacked_layout_set_current_widget :: proc(layout: Stacked_Layout, widget: Widget) ---
	stacked_layout_set_stacking_mode :: proc(layout: Stacked_Layout, mode: Stacked_Layout_Stacking_Mode) ---
	stacked_layout_connect_current_changed :: proc(layout: Stacked_Layout, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QWidgetAction */

	@(require_results) widget_action_create :: proc(parent: Widget) -> Widget_Action ---
	widget_action_set_default_widget :: proc(action: Widget_Action, widget: Widget) ---
	@(require_results) widget_action_get_default_widget :: proc(action: Widget_Action) -> Widget ---

	/* QActionGroup */

	@(require_results) action_group_create :: proc(parent: Widget) -> Action_Group ---
	action_group_destroy :: proc(group: Action_Group) ---
	action_group_add_action :: proc(group: Action_Group, action: Action) ---
	action_group_remove_action :: proc(group: Action_Group, action: Action) ---
	action_group_set_exclusive :: proc(group: Action_Group, is_exclusive: c.int) ---
	@(require_results) action_group_is_exclusive :: proc(group: Action_Group) -> c.int ---
	action_group_set_enabled :: proc(group: Action_Group, is_enabled: c.int) ---
	@(require_results) action_group_is_enabled :: proc(group: Action_Group) -> c.int ---
	action_group_set_visible :: proc(group: Action_Group, is_visible: c.int) ---
	@(require_results) action_group_is_visible :: proc(group: Action_Group) -> c.int ---
	@(require_results) action_group_get_checked_action :: proc(group: Action_Group) -> Action ---
	action_group_connect_triggered :: proc(group: Action_Group, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QErrorMessage */

	@(require_results) error_message_create :: proc(parent: Widget) -> Error_Message ---
	error_message_show_message :: proc(dialog: Error_Message, message: cstring) ---
	error_message_show_message_type :: proc(dialog: Error_Message, message: cstring, type: cstring) ---

	/* QMdiArea */

	@(require_results) mdi_area_create :: proc(parent: Widget) -> Mdi_Area ---
	@(require_results) mdi_area_add_sub_window :: proc(mdi_area: Mdi_Area, widget: Widget) -> Mdi_Sub_Window ---
	mdi_area_remove_sub_window :: proc(mdi_area: Mdi_Area, widget: Widget) ---
	mdi_area_set_active_sub_window :: proc(mdi_area: Mdi_Area, sub_window: Mdi_Sub_Window) ---
	@(require_results) mdi_area_get_active_sub_window :: proc(mdi_area: Mdi_Area) -> Mdi_Sub_Window ---
	@(require_results) mdi_area_get_sub_window_count :: proc(mdi_area: Mdi_Area) -> c.int ---
	mdi_area_cascade_sub_windows :: proc(mdi_area: Mdi_Area) ---
	mdi_area_tile_sub_windows :: proc(mdi_area: Mdi_Area) ---
	mdi_area_close_active_sub_window :: proc(mdi_area: Mdi_Area) ---
	mdi_area_close_all_sub_windows :: proc(mdi_area: Mdi_Area) ---
	mdi_area_set_view_mode :: proc(mdi_area: Mdi_Area, mode: Mdi_Area_View_Mode) ---
	mdi_area_connect_sub_window_activated :: proc(mdi_area: Mdi_Area, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QMdiSubWindow */

	@(require_results) mdi_sub_window_create :: proc(parent: Widget) -> Mdi_Sub_Window ---
	mdi_sub_window_set_widget :: proc(sub_window: Mdi_Sub_Window, widget: Widget) ---
	@(require_results) mdi_sub_window_get_widget :: proc(sub_window: Mdi_Sub_Window) -> Widget ---
	mdi_sub_window_set_system_menu :: proc(sub_window: Mdi_Sub_Window, menu: Menu) ---
	@(require_results) mdi_sub_window_is_shaded :: proc(sub_window: Mdi_Sub_Window) -> c.int ---
	mdi_sub_window_show_shaded :: proc(sub_window: Mdi_Sub_Window) ---
	mdi_sub_window_show_normal :: proc(sub_window: Mdi_Sub_Window) ---

	/* QWizard */

	@(require_results) wizard_create :: proc(parent: Widget) -> Wizard ---
	@(require_results) wizard_add_page :: proc(wizard: Wizard, page: Wizard_Page) -> c.int ---
	wizard_set_page :: proc(wizard: Wizard, id: c.int, page: Wizard_Page) ---
	wizard_remove_page :: proc(wizard: Wizard, id: c.int) ---
	@(require_results) wizard_get_current_id :: proc(wizard: Wizard) -> c.int ---
	wizard_set_start_id :: proc(wizard: Wizard, id: c.int) ---
	wizard_set_button_text :: proc(wizard: Wizard, which: Wizard_Button, text: cstring) ---
	wizard_set_wizard_style :: proc(wizard: Wizard, style: Wizard_Style) ---
	wizard_set_option :: proc(wizard: Wizard, option: Wizard_Option, is_on: c.int) ---
	wizard_restart :: proc(wizard: Wizard) ---
	wizard_connect_current_id_changed :: proc(wizard: Wizard, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	wizard_connect_page_added :: proc(wizard: Wizard, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	wizard_connect_page_removed :: proc(wizard: Wizard, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QWizardPage */

	@(require_results) wizard_page_create :: proc(parent: Widget) -> Wizard_Page ---
	wizard_page_set_title :: proc(page: Wizard_Page, title: cstring) ---
	@(require_results) wizard_page_get_title :: proc(page: Wizard_Page) -> cstring ---
	wizard_page_set_sub_title :: proc(page: Wizard_Page, sub_title: cstring) ---
	@(require_results) wizard_page_get_sub_title :: proc(page: Wizard_Page) -> cstring ---
	wizard_page_set_commit_page :: proc(page: Wizard_Page, is_commit: c.int) ---
	@(require_results) wizard_page_is_commit_page :: proc(page: Wizard_Page) -> c.int ---
	wizard_page_set_final_page :: proc(page: Wizard_Page, is_final: c.int) ---
	@(require_results) wizard_page_is_final_page :: proc(page: Wizard_Page) -> c.int ---

	/* QColumnView */

	@(require_results) column_view_create :: proc(parent: Widget) -> Column_View ---
	column_view_set_model :: proc(view: Column_View, model: rawptr) ---
	column_view_set_root_index :: proc(view: Column_View, index: Model_Index) ---
	column_view_set_preview_widget :: proc(view: Column_View, widget: Widget) ---
	@(require_results) column_view_get_preview_widget :: proc(view: Column_View) -> Widget ---
	column_view_set_resizing_grips_visible :: proc(view: Column_View, is_visible: c.int) ---

	/* QUndoView */

	@(require_results) undo_view_create :: proc(parent: Widget) -> Undo_View ---
	undo_view_set_stack :: proc(view: Undo_View, stack: Undo_Stack) ---
	undo_view_set_group :: proc(view: Undo_View, group: Undo_Group) ---
	undo_view_set_clean_icon :: proc(view: Undo_View, icon: Icon) ---
	undo_view_set_empty_label :: proc(view: Undo_View, label: cstring) ---

	/* QRubberBand */

	@(require_results) rubber_band_create :: proc(shape: Rubber_Band_Shape, parent: Widget) -> Rubber_Band ---
	rubber_band_set_geometry :: proc(band: Rubber_Band, x: c.int, y: c.int, width: c.int, height: c.int) ---
	rubber_band_move :: proc(band: Rubber_Band, x: c.int, y: c.int) ---
	rubber_band_resize :: proc(band: Rubber_Band, width: c.int, height: c.int) ---

	/* QFocusFrame */

	@(require_results) focus_frame_create :: proc(parent: Widget) -> Focus_Frame ---
	focus_frame_set_widget :: proc(frame: Focus_Frame, widget: Widget) ---
	@(require_results) focus_frame_get_widget :: proc(frame: Focus_Frame) -> Widget ---

	/* QSizeGrip */

	@(require_results) size_grip_create :: proc(parent: Widget) -> Size_Grip ---

	/* QWhatsThis */

	whats_this_enter_mode :: proc() ---
	whats_this_leave_mode :: proc() ---
	@(require_results) whats_this_is_in_mode :: proc() -> c.int ---
	whats_this_show_text :: proc(global_x: c.int, global_y: c.int, text: cstring, widget: Widget) ---
	whats_this_hide_text :: proc() ---

	/* QImage */

	@(require_results) image_create :: proc(width: c.int, height: c.int, format: Image_Format) -> Image ---
	@(require_results) image_create_from_file :: proc(file_path: cstring) -> Image ---
	@(require_results) image_create_from_data :: proc(data: [^]u8, size: c.int) -> Image ---
	image_destroy :: proc(image: Image) ---
	@(require_results) image_get_width :: proc(image: Image) -> c.int ---
	@(require_results) image_get_height :: proc(image: Image) -> c.int ---
	@(require_results) image_get_format :: proc(image: Image) -> Image_Format ---
	@(require_results) image_is_null :: proc(image: Image) -> c.int ---
	image_fill :: proc(image: Image, r: c.int, g: c.int, b: c.int, a: c.int) ---
	image_set_pixel :: proc(image: Image, x: c.int, y: c.int, r: c.int, g: c.int, b: c.int, a: c.int) ---
	image_get_pixel :: proc(image: Image, x: c.int, y: c.int, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	@(require_results) image_scaled :: proc(image: Image, width: c.int, height: c.int, aspect_mode: Aspect_Ratio_Mode, transform_mode: Transformation_Mode) -> Image ---
	@(require_results) image_mirrored :: proc(image: Image, is_horizontal: c.int, is_vertical: c.int) -> Image ---
	@(require_results) image_copy :: proc(image: Image, x: c.int, y: c.int, width: c.int, height: c.int) -> Image ---
	@(require_results) image_save :: proc(image: Image, file_path: cstring, format: cstring, quality: c.int) -> c.int ---
	@(require_results) image_to_pixmap :: proc(image: Image) -> Pixmap ---
	@(require_results) pixmap_to_image :: proc(pixmap: Pixmap) -> Image ---
	@(require_results) image_get_depth :: proc(image: Image) -> c.int ---
	@(require_results) image_get_byte_count :: proc(image: Image) -> c.int ---
	@(require_results) image_get_bits :: proc(image: Image) -> [^]u8 ---
	@(require_results) image_convert_to_format :: proc(image: Image, format: Image_Format) -> Image ---
	@(require_results) image_rgb_swapped :: proc(image: Image) -> Image ---
	@(require_results) image_transformed :: proc(image: Image, transform: Transform) -> Image ---
	image_set_text :: proc(image: Image, key: cstring, value: cstring) ---
	@(require_results) image_get_text :: proc(image: Image, key: cstring) -> cstring ---
	@(require_results) image_is_all_grey :: proc(image: Image) -> c.int ---
	@(require_results) image_is_greyscale :: proc(image: Image) -> c.int ---

	/* QColor (standalone) */

	@(require_results) colour_create :: proc(r: c.int, g: c.int, b: c.int, a: c.int) -> Colour_Handle ---
	@(require_results) colour_create_from_name :: proc(name: cstring) -> Colour_Handle ---
	@(require_results) colour_create_from_hsv :: proc(h: c.int, s: c.int, v: c.int, a: c.int) -> Colour_Handle ---
	@(require_results) colour_create_from_hsl :: proc(h: c.int, s: c.int, l: c.int, a: c.int) -> Colour_Handle ---
	colour_destroy :: proc(colour: Colour_Handle) ---
	colour_get_rgb :: proc(colour: Colour_Handle, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	colour_get_hsv :: proc(colour: Colour_Handle, h: ^c.int, s: ^c.int, v: ^c.int, a: ^c.int) ---
	colour_get_hsl :: proc(colour: Colour_Handle, h: ^c.int, s: ^c.int, l: ^c.int, a: ^c.int) ---
	@(require_results) colour_get_name :: proc(colour: Colour_Handle) -> cstring ---
	@(require_results) colour_is_valid :: proc(colour: Colour_Handle) -> c.int ---
	@(require_results) colour_lighter :: proc(colour: Colour_Handle, factor: c.int) -> Colour_Handle ---
	@(require_results) colour_darker :: proc(colour: Colour_Handle, factor: c.int) -> Colour_Handle ---
	colour_set_alpha :: proc(colour: Colour_Handle, alpha: c.int) ---
	@(require_results) colour_get_alpha :: proc(colour: Colour_Handle) -> c.int ---
	colour_set_red :: proc(colour: Colour_Handle, red: c.int) ---
	@(require_results) colour_get_red :: proc(colour: Colour_Handle) -> c.int ---
	colour_set_green :: proc(colour: Colour_Handle, green: c.int) ---
	@(require_results) colour_get_green :: proc(colour: Colour_Handle) -> c.int ---
	colour_set_blue :: proc(colour: Colour_Handle, blue: c.int) ---
	@(require_results) colour_get_blue :: proc(colour: Colour_Handle) -> c.int ---
	@(require_results) colour_to_rgb :: proc(colour: Colour_Handle) -> Colour_Handle ---
	@(require_results) colour_to_hsv :: proc(colour: Colour_Handle) -> Colour_Handle ---
	@(require_results) colour_to_hsl :: proc(colour: Colour_Handle) -> Colour_Handle ---
	@(require_results) colour_get_spec :: proc(colour: Colour_Handle) -> Colour_Spec ---
	colour_set_named_colour :: proc(colour: Colour_Handle, name: cstring) ---

	/* QColorSpace */

	@(require_results) colour_space_create :: proc() -> Colour_Space ---
	@(require_results) colour_space_create_named :: proc(named_colour_space: Named_Colour_Space) -> Colour_Space ---
	colour_space_destroy :: proc(colour_space: Colour_Space) ---
	@(require_results) colour_space_is_valid :: proc(colour_space: Colour_Space) -> c.int ---
	@(require_results) colour_space_get_primaries :: proc(colour_space: Colour_Space) -> Colour_Space_Primaries ---
	@(require_results) colour_space_get_transfer_function :: proc(colour_space: Colour_Space) -> Colour_Space_Transfer_Function ---
	@(require_results) colour_space_get_gamma :: proc(colour_space: Colour_Space) -> c.float ---
	@(require_results) colour_space_get_description :: proc(colour_space: Colour_Space) -> cstring ---
	colour_space_set_description :: proc(colour_space: Colour_Space, description: cstring) ---
	@(require_results) colour_space_get_transform_to :: proc(colour_space: Colour_Space, target: Colour_Space) -> Colour_Transform ---
	@(require_results) colour_space_create_with_primaries_and_transfer :: proc(primaries: Colour_Space_Primaries, transfer_function: Colour_Space_Transfer_Function) -> Colour_Space ---
	@(require_results) colour_space_create_with_primaries_and_gamma :: proc(primaries: Colour_Space_Primaries, gamma: c.float) -> Colour_Space ---

	/* QColorTransform */

	@(require_results) colour_transform_create :: proc() -> Colour_Transform ---
	colour_transform_destroy :: proc(transform: Colour_Transform) ---
	@(require_results) colour_transform_is_identity :: proc(transform: Colour_Transform) -> c.int ---
	@(require_results) colour_transform_map_colour :: proc(transform: Colour_Transform, colour: Colour_Handle) -> Colour_Handle ---
	@(require_results) colour_transform_transform_image :: proc(transform: Colour_Transform, image: Image) -> Image ---

	/* QFont (standalone) */

	@(require_results) font_create :: proc(family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) -> Font_Handle ---
	@(require_results) font_create_default :: proc() -> Font_Handle ---
	font_destroy :: proc(font: Font_Handle) ---
	font_set_family :: proc(font: Font_Handle, family: cstring) ---
	@(require_results) font_get_family :: proc(font: Font_Handle) -> cstring ---
	font_set_point_size :: proc(font: Font_Handle, size: c.int) ---
	@(require_results) font_get_point_size :: proc(font: Font_Handle) -> c.int ---
	font_set_pixel_size :: proc(font: Font_Handle, size: c.int) ---
	@(require_results) font_get_pixel_size :: proc(font: Font_Handle) -> c.int ---
	font_set_weight :: proc(font: Font_Handle, weight: c.int) ---
	@(require_results) font_get_weight :: proc(font: Font_Handle) -> c.int ---
	font_set_bold :: proc(font: Font_Handle, is_bold: c.int) ---
	@(require_results) font_is_bold :: proc(font: Font_Handle) -> c.int ---
	font_set_italic :: proc(font: Font_Handle, is_italic: c.int) ---
	@(require_results) font_is_italic :: proc(font: Font_Handle) -> c.int ---
	font_set_underline :: proc(font: Font_Handle, is_underline: c.int) ---
	@(require_results) font_is_underline :: proc(font: Font_Handle) -> c.int ---
	font_set_strikeout :: proc(font: Font_Handle, is_strikeout: c.int) ---
	@(require_results) font_is_strikeout :: proc(font: Font_Handle) -> c.int ---
	font_set_kerning :: proc(font: Font_Handle, is_kerning: c.int) ---
	@(require_results) font_is_kerning :: proc(font: Font_Handle) -> c.int ---
	font_set_letter_spacing :: proc(font: Font_Handle, spacing_type: Font_Spacing_Type, spacing: c.double) ---
	font_set_word_spacing :: proc(font: Font_Handle, spacing: c.double) ---
	font_set_stretch :: proc(font: Font_Handle, factor: c.int) ---
	font_set_style_hint :: proc(font: Font_Handle, hint: Font_Style_Hint) ---
	@(require_results) font_to_string :: proc(font: Font_Handle) -> cstring ---
	font_set_style_strategy :: proc(font: Font_Handle, strategy: Font_Style_Strategy) ---
	@(require_results) font_from_string :: proc(description: cstring) -> Font_Handle ---
	@(require_results) font_is_exact_match :: proc(font: Font_Handle) -> c.int ---
	font_set_overline :: proc(font: Font_Handle, is_overline: c.int) ---
	@(require_results) font_is_overline :: proc(font: Font_Handle) -> c.int ---
	font_set_capitalization :: proc(font: Font_Handle, capitalization: Font_Capitalization) ---
	font_set_hinting_preference :: proc(font: Font_Handle, preference: Font_Hinting_Preference) ---

	/* QPen (standalone) */

	@(require_results) pen_create :: proc() -> Pen ---
	@(require_results) pen_create_with_colour :: proc(r: c.int, g: c.int, b: c.int, a: c.int) -> Pen ---
	pen_destroy :: proc(pen: Pen) ---
	pen_set_colour :: proc(pen: Pen, r: c.int, g: c.int, b: c.int, a: c.int) ---
	pen_get_colour :: proc(pen: Pen, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	pen_set_width :: proc(pen: Pen, width: c.int) ---
	@(require_results) pen_get_width :: proc(pen: Pen) -> c.int ---
	pen_set_width_f :: proc(pen: Pen, width: c.double) ---
	@(require_results) pen_get_width_f :: proc(pen: Pen) -> c.double ---
	pen_set_style :: proc(pen: Pen, style: Pen_Style) ---
	@(require_results) pen_get_style :: proc(pen: Pen) -> Pen_Style ---
	pen_set_cap_style :: proc(pen: Pen, style: Pen_Cap_Style) ---
	@(require_results) pen_get_cap_style :: proc(pen: Pen) -> Pen_Cap_Style ---
	pen_set_join_style :: proc(pen: Pen, style: Pen_Join_Style) ---
	@(require_results) pen_get_join_style :: proc(pen: Pen) -> Pen_Join_Style ---
	pen_set_dash_offset :: proc(pen: Pen, offset: c.double) ---
	@(require_results) pen_get_dash_offset :: proc(pen: Pen) -> c.double ---
	pen_set_brush :: proc(pen: Pen, brush: Brush) ---
	@(require_results) pen_get_brush :: proc(pen: Pen) -> Brush ---
	pen_set_dash_pattern :: proc(pen: Pen, pattern: [^]c.double, count: c.int) ---
	pen_get_dash_pattern :: proc(pen: Pen, out_pattern: ^[^]c.double, out_count: ^c.int) ---
	pen_free_dash_pattern :: proc(pattern: [^]c.double) ---
	pen_set_cosmetic :: proc(pen: Pen, is_cosmetic: c.int) ---
	@(require_results) pen_is_cosmetic :: proc(pen: Pen) -> c.int ---
	pen_set_miter_limit :: proc(pen: Pen, limit: c.double) ---
	@(require_results) pen_get_miter_limit :: proc(pen: Pen) -> c.double ---

	/* QBrush (standalone) */

	@(require_results) brush_create :: proc() -> Brush ---
	@(require_results) brush_create_with_colour :: proc(r: c.int, g: c.int, b: c.int, a: c.int) -> Brush ---
	brush_destroy :: proc(brush: Brush) ---
	brush_set_colour :: proc(brush: Brush, r: c.int, g: c.int, b: c.int, a: c.int) ---
	brush_get_colour :: proc(brush: Brush, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	brush_set_style :: proc(brush: Brush, style: Brush_Style) ---
	@(require_results) brush_get_style :: proc(brush: Brush) -> Brush_Style ---
	brush_set_texture :: proc(brush: Brush, pixmap: Pixmap) ---

	/* QPalette */

	@(require_results) palette_create :: proc() -> Palette ---
	@(require_results) palette_create_from_widget :: proc(widget: Widget) -> Palette ---
	palette_destroy :: proc(palette: Palette) ---
	palette_set_colour :: proc(palette: Palette, group: Palette_Colour_Group, role: Palette_Colour_Role, r: c.int, g: c.int, b: c.int, a: c.int) ---
	palette_get_colour :: proc(palette: Palette, group: Palette_Colour_Group, role: Palette_Colour_Role, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	palette_set_brush :: proc(palette: Palette, group: Palette_Colour_Group, role: Palette_Colour_Role, brush: Brush) ---
	widget_set_palette :: proc(widget: Widget, palette: Palette) ---

	/* QCursor (standalone) */

	@(require_results) cursor_create :: proc(shape: Cursor_Shape) -> Cursor_Handle ---
	@(require_results) cursor_create_from_pixmap :: proc(pixmap: Pixmap, hot_x: c.int, hot_y: c.int) -> Cursor_Handle ---
	cursor_destroy :: proc(cursor: Cursor_Handle) ---
	cursor_get_pos :: proc(x: ^c.int, y: ^c.int) ---
	cursor_set_pos :: proc(x: c.int, y: c.int) ---
	widget_set_cursor_object :: proc(widget: Widget, cursor: Cursor_Handle) ---

	/* QPainterPath */

	@(require_results) painter_path_create :: proc() -> Painter_Path ---
	painter_path_destroy :: proc(path: Painter_Path) ---
	painter_path_move_to :: proc(path: Painter_Path, x: c.double, y: c.double) ---
	painter_path_line_to :: proc(path: Painter_Path, x: c.double, y: c.double) ---
	painter_path_cubic_to :: proc(path: Painter_Path, ctrl1_x: c.double, ctrl1_y: c.double, ctrl2_x: c.double, ctrl2_y: c.double, end_x: c.double, end_y: c.double) ---
	painter_path_quad_to :: proc(path: Painter_Path, ctrl_x: c.double, ctrl_y: c.double, end_x: c.double, end_y: c.double) ---
	painter_path_arc_to :: proc(path: Painter_Path, x: c.double, y: c.double, width: c.double, height: c.double, start_angle: c.double, sweep_length: c.double) ---
	painter_path_add_rect :: proc(path: Painter_Path, x: c.double, y: c.double, width: c.double, height: c.double) ---
	painter_path_add_ellipse :: proc(path: Painter_Path, x: c.double, y: c.double, width: c.double, height: c.double) ---
	painter_path_add_text :: proc(path: Painter_Path, x: c.double, y: c.double, font: Font_Handle, text: cstring) ---
	painter_path_add_rounded_rect :: proc(path: Painter_Path, x: c.double, y: c.double, w: c.double, h: c.double, x_radius: c.double, y_radius: c.double) ---
	painter_path_close_subpath :: proc(path: Painter_Path) ---
	@(require_results) painter_path_is_empty :: proc(path: Painter_Path) -> c.int ---
	@(require_results) painter_path_contains_point :: proc(path: Painter_Path, x: c.double, y: c.double) -> c.int ---
	painter_path_add_path :: proc(path: Painter_Path, other: Painter_Path) ---
	painter_path_add_polygon :: proc(path: Painter_Path, points: [^]c.double, point_count: c.int) ---
	painter_path_get_bounding_rect :: proc(path: Painter_Path, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) ---
	@(require_results) painter_path_get_length :: proc(path: Painter_Path) -> c.double ---
	@(require_results) painter_path_get_percent_at_length :: proc(path: Painter_Path, length: c.double) -> c.double ---
	painter_path_get_point_at_percent :: proc(path: Painter_Path, percent: c.double, x: ^c.double, y: ^c.double) ---
	@(require_results) painter_path_get_angle_at_percent :: proc(path: Painter_Path, percent: c.double) -> c.double ---
	@(require_results) painter_path_united :: proc(path: Painter_Path, other: Painter_Path) -> Painter_Path ---
	@(require_results) painter_path_intersected :: proc(path: Painter_Path, other: Painter_Path) -> Painter_Path ---
	@(require_results) painter_path_subtracted :: proc(path: Painter_Path, other: Painter_Path) -> Painter_Path ---
	@(require_results) painter_path_simplified :: proc(path: Painter_Path) -> Painter_Path ---
	@(require_results) painter_path_translated :: proc(path: Painter_Path, dx: c.double, dy: c.double) -> Painter_Path ---
	@(require_results) painter_path_to_reversed :: proc(path: Painter_Path) -> Painter_Path ---
	@(require_results) painter_path_intersects_rect :: proc(path: Painter_Path, x: c.double, y: c.double, w: c.double, h: c.double) -> c.int ---
	@(require_results) painter_path_intersects_path :: proc(path: Painter_Path, other: Painter_Path) -> c.int ---
	painter_path_set_fill_rule :: proc(path: Painter_Path, rule: Fill_Rule) ---
	@(require_results) painter_path_get_fill_rule :: proc(path: Painter_Path) -> Fill_Rule ---
	@(require_results) painter_path_get_element_count :: proc(path: Painter_Path) -> c.int ---
	painter_draw_path :: proc(painter: Painter, path: Painter_Path) ---
	painter_set_clip_path :: proc(painter: Painter, path: Painter_Path) ---
	painter_fill_path :: proc(painter: Painter, path: Painter_Path, r: c.int, g: c.int, b: c.int, a: c.int) ---
	painter_stroke_path :: proc(painter: Painter, path: Painter_Path, pen: Pen) ---

	/* QPainterPathStroker */

	@(require_results) painter_path_stroker_create :: proc() -> Painter_Path_Stroker ---
	painter_path_stroker_destroy :: proc(stroker: Painter_Path_Stroker) ---
	painter_path_stroker_set_width :: proc(stroker: Painter_Path_Stroker, width: c.double) ---
	@(require_results) painter_path_stroker_get_width :: proc(stroker: Painter_Path_Stroker) -> c.double ---
	painter_path_stroker_set_cap_style :: proc(stroker: Painter_Path_Stroker, style: Pen_Cap_Style) ---
	@(require_results) painter_path_stroker_get_cap_style :: proc(stroker: Painter_Path_Stroker) -> Pen_Cap_Style ---
	painter_path_stroker_set_join_style :: proc(stroker: Painter_Path_Stroker, style: Pen_Join_Style) ---
	@(require_results) painter_path_stroker_get_join_style :: proc(stroker: Painter_Path_Stroker) -> Pen_Join_Style ---
	painter_path_stroker_set_miter_limit :: proc(stroker: Painter_Path_Stroker, limit: c.double) ---
	@(require_results) painter_path_stroker_get_miter_limit :: proc(stroker: Painter_Path_Stroker) -> c.double ---
	painter_path_stroker_set_dash_pattern :: proc(stroker: Painter_Path_Stroker, style: Pen_Style) ---
	painter_path_stroker_set_dash_offset :: proc(stroker: Painter_Path_Stroker, offset: c.double) ---
	@(require_results) painter_path_stroker_get_dash_offset :: proc(stroker: Painter_Path_Stroker) -> c.double ---
	@(require_results) painter_path_stroker_create_stroke :: proc(stroker: Painter_Path_Stroker, path: Painter_Path) -> Painter_Path ---

	/* QTransform */

	@(require_results) transform_create :: proc() -> Transform ---
	@(require_results) transform_create_values :: proc(m11: c.double, m12: c.double, m13: c.double, m21: c.double, m22: c.double, m23: c.double, m31: c.double, m32: c.double, m33: c.double) -> Transform ---
	transform_destroy :: proc(transform: Transform) ---
	@(require_results) transform_inverted :: proc(transform: Transform) -> Transform ---
	@(require_results) transform_transposed :: proc(transform: Transform) -> Transform ---
	transform_translate :: proc(transform: Transform, dx: c.double, dy: c.double) ---
	transform_scale :: proc(transform: Transform, sx: c.double, sy: c.double) ---
	transform_rotate :: proc(transform: Transform, angle: c.double) ---
	transform_shear :: proc(transform: Transform, sh: c.double, sv: c.double) ---
	transform_reset :: proc(transform: Transform) ---
	@(require_results) transform_is_identity :: proc(transform: Transform) -> c.int ---
	@(require_results) transform_determinant :: proc(transform: Transform) -> c.double ---
	painter_set_transform :: proc(painter: Painter, transform: Transform, is_combine: c.int) ---
	painter_reset_transform :: proc(painter: Painter) ---

	/* QRegion */

	@(require_results) region_create :: proc() -> Region ---
	@(require_results) region_create_rect :: proc(x: c.int, y: c.int, width: c.int, height: c.int) -> Region ---
	@(require_results) region_create_ellipse :: proc(x: c.int, y: c.int, width: c.int, height: c.int) -> Region ---
	region_destroy :: proc(region: Region) ---
	@(require_results) region_is_empty :: proc(region: Region) -> c.int ---
	@(require_results) region_contains_point :: proc(region: Region, x: c.int, y: c.int) -> c.int ---
	@(require_results) region_contains_rect :: proc(region: Region, x: c.int, y: c.int, width: c.int, height: c.int) -> c.int ---
	@(require_results) region_united :: proc(region: Region, other: Region) -> Region ---
	@(require_results) region_intersected :: proc(region: Region, other: Region) -> Region ---
	@(require_results) region_subtracted :: proc(region: Region, other: Region) -> Region ---
	@(require_results) region_xored :: proc(region: Region, other: Region) -> Region ---
	region_get_bounding_rect :: proc(region: Region, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) ---
	painter_set_clip_region :: proc(painter: Painter, region: Region) ---

	/* QGradient / QLinearGradient / QRadialGradient / QConicalGradient */

	@(require_results) linear_gradient_create :: proc(x1: c.double, y1: c.double, x2: c.double, y2: c.double) -> Gradient ---
	@(require_results) radial_gradient_create :: proc(cx: c.double, cy: c.double, radius: c.double) -> Gradient ---
	@(require_results) radial_gradient_create_focal :: proc(cx: c.double, cy: c.double, radius: c.double, fx: c.double, fy: c.double) -> Gradient ---
	@(require_results) conical_gradient_create :: proc(cx: c.double, cy: c.double, angle: c.double) -> Gradient ---
	gradient_destroy :: proc(gradient: Gradient) ---
	gradient_set_colour_at :: proc(gradient: Gradient, position: c.double, r: c.int, g: c.int, b: c.int, a: c.int) ---
	gradient_set_spread :: proc(gradient: Gradient, spread: Gradient_Spread) ---
	brush_set_gradient :: proc(brush: Brush, gradient: Gradient) ---

	/* QTextCursor */

	@(require_results) text_cursor_create :: proc(document: Text_Document) -> Text_Cursor ---
	@(require_results) text_cursor_create_from_text_edit :: proc(text_edit: Text_Edit) -> Text_Cursor ---
	@(require_results) text_cursor_create_from_plain_text_edit :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Cursor ---
	text_cursor_destroy :: proc(cursor: Text_Cursor) ---
	@(require_results) text_cursor_get_position :: proc(cursor: Text_Cursor) -> c.int ---
	text_cursor_set_position :: proc(cursor: Text_Cursor, position: c.int, move_mode: Text_Cursor_Move_Mode) ---
	@(require_results) text_cursor_get_anchor :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_has_selection :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_get_selected_text :: proc(cursor: Text_Cursor) -> cstring ---
	text_cursor_remove_selected_text :: proc(cursor: Text_Cursor) ---
	text_cursor_insert_text :: proc(cursor: Text_Cursor, text: cstring) ---
	text_cursor_insert_html :: proc(cursor: Text_Cursor, html: cstring) ---
	text_cursor_select :: proc(cursor: Text_Cursor, selection_type: Text_Cursor_Selection_Type) ---
	text_cursor_move_position :: proc(cursor: Text_Cursor, operation: Text_Cursor_Move_Operation, move_mode: Text_Cursor_Move_Mode, n: c.int) ---
	text_cursor_begin_edit_block :: proc(cursor: Text_Cursor) ---
	text_cursor_end_edit_block :: proc(cursor: Text_Cursor) ---
	@(require_results) text_cursor_at_start :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_at_end :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_get_block_number :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_get_column_number :: proc(cursor: Text_Cursor) -> c.int ---
	text_cursor_insert_block :: proc(cursor: Text_Cursor) ---
	text_cursor_insert_image :: proc(cursor: Text_Cursor, file_path: cstring) ---
	@(require_results) text_cursor_insert_table :: proc(cursor: Text_Cursor, rows: c.int, cols: c.int) -> rawptr ---
	text_cursor_insert_list :: proc(cursor: Text_Cursor, style: Text_List_Style) ---
	text_cursor_delete_char :: proc(cursor: Text_Cursor) ---
	text_cursor_delete_previous_char :: proc(cursor: Text_Cursor) ---
	text_cursor_clear_selection :: proc(cursor: Text_Cursor) ---
	@(require_results) text_cursor_get_selection_start :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_get_selection_end :: proc(cursor: Text_Cursor) -> c.int ---
	@(require_results) text_cursor_get_block :: proc(cursor: Text_Cursor, out_position: ^c.int, out_length: ^c.int) -> c.int ---
	text_edit_set_text_cursor :: proc(text_edit: Text_Edit, cursor: Text_Cursor) ---
	plain_text_edit_set_text_cursor :: proc(text_edit: Plain_Text_Edit, cursor: Text_Cursor) ---

	/* QTextDocument */

	@(require_results) text_document_create :: proc(parent: Widget) -> Text_Document ---
	@(require_results) text_document_create_from_text_edit :: proc(text_edit: Text_Edit) -> Text_Document ---
	@(require_results) text_document_create_from_plain_text_edit :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Document ---
	text_document_destroy :: proc(document: Text_Document) ---
	@(require_results) text_document_get_plain_text :: proc(document: Text_Document) -> cstring ---
	@(require_results) text_document_get_html :: proc(document: Text_Document) -> cstring ---
	text_document_set_plain_text :: proc(document: Text_Document, text: cstring) ---
	text_document_set_html :: proc(document: Text_Document, html: cstring) ---
	@(require_results) text_document_is_modified :: proc(document: Text_Document) -> c.int ---
	text_document_set_modified :: proc(document: Text_Document, is_modified: c.int) ---
	@(require_results) text_document_is_empty :: proc(document: Text_Document) -> c.int ---
	@(require_results) text_document_get_block_count :: proc(document: Text_Document) -> c.int ---
	@(require_results) text_document_get_character_count :: proc(document: Text_Document) -> c.int ---
	text_document_set_default_font :: proc(document: Text_Document, font: Font_Handle) ---
	text_document_undo :: proc(document: Text_Document) ---
	text_document_redo :: proc(document: Text_Document) ---
	@(require_results) text_document_is_undo_available :: proc(document: Text_Document) -> c.int ---
	@(require_results) text_document_is_redo_available :: proc(document: Text_Document) -> c.int ---
	text_document_clear_undo_redo_stacks :: proc(document: Text_Document) ---
	text_document_set_maximum_block_count :: proc(document: Text_Document, maximum: c.int) ---
	@(require_results) text_document_find :: proc(document: Text_Document, text: cstring, position: c.int, flags: c.int) -> Text_Cursor ---
	text_document_set_default_style_sheet :: proc(document: Text_Document, sheet: cstring) ---
	text_document_set_page_size :: proc(document: Text_Document, w: c.double, h: c.double) ---
	text_document_get_page_size :: proc(document: Text_Document, out_w: ^c.double, out_h: ^c.double) ---
	text_document_set_text_width :: proc(document: Text_Document, width: c.double) ---
	@(require_results) text_document_get_text_width :: proc(document: Text_Document) -> c.double ---
	@(require_results) text_document_get_ideal_width :: proc(document: Text_Document) -> c.double ---
	@(require_results) text_document_get_line_count :: proc(document: Text_Document) -> c.int ---
	@(require_results) text_document_connect_contents_changed :: proc(document: Text_Document, callback: Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) text_document_connect_modification_changed :: proc(document: Text_Document, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) text_document_connect_undo_available :: proc(document: Text_Document, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) text_document_connect_redo_available :: proc(document: Text_Document, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QTextBlock */

	@(require_results) text_block_create_from_cursor :: proc(cursor: Text_Cursor) -> Text_Block ---
	text_block_destroy :: proc(block: Text_Block) ---
	@(require_results) text_block_is_valid :: proc(block: Text_Block) -> c.int ---
	@(require_results) text_block_get_block_number :: proc(block: Text_Block) -> c.int ---
	@(require_results) text_block_get_position :: proc(block: Text_Block) -> c.int ---
	@(require_results) text_block_get_length :: proc(block: Text_Block) -> c.int ---
	@(require_results) text_block_get_text :: proc(block: Text_Block) -> cstring ---
	@(require_results) text_block_next :: proc(block: Text_Block) -> Text_Block ---
	@(require_results) text_block_previous :: proc(block: Text_Block) -> Text_Block ---
	@(require_results) text_block_get_line_count :: proc(block: Text_Block) -> c.int ---
	@(require_results) text_block_is_visible :: proc(block: Text_Block) -> c.int ---
	text_block_set_visible :: proc(block: Text_Block, is_visible: c.int) ---
	@(require_results) text_block_get_revision :: proc(block: Text_Block) -> c.int ---
	@(require_results) text_document_get_first_block :: proc(document: Text_Document) -> Text_Block ---
	@(require_results) text_document_get_last_block :: proc(document: Text_Document) -> Text_Block ---
	@(require_results) text_document_find_block_by_number :: proc(document: Text_Document, block_number: c.int) -> Text_Block ---

	/* QTextBlockFormat */

	@(require_results) text_block_format_create :: proc() -> Text_Block_Format ---
	text_block_format_destroy :: proc(fmt: Text_Block_Format) ---
	text_block_format_set_alignment :: proc(fmt: Text_Block_Format, alignment: Alignment) ---
	@(require_results) text_block_format_get_alignment :: proc(fmt: Text_Block_Format) -> Alignment ---
	text_block_format_set_indent :: proc(fmt: Text_Block_Format, indent: c.int) ---
	@(require_results) text_block_format_get_indent :: proc(fmt: Text_Block_Format) -> c.int ---
	text_block_format_set_text_indent :: proc(fmt: Text_Block_Format, indent: c.double) ---
	@(require_results) text_block_format_get_text_indent :: proc(fmt: Text_Block_Format) -> c.double ---
	text_block_format_set_top_margin :: proc(fmt: Text_Block_Format, margin: c.double) ---
	@(require_results) text_block_format_get_top_margin :: proc(fmt: Text_Block_Format) -> c.double ---
	text_block_format_set_bottom_margin :: proc(fmt: Text_Block_Format, margin: c.double) ---
	@(require_results) text_block_format_get_bottom_margin :: proc(fmt: Text_Block_Format) -> c.double ---
	text_block_format_set_left_margin :: proc(fmt: Text_Block_Format, margin: c.double) ---
	@(require_results) text_block_format_get_left_margin :: proc(fmt: Text_Block_Format) -> c.double ---
	text_block_format_set_right_margin :: proc(fmt: Text_Block_Format, margin: c.double) ---
	@(require_results) text_block_format_get_right_margin :: proc(fmt: Text_Block_Format) -> c.double ---
	text_block_format_set_line_height :: proc(fmt: Text_Block_Format, height: c.double, height_type: c.int) ---
	@(require_results) text_block_format_get_line_height :: proc(fmt: Text_Block_Format) -> c.double ---
	@(require_results) text_block_format_get_line_height_type :: proc(fmt: Text_Block_Format) -> c.int ---
	text_cursor_set_block_format :: proc(cursor: Text_Cursor, fmt: Text_Block_Format) ---
	text_cursor_merge_block_format :: proc(cursor: Text_Cursor, fmt: Text_Block_Format) ---

	/* QTextListFormat */

	@(require_results) text_list_format_create :: proc() -> Text_List_Format ---
	text_list_format_destroy :: proc(fmt: Text_List_Format) ---
	text_list_format_set_style :: proc(fmt: Text_List_Format, style: c.int) ---
	@(require_results) text_list_format_get_style :: proc(fmt: Text_List_Format) -> c.int ---
	text_list_format_set_indent :: proc(fmt: Text_List_Format, indent: c.int) ---
	@(require_results) text_list_format_get_indent :: proc(fmt: Text_List_Format) -> c.int ---
	text_list_format_set_number_prefix :: proc(fmt: Text_List_Format, prefix: cstring) ---
	@(require_results) text_list_format_get_number_prefix :: proc(fmt: Text_List_Format) -> cstring ---
	text_list_format_set_number_suffix :: proc(fmt: Text_List_Format, suffix: cstring) ---
	@(require_results) text_list_format_get_number_suffix :: proc(fmt: Text_List_Format) -> cstring ---
	text_cursor_insert_list_with_format :: proc(cursor: Text_Cursor, fmt: Text_List_Format) ---

	/* QTextImageFormat */

	@(require_results) text_image_format_create :: proc() -> Text_Image_Format ---
	text_image_format_destroy :: proc(fmt: Text_Image_Format) ---
	text_image_format_set_name :: proc(fmt: Text_Image_Format, name: cstring) ---
	@(require_results) text_image_format_get_name :: proc(fmt: Text_Image_Format) -> cstring ---
	text_image_format_set_width :: proc(fmt: Text_Image_Format, width: c.double) ---
	@(require_results) text_image_format_get_width :: proc(fmt: Text_Image_Format) -> c.double ---
	text_image_format_set_height :: proc(fmt: Text_Image_Format, height: c.double) ---
	@(require_results) text_image_format_get_height :: proc(fmt: Text_Image_Format) -> c.double ---
	text_cursor_insert_image_with_format :: proc(cursor: Text_Cursor, fmt: Text_Image_Format) ---

	/* QTextFrameFormat */

	@(require_results) text_frame_format_create :: proc() -> Text_Frame_Format ---
	text_frame_format_destroy :: proc(fmt: Text_Frame_Format) ---
	text_frame_format_set_border :: proc(fmt: Text_Frame_Format, border: c.double) ---
	@(require_results) text_frame_format_get_border :: proc(fmt: Text_Frame_Format) -> c.double ---
	text_frame_format_set_border_style :: proc(fmt: Text_Frame_Format, style: c.int) ---
	@(require_results) text_frame_format_get_border_style :: proc(fmt: Text_Frame_Format) -> c.int ---
	text_frame_format_set_margin :: proc(fmt: Text_Frame_Format, margin: c.double) ---
	@(require_results) text_frame_format_get_margin :: proc(fmt: Text_Frame_Format) -> c.double ---
	text_frame_format_set_padding :: proc(fmt: Text_Frame_Format, padding: c.double) ---
	@(require_results) text_frame_format_get_padding :: proc(fmt: Text_Frame_Format) -> c.double ---
	text_frame_format_set_width :: proc(fmt: Text_Frame_Format, width: c.double, length_type: c.int) ---
	text_frame_format_set_height :: proc(fmt: Text_Frame_Format, height: c.double, length_type: c.int) ---
	text_frame_format_set_position :: proc(fmt: Text_Frame_Format, position: c.int) ---
	@(require_results) text_frame_format_get_position :: proc(fmt: Text_Frame_Format) -> c.int ---
	text_frame_set_frame_format :: proc(frame: Text_Frame, fmt: Text_Frame_Format) ---

	/* QTextTableFormat */

	@(require_results) text_table_format_create :: proc() -> Text_Table_Format ---
	text_table_format_destroy :: proc(fmt: Text_Table_Format) ---
	text_table_format_set_columns :: proc(fmt: Text_Table_Format, columns: c.int) ---
	@(require_results) text_table_format_get_columns :: proc(fmt: Text_Table_Format) -> c.int ---
	text_table_format_set_cell_padding :: proc(fmt: Text_Table_Format, padding: c.double) ---
	@(require_results) text_table_format_get_cell_padding :: proc(fmt: Text_Table_Format) -> c.double ---
	text_table_format_set_cell_spacing :: proc(fmt: Text_Table_Format, spacing: c.double) ---
	@(require_results) text_table_format_get_cell_spacing :: proc(fmt: Text_Table_Format) -> c.double ---
	text_table_format_set_alignment :: proc(fmt: Text_Table_Format, alignment: Alignment) ---
	@(require_results) text_table_format_get_alignment :: proc(fmt: Text_Table_Format) -> Alignment ---
	text_table_format_set_border :: proc(fmt: Text_Table_Format, border: c.double) ---
	text_table_format_set_border_style :: proc(fmt: Text_Table_Format, style: c.int) ---
	text_table_set_format :: proc(table: Text_Table, fmt: Text_Table_Format) ---
	@(require_results) text_cursor_insert_table_with_format :: proc(cursor: Text_Cursor, rows: c.int, cols: c.int, fmt: Text_Table_Format) -> Text_Table ---

	/* QTextTableCellFormat */

	@(require_results) text_table_cell_format_create :: proc() -> Text_Table_Cell_Format ---
	text_table_cell_format_destroy :: proc(fmt: Text_Table_Cell_Format) ---
	text_table_cell_format_set_top_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) ---
	@(require_results) text_table_cell_format_get_top_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double ---
	text_table_cell_format_set_bottom_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) ---
	@(require_results) text_table_cell_format_get_bottom_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double ---
	text_table_cell_format_set_left_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) ---
	@(require_results) text_table_cell_format_get_left_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double ---
	text_table_cell_format_set_right_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) ---
	@(require_results) text_table_cell_format_get_right_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double ---
	text_table_cell_format_set_background :: proc(fmt: Text_Table_Cell_Format, r: c.int, g: c.int, b: c.int, a: c.int) ---
	text_table_cell_format_set_border_brush :: proc(fmt: Text_Table_Cell_Format, r: c.int, g: c.int, b: c.int, a: c.int) ---
	text_table_cell_set_format :: proc(table: Text_Table, row: c.int, col: c.int, fmt: Text_Table_Cell_Format) ---

	/* QTextDocumentFragment */

	@(require_results) text_document_fragment_from_plain_text :: proc(text: cstring) -> Text_Document_Fragment ---
	@(require_results) text_document_fragment_from_html :: proc(html: cstring) -> Text_Document_Fragment ---
	@(require_results) text_document_fragment_from_selection :: proc(cursor: Text_Cursor) -> Text_Document_Fragment ---
	text_document_fragment_destroy :: proc(fragment: Text_Document_Fragment) ---
	@(require_results) text_document_fragment_to_plain_text :: proc(fragment: Text_Document_Fragment) -> cstring ---
	@(require_results) text_document_fragment_to_html :: proc(fragment: Text_Document_Fragment) -> cstring ---
	text_cursor_insert_fragment :: proc(cursor: Text_Cursor, fragment: Text_Document_Fragment) ---

	/* QTextDocumentWriter */

	@(require_results) text_document_writer_create :: proc(file_path: cstring, format: cstring) -> Text_Document_Writer ---
	text_document_writer_destroy :: proc(writer: Text_Document_Writer) ---
	text_document_writer_set_format :: proc(writer: Text_Document_Writer, format: cstring) ---
	@(require_results) text_document_writer_write :: proc(writer: Text_Document_Writer, document: Text_Document) -> c.int ---

	/* QTextOption */

	@(require_results) text_option_create :: proc() -> Text_Option ---
	@(require_results) text_option_create_with_alignment :: proc(alignment: Alignment) -> Text_Option ---
	text_option_destroy :: proc(option: Text_Option) ---
	text_option_set_alignment :: proc(option: Text_Option, alignment: Alignment) ---
	@(require_results) text_option_get_alignment :: proc(option: Text_Option) -> c.int ---
	text_option_set_wrap_mode :: proc(option: Text_Option, mode: Word_Wrap_Mode) ---
	@(require_results) text_option_get_wrap_mode :: proc(option: Text_Option) -> c.int ---
	text_option_set_tab_stop_distance :: proc(option: Text_Option, distance: c.double) ---
	@(require_results) text_option_get_tab_stop_distance :: proc(option: Text_Option) -> c.double ---
	text_document_set_default_text_option :: proc(document: Text_Document, option: Text_Option) ---

	/* QTextLayout */

	@(require_results) text_layout_create :: proc() -> Text_Layout ---
	@(require_results) text_layout_create_with_text :: proc(text: cstring) -> Text_Layout ---
	@(require_results) text_layout_create_with_text_and_font :: proc(text: cstring, font: Font_Handle) -> Text_Layout ---
	text_layout_destroy :: proc(layout: Text_Layout) ---
	text_layout_set_text :: proc(layout: Text_Layout, text: cstring) ---
	@(require_results) text_layout_get_text :: proc(layout: Text_Layout) -> cstring ---
	text_layout_set_font :: proc(layout: Text_Layout, font: Font_Handle) ---
	text_layout_set_text_option :: proc(layout: Text_Layout, option: Text_Option) ---
	text_layout_begin_layout :: proc(layout: Text_Layout) ---
	text_layout_end_layout :: proc(layout: Text_Layout) ---
	@(require_results) text_layout_create_line :: proc(layout: Text_Layout) -> Text_Line ---
	@(require_results) text_layout_get_line_count :: proc(layout: Text_Layout) -> c.int ---
	@(require_results) text_layout_get_line_at :: proc(layout: Text_Layout, index: c.int) -> Text_Line ---
	text_layout_set_position :: proc(layout: Text_Layout, x: c.double, y: c.double) ---
	text_layout_get_bounding_rect :: proc(layout: Text_Layout, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) ---
	text_layout_draw :: proc(layout: Text_Layout, painter: Painter, x: c.double, y: c.double) ---
	text_layout_set_cache_enabled :: proc(layout: Text_Layout, is_enabled: c.int) ---

	/* QTextLine */

	text_line_destroy :: proc(line: Text_Line) ---
	@(require_results) text_line_is_valid :: proc(line: Text_Line) -> c.int ---
	text_line_set_line_width :: proc(line: Text_Line, width: c.double) ---
	text_line_set_position :: proc(line: Text_Line, x: c.double, y: c.double) ---
	@(require_results) text_line_get_width :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_natural_text_width :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_height :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_ascent :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_descent :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_leading :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_x :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_y :: proc(line: Text_Line) -> c.double ---
	@(require_results) text_line_get_text_start :: proc(line: Text_Line) -> c.int ---
	@(require_results) text_line_get_text_length :: proc(line: Text_Line) -> c.int ---
	@(require_results) text_line_get_line_number :: proc(line: Text_Line) -> c.int ---
	text_line_get_natural_text_rect :: proc(line: Text_Line, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) ---
	text_line_draw :: proc(line: Text_Line, painter: Painter, x: c.double, y: c.double) ---

	/* QDrag */

	@(require_results) drag_create :: proc(source: rawptr) -> Drag ---
	drag_destroy :: proc(drag: Drag) ---
	drag_set_mime_data_text :: proc(drag: Drag, text: cstring) ---
	drag_set_mime_data :: proc(drag: Drag, mime_data: Mime_Data) ---
	drag_set_pixmap :: proc(drag: Drag, pixmap: Pixmap) ---
	drag_set_hot_spot :: proc(drag: Drag, x: c.int, y: c.int) ---
	@(require_results) drag_exec :: proc(drag: Drag, supported_actions: c.int, default_action: c.int) -> c.int ---

	/* QMimeData */

	@(require_results) mime_data_create :: proc() -> Mime_Data ---
	mime_data_destroy :: proc(mime: Mime_Data) ---
	mime_data_set_text :: proc(mime: Mime_Data, text: cstring) ---
	@(require_results) mime_data_get_text :: proc(mime: Mime_Data) -> cstring ---
	@(require_results) mime_data_has_text :: proc(mime: Mime_Data) -> c.int ---
	mime_data_set_html :: proc(mime: Mime_Data, html: cstring) ---
	@(require_results) mime_data_get_html :: proc(mime: Mime_Data) -> cstring ---
	@(require_results) mime_data_has_html :: proc(mime: Mime_Data) -> c.int ---
	mime_data_set_urls :: proc(mime: Mime_Data, urls: [^]cstring, count: c.int) ---
	mime_data_get_urls :: proc(mime: Mime_Data, out_urls: ^[^]cstring, out_count: ^c.int) ---
	@(require_results) mime_data_has_urls :: proc(mime: Mime_Data) -> c.int ---
	mime_data_set_image_data :: proc(mime: Mime_Data, image: Image) ---
	@(require_results) mime_data_has_image :: proc(mime: Mime_Data) -> c.int ---
	mime_data_set_data :: proc(mime: Mime_Data, mime_type: cstring, data: [^]u8, size: c.int) ---
	mime_data_get_data :: proc(mime: Mime_Data, mime_type: cstring, out_data: ^[^]u8, out_size: ^c.int) ---
	@(require_results) mime_data_has_format :: proc(mime: Mime_Data, mime_type: cstring) -> c.int ---
	mime_data_get_formats :: proc(mime: Mime_Data, out_formats: ^[^]cstring, out_count: ^c.int) ---
	mime_data_remove_format :: proc(mime: Mime_Data, mime_type: cstring) ---
	mime_data_clear :: proc(mime: Mime_Data) ---

	/* QPolygon */

	@(require_results) polygon_create :: proc() -> Polygon ---
	@(require_results) polygon_create_from_points :: proc(points: [^]c.int, count: c.int) -> Polygon ---
	polygon_destroy :: proc(polygon: Polygon) ---
	polygon_append :: proc(polygon: Polygon, x: c.int, y: c.int) ---
	@(require_results) polygon_get_count :: proc(polygon: Polygon) -> c.int ---
	polygon_get_point :: proc(polygon: Polygon, index: c.int, x: ^c.int, y: ^c.int) ---
	polygon_set_point :: proc(polygon: Polygon, index: c.int, x: c.int, y: c.int) ---
	@(require_results) polygon_contains_point :: proc(polygon: Polygon, x: c.int, y: c.int, fill_rule: Fill_Rule) -> c.int ---
	polygon_translate :: proc(polygon: Polygon, dx: c.int, dy: c.int) ---
	@(require_results) polygon_translated :: proc(polygon: Polygon, dx: c.int, dy: c.int) -> Polygon ---
	polygon_get_bounding_rect :: proc(polygon: Polygon, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) ---

	/* QPolygonF */

	@(require_results) polygon_f_create :: proc() -> Polygon_F ---
	@(require_results) polygon_f_create_from_points :: proc(points: [^]c.double, count: c.int) -> Polygon_F ---
	polygon_f_destroy :: proc(polygon: Polygon_F) ---
	polygon_f_append :: proc(polygon: Polygon_F, x: c.double, y: c.double) ---
	@(require_results) polygon_f_get_count :: proc(polygon: Polygon_F) -> c.int ---
	polygon_f_get_point :: proc(polygon: Polygon_F, index: c.int, x: ^c.double, y: ^c.double) ---
	@(require_results) polygon_f_contains_point :: proc(polygon: Polygon_F, x: c.double, y: c.double, fill_rule: Fill_Rule) -> c.int ---
	polygon_f_translate :: proc(polygon: Polygon_F, dx: c.double, dy: c.double) ---
	@(require_results) polygon_f_translated :: proc(polygon: Polygon_F, dx: c.double, dy: c.double) -> Polygon_F ---
	polygon_f_get_bounding_rect :: proc(polygon: Polygon_F, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) ---

	/* QFontDatabase */

	@(require_results) font_database_get_families :: proc(families_out: ^[^]cstring) -> c.int ---
	font_database_free_families :: proc(families: [^]cstring, count: c.int) ---
	@(require_results) font_database_has_family :: proc(family: cstring) -> c.int ---
	@(require_results) font_database_is_fixed_pitch :: proc(family: cstring) -> c.int ---
	@(require_results) font_database_is_scalable :: proc(family: cstring) -> c.int ---
	@(require_results) font_database_add_application_font :: proc(file_path: cstring) -> c.int ---
	@(require_results) font_database_add_application_font_from_data :: proc(data: [^]u8, size: c.int) -> c.int ---
	font_database_remove_application_font :: proc(id: c.int) ---

	/* QKeySequence (standalone) */

	@(require_results) key_sequence_create :: proc(key: cstring) -> Key_Sequence ---
	@(require_results) key_sequence_create_standard :: proc(standard_key: Key_Sequence_Standard_Key) -> Key_Sequence ---
	key_sequence_destroy :: proc(key_sequence: Key_Sequence) ---
	@(require_results) key_sequence_to_string :: proc(key_sequence: Key_Sequence) -> cstring ---
	@(require_results) key_sequence_get_count :: proc(key_sequence: Key_Sequence) -> c.int ---
	@(require_results) key_sequence_matches :: proc(key_sequence: Key_Sequence, other: Key_Sequence) -> Key_Sequence_Match ---

	/* QMovie */

	@(require_results) movie_create :: proc(file_path: cstring, parent: Widget) -> Movie ---
	movie_destroy :: proc(movie: Movie) ---
	movie_start :: proc(movie: Movie) ---
	movie_stop :: proc(movie: Movie) ---
	movie_set_paused :: proc(movie: Movie, is_paused: c.int) ---
	@(require_results) movie_is_valid :: proc(movie: Movie) -> c.int ---
	@(require_results) movie_get_frame_count :: proc(movie: Movie) -> c.int ---
	@(require_results) movie_get_current_frame_number :: proc(movie: Movie) -> c.int ---
	movie_set_speed :: proc(movie: Movie, percent: c.int) ---
	movie_set_scaled_size :: proc(movie: Movie, width: c.int, height: c.int) ---
	@(require_results) movie_get_state :: proc(movie: Movie) -> Movie_State ---
	label_set_movie :: proc(label: Label, movie: Movie) ---
	movie_connect_frame_changed :: proc(movie: Movie, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	movie_connect_state_changed :: proc(movie: Movie, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QImageReader */

	@(require_results) image_reader_create :: proc(file_path: cstring) -> Image_Reader ---
	image_reader_destroy :: proc(reader: Image_Reader) ---
	@(require_results) image_reader_can_read :: proc(reader: Image_Reader) -> c.int ---
	@(require_results) image_reader_read :: proc(reader: Image_Reader) -> Image ---
	@(require_results) image_reader_get_image_count :: proc(reader: Image_Reader) -> c.int ---
	image_reader_get_size :: proc(reader: Image_Reader, width: ^c.int, height: ^c.int) ---
	@(require_results) image_reader_get_format :: proc(reader: Image_Reader) -> cstring ---
	@(require_results) image_reader_get_error_string :: proc(reader: Image_Reader) -> cstring ---
	image_reader_set_scaled_size :: proc(reader: Image_Reader, width: c.int, height: c.int) ---

	/* QImageWriter */

	@(require_results) image_writer_create :: proc(file_path: cstring) -> Image_Writer ---
	image_writer_destroy :: proc(writer: Image_Writer) ---
	image_writer_set_format :: proc(writer: Image_Writer, format: cstring) ---
	image_writer_set_quality :: proc(writer: Image_Writer, quality: c.int) ---
	@(require_results) image_writer_write :: proc(writer: Image_Writer, image: Image) -> c.int ---
	@(require_results) image_writer_get_error_string :: proc(writer: Image_Writer) -> cstring ---

	/* QBitmap */

	@(require_results) bitmap_create :: proc(width: c.int, height: c.int) -> Bitmap ---
	@(require_results) bitmap_create_from_file :: proc(file_path: cstring) -> Bitmap ---
	bitmap_destroy :: proc(bitmap: Bitmap) ---
	@(require_results) bitmap_from_image :: proc(image: Image) -> Bitmap ---
	bitmap_clear :: proc(bitmap: Bitmap) ---

	/* QStaticText */

	@(require_results) static_text_create :: proc(text: cstring) -> Static_Text ---
	static_text_destroy :: proc(static_text: Static_Text) ---
	static_text_set_text :: proc(static_text: Static_Text, text: cstring) ---
	@(require_results) static_text_get_text :: proc(static_text: Static_Text) -> cstring ---
	static_text_set_text_format :: proc(static_text: Static_Text, format: Text_Format) ---
	static_text_set_text_width :: proc(static_text: Static_Text, width: c.double) ---
	static_text_prepare :: proc(static_text: Static_Text, font: Font_Handle) ---
	painter_draw_static_text :: proc(painter: Painter, x: c.int, y: c.int, static_text: Static_Text) ---

	/* QPicture */

	@(require_results) picture_create :: proc() -> Picture ---
	picture_destroy :: proc(picture: Picture) ---
	@(require_results) picture_is_null :: proc(picture: Picture) -> c.int ---
	@(require_results) picture_save :: proc(picture: Picture, file_path: cstring) -> c.int ---
	@(require_results) picture_load :: proc(picture: Picture, file_path: cstring) -> c.int ---
	picture_get_bounding_rect :: proc(picture: Picture, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) ---
	painter_draw_picture :: proc(painter: Painter, x: c.int, y: c.int, picture: Picture) ---

	/* QPageSize */

	@(require_results) page_size_create :: proc(page_size_id: Page_Size_Id) -> Page_Size ---
	@(require_results) page_size_create_custom :: proc(width: c.double, height: c.double, unit: Page_Size_Unit) -> Page_Size ---
	page_size_destroy :: proc(page_size: Page_Size) ---
	@(require_results) page_size_get_name :: proc(page_size: Page_Size) -> cstring ---
	@(require_results) page_size_get_id :: proc(page_size: Page_Size) -> Page_Size_Id ---
	@(require_results) page_size_is_valid :: proc(page_size: Page_Size) -> c.int ---

	/* QPageLayout */

	@(require_results) page_layout_create :: proc(page_size: Page_Size, orientation: Page_Layout_Orientation, left: c.double, top: c.double, right: c.double, bottom: c.double, unit: Page_Size_Unit) -> Page_Layout ---
	page_layout_destroy :: proc(page_layout: Page_Layout) ---
	@(require_results) page_layout_get_orientation :: proc(page_layout: Page_Layout) -> Page_Layout_Orientation ---
	page_layout_set_orientation :: proc(page_layout: Page_Layout, orientation: Page_Layout_Orientation) ---
	@(require_results) page_layout_is_valid :: proc(page_layout: Page_Layout) -> c.int ---

	/* QFile */

	@(require_results) file_create :: proc(file_path: cstring) -> File ---
	file_destroy :: proc(file: File) ---
	@(require_results) file_open :: proc(file: File, mode: File_Open_Mode) -> c.int ---
	file_close :: proc(file: File) ---
	@(require_results) file_is_open :: proc(file: File) -> c.int ---
	@(require_results) file_size :: proc(file: File) -> c.longlong ---
	@(require_results) file_pos :: proc(file: File) -> c.longlong ---
	@(require_results) file_seek :: proc(file: File, pos: c.longlong) -> c.int ---
	@(require_results) file_at_end :: proc(file: File) -> c.int ---
	@(require_results) file_read :: proc(file: File, data: [^]u8, max_size: c.longlong) -> c.longlong ---
	@(require_results) file_write :: proc(file: File, data: [^]u8, size: c.longlong) -> c.longlong ---
	@(require_results) file_read_all :: proc(file: File) -> cstring ---
	@(require_results) file_exists :: proc(file_path: cstring) -> c.int ---
	@(require_results) file_remove :: proc(file_path: cstring) -> c.int ---
	@(require_results) file_copy :: proc(source: cstring, destination: cstring) -> c.int ---
	@(require_results) file_rename :: proc(old_name: cstring, new_name: cstring) -> c.int ---
	@(require_results) file_get_error_string :: proc(file: File) -> cstring ---

	/* QFileInfo */

	@(require_results) file_info_create :: proc(file_path: cstring) -> File_Info ---
	file_info_destroy :: proc(info: File_Info) ---
	@(require_results) file_info_exists :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_get_file_name :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_file_path :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_absolute_file_path :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_absolute_path :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_suffix :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_complete_suffix :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_base_name :: proc(info: File_Info) -> cstring ---
	@(require_results) file_info_get_size :: proc(info: File_Info) -> c.longlong ---
	@(require_results) file_info_is_file :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_is_dir :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_is_symlink :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_is_readable :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_is_writable :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_is_executable :: proc(info: File_Info) -> c.int ---
	@(require_results) file_info_is_hidden :: proc(info: File_Info) -> c.int ---

	/* QDir */

	@(require_results) dir_create :: proc(path: cstring) -> Dir ---
	dir_destroy :: proc(dir: Dir) ---
	@(require_results) dir_get_path :: proc(dir: Dir) -> cstring ---
	@(require_results) dir_get_absolute_path :: proc(dir: Dir) -> cstring ---
	@(require_results) dir_exists :: proc(dir: Dir) -> c.int ---
	@(require_results) dir_mkdir :: proc(dir: Dir, name: cstring) -> c.int ---
	@(require_results) dir_mkpath :: proc(dir: Dir, path: cstring) -> c.int ---
	@(require_results) dir_rmdir :: proc(dir: Dir, name: cstring) -> c.int ---
	@(require_results) dir_rmpath :: proc(dir: Dir, path: cstring) -> c.int ---
	@(require_results) dir_remove :: proc(dir: Dir, file_name: cstring) -> c.int ---
	@(require_results) dir_rename :: proc(dir: Dir, old_name: cstring, new_name: cstring) -> c.int ---
	@(require_results) dir_cd :: proc(dir: Dir, dir_name: cstring) -> c.int ---
	@(require_results) dir_cd_up :: proc(dir: Dir) -> c.int ---
	@(require_results) dir_get_entry_count :: proc(dir: Dir, filters: Dir_Filter) -> c.int ---
	@(require_results) dir_get_entry_list :: proc(dir: Dir, filters: Dir_Filter, entries_out: ^[^]cstring) -> c.int ---
	dir_free_entry_list :: proc(entries: [^]cstring, count: c.int) ---
	@(require_results) dir_home_path :: proc() -> cstring ---
	@(require_results) dir_temp_path :: proc() -> cstring ---
	@(require_results) dir_root_path :: proc() -> cstring ---
	@(require_results) dir_current_path :: proc() -> cstring ---

	/* QDirIterator */

	@(require_results) dir_iterator_create :: proc(path: cstring, filters: c.int, iterator_flags: c.int) -> Dir_Iterator ---
	@(require_results) dir_iterator_create_with_patterns :: proc(path: cstring, name_filters: [^]cstring, filter_count: c.int, dir_filters: c.int, iterator_flags: c.int) -> Dir_Iterator ---
	dir_iterator_destroy :: proc(iter: Dir_Iterator) ---
	@(require_results) dir_iterator_has_next :: proc(iter: Dir_Iterator) -> c.int ---
	@(require_results) dir_iterator_next :: proc(iter: Dir_Iterator) -> cstring ---
	@(require_results) dir_iterator_get_file_name :: proc(iter: Dir_Iterator) -> cstring ---
	@(require_results) dir_iterator_get_file_path :: proc(iter: Dir_Iterator) -> cstring ---
	@(require_results) dir_iterator_get_path :: proc(iter: Dir_Iterator) -> cstring ---

	/* QTimeZone */

	@(require_results) time_zone_create :: proc(iana_id: cstring) -> Time_Zone ---
	@(require_results) time_zone_create_utc :: proc() -> Time_Zone ---
	@(require_results) time_zone_create_system :: proc() -> Time_Zone ---
	time_zone_destroy :: proc(tz: Time_Zone) ---
	@(require_results) time_zone_is_valid :: proc(tz: Time_Zone) -> c.int ---
	@(require_results) time_zone_get_id :: proc(tz: Time_Zone) -> cstring ---
	@(require_results) time_zone_get_display_name :: proc(tz: Time_Zone, time_type: c.int) -> cstring ---
	@(require_results) time_zone_get_offset_from_utc :: proc(tz: Time_Zone, datetime: Date_Time) -> c.int ---
	@(require_results) time_zone_has_daylight_time :: proc(tz: Time_Zone) -> c.int ---
	@(require_results) time_zone_is_daylight_time :: proc(tz: Time_Zone, datetime: Date_Time) -> c.int ---
	@(require_results) time_zone_get_available_ids :: proc(ids_out: ^[^]cstring) -> c.int ---
	time_zone_free_ids :: proc(ids: [^]cstring, count: c.int) ---
	date_time_set_time_zone :: proc(datetime: Date_Time, tz: Time_Zone) ---

	/* QProcess */

	@(require_results) process_create :: proc(parent: Widget) -> Process ---
	process_destroy :: proc(process: Process) ---
	process_start :: proc(process: Process, program: cstring, arguments: [^]cstring, arg_count: c.int) ---
	process_start_command :: proc(process: Process, command: cstring) ---
	@(require_results) process_wait_for_started :: proc(process: Process, timeout_ms: c.int) -> c.int ---
	@(require_results) process_wait_for_finished :: proc(process: Process, timeout_ms: c.int) -> c.int ---
	process_kill :: proc(process: Process) ---
	process_terminate :: proc(process: Process) ---
	@(require_results) process_get_state :: proc(process: Process) -> Process_State ---
	@(require_results) process_get_exit_code :: proc(process: Process) -> c.int ---
	@(require_results) process_get_exit_status :: proc(process: Process) -> Process_Exit_Status ---
	@(require_results) process_read_all_standard_output :: proc(process: Process) -> cstring ---
	@(require_results) process_read_all_standard_error :: proc(process: Process) -> cstring ---
	process_write :: proc(process: Process, data: [^]u8, size: c.int) ---
	process_close_write_channel :: proc(process: Process) ---
	process_set_working_directory :: proc(process: Process, dir: cstring) ---
	process_connect_finished :: proc(process: Process, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	process_connect_error_occurred :: proc(process: Process, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	process_connect_started :: proc(process: Process, callback: Callback, user_data: rawptr) -> Connection_Id ---
	process_set_environment :: proc(process: Process, env: [^]cstring, count: c.int) ---
	process_set_standard_output_process :: proc(process: Process, destination: Process) ---
	process_set_read_channel :: proc(process: Process, channel: c.int) ---
	process_set_process_channel_mode :: proc(process: Process, mode: c.int) ---
	@(require_results) process_connect_ready_read_standard_output :: proc(process: Process, callback: Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) process_connect_ready_read_standard_error :: proc(process: Process, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QThread */

	thread_sleep :: proc(ms: c.ulong) ---
	thread_msleep :: proc(ms: c.ulong) ---
	thread_usleep :: proc(us: c.ulong) ---

	/* QMutex */

	@(require_results) mutex_create :: proc() -> Mutex ---
	mutex_destroy :: proc(mutex: Mutex) ---
	mutex_lock :: proc(mutex: Mutex) ---
	mutex_unlock :: proc(mutex: Mutex) ---
	@(require_results) mutex_try_lock :: proc(mutex: Mutex) -> c.int ---

	/* QReadWriteLock */

	@(require_results) read_write_lock_create :: proc() -> Read_Write_Lock ---
	read_write_lock_destroy :: proc(lock: Read_Write_Lock) ---
	read_write_lock_lock_for_read :: proc(lock: Read_Write_Lock) ---
	read_write_lock_lock_for_write :: proc(lock: Read_Write_Lock) ---
	read_write_lock_unlock :: proc(lock: Read_Write_Lock) ---
	@(require_results) read_write_lock_try_lock_for_read :: proc(lock: Read_Write_Lock) -> c.int ---
	@(require_results) read_write_lock_try_lock_for_write :: proc(lock: Read_Write_Lock) -> c.int ---

	/* QSemaphore */

	@(require_results) semaphore_create :: proc(n: c.int) -> Semaphore ---
	semaphore_destroy :: proc(semaphore: Semaphore) ---
	semaphore_acquire :: proc(semaphore: Semaphore, n: c.int) ---
	semaphore_release :: proc(semaphore: Semaphore, n: c.int) ---
	@(require_results) semaphore_available :: proc(semaphore: Semaphore) -> c.int ---
	@(require_results) semaphore_try_acquire :: proc(semaphore: Semaphore, n: c.int) -> c.int ---

	/* QBuffer */

	@(require_results) buffer_create :: proc() -> Buffer ---
	buffer_destroy :: proc(buffer: Buffer) ---
	@(require_results) buffer_open :: proc(buffer: Buffer, mode: File_Open_Mode) -> c.int ---
	buffer_close :: proc(buffer: Buffer) ---
	buffer_set_data :: proc(buffer: Buffer, data: [^]u8, size: c.int) ---
	@(require_results) buffer_get_data :: proc(buffer: Buffer, size: ^c.int) -> [^]u8 ---
	@(require_results) buffer_size :: proc(buffer: Buffer) -> c.longlong ---

	/* QJsonDocument / QJsonObject / QJsonArray */

	@(require_results) json_document_from_json :: proc(json: cstring, size: c.int, error_out: ^cstring) -> Json_Document ---
	@(require_results) json_document_from_object :: proc(object: Json_Object) -> Json_Document ---
	@(require_results) json_document_from_array :: proc(array: Json_Array) -> Json_Document ---
	json_document_destroy :: proc(doc: Json_Document) ---
	@(require_results) json_document_to_json :: proc(doc: Json_Document, is_compact: c.int) -> cstring ---
	@(require_results) json_document_is_object :: proc(doc: Json_Document) -> c.int ---
	@(require_results) json_document_is_array :: proc(doc: Json_Document) -> c.int ---
	@(require_results) json_document_get_object :: proc(doc: Json_Document) -> Json_Object ---
	@(require_results) json_document_get_array :: proc(doc: Json_Document) -> Json_Array ---

	@(require_results) json_object_create :: proc() -> Json_Object ---
	json_object_destroy :: proc(obj: Json_Object) ---
	@(require_results) json_object_get_count :: proc(obj: Json_Object) -> c.int ---
	@(require_results) json_object_contains :: proc(obj: Json_Object, key: cstring) -> c.int ---
	json_object_set_string :: proc(obj: Json_Object, key: cstring, value: cstring) ---
	json_object_set_int :: proc(obj: Json_Object, key: cstring, value: c.int) ---
	json_object_set_double :: proc(obj: Json_Object, key: cstring, value: c.double) ---
	json_object_set_bool :: proc(obj: Json_Object, key: cstring, value: c.int) ---
	json_object_set_object :: proc(obj: Json_Object, key: cstring, child: Json_Object) ---
	json_object_set_array :: proc(obj: Json_Object, key: cstring, array: Json_Array) ---
	json_object_set_null :: proc(obj: Json_Object, key: cstring) ---
	@(require_results) json_object_get_string :: proc(obj: Json_Object, key: cstring) -> cstring ---
	@(require_results) json_object_get_int :: proc(obj: Json_Object, key: cstring, default_val: c.int) -> c.int ---
	@(require_results) json_object_get_double :: proc(obj: Json_Object, key: cstring, default_val: c.double) -> c.double ---
	@(require_results) json_object_get_bool :: proc(obj: Json_Object, key: cstring, default_val: c.int) -> c.int ---
	@(require_results) json_object_get_object :: proc(obj: Json_Object, key: cstring) -> Json_Object ---
	@(require_results) json_object_get_array :: proc(obj: Json_Object, key: cstring) -> Json_Array ---
	json_object_remove :: proc(obj: Json_Object, key: cstring) ---
	@(require_results) json_object_get_keys :: proc(obj: Json_Object, keys_out: ^[^]cstring) -> c.int ---
	json_object_free_keys :: proc(keys: [^]cstring, count: c.int) ---

	@(require_results) json_array_create :: proc() -> Json_Array ---
	json_array_destroy :: proc(arr: Json_Array) ---
	@(require_results) json_array_get_count :: proc(arr: Json_Array) -> c.int ---
	json_array_append_string :: proc(arr: Json_Array, value: cstring) ---
	json_array_append_int :: proc(arr: Json_Array, value: c.int) ---
	json_array_append_double :: proc(arr: Json_Array, value: c.double) ---
	json_array_append_bool :: proc(arr: Json_Array, value: c.int) ---
	json_array_append_object :: proc(arr: Json_Array, object: Json_Object) ---
	json_array_append_array :: proc(arr: Json_Array, other: Json_Array) ---
	json_array_append_null :: proc(arr: Json_Array) ---
	@(require_results) json_array_get_string :: proc(arr: Json_Array, index: c.int) -> cstring ---
	@(require_results) json_array_get_int :: proc(arr: Json_Array, index: c.int, default_val: c.int) -> c.int ---
	@(require_results) json_array_get_double :: proc(arr: Json_Array, index: c.int, default_val: c.double) -> c.double ---
	@(require_results) json_array_get_bool :: proc(arr: Json_Array, index: c.int, default_val: c.int) -> c.int ---
	@(require_results) json_array_get_object :: proc(arr: Json_Array, index: c.int) -> Json_Object ---
	@(require_results) json_array_get_array :: proc(arr: Json_Array, index: c.int) -> Json_Array ---
	json_array_remove_at :: proc(arr: Json_Array, index: c.int) ---

	/* QXmlStreamReader / QXmlStreamWriter */

	@(require_results) xml_stream_reader_create :: proc(data: cstring, size: c.int) -> Xml_Stream_Reader ---
	xml_stream_reader_destroy :: proc(reader: Xml_Stream_Reader) ---
	@(require_results) xml_stream_reader_read_next :: proc(reader: Xml_Stream_Reader) -> Xml_Token_Type ---
	@(require_results) xml_stream_reader_get_token_type :: proc(reader: Xml_Stream_Reader) -> Xml_Token_Type ---
	@(require_results) xml_stream_reader_get_name :: proc(reader: Xml_Stream_Reader) -> cstring ---
	@(require_results) xml_stream_reader_get_text :: proc(reader: Xml_Stream_Reader) -> cstring ---
	@(require_results) xml_stream_reader_at_end :: proc(reader: Xml_Stream_Reader) -> c.int ---
	@(require_results) xml_stream_reader_has_error :: proc(reader: Xml_Stream_Reader) -> c.int ---
	@(require_results) xml_stream_reader_get_error_string :: proc(reader: Xml_Stream_Reader) -> cstring ---
	@(require_results) xml_stream_reader_get_attribute :: proc(reader: Xml_Stream_Reader, name: cstring) -> cstring ---
	@(require_results) xml_stream_reader_is_start_element :: proc(reader: Xml_Stream_Reader) -> c.int ---
	@(require_results) xml_stream_reader_is_end_element :: proc(reader: Xml_Stream_Reader) -> c.int ---

	@(require_results) xml_stream_writer_create :: proc() -> Xml_Stream_Writer ---
	xml_stream_writer_destroy :: proc(writer: Xml_Stream_Writer) ---
	xml_stream_writer_set_auto_formatting :: proc(writer: Xml_Stream_Writer, is_enabled: c.int) ---
	xml_stream_writer_write_start_document :: proc(writer: Xml_Stream_Writer) ---
	xml_stream_writer_write_end_document :: proc(writer: Xml_Stream_Writer) ---
	xml_stream_writer_write_start_element :: proc(writer: Xml_Stream_Writer, name: cstring) ---
	xml_stream_writer_write_end_element :: proc(writer: Xml_Stream_Writer) ---
	xml_stream_writer_write_attribute :: proc(writer: Xml_Stream_Writer, name: cstring, value: cstring) ---
	xml_stream_writer_write_text_element :: proc(writer: Xml_Stream_Writer, name: cstring, text: cstring) ---
	xml_stream_writer_write_characters :: proc(writer: Xml_Stream_Writer, text: cstring) ---
	@(require_results) xml_stream_writer_get_output :: proc(writer: Xml_Stream_Writer) -> cstring ---

	/* QDateTime / QDate / QTime */

	@(require_results) date_time_create :: proc() -> Date_Time ---
	@(require_results) date_time_create_from_components :: proc(year: c.int, month: c.int, day: c.int, hour: c.int, minute: c.int, second: c.int) -> Date_Time ---
	@(require_results) date_time_current :: proc() -> Date_Time ---
	@(require_results) date_time_current_utc :: proc() -> Date_Time ---
	date_time_destroy :: proc(dt: Date_Time) ---
	@(require_results) date_time_to_string :: proc(dt: Date_Time, format: cstring) -> cstring ---
	@(require_results) date_time_to_msecs_since_epoch :: proc(dt: Date_Time) -> c.longlong ---
	@(require_results) date_time_from_msecs_since_epoch :: proc(msecs: c.longlong) -> Date_Time ---
	@(require_results) date_time_is_valid :: proc(dt: Date_Time) -> c.int ---
	date_time_get_date :: proc(dt: Date_Time, year: ^c.int, month: ^c.int, day: ^c.int) ---
	date_time_get_time :: proc(dt: Date_Time, hour: ^c.int, minute: ^c.int, second: ^c.int) ---
	@(require_results) date_time_secs_to :: proc(dt: Date_Time, other: Date_Time) -> c.longlong ---
	@(require_results) date_time_days_to :: proc(dt: Date_Time, other: Date_Time) -> c.longlong ---
	@(require_results) date_time_add_days :: proc(dt: Date_Time, days: c.longlong) -> Date_Time ---
	@(require_results) date_time_add_secs :: proc(dt: Date_Time, seconds: c.longlong) -> Date_Time ---

	@(require_results) date_create :: proc(year: c.int, month: c.int, day: c.int) -> Date ---
	@(require_results) date_current :: proc() -> Date ---
	date_destroy :: proc(date: Date) ---
	@(require_results) date_to_string :: proc(date: Date, format: cstring) -> cstring ---
	@(require_results) date_is_valid :: proc(date: Date) -> c.int ---
	@(require_results) date_get_year :: proc(date: Date) -> c.int ---
	@(require_results) date_get_month :: proc(date: Date) -> c.int ---
	@(require_results) date_get_day :: proc(date: Date) -> c.int ---
	@(require_results) date_get_day_of_week :: proc(date: Date) -> c.int ---
	@(require_results) date_get_day_of_year :: proc(date: Date) -> c.int ---
	@(require_results) date_get_days_in_month :: proc(date: Date) -> c.int ---
	@(require_results) date_get_days_in_year :: proc(date: Date) -> c.int ---

	@(require_results) time_create :: proc(hour: c.int, minute: c.int, second: c.int, ms: c.int) -> Time_Handle ---
	@(require_results) time_current :: proc() -> Time_Handle ---
	time_destroy :: proc(time_obj: Time_Handle) ---
	@(require_results) time_to_string :: proc(time_obj: Time_Handle, format: cstring) -> cstring ---
	@(require_results) time_is_valid :: proc(time_obj: Time_Handle) -> c.int ---
	@(require_results) time_get_hour :: proc(time_obj: Time_Handle) -> c.int ---
	@(require_results) time_get_minute :: proc(time_obj: Time_Handle) -> c.int ---
	@(require_results) time_get_second :: proc(time_obj: Time_Handle) -> c.int ---
	@(require_results) time_get_msec :: proc(time_obj: Time_Handle) -> c.int ---
	@(require_results) time_msecs_since_start_of_day :: proc(time_obj: Time_Handle) -> c.int ---

	/* QLocale */

	@(require_results) locale_create :: proc() -> Locale ---
	@(require_results) locale_create_from_name :: proc(name: cstring) -> Locale ---
	locale_destroy :: proc(locale: Locale) ---
	@(require_results) locale_get_name :: proc(locale: Locale) -> cstring ---
	@(require_results) locale_get_language_name :: proc(locale: Locale) -> cstring ---
	@(require_results) locale_get_country_name :: proc(locale: Locale) -> cstring ---
	@(require_results) locale_get_decimal_point :: proc(locale: Locale) -> cstring ---
	@(require_results) locale_to_string_int :: proc(locale: Locale, value: c.int) -> cstring ---
	@(require_results) locale_to_string_double :: proc(locale: Locale, value: c.double, precision: c.int) -> cstring ---
	@(require_results) locale_format_date_time :: proc(locale: Locale, dt: Date_Time, format: cstring) -> cstring ---

	/* QRegularExpression (standalone) */

	@(require_results) regex_create :: proc(pattern: cstring) -> Regex ---
	@(require_results) regex_create_with_options :: proc(pattern: cstring, options: Regex_Pattern_Option) -> Regex ---
	regex_destroy :: proc(regex: Regex) ---
	@(require_results) regex_get_pattern :: proc(regex: Regex) -> cstring ---
	@(require_results) regex_is_valid :: proc(regex: Regex) -> c.int ---
	@(require_results) regex_get_error_string :: proc(regex: Regex) -> cstring ---
	@(require_results) regex_has_match :: proc(regex: Regex, subject: cstring) -> c.int ---
	@(require_results) regex_get_match :: proc(regex: Regex, subject: cstring, capture_group: c.int) -> cstring ---
	@(require_results) regex_get_match_start :: proc(regex: Regex, subject: cstring, capture_group: c.int) -> c.int ---
	@(require_results) regex_get_match_end :: proc(regex: Regex, subject: cstring, capture_group: c.int) -> c.int ---

	/* QUrl */

	@(require_results) url_create :: proc(url: cstring) -> Url ---
	@(require_results) url_create_from_local_file :: proc(file_path: cstring) -> Url ---
	url_destroy :: proc(url: Url) ---
	@(require_results) url_to_string :: proc(url: Url) -> cstring ---
	@(require_results) url_to_local_file :: proc(url: Url) -> cstring ---
	@(require_results) url_get_scheme :: proc(url: Url) -> cstring ---
	@(require_results) url_get_host :: proc(url: Url) -> cstring ---
	@(require_results) url_get_port :: proc(url: Url) -> c.int ---
	@(require_results) url_get_path :: proc(url: Url) -> cstring ---
	@(require_results) url_get_query :: proc(url: Url) -> cstring ---
	@(require_results) url_get_fragment :: proc(url: Url) -> cstring ---
	@(require_results) url_is_valid :: proc(url: Url) -> c.int ---
	@(require_results) url_is_local_file :: proc(url: Url) -> c.int ---
	@(require_results) url_get_file_name :: proc(url: Url) -> cstring ---

	/* QUrlQuery */

	@(require_results) url_query_create :: proc() -> Url_Query ---
	@(require_results) url_query_create_from_url :: proc(url: Url) -> Url_Query ---
	@(require_results) url_query_create_from_string :: proc(query_string: cstring) -> Url_Query ---
	url_query_destroy :: proc(query: Url_Query) ---
	url_query_add_item :: proc(query: Url_Query, key: cstring, value: cstring) ---
	@(require_results) url_query_get_query_value :: proc(query: Url_Query, key: cstring) -> cstring ---
	@(require_results) url_query_has_query_item :: proc(query: Url_Query, key: cstring) -> c.int ---
	url_query_remove_query_item :: proc(query: Url_Query, key: cstring) ---
	url_query_remove_all_query_items :: proc(query: Url_Query, key: cstring) ---
	@(require_results) url_query_to_string :: proc(query: Url_Query) -> cstring ---
	@(require_results) url_query_is_empty :: proc(query: Url_Query) -> c.int ---
	url_query_clear :: proc(query: Url_Query) ---

	/* QUuid */

	@(require_results) uuid_create :: proc() -> Uuid ---
	@(require_results) uuid_create_from_string :: proc(text: cstring) -> Uuid ---
	uuid_destroy :: proc(uuid: Uuid) ---
	@(require_results) uuid_to_string :: proc(uuid: Uuid) -> cstring ---
	@(require_results) uuid_is_null :: proc(uuid: Uuid) -> c.int ---

	/* QElapsedTimer */

	@(require_results) elapsed_timer_create :: proc() -> Elapsed_Timer ---
	elapsed_timer_destroy :: proc(timer: Elapsed_Timer) ---
	elapsed_timer_start :: proc(timer: Elapsed_Timer) ---
	@(require_results) elapsed_timer_elapsed :: proc(timer: Elapsed_Timer) -> c.longlong ---
	@(require_results) elapsed_timer_restart :: proc(timer: Elapsed_Timer) -> c.longlong ---
	@(require_results) elapsed_timer_is_valid :: proc(timer: Elapsed_Timer) -> c.int ---
	@(require_results) elapsed_timer_has_expired :: proc(timer: Elapsed_Timer, timeout: c.longlong) -> c.int ---

	/* QCryptographicHash */

	@(require_results) crypto_hash_create :: proc(algorithm: Crypto_Hash_Algorithm) -> Crypto_Hash ---
	crypto_hash_destroy :: proc(hash: Crypto_Hash) ---
	crypto_hash_add_data :: proc(hash: Crypto_Hash, data: [^]u8, size: c.int) ---
	crypto_hash_reset :: proc(hash: Crypto_Hash) ---
	@(require_results) crypto_hash_get_result :: proc(hash: Crypto_Hash, out: [^]u8, max_size: c.int) -> c.int ---
	@(require_results) crypto_hash_static :: proc(algorithm: Crypto_Hash_Algorithm, data: [^]u8, size: c.int, out: [^]u8, max_size: c.int) -> c.int ---

	/* QMimeDatabase */

	@(require_results) mime_database_create :: proc() -> Mime_Database ---
	mime_database_destroy :: proc(db: Mime_Database) ---
	@(require_results) mime_database_mime_type_for_file :: proc(db: Mime_Database, file_path: cstring) -> cstring ---
	@(require_results) mime_database_mime_type_for_data :: proc(db: Mime_Database, data: [^]u8, size: c.int) -> cstring ---
	@(require_results) mime_database_suffix_for_mime_type :: proc(db: Mime_Database, mime_type: cstring) -> cstring ---

	/* QStorageInfo */

	@(require_results) storage_info_create :: proc(path: cstring) -> Storage_Info ---
	storage_info_destroy :: proc(info: Storage_Info) ---
	@(require_results) storage_info_get_root_path :: proc(info: Storage_Info) -> cstring ---
	@(require_results) storage_info_get_device :: proc(info: Storage_Info) -> cstring ---
	@(require_results) storage_info_get_display_name :: proc(info: Storage_Info) -> cstring ---
	@(require_results) storage_info_get_file_system_type :: proc(info: Storage_Info) -> cstring ---
	@(require_results) storage_info_get_bytes_total :: proc(info: Storage_Info) -> c.longlong ---
	@(require_results) storage_info_get_bytes_free :: proc(info: Storage_Info) -> c.longlong ---
	@(require_results) storage_info_get_bytes_available :: proc(info: Storage_Info) -> c.longlong ---
	@(require_results) storage_info_is_valid :: proc(info: Storage_Info) -> c.int ---
	@(require_results) storage_info_is_ready :: proc(info: Storage_Info) -> c.int ---
	@(require_results) storage_info_is_read_only :: proc(info: Storage_Info) -> c.int ---

	/* QVersionNumber */

	@(require_results) version_number_create :: proc(major: c.int, minor: c.int, micro: c.int) -> Version_Number ---
	version_number_destroy :: proc(version: Version_Number) ---
	@(require_results) version_number_get_major :: proc(version: Version_Number) -> c.int ---
	@(require_results) version_number_get_minor :: proc(version: Version_Number) -> c.int ---
	@(require_results) version_number_get_micro :: proc(version: Version_Number) -> c.int ---
	@(require_results) version_number_to_string :: proc(version: Version_Number) -> cstring ---
	@(require_results) version_number_compare :: proc(v1: Version_Number, v2: Version_Number) -> c.int ---
	@(require_results) version_number_is_null :: proc(version: Version_Number) -> c.int ---

	/* QTranslator */

	@(require_results) translator_create :: proc(parent: Widget) -> Translator ---
	translator_destroy :: proc(translator: Translator) ---
	@(require_results) translator_load :: proc(translator: Translator, filename: cstring, directory: cstring) -> c.int ---
	@(require_results) translator_is_empty :: proc(translator: Translator) -> c.int ---
	application_install_translator :: proc(app: Application, translator: Translator) ---
	application_remove_translator :: proc(app: Application, translator: Translator) ---

	/* QCommandLineParser */

	@(require_results) command_line_parser_create :: proc() -> Command_Line_Parser ---
	command_line_parser_destroy :: proc(parser: Command_Line_Parser) ---
	command_line_parser_set_application_description :: proc(parser: Command_Line_Parser, description: cstring) ---
	command_line_parser_add_help_option :: proc(parser: Command_Line_Parser) ---
	command_line_parser_add_version_option :: proc(parser: Command_Line_Parser) ---
	command_line_parser_add_option :: proc(parser: Command_Line_Parser, name: cstring, description: cstring, value_name: cstring, default_value: cstring) ---
	command_line_parser_add_positional_argument :: proc(parser: Command_Line_Parser, name: cstring, description: cstring, syntax: cstring) ---
	command_line_parser_process :: proc(parser: Command_Line_Parser, app: Application) ---
	@(require_results) command_line_parser_is_set :: proc(parser: Command_Line_Parser, name: cstring) -> c.int ---
	@(require_results) command_line_parser_get_value :: proc(parser: Command_Line_Parser, name: cstring) -> cstring ---

	/* QTemporaryFile */

	@(require_results) temporary_file_create :: proc() -> Temporary_File ---
	@(require_results) temporary_file_create_with_template :: proc(template_name: cstring) -> Temporary_File ---
	temporary_file_destroy :: proc(file: Temporary_File) ---
	@(require_results) temporary_file_open :: proc(file: Temporary_File) -> c.int ---
	@(require_results) temporary_file_get_file_name :: proc(file: Temporary_File) -> cstring ---
	@(require_results) temporary_file_auto_remove :: proc(file: Temporary_File) -> c.int ---
	temporary_file_set_auto_remove :: proc(file: Temporary_File, is_auto_remove: c.int) ---

	/* QTemporaryDir */

	@(require_results) temporary_dir_create :: proc() -> Temporary_Dir ---
	@(require_results) temporary_dir_create_with_template :: proc(template_name: cstring) -> Temporary_Dir ---
	temporary_dir_destroy :: proc(dir: Temporary_Dir) ---
	@(require_results) temporary_dir_is_valid :: proc(dir: Temporary_Dir) -> c.int ---
	@(require_results) temporary_dir_get_path :: proc(dir: Temporary_Dir) -> cstring ---
	@(require_results) temporary_dir_auto_remove :: proc(dir: Temporary_Dir) -> c.int ---
	temporary_dir_set_auto_remove :: proc(dir: Temporary_Dir, is_auto_remove: c.int) ---
	@(require_results) temporary_dir_remove :: proc(dir: Temporary_Dir) -> c.int ---

	/* QSaveFile */

	@(require_results) save_file_create :: proc(file_path: cstring) -> Save_File ---
	save_file_destroy :: proc(file: Save_File) ---
	@(require_results) save_file_open :: proc(file: Save_File, mode: File_Open_Mode) -> c.int ---
	@(require_results) save_file_write :: proc(file: Save_File, data: [^]u8, size: c.longlong) -> c.longlong ---
	@(require_results) save_file_commit :: proc(file: Save_File) -> c.int ---
	save_file_cancel_writing :: proc(file: Save_File) ---
	@(require_results) save_file_get_error_string :: proc(file: Save_File) -> cstring ---

	/* QFileSystemWatcher */

	@(require_results) file_system_watcher_create :: proc(parent: Widget) -> File_System_Watcher ---
	file_system_watcher_destroy :: proc(watcher: File_System_Watcher) ---
	@(require_results) file_system_watcher_add_path :: proc(watcher: File_System_Watcher, path: cstring) -> c.int ---
	@(require_results) file_system_watcher_remove_path :: proc(watcher: File_System_Watcher, path: cstring) -> c.int ---
	file_system_watcher_connect_file_changed :: proc(watcher: File_System_Watcher, callback: String_Callback, user_data: rawptr) -> Connection_Id ---
	file_system_watcher_connect_directory_changed :: proc(watcher: File_System_Watcher, callback: String_Callback, user_data: rawptr) -> Connection_Id ---

	/* QStringListModel */

	@(require_results) string_list_model_create :: proc(parent: Widget) -> String_List_Model ---
	string_list_model_destroy :: proc(model: String_List_Model) ---
	string_list_model_set_string_list :: proc(model: String_List_Model, strings: [^]cstring, count: c.int) ---
	@(require_results) string_list_model_get_string_list :: proc(model: String_List_Model, strings_out: ^[^]cstring) -> c.int ---
	string_list_model_free_string_list :: proc(strings: [^]cstring, count: c.int) ---

	/* QItemSelectionModel */

	@(require_results) item_selection_model_create :: proc(model: rawptr, parent: Widget) -> Item_Selection_Model ---
	item_selection_model_destroy :: proc(selection_model: Item_Selection_Model) ---
	item_selection_model_select_index :: proc(selection_model: Item_Selection_Model, index: Model_Index, flags: Item_Selection_Flag) ---
	item_selection_model_clear :: proc(selection_model: Item_Selection_Model) ---
	item_selection_model_clear_selection :: proc(selection_model: Item_Selection_Model) ---
	@(require_results) item_selection_model_is_selected :: proc(selection_model: Item_Selection_Model, index: Model_Index) -> c.int ---
	@(require_results) item_selection_model_has_selection :: proc(selection_model: Item_Selection_Model) -> c.int ---
	@(require_results) item_selection_model_get_current_index :: proc(selection_model: Item_Selection_Model) -> Model_Index ---
	item_selection_model_set_current_index :: proc(selection_model: Item_Selection_Model, index: Model_Index, flags: Item_Selection_Flag) ---
	item_selection_model_connect_selection_changed :: proc(selection_model: Item_Selection_Model, callback: Callback, user_data: rawptr) -> Connection_Id ---
	item_selection_model_connect_current_changed :: proc(selection_model: Item_Selection_Model, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QUndoCommand */

	@(require_results) undo_command_create :: proc(text: cstring, parent: Undo_Command) -> Undo_Command ---
	undo_command_destroy :: proc(command: Undo_Command) ---
	@(require_results) undo_command_get_text :: proc(command: Undo_Command) -> cstring ---
	@(require_results) undo_command_get_action_text :: proc(command: Undo_Command) -> cstring ---
	undo_command_set_obsolete :: proc(command: Undo_Command, is_obsolete: c.int) ---
	@(require_results) undo_command_is_obsolete :: proc(command: Undo_Command) -> c.int ---
	@(require_results) undo_command_get_child_count :: proc(command: Undo_Command) -> c.int ---
	@(require_results) undo_command_get_child :: proc(command: Undo_Command, index: c.int) -> Undo_Command ---

	/* QUndoStack */

	@(require_results) undo_stack_create :: proc(parent: rawptr) -> Undo_Stack ---
	undo_stack_destroy :: proc(stack: Undo_Stack) ---
	undo_stack_push :: proc(stack: Undo_Stack, command: Undo_Command) ---
	undo_stack_clear :: proc(stack: Undo_Stack) ---
	undo_stack_undo :: proc(stack: Undo_Stack) ---
	undo_stack_redo :: proc(stack: Undo_Stack) ---
	@(require_results) undo_stack_can_undo :: proc(stack: Undo_Stack) -> c.int ---
	@(require_results) undo_stack_can_redo :: proc(stack: Undo_Stack) -> c.int ---
	@(require_results) undo_stack_get_undo_text :: proc(stack: Undo_Stack) -> cstring ---
	@(require_results) undo_stack_get_redo_text :: proc(stack: Undo_Stack) -> cstring ---
	@(require_results) undo_stack_is_clean :: proc(stack: Undo_Stack) -> c.int ---
	@(require_results) undo_stack_get_clean_index :: proc(stack: Undo_Stack) -> c.int ---
	undo_stack_set_clean :: proc(stack: Undo_Stack) ---
	@(require_results) undo_stack_get_index :: proc(stack: Undo_Stack) -> c.int ---
	@(require_results) undo_stack_get_count :: proc(stack: Undo_Stack) -> c.int ---
	undo_stack_set_index :: proc(stack: Undo_Stack, index: c.int) ---
	undo_stack_set_undo_limit :: proc(stack: Undo_Stack, limit: c.int) ---
	@(require_results) undo_stack_get_undo_limit :: proc(stack: Undo_Stack) -> c.int ---
	undo_stack_begin_macro :: proc(stack: Undo_Stack, text: cstring) ---
	undo_stack_end_macro :: proc(stack: Undo_Stack) ---
	undo_stack_set_active :: proc(stack: Undo_Stack, is_active: c.int) ---
	@(require_results) undo_stack_is_active :: proc(stack: Undo_Stack) -> c.int ---
	undo_stack_connect_can_undo_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	undo_stack_connect_can_redo_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	undo_stack_connect_clean_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	undo_stack_connect_index_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	undo_stack_connect_undo_text_changed :: proc(stack: Undo_Stack, callback: String_Callback, user_data: rawptr) -> Connection_Id ---
	undo_stack_connect_redo_text_changed :: proc(stack: Undo_Stack, callback: String_Callback, user_data: rawptr) -> Connection_Id ---

	/* QUndoGroup */

	@(require_results) undo_group_create :: proc(parent: rawptr) -> Undo_Group ---
	undo_group_destroy :: proc(group: Undo_Group) ---
	undo_group_add_stack :: proc(group: Undo_Group, stack: Undo_Stack) ---
	undo_group_remove_stack :: proc(group: Undo_Group, stack: Undo_Stack) ---
	undo_group_set_active_stack :: proc(group: Undo_Group, stack: Undo_Stack) ---
	@(require_results) undo_group_get_active_stack :: proc(group: Undo_Group) -> Undo_Stack ---
	undo_group_undo :: proc(group: Undo_Group) ---
	undo_group_redo :: proc(group: Undo_Group) ---
	@(require_results) undo_group_can_undo :: proc(group: Undo_Group) -> c.int ---
	@(require_results) undo_group_can_redo :: proc(group: Undo_Group) -> c.int ---
	@(require_results) undo_group_get_undo_text :: proc(group: Undo_Group) -> cstring ---
	@(require_results) undo_group_get_redo_text :: proc(group: Undo_Group) -> cstring ---
	@(require_results) undo_group_is_clean :: proc(group: Undo_Group) -> c.int ---
	undo_group_connect_active_stack_changed :: proc(group: Undo_Group, callback: Callback, user_data: rawptr) -> Connection_Id ---
	undo_group_connect_can_undo_changed :: proc(group: Undo_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	undo_group_connect_can_redo_changed :: proc(group: Undo_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	undo_group_connect_clean_changed :: proc(group: Undo_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QDataWidgetMapper */

	@(require_results) data_widget_mapper_create :: proc(parent: rawptr) -> Data_Widget_Mapper ---
	data_widget_mapper_destroy :: proc(mapper: Data_Widget_Mapper) ---
	data_widget_mapper_set_model :: proc(mapper: Data_Widget_Mapper, model: rawptr) ---
	@(require_results) data_widget_mapper_get_model :: proc(mapper: Data_Widget_Mapper) -> rawptr ---
	data_widget_mapper_add_mapping :: proc(mapper: Data_Widget_Mapper, widget: Widget, section: c.int) ---
	data_widget_mapper_add_mapping_with_property :: proc(mapper: Data_Widget_Mapper, widget: Widget, section: c.int, property_name: cstring) ---
	data_widget_mapper_remove_mapping :: proc(mapper: Data_Widget_Mapper, widget: Widget) ---
	data_widget_mapper_set_current_index :: proc(mapper: Data_Widget_Mapper, index: c.int) ---
	@(require_results) data_widget_mapper_get_current_index :: proc(mapper: Data_Widget_Mapper) -> c.int ---
	data_widget_mapper_set_root_index :: proc(mapper: Data_Widget_Mapper, index: Model_Index) ---
	data_widget_mapper_to_first :: proc(mapper: Data_Widget_Mapper) ---
	data_widget_mapper_to_last :: proc(mapper: Data_Widget_Mapper) ---
	data_widget_mapper_to_next :: proc(mapper: Data_Widget_Mapper) ---
	data_widget_mapper_to_previous :: proc(mapper: Data_Widget_Mapper) ---
	@(require_results) data_widget_mapper_submit :: proc(mapper: Data_Widget_Mapper) -> c.int ---
	data_widget_mapper_revert :: proc(mapper: Data_Widget_Mapper) ---
	data_widget_mapper_set_submit_policy :: proc(mapper: Data_Widget_Mapper, policy: Data_Widget_Mapper_Submit_Policy) ---
	@(require_results) data_widget_mapper_get_submit_policy :: proc(mapper: Data_Widget_Mapper) -> Data_Widget_Mapper_Submit_Policy ---
	data_widget_mapper_set_orientation :: proc(mapper: Data_Widget_Mapper, orientation: Orientation) ---
	@(require_results) data_widget_mapper_get_orientation :: proc(mapper: Data_Widget_Mapper) -> Orientation ---
	data_widget_mapper_connect_current_index_changed :: proc(mapper: Data_Widget_Mapper, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---

	/* QStyledItemDelegate */

	@(require_results) styled_item_delegate_create :: proc(parent: rawptr) -> Styled_Item_Delegate ---
	styled_item_delegate_destroy :: proc(delegate: Styled_Item_Delegate) ---

	/* QItemDelegate */

	@(require_results) item_delegate_create :: proc(parent: rawptr) -> Item_Delegate ---
	item_delegate_destroy :: proc(delegate: Item_Delegate) ---

	/* QGraphicsScene */

	@(require_results) graphics_scene_create :: proc(parent: rawptr) -> Graphics_Scene ---
	@(require_results) graphics_scene_create_with_rect :: proc(x: c.double, y: c.double, width: c.double, height: c.double, parent: rawptr) -> Graphics_Scene ---
	graphics_scene_destroy :: proc(scene: Graphics_Scene) ---
	graphics_scene_set_scene_rect :: proc(scene: Graphics_Scene, x: c.double, y: c.double, width: c.double, height: c.double) ---
	graphics_scene_get_scene_rect :: proc(scene: Graphics_Scene, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) ---
	graphics_scene_set_background_brush :: proc(scene: Graphics_Scene, brush: Brush) ---
	graphics_scene_set_foreground_brush :: proc(scene: Graphics_Scene, brush: Brush) ---
	graphics_scene_add_item :: proc(scene: Graphics_Scene, item: Graphics_Item) ---
	graphics_scene_remove_item :: proc(scene: Graphics_Scene, item: Graphics_Item) ---
	graphics_scene_clear :: proc(scene: Graphics_Scene) ---
	@(require_results) graphics_scene_add_rect :: proc(scene: Graphics_Scene, x: c.double, y: c.double, w: c.double, h: c.double, pen: Pen, brush: Brush) -> Graphics_Rect_Item ---
	@(require_results) graphics_scene_add_ellipse :: proc(scene: Graphics_Scene, x: c.double, y: c.double, w: c.double, h: c.double, pen: Pen, brush: Brush) -> Graphics_Ellipse_Item ---
	@(require_results) graphics_scene_add_text :: proc(scene: Graphics_Scene, text: cstring, font: Font_Handle) -> Graphics_Text_Item ---
	@(require_results) graphics_scene_add_line :: proc(scene: Graphics_Scene, x1: c.double, y1: c.double, x2: c.double, y2: c.double, pen: Pen) -> Graphics_Line_Item ---
	@(require_results) graphics_scene_add_pixmap :: proc(scene: Graphics_Scene, pixmap: Pixmap) -> Graphics_Pixmap_Item ---
	@(require_results) graphics_scene_add_path :: proc(scene: Graphics_Scene, path: Painter_Path, pen: Pen, brush: Brush) -> Graphics_Path_Item ---
	@(require_results) graphics_scene_add_widget :: proc(scene: Graphics_Scene, widget: Widget) -> Graphics_Proxy_Widget ---
	@(require_results) graphics_scene_create_item_group :: proc(scene: Graphics_Scene, items: [^]Graphics_Item, count: c.int) -> Graphics_Item_Group ---
	graphics_scene_destroy_item_group :: proc(scene: Graphics_Scene, group: Graphics_Item_Group) ---
	@(require_results) graphics_scene_get_item_count :: proc(scene: Graphics_Scene) -> c.int ---
	graphics_scene_set_selection_area :: proc(scene: Graphics_Scene, path: Painter_Path) ---
	graphics_scene_clear_selection :: proc(scene: Graphics_Scene) ---
	graphics_scene_connect_selection_changed :: proc(scene: Graphics_Scene, callback: Callback, user_data: rawptr) -> Connection_Id ---
	@(require_results) graphics_scene_item_at :: proc(scene: Graphics_Scene, x: c.double, y: c.double, transform: Transform) -> Graphics_Item ---
	graphics_scene_get_items :: proc(scene: Graphics_Scene, out_items: ^[^]Graphics_Item, out_count: ^c.int) ---
	graphics_scene_get_items_in_rect :: proc(scene: Graphics_Scene, x: c.double, y: c.double, w: c.double, h: c.double, out_items: ^[^]Graphics_Item, out_count: ^c.int) ---
	graphics_scene_get_colliding_items :: proc(scene: Graphics_Scene, item: Graphics_Item, out_items: ^[^]Graphics_Item, out_count: ^c.int) ---
	graphics_scene_render :: proc(scene: Graphics_Scene, painter: Painter) ---
	@(require_results) graphics_scene_get_width :: proc(scene: Graphics_Scene) -> c.double ---
	@(require_results) graphics_scene_get_height :: proc(scene: Graphics_Scene) -> c.double ---
	graphics_scene_invalidate :: proc(scene: Graphics_Scene) ---
	graphics_scene_advance :: proc(scene: Graphics_Scene) ---
	graphics_scene_set_focus_item :: proc(scene: Graphics_Scene, item: Graphics_Item) ---
	@(require_results) graphics_scene_get_focus_item :: proc(scene: Graphics_Scene) -> Graphics_Item ---
	@(require_results) graphics_scene_connect_scene_rect_changed :: proc(scene: Graphics_Scene, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QGraphicsView */

	@(require_results) graphics_view_create :: proc(parent: Widget) -> Graphics_View ---
	@(require_results) graphics_view_create_with_scene :: proc(scene: Graphics_Scene, parent: Widget) -> Graphics_View ---
	graphics_view_destroy :: proc(view: Graphics_View) ---
	graphics_view_set_scene :: proc(view: Graphics_View, scene: Graphics_Scene) ---
	@(require_results) graphics_view_get_scene :: proc(view: Graphics_View) -> Graphics_Scene ---
	graphics_view_set_render_hint :: proc(view: Graphics_View, hint: Render_Hint, is_enabled: c.int) ---
	graphics_view_set_drag_mode :: proc(view: Graphics_View, mode: Graphics_View_Drag_Mode) ---
	@(require_results) graphics_view_get_drag_mode :: proc(view: Graphics_View) -> Graphics_View_Drag_Mode ---
	graphics_view_set_interactive :: proc(view: Graphics_View, is_interactive: c.int) ---
	@(require_results) graphics_view_is_interactive :: proc(view: Graphics_View) -> c.int ---
	graphics_view_set_alignment :: proc(view: Graphics_View, alignment: Alignment) ---
	graphics_view_set_viewport_update_mode :: proc(view: Graphics_View, mode: Graphics_View_Viewport_Update_Mode) ---
	graphics_view_fit_in_view :: proc(view: Graphics_View, x: c.double, y: c.double, w: c.double, h: c.double, aspect_ratio_mode: Aspect_Ratio_Mode) ---
	graphics_view_center_on :: proc(view: Graphics_View, x: c.double, y: c.double) ---
	graphics_view_scale :: proc(view: Graphics_View, sx: c.double, sy: c.double) ---
	graphics_view_rotate :: proc(view: Graphics_View, angle: c.double) ---
	graphics_view_reset_transform :: proc(view: Graphics_View) ---
	graphics_view_set_scene_rect :: proc(view: Graphics_View, x: c.double, y: c.double, w: c.double, h: c.double) ---
	graphics_view_ensure_visible :: proc(view: Graphics_View, x: c.double, y: c.double, w: c.double, h: c.double, x_margin: c.int, y_margin: c.int) ---
	graphics_view_set_transformation_anchor :: proc(view: Graphics_View, anchor: Graphics_View_Viewport_Anchor) ---
	graphics_view_set_resize_anchor :: proc(view: Graphics_View, anchor: Graphics_View_Viewport_Anchor) ---
	graphics_view_set_viewport :: proc(view: Graphics_View, viewport_widget: Widget) ---
	graphics_view_set_background_brush :: proc(view: Graphics_View, brush: Brush) ---
	graphics_view_set_foreground_brush :: proc(view: Graphics_View, brush: Brush) ---
	graphics_view_set_transform :: proc(view: Graphics_View, transform: Transform, is_combine: c.int) ---
	@(require_results) graphics_view_get_transform :: proc(view: Graphics_View) -> Transform ---
	graphics_view_get_items :: proc(view: Graphics_View, out_items: ^[^]Graphics_Item, out_count: ^c.int) ---
	@(require_results) graphics_view_get_item_at :: proc(view: Graphics_View, x: c.int, y: c.int) -> Graphics_Item ---
	@(require_results) graphics_view_get_viewport :: proc(view: Graphics_View) -> Widget ---

	/* QGraphicsItem (base operations) */

	graphics_item_set_pos :: proc(item: Graphics_Item, x: c.double, y: c.double) ---
	graphics_item_get_pos :: proc(item: Graphics_Item, x: ^c.double, y: ^c.double) ---
	graphics_item_set_z_value :: proc(item: Graphics_Item, z: c.double) ---
	@(require_results) graphics_item_get_z_value :: proc(item: Graphics_Item) -> c.double ---
	graphics_item_set_rotation :: proc(item: Graphics_Item, angle: c.double) ---
	@(require_results) graphics_item_get_rotation :: proc(item: Graphics_Item) -> c.double ---
	graphics_item_set_scale :: proc(item: Graphics_Item, scale: c.double) ---
	@(require_results) graphics_item_get_scale :: proc(item: Graphics_Item) -> c.double ---
	graphics_item_set_opacity :: proc(item: Graphics_Item, opacity: c.double) ---
	@(require_results) graphics_item_get_opacity :: proc(item: Graphics_Item) -> c.double ---
	graphics_item_set_visible :: proc(item: Graphics_Item, is_visible: c.int) ---
	@(require_results) graphics_item_is_visible :: proc(item: Graphics_Item) -> c.int ---
	graphics_item_set_enabled :: proc(item: Graphics_Item, is_enabled: c.int) ---
	@(require_results) graphics_item_is_enabled :: proc(item: Graphics_Item) -> c.int ---
	graphics_item_set_selected :: proc(item: Graphics_Item, is_selected: c.int) ---
	@(require_results) graphics_item_is_selected :: proc(item: Graphics_Item) -> c.int ---
	graphics_item_set_flag :: proc(item: Graphics_Item, flag: Graphics_Item_Flag, is_enabled: c.int) ---
	graphics_item_set_flags :: proc(item: Graphics_Item, flags: c.int) ---
	@(require_results) graphics_item_get_flags :: proc(item: Graphics_Item) -> c.int ---
	graphics_item_set_tool_tip :: proc(item: Graphics_Item, tooltip: cstring) ---
	@(require_results) graphics_item_get_parent_item :: proc(item: Graphics_Item) -> Graphics_Item ---
	graphics_item_set_parent_item :: proc(item: Graphics_Item, parent: Graphics_Item) ---
	graphics_item_destroy :: proc(item: Graphics_Item) ---
	graphics_item_move_by :: proc(item: Graphics_Item, dx: c.double, dy: c.double) ---
	graphics_item_get_bounding_rect :: proc(item: Graphics_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) ---
	@(require_results) graphics_item_collides_with_item :: proc(item: Graphics_Item, other: Graphics_Item) -> c.int ---
	graphics_item_set_cursor :: proc(item: Graphics_Item, shape: Cursor_Shape) ---
	graphics_item_unset_cursor :: proc(item: Graphics_Item) ---
	graphics_item_set_transform :: proc(item: Graphics_Item, transform: Transform, is_combine: c.int) ---
	@(require_results) graphics_item_get_transform :: proc(item: Graphics_Item) -> Transform ---
	graphics_item_set_transform_origin_point :: proc(item: Graphics_Item, x: c.double, y: c.double) ---
	graphics_item_map_to_scene :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) ---
	graphics_item_map_from_scene :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) ---
	graphics_item_map_to_parent :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) ---
	graphics_item_map_from_parent :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) ---
	@(require_results) graphics_item_collides_with_path :: proc(item: Graphics_Item, path: Painter_Path) -> c.int ---
	@(require_results) graphics_item_contains :: proc(item: Graphics_Item, x: c.double, y: c.double) -> c.int ---
	@(require_results) graphics_item_get_shape :: proc(item: Graphics_Item) -> Painter_Path ---
	graphics_item_update :: proc(item: Graphics_Item) ---
	graphics_item_get_child_items :: proc(item: Graphics_Item, out_items: ^[^]Graphics_Item, out_count: ^c.int) ---
	graphics_item_get_scene_bounding_rect :: proc(item: Graphics_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) ---
	graphics_item_set_accept_hover_events :: proc(item: Graphics_Item, is_enabled: c.int) ---
	graphics_item_set_accept_drops :: proc(item: Graphics_Item, is_enabled: c.int) ---

	/* QGraphicsRectItem */

	@(require_results) graphics_rect_item_create :: proc(x: c.double, y: c.double, w: c.double, h: c.double, parent: Graphics_Item) -> Graphics_Rect_Item ---
	graphics_rect_item_set_rect :: proc(item: Graphics_Rect_Item, x: c.double, y: c.double, w: c.double, h: c.double) ---
	graphics_rect_item_get_rect :: proc(item: Graphics_Rect_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) ---
	graphics_rect_item_set_pen :: proc(item: Graphics_Rect_Item, pen: Pen) ---
	graphics_rect_item_set_brush :: proc(item: Graphics_Rect_Item, brush: Brush) ---

	/* QGraphicsEllipseItem */

	@(require_results) graphics_ellipse_item_create :: proc(x: c.double, y: c.double, w: c.double, h: c.double, parent: Graphics_Item) -> Graphics_Ellipse_Item ---
	graphics_ellipse_item_set_rect :: proc(item: Graphics_Ellipse_Item, x: c.double, y: c.double, w: c.double, h: c.double) ---
	graphics_ellipse_item_get_rect :: proc(item: Graphics_Ellipse_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) ---
	graphics_ellipse_item_set_pen :: proc(item: Graphics_Ellipse_Item, pen: Pen) ---
	graphics_ellipse_item_set_brush :: proc(item: Graphics_Ellipse_Item, brush: Brush) ---
	graphics_ellipse_item_set_start_angle :: proc(item: Graphics_Ellipse_Item, angle: c.int) ---
	graphics_ellipse_item_set_span_angle :: proc(item: Graphics_Ellipse_Item, angle: c.int) ---

	/* QGraphicsTextItem */

	@(require_results) graphics_text_item_create :: proc(text: cstring, parent: Graphics_Item) -> Graphics_Text_Item ---
	graphics_text_item_set_text :: proc(item: Graphics_Text_Item, text: cstring) ---
	graphics_text_item_set_html :: proc(item: Graphics_Text_Item, html: cstring) ---
	@(require_results) graphics_text_item_get_text :: proc(item: Graphics_Text_Item) -> cstring ---
	graphics_text_item_set_font :: proc(item: Graphics_Text_Item, font: Font_Handle) ---
	graphics_text_item_set_default_text_colour :: proc(item: Graphics_Text_Item, r: c.int, g: c.int, b: c.int, a: c.int) ---
	graphics_text_item_set_text_width :: proc(item: Graphics_Text_Item, width: c.double) ---
	@(require_results) graphics_text_item_get_text_width :: proc(item: Graphics_Text_Item) -> c.double ---
	graphics_text_item_set_text_interaction_flags :: proc(item: Graphics_Text_Item, flags: Text_Interaction_Flag) ---

	/* QGraphicsLineItem */

	@(require_results) graphics_line_item_create :: proc(x1: c.double, y1: c.double, x2: c.double, y2: c.double, parent: Graphics_Item) -> Graphics_Line_Item ---
	graphics_line_item_set_line :: proc(item: Graphics_Line_Item, x1: c.double, y1: c.double, x2: c.double, y2: c.double) ---
	graphics_line_item_set_pen :: proc(item: Graphics_Line_Item, pen: Pen) ---

	/* QGraphicsPixmapItem */

	@(require_results) graphics_pixmap_item_create :: proc(pixmap: Pixmap, parent: Graphics_Item) -> Graphics_Pixmap_Item ---
	graphics_pixmap_item_set_pixmap :: proc(item: Graphics_Pixmap_Item, pixmap: Pixmap) ---
	graphics_pixmap_item_set_offset :: proc(item: Graphics_Pixmap_Item, x: c.double, y: c.double) ---
	graphics_pixmap_item_set_transformation_mode :: proc(item: Graphics_Pixmap_Item, mode: Transformation_Mode) ---
	graphics_pixmap_item_set_shape_mode :: proc(item: Graphics_Pixmap_Item, mode: Graphics_Pixmap_Item_Shape_Mode) ---

	/* QGraphicsPathItem */

	@(require_results) graphics_path_item_create :: proc(path: Painter_Path, parent: Graphics_Item) -> Graphics_Path_Item ---
	graphics_path_item_set_path :: proc(item: Graphics_Path_Item, path: Painter_Path) ---
	graphics_path_item_set_pen :: proc(item: Graphics_Path_Item, pen: Pen) ---
	graphics_path_item_set_brush :: proc(item: Graphics_Path_Item, brush: Brush) ---

	/* QGraphicsPolygonItem */

	@(require_results) graphics_polygon_item_create :: proc(polygon_f: Polygon_F, parent: Graphics_Item) -> Graphics_Polygon_Item ---
	graphics_polygon_item_set_polygon :: proc(item: Graphics_Polygon_Item, polygon_f: Polygon_F) ---
	graphics_polygon_item_set_pen :: proc(item: Graphics_Polygon_Item, pen: Pen) ---
	graphics_polygon_item_set_brush :: proc(item: Graphics_Polygon_Item, brush: Brush) ---
	graphics_polygon_item_set_fill_rule :: proc(item: Graphics_Polygon_Item, fill_rule: Fill_Rule) ---
	@(require_results) graphics_polygon_item_get_fill_rule :: proc(item: Graphics_Polygon_Item) -> Fill_Rule ---

	/* QGraphicsSimpleTextItem */

	@(require_results) graphics_simple_text_item_create :: proc(text: cstring, parent: Graphics_Item) -> Graphics_Simple_Text_Item ---
	graphics_simple_text_item_set_text :: proc(item: Graphics_Simple_Text_Item, text: cstring) ---
	@(require_results) graphics_simple_text_item_get_text :: proc(item: Graphics_Simple_Text_Item) -> cstring ---
	graphics_simple_text_item_set_font :: proc(item: Graphics_Simple_Text_Item, font: Font_Handle) ---
	graphics_simple_text_item_set_pen :: proc(item: Graphics_Simple_Text_Item, pen: Pen) ---
	graphics_simple_text_item_set_brush :: proc(item: Graphics_Simple_Text_Item, brush: Brush) ---

	/* QGraphicsItemGroup */

	@(require_results) graphics_item_group_create :: proc(parent: Graphics_Item) -> Graphics_Item_Group ---
	graphics_item_group_add_to_group :: proc(group: Graphics_Item_Group, item: Graphics_Item) ---
	graphics_item_group_remove_from_group :: proc(group: Graphics_Item_Group, item: Graphics_Item) ---

	/* QGraphicsProxyWidget */

	@(require_results) graphics_proxy_widget_create :: proc(parent: Graphics_Item) -> Graphics_Proxy_Widget ---
	graphics_proxy_widget_set_widget :: proc(proxy: Graphics_Proxy_Widget, widget: Widget) ---
	@(require_results) graphics_proxy_widget_get_widget :: proc(proxy: Graphics_Proxy_Widget) -> Widget ---

	/* QGraphicsWidget */

	@(require_results) graphics_widget_create :: proc(parent: Graphics_Item) -> Graphics_Widget ---
	graphics_widget_set_layout :: proc(widget: Graphics_Widget, layout: rawptr) ---
	@(require_results) graphics_widget_get_layout :: proc(widget: Graphics_Widget) -> rawptr ---
	graphics_widget_set_geometry :: proc(widget: Graphics_Widget, x: c.double, y: c.double, w: c.double, h: c.double) ---
	graphics_widget_set_minimum_size :: proc(widget: Graphics_Widget, w: c.double, h: c.double) ---
	graphics_widget_set_maximum_size :: proc(widget: Graphics_Widget, w: c.double, h: c.double) ---
	graphics_widget_set_preferred_size :: proc(widget: Graphics_Widget, w: c.double, h: c.double) ---
	graphics_widget_set_size_policy :: proc(widget: Graphics_Widget, horizontal: Size_Policy, vertical: Size_Policy) ---
	graphics_widget_set_window_title :: proc(widget: Graphics_Widget, title: cstring) ---
	graphics_widget_set_window_flags :: proc(widget: Graphics_Widget, flags: c.int) ---
	graphics_widget_set_palette :: proc(widget: Graphics_Widget, palette: Palette) ---
	graphics_widget_set_font :: proc(widget: Graphics_Widget, font: Font_Handle) ---
	graphics_widget_set_style :: proc(widget: Graphics_Widget, style: Style) ---
	graphics_widget_resize :: proc(widget: Graphics_Widget, w: c.double, h: c.double) ---
	graphics_widget_set_auto_fill_background :: proc(widget: Graphics_Widget, is_enabled: c.int) ---

	/* QGraphicsLinearLayout */

	@(require_results) graphics_linear_layout_create :: proc(orientation: Orientation, parent: rawptr) -> Graphics_Linear_Layout ---
	graphics_linear_layout_destroy :: proc(layout: Graphics_Linear_Layout) ---
	graphics_linear_layout_add_item :: proc(layout: Graphics_Linear_Layout, item: rawptr) ---
	graphics_linear_layout_insert_item :: proc(layout: Graphics_Linear_Layout, index: c.int, item: rawptr) ---
	graphics_linear_layout_remove_item :: proc(layout: Graphics_Linear_Layout, item: rawptr) ---
	graphics_linear_layout_add_stretch :: proc(layout: Graphics_Linear_Layout, stretch: c.int) ---
	graphics_linear_layout_set_spacing :: proc(layout: Graphics_Linear_Layout, spacing: c.double) ---
	@(require_results) graphics_linear_layout_get_spacing :: proc(layout: Graphics_Linear_Layout) -> c.double ---
	graphics_linear_layout_set_alignment :: proc(layout: Graphics_Linear_Layout, item: rawptr, alignment: Alignment) ---
	@(require_results) graphics_linear_layout_get_count :: proc(layout: Graphics_Linear_Layout) -> c.int ---

	/* QGraphicsGridLayout */

	@(require_results) graphics_grid_layout_create :: proc(parent: rawptr) -> Graphics_Grid_Layout ---
	graphics_grid_layout_destroy :: proc(layout: Graphics_Grid_Layout) ---
	graphics_grid_layout_add_item :: proc(layout: Graphics_Grid_Layout, item: rawptr, row: c.int, col: c.int, row_span: c.int, col_span: c.int, alignment: Alignment) ---
	graphics_grid_layout_set_row_spacing :: proc(layout: Graphics_Grid_Layout, row: c.int, spacing: c.double) ---
	graphics_grid_layout_set_column_spacing :: proc(layout: Graphics_Grid_Layout, col: c.int, spacing: c.double) ---
	graphics_grid_layout_set_row_stretch_factor :: proc(layout: Graphics_Grid_Layout, row: c.int, stretch: c.int) ---
	graphics_grid_layout_set_column_stretch_factor :: proc(layout: Graphics_Grid_Layout, col: c.int, stretch: c.int) ---
	graphics_grid_layout_set_row_minimum_height :: proc(layout: Graphics_Grid_Layout, row: c.int, height: c.double) ---
	graphics_grid_layout_set_column_minimum_width :: proc(layout: Graphics_Grid_Layout, col: c.int, width: c.double) ---
	graphics_grid_layout_set_spacing :: proc(layout: Graphics_Grid_Layout, spacing: c.double) ---
	@(require_results) graphics_grid_layout_get_count :: proc(layout: Graphics_Grid_Layout) -> c.int ---

	/* QGraphicsEffect (base + subclasses) */

	graphics_effect_set_enabled :: proc(effect: Graphics_Effect, is_enabled: c.int) ---
	@(require_results) graphics_effect_is_enabled :: proc(effect: Graphics_Effect) -> c.int ---

	@(require_results) graphics_blur_effect_create :: proc(parent: rawptr) -> Graphics_Blur_Effect ---
	graphics_blur_effect_destroy :: proc(effect: Graphics_Blur_Effect) ---
	graphics_blur_effect_set_blur_radius :: proc(effect: Graphics_Blur_Effect, radius: c.double) ---
	@(require_results) graphics_blur_effect_get_blur_radius :: proc(effect: Graphics_Blur_Effect) -> c.double ---
	graphics_blur_effect_set_blur_hints :: proc(effect: Graphics_Blur_Effect, hints: Graphics_Blur_Hint) ---
	graphics_blur_effect_connect_blur_radius_changed :: proc(effect: Graphics_Blur_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id ---

	@(require_results) graphics_colourize_effect_create :: proc(parent: rawptr) -> Graphics_Colourize_Effect ---
	graphics_colourize_effect_destroy :: proc(effect: Graphics_Colourize_Effect) ---
	graphics_colourize_effect_set_colour :: proc(effect: Graphics_Colourize_Effect, r: c.int, g: c.int, b: c.int, a: c.int) ---
	graphics_colourize_effect_get_colour :: proc(effect: Graphics_Colourize_Effect, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	graphics_colourize_effect_set_strength :: proc(effect: Graphics_Colourize_Effect, strength: c.double) ---
	@(require_results) graphics_colourize_effect_get_strength :: proc(effect: Graphics_Colourize_Effect) -> c.double ---
	graphics_colourize_effect_connect_colour_changed :: proc(effect: Graphics_Colourize_Effect, callback: Callback, user_data: rawptr) -> Connection_Id ---
	graphics_colourize_effect_connect_strength_changed :: proc(effect: Graphics_Colourize_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id ---

	@(require_results) graphics_drop_shadow_effect_create :: proc(parent: rawptr) -> Graphics_Drop_Shadow_Effect ---
	graphics_drop_shadow_effect_destroy :: proc(effect: Graphics_Drop_Shadow_Effect) ---
	graphics_drop_shadow_effect_set_blur_radius :: proc(effect: Graphics_Drop_Shadow_Effect, radius: c.double) ---
	@(require_results) graphics_drop_shadow_effect_get_blur_radius :: proc(effect: Graphics_Drop_Shadow_Effect) -> c.double ---
	graphics_drop_shadow_effect_set_colour :: proc(effect: Graphics_Drop_Shadow_Effect, r: c.int, g: c.int, b: c.int, a: c.int) ---
	graphics_drop_shadow_effect_get_colour :: proc(effect: Graphics_Drop_Shadow_Effect, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) ---
	graphics_drop_shadow_effect_set_offset :: proc(effect: Graphics_Drop_Shadow_Effect, dx: c.double, dy: c.double) ---
	graphics_drop_shadow_effect_get_offset :: proc(effect: Graphics_Drop_Shadow_Effect, dx: ^c.double, dy: ^c.double) ---
	graphics_drop_shadow_effect_connect_blur_radius_changed :: proc(effect: Graphics_Drop_Shadow_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id ---
	graphics_drop_shadow_effect_connect_colour_changed :: proc(effect: Graphics_Drop_Shadow_Effect, callback: Callback, user_data: rawptr) -> Connection_Id ---
	graphics_drop_shadow_effect_connect_offset_changed :: proc(effect: Graphics_Drop_Shadow_Effect, callback: Callback, user_data: rawptr) -> Connection_Id ---

	@(require_results) graphics_opacity_effect_create :: proc(parent: rawptr) -> Graphics_Opacity_Effect ---
	graphics_opacity_effect_destroy :: proc(effect: Graphics_Opacity_Effect) ---
	graphics_opacity_effect_set_opacity :: proc(effect: Graphics_Opacity_Effect, opacity: c.double) ---
	@(require_results) graphics_opacity_effect_get_opacity :: proc(effect: Graphics_Opacity_Effect) -> c.double ---
	graphics_opacity_effect_set_opacity_mask :: proc(effect: Graphics_Opacity_Effect, brush: Brush) ---
	graphics_opacity_effect_connect_opacity_changed :: proc(effect: Graphics_Opacity_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id ---

	/* QStyle / QStyleFactory */

	@(require_results) style_get_keys :: proc(keys_out: ^[^]cstring) -> c.int ---
	style_free_keys :: proc(keys: [^]cstring, count: c.int) ---
	@(require_results) application_get_style :: proc(app: Application) -> Style ---
	@(require_results) style_get_pixel_metric :: proc(style: Style, metric: Style_Pixel_Metric, widget: Widget) -> c.int ---
	@(require_results) style_get_name :: proc(style: Style) -> cstring ---

	/* QProxyStyle */

	@(require_results) proxy_style_create :: proc(base_style_key: cstring) -> Proxy_Style ---
	proxy_style_destroy :: proc(style: Proxy_Style) ---
	application_set_style_object :: proc(style: Proxy_Style) ---

	/* QScroller / QScrollerProperties */

	@(require_results) scroller_grab :: proc(target: rawptr, gesture_type: Scroller_Gesture_Type) -> Scroller ---
	@(require_results) scroller_get_scroller :: proc(target: rawptr) -> Scroller ---
	scroller_set_snap_positions_x :: proc(scroller: Scroller, first: c.double, interval: c.double) ---
	scroller_set_snap_positions_y :: proc(scroller: Scroller, first: c.double, interval: c.double) ---
	@(require_results) scroller_get_state :: proc(scroller: Scroller) -> Scroller_State ---
	scroller_stop :: proc(scroller: Scroller) ---

	@(require_results) scroller_properties_create :: proc(scroller: Scroller) -> Scroller_Properties ---
	scroller_properties_destroy :: proc(props: Scroller_Properties) ---
	scroller_properties_set_metric :: proc(props: Scroller_Properties, metric: Scroller_Metric, value: c.double) ---
	@(require_results) scroller_properties_get_metric :: proc(props: Scroller_Properties, metric: Scroller_Metric) -> c.double ---
	scroller_properties_apply :: proc(props: Scroller_Properties, scroller: Scroller) ---

	/* QIdentityProxyModel */

	@(require_results) identity_proxy_model_create :: proc(parent: rawptr) -> Identity_Proxy_Model ---
	identity_proxy_model_destroy :: proc(model: Identity_Proxy_Model) ---
	identity_proxy_model_set_source_model :: proc(model: Identity_Proxy_Model, source: rawptr) ---
	@(require_results) identity_proxy_model_get_source_model :: proc(model: Identity_Proxy_Model) -> rawptr ---
	@(require_results) identity_proxy_model_map_to_source :: proc(model: Identity_Proxy_Model, proxy_index: Model_Index) -> Model_Index ---
	@(require_results) identity_proxy_model_map_from_source :: proc(model: Identity_Proxy_Model, source_index: Model_Index) -> Model_Index ---

	/* QTransposeProxyModel */

	@(require_results) transpose_proxy_model_create :: proc(parent: rawptr) -> Transpose_Proxy_Model ---
	transpose_proxy_model_destroy :: proc(model: Transpose_Proxy_Model) ---
	transpose_proxy_model_set_source_model :: proc(model: Transpose_Proxy_Model, source: rawptr) ---
	@(require_results) transpose_proxy_model_get_source_model :: proc(model: Transpose_Proxy_Model) -> rawptr ---

	/* QConcatenateTablesProxyModel */

	@(require_results) concatenate_tables_proxy_model_create :: proc(parent: rawptr) -> Concatenate_Tables_Proxy_Model ---
	concatenate_tables_proxy_model_destroy :: proc(model: Concatenate_Tables_Proxy_Model) ---
	concatenate_tables_proxy_model_add_source_model :: proc(model: Concatenate_Tables_Proxy_Model, source: rawptr) ---
	concatenate_tables_proxy_model_remove_source_model :: proc(model: Concatenate_Tables_Proxy_Model, source: rawptr) ---
	@(require_results) concatenate_tables_proxy_model_map_to_source :: proc(model: Concatenate_Tables_Proxy_Model, proxy_index: Model_Index) -> Model_Index ---
	@(require_results) concatenate_tables_proxy_model_map_from_source :: proc(model: Concatenate_Tables_Proxy_Model, source_index: Model_Index, source_model: rawptr) -> Model_Index ---

	/* QSignalMapper */

	@(require_results) signal_mapper_create :: proc(parent: rawptr) -> Signal_Mapper ---
	signal_mapper_destroy :: proc(mapper: Signal_Mapper) ---
	signal_mapper_set_mapping_int :: proc(mapper: Signal_Mapper, sender: rawptr, id: c.int) ---
	signal_mapper_set_mapping_string :: proc(mapper: Signal_Mapper, sender: rawptr, text: cstring) ---
	signal_mapper_set_mapping_widget :: proc(mapper: Signal_Mapper, sender: rawptr, widget: Widget) ---
	signal_mapper_remove_mappings :: proc(mapper: Signal_Mapper, sender: rawptr) ---
	signal_mapper_map :: proc(mapper: Signal_Mapper, sender: rawptr) ---
	signal_mapper_connect_mapped_int :: proc(mapper: Signal_Mapper, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	signal_mapper_connect_mapped_string :: proc(mapper: Signal_Mapper, callback: String_Callback, user_data: rawptr) -> Connection_Id ---

	/* QLockFile */

	@(require_results) lock_file_create :: proc(file_path: cstring) -> Lock_File ---
	lock_file_destroy :: proc(lock: Lock_File) ---
	@(require_results) lock_file_lock :: proc(lock: Lock_File) -> c.int ---
	@(require_results) lock_file_try_lock :: proc(lock: Lock_File, timeout_ms: c.int) -> c.int ---
	lock_file_unlock :: proc(lock: Lock_File) ---
	@(require_results) lock_file_is_locked :: proc(lock: Lock_File) -> c.int ---
	@(require_results) lock_file_get_error :: proc(lock: Lock_File) -> Lock_File_Error ---
	lock_file_set_stale_lock_time :: proc(lock: Lock_File, msecs: c.int) ---
	@(require_results) lock_file_get_stale_lock_time :: proc(lock: Lock_File) -> c.int ---
	@(require_results) lock_file_remove_stale_lock_file :: proc(lock: Lock_File) -> c.int ---

	/* QTimeLine */

	@(require_results) time_line_create :: proc(duration_ms: c.int, parent: rawptr) -> Time_Line ---
	time_line_destroy :: proc(timeline: Time_Line) ---
	time_line_start :: proc(timeline: Time_Line) ---
	time_line_stop :: proc(timeline: Time_Line) ---
	time_line_resume :: proc(timeline: Time_Line) ---
	time_line_set_paused :: proc(timeline: Time_Line, is_paused: c.int) ---
	@(require_results) time_line_get_state :: proc(timeline: Time_Line) -> Time_Line_State ---
	time_line_set_duration :: proc(timeline: Time_Line, duration_ms: c.int) ---
	@(require_results) time_line_get_duration :: proc(timeline: Time_Line) -> c.int ---
	time_line_set_frame_range :: proc(timeline: Time_Line, start: c.int, end: c.int) ---
	@(require_results) time_line_get_start_frame :: proc(timeline: Time_Line) -> c.int ---
	@(require_results) time_line_get_end_frame :: proc(timeline: Time_Line) -> c.int ---
	@(require_results) time_line_get_current_frame :: proc(timeline: Time_Line) -> c.int ---
	@(require_results) time_line_get_current_value :: proc(timeline: Time_Line) -> c.double ---
	time_line_set_current_time :: proc(timeline: Time_Line, msec: c.int) ---
	@(require_results) time_line_get_current_time :: proc(timeline: Time_Line) -> c.int ---
	time_line_set_loop_count :: proc(timeline: Time_Line, count: c.int) ---
	@(require_results) time_line_get_loop_count :: proc(timeline: Time_Line) -> c.int ---
	time_line_set_direction :: proc(timeline: Time_Line, direction: Time_Line_Direction) ---
	@(require_results) time_line_get_direction :: proc(timeline: Time_Line) -> Time_Line_Direction ---
	time_line_set_easing_curve :: proc(timeline: Time_Line, curve_type: Easing_Curve) ---
	time_line_set_update_interval :: proc(timeline: Time_Line, interval_ms: c.int) ---
	time_line_connect_value_changed :: proc(timeline: Time_Line, callback: Double_Callback, user_data: rawptr) -> Connection_Id ---
	time_line_connect_frame_changed :: proc(timeline: Time_Line, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	time_line_connect_state_changed :: proc(timeline: Time_Line, callback: Int_Callback, user_data: rawptr) -> Connection_Id ---
	time_line_connect_finished :: proc(timeline: Time_Line, callback: Callback, user_data: rawptr) -> Connection_Id ---

	/* QCalendar */

	@(require_results) calendar_create :: proc() -> Calendar ---
	@(require_results) calendar_create_with_system :: proc(system: Calendar_System) -> Calendar ---
	calendar_destroy :: proc(calendar: Calendar) ---
	@(require_results) calendar_is_valid :: proc(calendar: Calendar) -> c.int ---
	@(require_results) calendar_get_days_in_month :: proc(calendar: Calendar, month: c.int, year: c.int) -> c.int ---
	@(require_results) calendar_get_days_in_year :: proc(calendar: Calendar, year: c.int) -> c.int ---
	@(require_results) calendar_get_months_in_year :: proc(calendar: Calendar, year: c.int) -> c.int ---
	@(require_results) calendar_is_date_valid :: proc(calendar: Calendar, year: c.int, month: c.int, day: c.int) -> c.int ---
	@(require_results) calendar_is_gregorian :: proc(calendar: Calendar) -> c.int ---
	@(require_results) calendar_is_leap_year :: proc(calendar: Calendar, year: c.int) -> c.int ---
	@(require_results) calendar_get_maximum_days_in_month :: proc(calendar: Calendar) -> c.int ---
	@(require_results) calendar_get_maximum_months_in_year :: proc(calendar: Calendar) -> c.int ---

	/* QRandomGenerator */

	@(require_results) random_generator_generate :: proc() -> c.uint ---
	@(require_results) random_generator_generate_bounded_int :: proc(highest: c.int) -> c.uint ---
	@(require_results) random_generator_generate_bounded_range :: proc(lowest: c.int, highest: c.int) -> c.uint ---
	@(require_results) random_generator_generate_double :: proc() -> c.double ---

	/* QEventLoop */

	@(require_results) event_loop_create :: proc(parent: rawptr) -> Event_Loop ---
	event_loop_destroy :: proc(loop: Event_Loop) ---
	@(require_results) event_loop_exec :: proc(loop: Event_Loop, flags: Event_Loop_Flag) -> c.int ---
	event_loop_exit :: proc(loop: Event_Loop, return_code: c.int) ---
	event_loop_quit :: proc(loop: Event_Loop) ---
	@(require_results) event_loop_is_running :: proc(loop: Event_Loop) -> c.int ---
	event_loop_process_events :: proc(loop: Event_Loop, flags: Event_Loop_Flag) ---
	event_loop_wake_up :: proc(loop: Event_Loop) ---

	/* QSysInfo */

	@(require_results) sys_info_get_product_type :: proc() -> cstring ---
	@(require_results) sys_info_get_product_version :: proc() -> cstring ---
	@(require_results) sys_info_get_pretty_product_name :: proc() -> cstring ---
	@(require_results) sys_info_get_kernel_type :: proc() -> cstring ---
	@(require_results) sys_info_get_kernel_version :: proc() -> cstring ---
	@(require_results) sys_info_get_cpu_architecture :: proc() -> cstring ---
	@(require_results) sys_info_get_build_abi :: proc() -> cstring ---
	@(require_results) sys_info_get_build_cpu_architecture :: proc() -> cstring ---
	@(require_results) sys_info_get_machine_host_name :: proc() -> cstring ---
	@(require_results) sys_info_get_machine_unique_id :: proc() -> cstring ---
	@(require_results) sys_info_get_boot_unique_id :: proc() -> cstring ---

	/* QLibrary */

	@(require_results) library_create :: proc(file_path: cstring, parent: rawptr) -> Library ---
	library_destroy :: proc(library: Library) ---
	@(require_results) library_load :: proc(library: Library) -> c.int ---
	@(require_results) library_unload :: proc(library: Library) -> c.int ---
	@(require_results) library_is_loaded :: proc(library: Library) -> c.int ---
	@(require_results) library_resolve :: proc(library: Library, symbol: cstring) -> rawptr ---
	@(require_results) library_get_error_string :: proc(library: Library) -> cstring ---
	library_set_file_name :: proc(library: Library, file_path: cstring) ---
	@(require_results) library_get_file_name :: proc(library: Library) -> cstring ---
	library_set_load_hints :: proc(library: Library, hints: Library_Load_Hint) ---
	@(require_results) library_get_load_hints :: proc(library: Library) -> c.int ---
	@(require_results) library_is_library :: proc(file_path: cstring) -> c.int ---

	/* QSharedMemory */

	@(require_results) shared_memory_create :: proc(key: cstring, parent: rawptr) -> Shared_Memory ---
	shared_memory_destroy :: proc(shm: Shared_Memory) ---
	@(require_results) shared_memory_create_segment :: proc(shm: Shared_Memory, size: c.int, mode: Shared_Memory_Access_Mode) -> c.int ---
	@(require_results) shared_memory_attach :: proc(shm: Shared_Memory, mode: Shared_Memory_Access_Mode) -> c.int ---
	@(require_results) shared_memory_detach :: proc(shm: Shared_Memory) -> c.int ---
	@(require_results) shared_memory_is_attached :: proc(shm: Shared_Memory) -> c.int ---
	@(require_results) shared_memory_get_data :: proc(shm: Shared_Memory) -> rawptr ---
	@(require_results) shared_memory_get_size :: proc(shm: Shared_Memory) -> c.int ---
	@(require_results) shared_memory_lock :: proc(shm: Shared_Memory) -> c.int ---
	@(require_results) shared_memory_unlock :: proc(shm: Shared_Memory) -> c.int ---
	@(require_results) shared_memory_get_error_string :: proc(shm: Shared_Memory) -> cstring ---
	@(require_results) shared_memory_get_error :: proc(shm: Shared_Memory) -> Shared_Memory_Error ---
	shared_memory_set_key :: proc(shm: Shared_Memory, key: cstring) ---
	shared_memory_set_native_key :: proc(shm: Shared_Memory, key: cstring) ---
	@(require_results) shared_memory_get_native_key :: proc(shm: Shared_Memory) -> cstring ---

	/* QSystemSemaphore */

	@(require_results) system_semaphore_create :: proc(key: cstring, initial_value: c.int, mode: System_Semaphore_Access_Mode) -> System_Semaphore ---
	system_semaphore_destroy :: proc(sem: System_Semaphore) ---
	@(require_results) system_semaphore_acquire :: proc(sem: System_Semaphore) -> c.int ---
	@(require_results) system_semaphore_release :: proc(sem: System_Semaphore, count: c.int) -> c.int ---
	@(require_results) system_semaphore_get_error_string :: proc(sem: System_Semaphore) -> cstring ---
	@(require_results) system_semaphore_get_error :: proc(sem: System_Semaphore) -> System_Semaphore_Error ---
	system_semaphore_set_key :: proc(sem: System_Semaphore, key: cstring, initial_value: c.int, mode: System_Semaphore_Access_Mode) ---

	/* QDeadlineTimer */

	@(require_results) deadline_timer_create :: proc(msecs: c.longlong, timer_type: Timer_Type) -> Deadline_Timer ---
	@(require_results) deadline_timer_create_forever :: proc(timer_type: Timer_Type) -> Deadline_Timer ---
	deadline_timer_destroy :: proc(timer: Deadline_Timer) ---
	@(require_results) deadline_timer_has_expired :: proc(timer: Deadline_Timer) -> c.int ---
	@(require_results) deadline_timer_is_forever :: proc(timer: Deadline_Timer) -> c.int ---
	@(require_results) deadline_timer_get_remaining_time :: proc(timer: Deadline_Timer) -> c.longlong ---
	@(require_results) deadline_timer_get_remaining_time_nsecs :: proc(timer: Deadline_Timer) -> c.longlong ---
	@(require_results) deadline_timer_get_deadline :: proc(timer: Deadline_Timer) -> c.longlong ---
	@(require_results) deadline_timer_get_deadline_nsecs :: proc(timer: Deadline_Timer) -> c.longlong ---
	deadline_timer_set_remaining_time :: proc(timer: Deadline_Timer, msecs: c.longlong, timer_type: Timer_Type) ---
	deadline_timer_set_deadline :: proc(timer: Deadline_Timer, msecs: c.longlong, timer_type: Timer_Type) ---
	deadline_timer_set_timer_type :: proc(timer: Deadline_Timer, timer_type: Timer_Type) ---
	@(require_results) deadline_timer_get_timer_type :: proc(timer: Deadline_Timer) -> c.int ---

	/* QCollator */

	@(require_results) collator_create :: proc(locale_name: cstring) -> Collator ---
	collator_destroy :: proc(collator: Collator) ---
	collator_set_locale :: proc(collator: Collator, locale_name: cstring) ---
	@(require_results) collator_get_locale :: proc(collator: Collator) -> cstring ---
	collator_set_case_sensitivity :: proc(collator: Collator, cs: c.int) ---
	@(require_results) collator_get_case_sensitivity :: proc(collator: Collator) -> c.int ---
	collator_set_numeric_mode :: proc(collator: Collator, is_on: c.int) ---
	@(require_results) collator_is_numeric_mode :: proc(collator: Collator) -> c.int ---
	collator_set_ignore_punctuation :: proc(collator: Collator, is_on: c.int) ---
	@(require_results) collator_does_ignore_punctuation :: proc(collator: Collator) -> c.int ---
	@(require_results) collator_compare :: proc(collator: Collator, s1: cstring, s2: cstring) -> c.int ---

	/* QPdfWriter */

	@(require_results) pdf_writer_create :: proc(filename: cstring) -> Pdf_Writer ---
	pdf_writer_destroy :: proc(writer: Pdf_Writer) ---
	pdf_writer_set_title :: proc(writer: Pdf_Writer, title: cstring) ---
	@(require_results) pdf_writer_get_title :: proc(writer: Pdf_Writer) -> cstring ---
	pdf_writer_set_creator :: proc(writer: Pdf_Writer, creator: cstring) ---
	@(require_results) pdf_writer_get_creator :: proc(writer: Pdf_Writer) -> cstring ---
	@(require_results) pdf_writer_new_page :: proc(writer: Pdf_Writer) -> c.int ---
	pdf_writer_set_resolution :: proc(writer: Pdf_Writer, dpi: c.int) ---
	@(require_results) pdf_writer_get_resolution :: proc(writer: Pdf_Writer) -> c.int ---
	pdf_writer_set_page_size :: proc(writer: Pdf_Writer, page_size_id: c.int) ---
	pdf_writer_set_page_orientation :: proc(writer: Pdf_Writer, orientation: c.int) ---
	pdf_writer_set_page_margins :: proc(writer: Pdf_Writer, left: c.double, top: c.double, right: c.double, bottom: c.double, unit: c.int) ---
	pdf_writer_set_pdf_version :: proc(writer: Pdf_Writer, version: Pdf_Version) ---
	@(require_results) pdf_writer_get_pdf_version :: proc(writer: Pdf_Writer) -> c.int ---

	/* QTextStream */

	@(require_results) text_stream_create_file :: proc(filename: cstring, mode: c.int) -> Text_Stream ---
	@(require_results) text_stream_create_string :: proc() -> Text_Stream ---
	text_stream_destroy :: proc(stream: Text_Stream) ---
	text_stream_write_string :: proc(stream: Text_Stream, text: cstring) ---
	text_stream_write_int :: proc(stream: Text_Stream, value: c.int) ---
	text_stream_write_double :: proc(stream: Text_Stream, value: c.double) ---
	@(require_results) text_stream_read_line :: proc(stream: Text_Stream) -> cstring ---
	@(require_results) text_stream_read_all :: proc(stream: Text_Stream) -> cstring ---
	@(require_results) text_stream_is_at_end :: proc(stream: Text_Stream) -> c.int ---
	text_stream_flush :: proc(stream: Text_Stream) ---
	text_stream_seek :: proc(stream: Text_Stream, pos: c.longlong) ---
	@(require_results) text_stream_get_pos :: proc(stream: Text_Stream) -> c.longlong ---
	@(require_results) text_stream_get_status :: proc(stream: Text_Stream) -> Text_Stream_Status ---
	text_stream_reset_status :: proc(stream: Text_Stream) ---
	@(require_results) text_stream_get_string :: proc(stream: Text_Stream) -> cstring ---

	/* QDataStream */

	@(require_results) data_stream_create_file :: proc(filename: cstring, mode: c.int) -> Data_Stream ---
	@(require_results) data_stream_create_buffer :: proc() -> Data_Stream ---
	data_stream_destroy :: proc(stream: Data_Stream) ---
	data_stream_write_int8 :: proc(stream: Data_Stream, value: c.int) ---
	data_stream_write_int16 :: proc(stream: Data_Stream, value: c.int) ---
	data_stream_write_int32 :: proc(stream: Data_Stream, value: c.int) ---
	data_stream_write_int64 :: proc(stream: Data_Stream, value: c.longlong) ---
	data_stream_write_float :: proc(stream: Data_Stream, value: c.float) ---
	data_stream_write_double :: proc(stream: Data_Stream, value: c.double) ---
	data_stream_write_string :: proc(stream: Data_Stream, text: cstring) ---
	@(require_results) data_stream_read_int8 :: proc(stream: Data_Stream) -> c.int ---
	@(require_results) data_stream_read_int16 :: proc(stream: Data_Stream) -> c.int ---
	@(require_results) data_stream_read_int32 :: proc(stream: Data_Stream) -> c.int ---
	@(require_results) data_stream_read_int64 :: proc(stream: Data_Stream) -> c.longlong ---
	@(require_results) data_stream_read_float :: proc(stream: Data_Stream) -> c.float ---
	@(require_results) data_stream_read_double :: proc(stream: Data_Stream) -> c.double ---
	@(require_results) data_stream_read_string :: proc(stream: Data_Stream) -> cstring ---
	@(require_results) data_stream_is_at_end :: proc(stream: Data_Stream) -> c.int ---
	@(require_results) data_stream_get_status :: proc(stream: Data_Stream) -> Data_Stream_Status ---
	data_stream_reset_status :: proc(stream: Data_Stream) ---
	data_stream_set_byte_order :: proc(stream: Data_Stream, order: Data_Stream_Byte_Order) ---
	@(require_results) data_stream_get_byte_order :: proc(stream: Data_Stream) -> Data_Stream_Byte_Order ---
	data_stream_set_version :: proc(stream: Data_Stream, version: c.int) ---
	@(require_results) data_stream_get_version :: proc(stream: Data_Stream) -> c.int ---
	@(require_results) data_stream_get_buffer :: proc(stream: Data_Stream) -> rawptr ---

	/* QTextTable */

	text_table_resize :: proc(table: Text_Table, rows: c.int, cols: c.int) ---
	text_table_insert_rows :: proc(table: Text_Table, pos: c.int, count: c.int) ---
	text_table_insert_columns :: proc(table: Text_Table, pos: c.int, count: c.int) ---
	text_table_append_rows :: proc(table: Text_Table, count: c.int) ---
	text_table_append_columns :: proc(table: Text_Table, count: c.int) ---
	text_table_remove_rows :: proc(table: Text_Table, pos: c.int, count: c.int) ---
	text_table_remove_columns :: proc(table: Text_Table, pos: c.int, count: c.int) ---
	text_table_merge_cells :: proc(table: Text_Table, row: c.int, col: c.int, num_rows: c.int, num_cols: c.int) ---
	text_table_split_cell :: proc(table: Text_Table, row: c.int, col: c.int, num_rows: c.int, num_cols: c.int) ---
	@(require_results) text_table_get_rows :: proc(table: Text_Table) -> c.int ---
	@(require_results) text_table_get_columns :: proc(table: Text_Table) -> c.int ---

	/* QTextTableCell */

	@(require_results) text_table_cell_get_row :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int ---
	@(require_results) text_table_cell_get_column :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int ---
	@(require_results) text_table_cell_get_row_span :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int ---
	@(require_results) text_table_cell_get_column_span :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int ---
	@(require_results) text_table_cell_is_valid :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int ---
	@(require_results) text_table_cell_get_first_cursor_position :: proc(table: Text_Table, row: c.int, col: c.int) -> Text_Cursor ---
	@(require_results) text_table_cell_get_last_cursor_position :: proc(table: Text_Table, row: c.int, col: c.int) -> Text_Cursor ---

	/* QTextList */

	@(require_results) text_list_get_count :: proc(list: Text_List) -> c.int ---
	@(require_results) text_list_get_item :: proc(list: Text_List, index: c.int) -> Text_Block ---
	@(require_results) text_list_get_item_number :: proc(list: Text_List, block: Text_Block) -> c.int ---
	@(require_results) text_list_get_item_text :: proc(list: Text_List, block: Text_Block) -> cstring ---
	text_list_remove_item :: proc(list: Text_List, index: c.int) ---
	text_list_add :: proc(list: Text_List, block: Text_Block) ---
	text_list_set_style :: proc(list: Text_List, style: Text_List_Style) ---
	@(require_results) text_list_get_style :: proc(list: Text_List) -> Text_List_Style ---

	/* QTextFrame */

	@(require_results) text_frame_get_first_cursor_position :: proc(frame: Text_Frame) -> Text_Cursor ---
	@(require_results) text_frame_get_last_cursor_position :: proc(frame: Text_Frame) -> Text_Cursor ---
	@(require_results) text_frame_get_first_position :: proc(frame: Text_Frame) -> c.int ---
	@(require_results) text_frame_get_last_position :: proc(frame: Text_Frame) -> c.int ---
	@(require_results) text_frame_get_parent_frame :: proc(frame: Text_Frame) -> Text_Frame ---
	text_frame_get_child_frames :: proc(frame: Text_Frame, out_items: ^rawptr, out_count: ^c.int) ---

	/* QAbstractItemModel helper (CCustomItemModel) */

	@(require_results) custom_item_model_create :: proc(row_count_cb: Model_Row_Count_Callback, column_count_cb: Model_Column_Count_Callback, data_cb: Model_Data_Callback, flags_cb: Model_Flags_Callback, header_data_cb: Model_Header_Data_Callback, user_data: rawptr) -> Custom_Item_Model ---
	custom_item_model_destroy :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_reset :: proc(model: Custom_Item_Model) ---
	custom_item_model_end_reset :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_insert_rows :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_insert_rows :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_remove_rows :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_remove_rows :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_insert_columns :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_insert_columns :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_remove_columns :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_remove_columns :: proc(model: Custom_Item_Model) ---
	custom_item_model_emit_data_changed :: proc(model: Custom_Item_Model, top_left: rawptr, bottom_right: rawptr) ---
	@(require_results) custom_item_model_create_index :: proc(model: Custom_Item_Model, row: c.int, column: c.int, parent: rawptr) -> rawptr ---
}
