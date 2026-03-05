#+vet explicit-allocators
package main

import "core:c"
import "core:fmt"
import "base:runtime"

import qt "../libs/qt"

/* ── Demo state shared across callbacks ────────────────────────────── */

Demo_State :: struct {
	window: qt.Main_Window,
	// Basic Inputs tab
	basic_heading: qt.Label,
	basic_line_edit: qt.Line_Edit,
	basic_button: qt.Push_Button,
	basic_radio_label: qt.Label,
	// Numeric Inputs tab
	numeric_slider: qt.Slider,
	numeric_spin: qt.Spin_Box,
	numeric_progress: qt.Progress_Bar,
	// Text tab
	text_edit: qt.Text_Edit,
	plain_text_edit: qt.Plain_Text_Edit,
	password_edit: qt.Line_Edit,
	// Data tab
	data_list: qt.List_Widget,
	data_list_input: qt.Line_Edit,
	data_tree: qt.Tree_Widget,
	data_table: qt.Table_Widget,
	// Containers tab
	container_stacked: qt.Stacked_Widget,
	// Timer & Utility tab
	timer: qt.Timer,
	timer_label: qt.Label,
	timer_count: c.int,
	clipboard_edit: qt.Line_Edit,
	// Rich Text tab
	block_edit: qt.Text_Edit,
	block_output: qt.Label,
	// Animations tab
	anim_easing_combo: qt.Combo_Box,
	// Extra Widgets tab
	extra_lcd: qt.LCD_Number,
	// MDI tab
	mdi_area: qt.Mdi_Area,
	mdi_counter: c.int,
	// Undo tab
	undo_stack: qt.Undo_Stack,
	undo_counter: c.int,
	undo_label: qt.Label,
	// Advanced Models tab
	signal_mapper: qt.Signal_Mapper,
	time_line: qt.Time_Line,
	time_line_progress: qt.Progress_Bar,
	time_line_label: qt.Label,
}

demo_state: Demo_State

/* ── Helper to show a message in the status bar ────────────────────── */

statusbar_show :: proc"c"(message: cstring, timeout_ms: c.int = 3000) {
	qt.main_window_statusbar_show_message(demo_state.window, message, timeout_ms)
}

/* ── Basic Inputs callbacks ────────────────────────────────────────── */

basic_button_update_heading :: proc"c"(user_data: rawptr) {
	text := qt.line_edit_get_text(demo_state.basic_line_edit)
	if text != nil {
		qt.label_set_text(demo_state.basic_heading, text)
		qt.free_string(text)
	} else {
		qt.label_set_text(demo_state.basic_heading, "Button clicked!")
	}
}

basic_line_edit_apply_text :: proc"c"(user_data: rawptr) {
	text := qt.line_edit_get_text(demo_state.basic_line_edit)
	if text != nil {
		qt.label_set_text(demo_state.basic_heading, text)
		qt.free_string(text)
	}
}

basic_checkbox_sync_button :: proc"c"(value: c.int, user_data: rawptr) {
	qt.widget_set_enabled(auto_cast demo_state.basic_button, value)
}

basic_radio_update_label :: proc"c"(value: c.int, user_data: rawptr) {
	if value != 0 {
		qt.label_set_text(demo_state.basic_radio_label, cast(cstring)user_data)
	}
}

basic_combo_show_selection :: proc"c"(value: c.int, user_data: rawptr) {
	combo: qt.Combo_Box = auto_cast user_data
	text := qt.combo_box_get_current_text(combo)
	if text != nil {
		statusbar_show(text)
		qt.free_string(text)
	}
}

/* ── Numeric Inputs callbacks ──────────────────────────────────────── */

numeric_slider_sync :: proc"c"(value: c.int, user_data: rawptr) {
	qt.spin_box_set_value(demo_state.numeric_spin, value)
	qt.progress_bar_set_value(demo_state.numeric_progress, value)
}

numeric_spin_sync :: proc"c"(value: c.int, user_data: rawptr) {
	qt.slider_set_value(demo_state.numeric_slider, value)
	qt.progress_bar_set_value(demo_state.numeric_progress, value)
}

numeric_progress_advance :: proc"c"(user_data: rawptr) {
	current_value := qt.progress_bar_get_value(demo_state.numeric_progress)
	new_value := (current_value + 10) %% 110
	qt.progress_bar_set_value(demo_state.numeric_progress, new_value)
	qt.slider_set_value(demo_state.numeric_slider, new_value)
	qt.spin_box_set_value(demo_state.numeric_spin, new_value)
}

/* ── Text tab callbacks ────────────────────────────────────────────── */

text_read_text_edit :: proc"c"(user_data: rawptr) {
	text := qt.text_edit_get_plain_text(demo_state.text_edit)
	if text != nil {
		statusbar_show(text, 5000)
		qt.free_string(text)
	} else {
		statusbar_show("(empty)")
	}
}

text_read_plain_text_edit :: proc"c"(user_data: rawptr) {
	text := qt.plain_text_edit_get_plain_text(demo_state.plain_text_edit)
	if text != nil {
		statusbar_show(text, 5000)
		qt.free_string(text)
	} else {
		statusbar_show("(empty)")
	}
}

text_read_password :: proc"c"(user_data: rawptr) {
	text := qt.line_edit_get_text(demo_state.password_edit)
	if text != nil {
		statusbar_show(text, 5000)
		qt.free_string(text)
	} else {
		statusbar_show("(empty)")
	}
}

/* ── Data Views callbacks ──────────────────────────────────────────── */

data_list_add_item :: proc"c"(user_data: rawptr) {
	text := qt.line_edit_get_text(demo_state.data_list_input)
	if text != nil {
		qt.list_widget_add_item(demo_state.data_list, text)
		qt.line_edit_clear(demo_state.data_list_input)
		qt.free_string(text)
	}
}

data_list_remove_item :: proc"c"(user_data: rawptr) {
	current_row := qt.list_widget_get_current_row(demo_state.data_list)
	if current_row >= 0 {
		qt.list_widget_remove_item(demo_state.data_list, current_row)
	}
}

data_list_selection_changed :: proc"c"(value: c.int, user_data: rawptr) {
	if value >= 0 {
		text := qt.list_widget_get_item_text(demo_state.data_list, value)
		if text != nil {
			statusbar_show(text)
			qt.free_string(text)
		}
	}
}

/* ── Container callbacks ───────────────────────────────────────────── */

container_stacked_select_page :: proc"c"(value: c.int, user_data: rawptr) {
	if value >= 0 {
		qt.stacked_widget_set_current_index(demo_state.container_stacked, value)
	}
}

/* ── Dialog callbacks ──────────────────────────────────────────────── */

dialog_open_file :: proc"c"(user_data: rawptr) {
	path := qt.file_dialog_get_open_file_name(auto_cast demo_state.window, "Open File", "", "All Files (*)")
	if path != nil {
		statusbar_show(path, 5000)
		qt.free_string(path)
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_save_file :: proc"c"(user_data: rawptr) {
	path := qt.file_dialog_get_save_file_name(auto_cast demo_state.window, "Save File", "", "All Files (*)")
	if path != nil {
		statusbar_show(path, 5000)
		qt.free_string(path)
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_existing_directory :: proc"c"(user_data: rawptr) {
	path := qt.file_dialog_get_existing_directory(auto_cast demo_state.window, "Select Directory", "")
	if path != nil {
		statusbar_show(path, 5000)
		qt.free_string(path)
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_show_information :: proc"c"(user_data: rawptr) {
	_ = qt.message_box_show_information(auto_cast demo_state.window, "Information", "This is an informational message.")
}

dialog_show_warning :: proc"c"(user_data: rawptr) {
	_ = qt.message_box_show_warning(auto_cast demo_state.window, "Warning", "This is a warning message.")
}

dialog_show_critical :: proc"c"(user_data: rawptr) {
	_ = qt.message_box_show_critical(auto_cast demo_state.window, "Critical", "This is a critical error message.")
}

dialog_show_question :: proc"c"(user_data: rawptr) {
	result := qt.message_box_show_question(auto_cast demo_state.window, "Question", "Do you like this demo?")
	switch result {
	case .Yes:
		statusbar_show("You answered: Yes!")
	case .No:
		statusbar_show("You answered: No")
	case .None, .Ok, .Save, .Open, .Yes_To_All, .No_To_All,
		.Abort, .Retry, .Ignore, .Close, .Cancel, .Discard,
		.Help, .Apply, .Reset:
		statusbar_show("Dialog dismissed")
	}
}

dialog_pick_colour :: proc"c"(user_data: rawptr) {
	result_r, result_g, result_b, result_a: c.int
	is_accepted := qt.colour_dialog_get_colour(
		auto_cast demo_state.window, 255, 128, 0, 255,
		&result_r, &result_g, &result_b, &result_a,
	)
	if is_accepted != 0 {
		statusbar_show("Colour selected!")
	} else {
		statusbar_show("Colour dialog cancelled")
	}
}

dialog_pick_font :: proc"c"(user_data: rawptr) {
	family_buf: [256]u8
	point_size, weight, is_italic: c.int
	is_accepted := qt.font_dialog_get_font(
		auto_cast demo_state.window,
		raw_data(family_buf[:]), 256,
		&point_size, &weight, &is_italic,
	)
	if is_accepted != 0 {
		statusbar_show("Font selected!")
	} else {
		statusbar_show("Font dialog cancelled")
	}
}

dialog_text_input :: proc"c"(user_data: rawptr) {
	is_ok: c.int
	text := qt.input_dialog_get_text(auto_cast demo_state.window, "Text Input", "Enter text:", "", &is_ok)
	if is_ok != 0 && text != nil {
		statusbar_show(text, 5000)
		qt.free_string(text)
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_int_input :: proc"c"(user_data: rawptr) {
	is_ok: c.int
	value := qt.input_dialog_get_int(auto_cast demo_state.window, "Int Input", "Pick a number:", 42, 0, 100, 1, &is_ok)
	if is_ok != 0 {
		context = runtime.default_context()
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "You picked: %d", value)
		buf[len(msg)] = 0
		statusbar_show(cstring(raw_data(buf[:])))
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_double_input :: proc"c"(user_data: rawptr) {
	is_ok: c.int
	value := qt.input_dialog_get_double(auto_cast demo_state.window, "Double Input", "Enter a value:", 3.14, 0.0, 100.0, 2, &is_ok)
	if is_ok != 0 {
		context = runtime.default_context()
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "You entered: %.2f", value)
		buf[len(msg)] = 0
		statusbar_show(cstring(raw_data(buf[:])))
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_item_input :: proc"c"(user_data: rawptr) {
	items := [?]cstring{"Apple", "Banana", "Cherry", "Date"}
	is_ok: c.int
	text := qt.input_dialog_get_item(auto_cast demo_state.window, "Item Input", "Pick a fruit:", raw_data(items[:]), 4, 0, 0, &is_ok)
	if is_ok != 0 && text != nil {
		statusbar_show(text, 5000)
		qt.free_string(text)
	} else {
		statusbar_show("Cancelled")
	}
}

dialog_custom :: proc"c"(user_data: rawptr) {
	dlg := qt.dialog_create(auto_cast demo_state.window)
	qt.widget_set_window_title(auto_cast dlg, "Custom Dialog")
	qt.widget_resize(auto_cast dlg, 300, 150)

	dlg_layout := qt.form_layout_create(auto_cast dlg)
	name_edit := qt.line_edit_create(nil)
	qt.form_layout_add_row(dlg_layout, "Name:", auto_cast name_edit)
	age_spin := qt.spin_box_create(nil)
	qt.spin_box_set_range(age_spin, 0, 150)
	qt.form_layout_add_row(dlg_layout, "Age:", auto_cast age_spin)

	button_row := qt.widget_create(nil)
	button_layout := qt.hbox_layout_create(button_row)
	ok_btn := qt.push_button_create(nil, "OK")
	cancel_btn := qt.push_button_create(nil, "Cancel")
	qt.box_layout_add_stretch(button_layout, 1)
	qt.layout_add_widget(button_layout, auto_cast ok_btn)
	qt.layout_add_widget(button_layout, auto_cast cancel_btn)
	qt.layout_add_widget(dlg_layout, button_row)

	qt.push_button_connect_clicked(ok_btn, proc"c"(ud: rawptr) {
		qt.dialog_accept(auto_cast ud)
	}, auto_cast dlg)
	qt.push_button_connect_clicked(cancel_btn, proc"c"(ud: rawptr) {
		qt.dialog_reject(auto_cast ud)
	}, auto_cast dlg)

	is_accepted := qt.dialog_exec(dlg)
	if is_accepted != 0 {
		statusbar_show("Custom dialog accepted!")
	} else {
		statusbar_show("Custom dialog rejected")
	}
	qt.widget_destroy(auto_cast dlg)
}

/* ── Timer & Utility callbacks ─────────────────────────────────────── */

timer_tick :: proc"c"(user_data: rawptr) {
	context = runtime.default_context()
	demo_state.timer_count += 1
	buf: [64]u8
	msg := fmt.bprintf(buf[:], "Timer fired %d times", demo_state.timer_count)
	buf[len(msg)] = 0
	qt.label_set_text(demo_state.timer_label, cstring(raw_data(buf[:])))
}

timer_start :: proc"c"(user_data: rawptr) {
	qt.timer_start(demo_state.timer, 1000)
	statusbar_show("Timer started (1s interval)")
}

timer_stop :: proc"c"(user_data: rawptr) {
	qt.timer_stop(demo_state.timer)
	statusbar_show("Timer stopped")
}

timer_reset :: proc"c"(user_data: rawptr) {
	demo_state.timer_count = 0
	qt.label_set_text(demo_state.timer_label, "Timer fired 0 times")
}

clipboard_copy :: proc"c"(user_data: rawptr) {
	text := qt.line_edit_get_text(demo_state.clipboard_edit)
	if text != nil {
		qt.clipboard_set_text(text)
		statusbar_show("Copied to clipboard!")
		qt.free_string(text)
	}
}

clipboard_paste :: proc"c"(user_data: rawptr) {
	text := qt.clipboard_get_text()
	if text != nil {
		qt.line_edit_set_text(demo_state.clipboard_edit, text)
		statusbar_show("Pasted from clipboard!")
		qt.free_string(text)
	}
}

/* ── Custom drawing callback ───────────────────────────────────────── */

paint_demo :: proc"c"(painter: qt.Painter, width: c.int, height: c.int, user_data: rawptr) {
	qt.painter_set_antialiasing(painter, 1)

	// Background gradient (simulated with filled rects)
	qt.painter_fill_rect(painter, 0, 0, width, height, 240, 240, 255, 255)

	// Draw a grid
	qt.painter_set_pen_colour(painter, 200, 200, 220, 255)
	qt.painter_set_pen_width(painter, 1)
	grid_step: c.int = 30
	x: c.int = 0
	for x < width {
		qt.painter_draw_line(painter, x, 0, x, height)
		x += grid_step
	}
	y: c.int = 0
	for y < height {
		qt.painter_draw_line(painter, 0, y, width, y)
		y += grid_step
	}

	// Filled ellipse
	qt.painter_set_brush_colour(painter, 70, 130, 180, 180)
	qt.painter_set_pen_colour(painter, 30, 60, 100, 255)
	qt.painter_set_pen_width(painter, 2)
	qt.painter_draw_ellipse(painter, 30, 30, 120, 80)

	// Rounded rectangle
	qt.painter_set_brush_colour(painter, 255, 165, 0, 160)
	qt.painter_set_pen_colour(painter, 180, 100, 0, 255)
	qt.painter_draw_rounded_rect(painter, 180, 30, 140, 80, 15.0, 15.0)

	// Lines with different widths
	qt.painter_set_no_brush(painter)
	qt.painter_set_pen_colour(painter, 220, 50, 50, 255)
	qt.painter_set_pen_width(painter, 3)
	qt.painter_draw_line(painter, 30, 140, 300, 140)
	qt.painter_set_pen_colour(painter, 50, 180, 50, 255)
	qt.painter_set_pen_width(painter, 2)
	qt.painter_draw_line(painter, 30, 155, 300, 155)
	qt.painter_set_pen_colour(painter, 50, 50, 220, 255)
	qt.painter_set_pen_width(painter, 1)
	qt.painter_draw_line(painter, 30, 170, 300, 170)

	// Text
	qt.painter_set_pen_colour(painter, 40, 40, 40, 255)
	qt.painter_set_font(painter, "Segoe UI", 12, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.painter_draw_text(painter, 30, 210, "QPainter drawing from Odin!")

	qt.painter_set_font(painter, "Segoe UI", 9, cast(c.int)qt.Font_Weight.Normal, 1)
	qt.painter_draw_text(painter, 30, 230, "Italic text with shapes above")

	// Pie chart slice
	qt.painter_set_brush_colour(painter, 180, 100, 220, 180)
	qt.painter_set_pen_colour(painter, 100, 40, 140, 255)
	qt.painter_set_pen_width(painter, 2)
	qt.painter_draw_pie(painter, 350, 30, 120, 120, 30 * 16, 120 * 16)

	qt.painter_set_brush_colour(painter, 100, 200, 100, 180)
	qt.painter_draw_pie(painter, 350, 30, 120, 120, 150 * 16, 90 * 16)

	qt.painter_set_brush_colour(painter, 200, 200, 80, 180)
	qt.painter_draw_pie(painter, 350, 30, 120, 120, 240 * 16, 120 * 16)

	// Polygon (triangle)
	triangle_points := [?]c.int{400, 200, 350, 280, 450, 280}
	qt.painter_set_brush_colour(painter, 100, 180, 220, 180)
	qt.painter_set_pen_colour(painter, 40, 80, 120, 255)
	qt.painter_draw_polygon(painter, raw_data(triangle_points[:]), 3)
}

/* ── Animation callbacks ───────────────────────────────────────────── */

animation_get_selected_easing :: proc"c"() -> qt.Easing_Curve {
	index := qt.combo_box_get_current_index(demo_state.anim_easing_combo)
	// Map combo index to easing curve values
	easing_values := [?]qt.Easing_Curve{
		.Linear, .In_Quad, .Out_Quad, .In_Out_Quad,
		.In_Cubic, .Out_Cubic, .In_Out_Cubic,
		.In_Quart, .Out_Quart, .In_Out_Quart,
		.In_Quint, .Out_Quint, .In_Out_Quint,
		.In_Sine, .Out_Sine, .In_Out_Sine,
		.In_Expo, .Out_Expo, .In_Out_Expo,
		.In_Circ, .Out_Circ, .In_Out_Circ,
		.In_Elastic, .Out_Elastic, .In_Out_Elastic,
		.In_Back, .Out_Back, .In_Out_Back,
		.In_Bounce, .Out_Bounce, .In_Out_Bounce,
	}
	if index >= 0 && index < cast(c.int)len(easing_values) {
		return easing_values[index]
	}
	return .Linear
}

animation_finished :: proc"c"(user_data: rawptr) {
	statusbar_show("Animation finished!")
}

/* ── Drag and drop callbacks ───────────────────────────────────────── */

drag_enter_accept :: proc"c"(mime_text: cstring, user_data: rawptr) -> c.int {
	return 1 // Accept all drag enters
}

drop_handle :: proc"c"(mime_text: cstring, x: c.int, y: c.int, user_data: rawptr) {
	label: qt.Label = auto_cast user_data
	if mime_text != nil {
		qt.label_set_text(label, mime_text)
	} else {
		qt.label_set_text(label, "(dropped with no text)")
	}
	statusbar_show("Drop received!")
}

drag_source_mouse_handler :: proc"c"(event_type: c.int, button: c.int, x: c.int, y: c.int, global_x: c.int, global_y: c.int, modifiers: c.int, user_data: rawptr) -> c.int {
	if event_type == cast(c.int)qt.Event_Type.Mouse_Button_Press && button == cast(c.int)qt.Mouse_Button.Left {
		source: qt.Widget = auto_cast user_data
		qt.widget_start_drag(source, "Hello from Odin drag source!")
		return 1
	}
	return 0
}

/* ── Menu action callbacks ─────────────────────────────────────────── */

menu_exit :: proc"c"(user_data: rawptr) {
	qt.application_quit(auto_cast user_data)
}

/* ── Tab builders ──────────────────────────────────────────────────── */

build_basic_inputs_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	// Heading label
	demo_state.basic_heading = qt.label_create(nil, "Basic Inputs Demo")
	qt.label_set_alignment(demo_state.basic_heading, .Centre)
	qt.widget_set_font(auto_cast demo_state.basic_heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast demo_state.basic_heading)

	// Line edit + button row
	input_row := qt.widget_create(nil)
	input_layout := qt.hbox_layout_create(input_row)
	demo_state.basic_line_edit = qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(demo_state.basic_line_edit, "Type text and press Return or click Apply...")
	qt.layout_add_widget(input_layout, auto_cast demo_state.basic_line_edit)
	apply_btn := qt.push_button_create(nil, "Apply")
	qt.push_button_connect_clicked(apply_btn, basic_button_update_heading, nil)
	qt.layout_add_widget(input_layout, auto_cast apply_btn)
	qt.layout_add_widget(layout, input_row)
	qt.line_edit_connect_return_pressed(demo_state.basic_line_edit, basic_line_edit_apply_text, nil)

	// Button + checkbox row
	button_row := qt.widget_create(nil)
	button_layout := qt.hbox_layout_create(button_row)
	demo_state.basic_button = qt.push_button_create(nil, "Disabled Until Checked")
	qt.widget_set_enabled(auto_cast demo_state.basic_button, 0)
	qt.widget_set_tooltip(auto_cast demo_state.basic_button, "Enable this button using the checkbox")
	qt.push_button_connect_clicked(demo_state.basic_button, basic_button_update_heading, nil)
	qt.layout_add_widget(button_layout, auto_cast demo_state.basic_button)
	check := qt.check_box_create(nil, "Enable button")
	qt.check_box_connect_toggled(check, basic_checkbox_sync_button, nil)
	qt.layout_add_widget(button_layout, auto_cast check)
	qt.layout_add_widget(layout, button_row)

	// Radio buttons in a group box
	radio_group := qt.group_box_create(nil, "Radio Buttons")
	radio_layout := qt.hbox_layout_create(auto_cast radio_group)
	demo_state.basic_radio_label = qt.label_create(nil, "Selected: Option A")
	radio_a := qt.radio_button_create(nil, "Option A")
	radio_b := qt.radio_button_create(nil, "Option B")
	radio_c := qt.radio_button_create(nil, "Option C")
	qt.radio_button_set_checked(radio_a, 1)
	qt.radio_button_connect_toggled(radio_a, basic_radio_update_label, transmute(rawptr)cstring("Selected: Option A"))
	qt.radio_button_connect_toggled(radio_b, basic_radio_update_label, transmute(rawptr)cstring("Selected: Option B"))
	qt.radio_button_connect_toggled(radio_c, basic_radio_update_label, transmute(rawptr)cstring("Selected: Option C"))
	qt.layout_add_widget(radio_layout, auto_cast radio_a)
	qt.layout_add_widget(radio_layout, auto_cast radio_b)
	qt.layout_add_widget(radio_layout, auto_cast radio_c)
	qt.layout_add_widget(radio_layout, auto_cast demo_state.basic_radio_label)
	qt.layout_add_widget(layout, auto_cast radio_group)

	// Combo box
	combo_group := qt.group_box_create(nil, "Combo Box")
	combo_layout := qt.hbox_layout_create(auto_cast combo_group)
	combo := qt.combo_box_create(nil)
	qt.combo_box_add_item(combo, "Apple")
	qt.combo_box_add_item(combo, "Banana")
	qt.combo_box_add_item(combo, "Cherry")
	qt.combo_box_add_item(combo, "Date")
	qt.combo_box_connect_index_changed(combo, basic_combo_show_selection, auto_cast combo)
	qt.layout_add_widget(combo_layout, auto_cast combo)
	editable_combo := qt.combo_box_create(nil)
	qt.combo_box_set_editable(editable_combo, 1)
	qt.combo_box_add_item(editable_combo, "Editable combo")
	qt.combo_box_add_item(editable_combo, "Type your own")
	qt.layout_add_widget(combo_layout, auto_cast editable_combo)
	qt.layout_add_widget(layout, auto_cast combo_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_numeric_inputs_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Numeric Inputs Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// Slider + SpinBox linked
	slider_group := qt.group_box_create(nil, "Linked Slider & Spin Box")
	slider_layout := qt.hbox_layout_create(auto_cast slider_group)
	demo_state.numeric_slider = qt.slider_create(.Horizontal, nil)
	qt.slider_set_range(demo_state.numeric_slider, 0, 100)
	qt.slider_set_value(demo_state.numeric_slider, 50)
	qt.layout_add_widget(slider_layout, auto_cast demo_state.numeric_slider)
	demo_state.numeric_spin = qt.spin_box_create(nil)
	qt.spin_box_set_range(demo_state.numeric_spin, 0, 100)
	qt.spin_box_set_value(demo_state.numeric_spin, 50)
	qt.spin_box_set_suffix(demo_state.numeric_spin, "%")
	qt.layout_add_widget(slider_layout, auto_cast demo_state.numeric_spin)
	qt.slider_connect_value_changed(demo_state.numeric_slider, numeric_slider_sync, nil)
	qt.spin_box_connect_value_changed(demo_state.numeric_spin, numeric_spin_sync, nil)
	qt.layout_add_widget(layout, auto_cast slider_group)

	// DoubleSpinBox
	double_group := qt.group_box_create(nil, "Double Spin Box")
	double_layout := qt.hbox_layout_create(auto_cast double_group)
	price_spin := qt.double_spin_box_create(nil)
	qt.double_spin_box_set_range(price_spin, 0.0, 99999.99)
	qt.double_spin_box_set_value(price_spin, 29.99)
	qt.double_spin_box_set_decimals(price_spin, 2)
	qt.double_spin_box_set_single_step(price_spin, 0.50)
	qt.double_spin_box_set_prefix(price_spin, "$")
	qt.layout_add_widget(double_layout, auto_cast price_spin)
	temp_spin := qt.double_spin_box_create(nil)
	qt.double_spin_box_set_range(temp_spin, -273.15, 1000.0)
	qt.double_spin_box_set_value(temp_spin, 22.5)
	qt.double_spin_box_set_decimals(temp_spin, 1)
	qt.double_spin_box_set_suffix(temp_spin, " \xC2\xB0C")
	qt.layout_add_widget(double_layout, auto_cast temp_spin)
	qt.layout_add_widget(layout, auto_cast double_group)

	// Progress bar + advance button
	progress_group := qt.group_box_create(nil, "Progress Bar")
	progress_layout := qt.vbox_layout_create(auto_cast progress_group)
	demo_state.numeric_progress = qt.progress_bar_create(nil)
	qt.progress_bar_set_range(demo_state.numeric_progress, 0, 100)
	qt.progress_bar_set_value(demo_state.numeric_progress, 50)
	qt.progress_bar_set_format(demo_state.numeric_progress, "%v / %m")
	qt.layout_add_widget(progress_layout, auto_cast demo_state.numeric_progress)
	advance_btn := qt.push_button_create(nil, "Advance +10")
	qt.push_button_connect_clicked(advance_btn, numeric_progress_advance, nil)
	qt.layout_add_widget(progress_layout, auto_cast advance_btn)
	qt.layout_add_widget(layout, auto_cast progress_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_text_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Text Editing Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// TextEdit and PlainTextEdit side by side
	text_splitter := qt.splitter_create(.Horizontal, nil)

	text_edit_group := qt.group_box_create(nil, "QTextEdit (Rich Text)")
	text_edit_layout := qt.vbox_layout_create(auto_cast text_edit_group)
	demo_state.text_edit = qt.text_edit_create(nil)
	qt.text_edit_set_plain_text(demo_state.text_edit, "This is a QTextEdit.\nIt supports rich text formatting.")
	qt.layout_add_widget(text_edit_layout, auto_cast demo_state.text_edit)
	read_text_btn := qt.push_button_create(nil, "Read Text")
	qt.push_button_connect_clicked(read_text_btn, text_read_text_edit, nil)
	qt.layout_add_widget(text_edit_layout, auto_cast read_text_btn)
	qt.splitter_add_widget(text_splitter, auto_cast text_edit_group)

	plain_group := qt.group_box_create(nil, "QPlainTextEdit")
	plain_layout := qt.vbox_layout_create(auto_cast plain_group)
	demo_state.plain_text_edit = qt.plain_text_edit_create(nil)
	qt.plain_text_edit_set_plain_text(demo_state.plain_text_edit, "This is a QPlainTextEdit.\nLighter weight, plain text only.")
	qt.layout_add_widget(plain_layout, auto_cast demo_state.plain_text_edit)
	read_plain_btn := qt.push_button_create(nil, "Read Text")
	qt.push_button_connect_clicked(read_plain_btn, text_read_plain_text_edit, nil)
	qt.layout_add_widget(plain_layout, auto_cast read_plain_btn)
	qt.splitter_add_widget(text_splitter, auto_cast plain_group)

	qt.layout_add_widget(layout, auto_cast text_splitter)

	// Password field
	pw_group := qt.group_box_create(nil, "Password Field (Echo Mode)")
	pw_layout := qt.hbox_layout_create(auto_cast pw_group)
	demo_state.password_edit = qt.line_edit_create(nil)
	qt.line_edit_set_echo_mode(demo_state.password_edit, .Password)
	qt.line_edit_set_placeholder_text(demo_state.password_edit, "Type a password...")
	qt.layout_add_widget(pw_layout, auto_cast demo_state.password_edit)
	read_pw_btn := qt.push_button_create(nil, "Reveal")
	qt.push_button_connect_clicked(read_pw_btn, text_read_password, nil)
	qt.layout_add_widget(pw_layout, auto_cast read_pw_btn)
	qt.layout_add_widget(layout, auto_cast pw_group)

	return page
}

build_data_views_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Data Views Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// ListWidget
	list_group := qt.group_box_create(nil, "List Widget")
	list_layout := qt.vbox_layout_create(auto_cast list_group)
	demo_state.data_list = qt.list_widget_create(nil)
	qt.list_widget_add_item(demo_state.data_list, "First item")
	qt.list_widget_add_item(demo_state.data_list, "Second item")
	qt.list_widget_add_item(demo_state.data_list, "Third item")
	qt.list_widget_connect_current_row_changed(demo_state.data_list, data_list_selection_changed, nil)
	qt.layout_add_widget(list_layout, auto_cast demo_state.data_list)
	list_btn_row := qt.widget_create(nil)
	list_btn_layout := qt.hbox_layout_create(list_btn_row)
	demo_state.data_list_input = qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(demo_state.data_list_input, "New item text...")
	qt.layout_add_widget(list_btn_layout, auto_cast demo_state.data_list_input)
	add_btn := qt.push_button_create(nil, "Add")
	qt.push_button_connect_clicked(add_btn, data_list_add_item, nil)
	qt.layout_add_widget(list_btn_layout, auto_cast add_btn)
	remove_btn := qt.push_button_create(nil, "Remove")
	qt.push_button_connect_clicked(remove_btn, data_list_remove_item, nil)
	qt.layout_add_widget(list_btn_layout, auto_cast remove_btn)
	qt.layout_add_widget(list_layout, list_btn_row)
	qt.layout_add_widget(layout, auto_cast list_group)

	// TreeWidget + TableWidget in a splitter
	data_splitter := qt.splitter_create(.Horizontal, nil)

	// TreeWidget
	demo_state.data_tree = qt.tree_widget_create(nil)
	qt.tree_widget_set_column_count(demo_state.data_tree, 2)
	tree_headers := [?]cstring{"Name", "Type"}
	qt.tree_widget_set_header_labels(demo_state.data_tree, raw_data(tree_headers[:]), 2)

	animals_cols := [?]cstring{"Animals", "Category"}
	animals := qt.tree_widget_item_create(raw_data(animals_cols[:]), 2)
	dog_cols := [?]cstring{"Dog", "Mammal"}
	dog := qt.tree_widget_item_create(raw_data(dog_cols[:]), 2)
	qt.tree_widget_item_add_child(animals, dog)
	cat_cols := [?]cstring{"Cat", "Mammal"}
	cat := qt.tree_widget_item_create(raw_data(cat_cols[:]), 2)
	qt.tree_widget_item_add_child(animals, cat)
	eagle_cols := [?]cstring{"Eagle", "Bird"}
	eagle := qt.tree_widget_item_create(raw_data(eagle_cols[:]), 2)
	qt.tree_widget_item_add_child(animals, eagle)
	qt.tree_widget_add_top_level_item(demo_state.data_tree, animals)

	plants_cols := [?]cstring{"Plants", "Category"}
	plants := qt.tree_widget_item_create(raw_data(plants_cols[:]), 2)
	oak_cols := [?]cstring{"Oak", "Tree"}
	oak := qt.tree_widget_item_create(raw_data(oak_cols[:]), 2)
	qt.tree_widget_item_add_child(plants, oak)
	rose_cols := [?]cstring{"Rose", "Flower"}
	rose := qt.tree_widget_item_create(raw_data(rose_cols[:]), 2)
	qt.tree_widget_item_add_child(plants, rose)
	qt.tree_widget_add_top_level_item(demo_state.data_tree, plants)

	qt.splitter_add_widget(data_splitter, auto_cast demo_state.data_tree)

	// TableWidget
	demo_state.data_table = qt.table_widget_create(4, 3, nil)
	table_headers := [?]cstring{"Name", "Age", "City"}
	qt.table_widget_set_horizontal_header_labels(demo_state.data_table, raw_data(table_headers[:]), 3)
	qt.table_widget_set_item(demo_state.data_table, 0, 0, "Alice")
	qt.table_widget_set_item(demo_state.data_table, 0, 1, "30")
	qt.table_widget_set_item(demo_state.data_table, 0, 2, "Toronto")
	qt.table_widget_set_item(demo_state.data_table, 1, 0, "Bob")
	qt.table_widget_set_item(demo_state.data_table, 1, 1, "25")
	qt.table_widget_set_item(demo_state.data_table, 1, 2, "Vancouver")
	qt.table_widget_set_item(demo_state.data_table, 2, 0, "Charlie")
	qt.table_widget_set_item(demo_state.data_table, 2, 1, "35")
	qt.table_widget_set_item(demo_state.data_table, 2, 2, "Montreal")
	qt.table_widget_set_item(demo_state.data_table, 3, 0, "Diana")
	qt.table_widget_set_item(demo_state.data_table, 3, 1, "28")
	qt.table_widget_set_item(demo_state.data_table, 3, 2, "Ottawa")
	qt.splitter_add_widget(data_splitter, auto_cast demo_state.data_table)

	qt.layout_add_widget(layout, auto_cast data_splitter)
	return page
}

build_containers_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Containers Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// Checkable GroupBox
	checkable_group := qt.group_box_create(nil, "Checkable Group Box")
	qt.group_box_set_checkable(checkable_group, 1)
	qt.group_box_set_checked(checkable_group, 1)
	checkable_layout := qt.vbox_layout_create(auto_cast checkable_group)
	qt.layout_add_widget(checkable_layout, auto_cast qt.label_create(nil, "This group box can be toggled on/off."))
	qt.layout_add_widget(checkable_layout, auto_cast qt.push_button_create(nil, "Contained Button"))
	qt.layout_add_widget(layout, auto_cast checkable_group)

	// Scroll area
	scroll_group := qt.group_box_create(nil, "Scroll Area")
	scroll_outer := qt.vbox_layout_create(auto_cast scroll_group)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	scroll_content := qt.widget_create(nil)
	scroll_layout := qt.vbox_layout_create(scroll_content)
	for label_idx in 0 ..< 20 {
		context = runtime.default_context()
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "Scrollable item %d", label_idx + 1)
		buf[len(msg)] = 0
		item_label := qt.label_create(nil, cstring(raw_data(buf[:])))
		qt.layout_add_widget(scroll_layout, auto_cast item_label)
	}
	qt.scroll_area_set_widget(scroll, scroll_content)
	qt.widget_set_maximum_height(auto_cast scroll, 150)
	qt.layout_add_widget(scroll_outer, auto_cast scroll)
	qt.layout_add_widget(layout, auto_cast scroll_group)

	// Stacked widget controlled by list
	stacked_group := qt.group_box_create(nil, "Stacked Widget")
	stacked_outer := qt.hbox_layout_create(auto_cast stacked_group)
	page_list := qt.list_widget_create(nil)
	qt.list_widget_add_item(page_list, "Page 1")
	qt.list_widget_add_item(page_list, "Page 2")
	qt.list_widget_add_item(page_list, "Page 3")
	qt.widget_set_maximum_width(auto_cast page_list, 120)
	qt.layout_add_widget(stacked_outer, auto_cast page_list)
	demo_state.container_stacked = qt.stacked_widget_create(nil)
	page1 := qt.label_create(nil, "Content of Page 1")
	qt.label_set_alignment(page1, .Centre)
	_ = qt.stacked_widget_add_widget(demo_state.container_stacked, auto_cast page1)
	page2 := qt.label_create(nil, "Content of Page 2")
	qt.label_set_alignment(page2, .Centre)
	_ = qt.stacked_widget_add_widget(demo_state.container_stacked, auto_cast page2)
	page3 := qt.label_create(nil, "Content of Page 3")
	qt.label_set_alignment(page3, .Centre)
	_ = qt.stacked_widget_add_widget(demo_state.container_stacked, auto_cast page3)
	qt.layout_add_widget(stacked_outer, auto_cast demo_state.container_stacked)
	qt.list_widget_set_current_row(page_list, 0)
	qt.list_widget_connect_current_row_changed(page_list, container_stacked_select_page, nil)
	qt.layout_add_widget(layout, auto_cast stacked_group)

	// Frame examples
	frame_group := qt.group_box_create(nil, "Frames")
	frame_layout := qt.vbox_layout_create(auto_cast frame_group)
	h_line := qt.frame_create(nil)
	qt.frame_set_frame_shape(h_line, .H_Line)
	qt.frame_set_frame_shadow(h_line, .Sunken)
	qt.layout_add_widget(frame_layout, auto_cast h_line)
	qt.layout_add_widget(frame_layout, auto_cast qt.label_create(nil, "Horizontal line above, box frame below"))
	box_frame := qt.frame_create(nil)
	qt.frame_set_frame_shape(box_frame, .Box)
	qt.frame_set_frame_shadow(box_frame, .Raised)
	qt.frame_set_line_width(box_frame, 2)
	qt.widget_set_minimum_height(auto_cast box_frame, 40)
	qt.layout_add_widget(frame_layout, auto_cast box_frame)
	qt.layout_add_widget(layout, auto_cast frame_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_layouts_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Layouts Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// Form layout
	form_group := qt.group_box_create(nil, "Form Layout")
	form := qt.form_layout_create(auto_cast form_group)
	qt.form_layout_add_row(form, "First Name:", auto_cast qt.line_edit_create(nil))
	qt.form_layout_add_row(form, "Last Name:", auto_cast qt.line_edit_create(nil))
	email_edit := qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(email_edit, "user@example.com")
	qt.form_layout_add_row(form, "Email:", auto_cast email_edit)
	qt.form_layout_add_row(form, "Agree:", auto_cast qt.check_box_create(nil, "I agree to the terms"))
	qt.layout_add_widget(layout, auto_cast form_group)

	// Grid layout
	grid_group := qt.group_box_create(nil, "Grid Layout (with stretch)")
	grid := qt.grid_layout_create(auto_cast grid_group)
	qt.grid_layout_add_widget(grid, auto_cast qt.push_button_create(nil, "(0,0)"), 0, 0, 1, 1)
	qt.grid_layout_add_widget(grid, auto_cast qt.push_button_create(nil, "(0,1) span 2 cols"), 0, 1, 1, 2)
	qt.grid_layout_add_widget(grid, auto_cast qt.push_button_create(nil, "(1,0)"), 1, 0, 1, 1)
	qt.grid_layout_add_widget(grid, auto_cast qt.push_button_create(nil, "(1,1)"), 1, 1, 1, 1)
	qt.grid_layout_add_widget(grid, auto_cast qt.push_button_create(nil, "(1,2)"), 1, 2, 1, 1)
	qt.grid_layout_set_column_stretch(grid, 1, 2)
	qt.grid_layout_set_column_stretch(grid, 2, 1)
	qt.layout_add_widget(layout, auto_cast grid_group)

	// Box layout with stretch and spacing
	stretch_group := qt.group_box_create(nil, "Box Layout (stretch & spacing)")
	stretch_layout := qt.hbox_layout_create(auto_cast stretch_group)
	qt.layout_add_widget(stretch_layout, auto_cast qt.push_button_create(nil, "Left"))
	qt.box_layout_add_stretch(stretch_layout, 1)
	qt.layout_add_widget(stretch_layout, auto_cast qt.push_button_create(nil, "Centre"))
	qt.box_layout_add_spacing(stretch_layout, 30)
	qt.layout_add_widget(stretch_layout, auto_cast qt.push_button_create(nil, "Spaced"))
	qt.box_layout_add_stretch(stretch_layout, 2)
	qt.layout_add_widget(stretch_layout, auto_cast qt.push_button_create(nil, "Right"))
	qt.layout_add_widget(layout, auto_cast stretch_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_dialogs_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Dialogs Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// File dialogs
	file_group := qt.group_box_create(nil, "File Dialogs")
	file_layout := qt.hbox_layout_create(auto_cast file_group)
	open_btn := qt.push_button_create(nil, "Open File...")
	qt.push_button_connect_clicked(open_btn, dialog_open_file, nil)
	qt.layout_add_widget(file_layout, auto_cast open_btn)
	save_btn := qt.push_button_create(nil, "Save File...")
	qt.push_button_connect_clicked(save_btn, dialog_save_file, nil)
	qt.layout_add_widget(file_layout, auto_cast save_btn)
	dir_btn := qt.push_button_create(nil, "Directory...")
	qt.push_button_connect_clicked(dir_btn, dialog_existing_directory, nil)
	qt.layout_add_widget(file_layout, auto_cast dir_btn)
	qt.layout_add_widget(layout, auto_cast file_group)

	// Message boxes
	msg_group := qt.group_box_create(nil, "Message Boxes")
	msg_layout := qt.hbox_layout_create(auto_cast msg_group)
	info_btn := qt.push_button_create(nil, "Information")
	qt.push_button_connect_clicked(info_btn, dialog_show_information, nil)
	qt.layout_add_widget(msg_layout, auto_cast info_btn)
	warn_btn := qt.push_button_create(nil, "Warning")
	qt.push_button_connect_clicked(warn_btn, dialog_show_warning, nil)
	qt.layout_add_widget(msg_layout, auto_cast warn_btn)
	crit_btn := qt.push_button_create(nil, "Critical")
	qt.push_button_connect_clicked(crit_btn, dialog_show_critical, nil)
	qt.layout_add_widget(msg_layout, auto_cast crit_btn)
	question_btn := qt.push_button_create(nil, "Question")
	qt.push_button_connect_clicked(question_btn, dialog_show_question, nil)
	qt.layout_add_widget(msg_layout, auto_cast question_btn)
	qt.layout_add_widget(layout, auto_cast msg_group)

	// Picker dialogs
	picker_group := qt.group_box_create(nil, "Picker Dialogs")
	picker_layout := qt.hbox_layout_create(auto_cast picker_group)
	colour_btn := qt.push_button_create(nil, "Colour...")
	qt.push_button_connect_clicked(colour_btn, dialog_pick_colour, nil)
	qt.layout_add_widget(picker_layout, auto_cast colour_btn)
	font_btn := qt.push_button_create(nil, "Font...")
	qt.push_button_connect_clicked(font_btn, dialog_pick_font, nil)
	qt.layout_add_widget(picker_layout, auto_cast font_btn)
	qt.layout_add_widget(layout, auto_cast picker_group)

	// Input dialogs
	input_group := qt.group_box_create(nil, "Input Dialogs")
	input_layout := qt.hbox_layout_create(auto_cast input_group)
	text_input_btn := qt.push_button_create(nil, "Text...")
	qt.push_button_connect_clicked(text_input_btn, dialog_text_input, nil)
	qt.layout_add_widget(input_layout, auto_cast text_input_btn)
	int_input_btn := qt.push_button_create(nil, "Integer...")
	qt.push_button_connect_clicked(int_input_btn, dialog_int_input, nil)
	qt.layout_add_widget(input_layout, auto_cast int_input_btn)
	double_input_btn := qt.push_button_create(nil, "Double...")
	qt.push_button_connect_clicked(double_input_btn, dialog_double_input, nil)
	qt.layout_add_widget(input_layout, auto_cast double_input_btn)
	item_input_btn := qt.push_button_create(nil, "Item...")
	qt.push_button_connect_clicked(item_input_btn, dialog_item_input, nil)
	qt.layout_add_widget(input_layout, auto_cast item_input_btn)
	qt.layout_add_widget(layout, auto_cast input_group)

	// Custom dialog
	custom_group := qt.group_box_create(nil, "Custom Dialog")
	custom_layout := qt.hbox_layout_create(auto_cast custom_group)
	custom_btn := qt.push_button_create(nil, "Open Custom Dialog...")
	qt.push_button_connect_clicked(custom_btn, dialog_custom, nil)
	qt.layout_add_widget(custom_layout, auto_cast custom_btn)
	qt.layout_add_widget(layout, auto_cast custom_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_timer_utility_tab :: proc(application: qt.Application) -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Timer & Utility Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// Timer
	timer_group := qt.group_box_create(nil, "Timer (1 second interval)")
	timer_layout := qt.vbox_layout_create(auto_cast timer_group)
	demo_state.timer_label = qt.label_create(nil, "Timer fired 0 times")
	qt.label_set_alignment(demo_state.timer_label, .Centre)
	qt.widget_set_font(auto_cast demo_state.timer_label, "Segoe UI", 16, cast(c.int)qt.Font_Weight.Normal, 0)
	qt.layout_add_widget(timer_layout, auto_cast demo_state.timer_label)
	timer_btn_row := qt.widget_create(nil)
	timer_btn_layout := qt.hbox_layout_create(timer_btn_row)
	start_btn := qt.push_button_create(nil, "Start")
	qt.push_button_connect_clicked(start_btn, timer_start, nil)
	qt.layout_add_widget(timer_btn_layout, auto_cast start_btn)
	stop_btn := qt.push_button_create(nil, "Stop")
	qt.push_button_connect_clicked(stop_btn, timer_stop, nil)
	qt.layout_add_widget(timer_btn_layout, auto_cast stop_btn)
	reset_btn := qt.push_button_create(nil, "Reset")
	qt.push_button_connect_clicked(reset_btn, timer_reset, nil)
	qt.layout_add_widget(timer_btn_layout, auto_cast reset_btn)
	qt.layout_add_widget(timer_layout, timer_btn_row)
	qt.layout_add_widget(layout, auto_cast timer_group)

	// Clipboard
	clip_group := qt.group_box_create(nil, "Clipboard")
	clip_layout := qt.hbox_layout_create(auto_cast clip_group)
	demo_state.clipboard_edit = qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(demo_state.clipboard_edit, "Text for clipboard operations...")
	qt.layout_add_widget(clip_layout, auto_cast demo_state.clipboard_edit)
	copy_btn := qt.push_button_create(nil, "Copy")
	qt.push_button_connect_clicked(copy_btn, clipboard_copy, nil)
	qt.layout_add_widget(clip_layout, auto_cast copy_btn)
	paste_btn := qt.push_button_create(nil, "Paste")
	qt.push_button_connect_clicked(paste_btn, clipboard_paste, nil)
	qt.layout_add_widget(clip_layout, auto_cast paste_btn)
	qt.layout_add_widget(layout, auto_cast clip_group)

	// Dynamic properties
	props_group := qt.group_box_create(nil, "Dynamic Properties")
	props_layout := qt.vbox_layout_create(auto_cast props_group)

	props_description := qt.label_create(nil, "Attach arbitrary key-value data to any QObject at runtime.")
	qt.layout_add_widget(props_layout, auto_cast props_description)

	props_target := qt.label_create(nil, "(no properties set)")
	qt.widget_set_style_sheet(auto_cast props_target, "QLabel { padding: 4px; background: #f0f0f0; border: 1px solid #ccc; }")
	qt.layout_add_widget(props_layout, auto_cast props_target)

	props_btn_row := qt.widget_create(nil)
	props_btn_layout := qt.hbox_layout_create(props_btn_row)

	set_prop_btn := qt.push_button_create(nil, "Set Property")
	qt.push_button_connect_clicked(set_prop_btn, proc"c"(user_data: rawptr) {
		widget: qt.Widget = auto_cast user_data
		qt.object_set_property_string(widget, "demo_tag", "Hello from Odin!")
		qt.object_set_property_int(widget, "demo_counter", 42)
		statusbar_show("Properties set: demo_tag=Hello from Odin!, demo_counter=42")
	}, auto_cast props_target)
	qt.layout_add_widget(props_btn_layout, auto_cast set_prop_btn)

	get_prop_btn := qt.push_button_create(nil, "Get Property")
	qt.push_button_connect_clicked(get_prop_btn, proc"c"(user_data: rawptr) {
		widget: qt.Widget = auto_cast user_data
		tag := qt.object_get_property_string(widget, "demo_tag", "(not set)")
		if tag != nil {
			statusbar_show(tag, 5000)
			qt.free_string(cast(cstring)tag)
		}
	}, auto_cast props_target)
	qt.layout_add_widget(props_btn_layout, auto_cast get_prop_btn)

	qt.layout_add_widget(props_layout, props_btn_row)
	qt.layout_add_widget(layout, auto_cast props_group)

	// Application utility
	app_group := qt.group_box_create(nil, "Application")
	app_layout := qt.hbox_layout_create(auto_cast app_group)
	quit_btn := qt.push_button_create(nil, "Quit Application")
	qt.push_button_connect_clicked(quit_btn, menu_exit, auto_cast application)
	qt.layout_add_widget(app_layout, auto_cast quit_btn)
	qt.layout_add_widget(layout, auto_cast app_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_model_view_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Model/View Framework Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	splitter := qt.splitter_create(.Horizontal, nil)

	// Left: QStandardItemModel in a QTableView
	left_group := qt.group_box_create(nil, "QStandardItemModel + QTableView")
	left_layout := qt.vbox_layout_create(auto_cast left_group)

	model := qt.standard_item_model_create(0, 3, nil)
	model_headers := [?]cstring{"Name", "Language", "Rating"}
	qt.standard_item_model_set_horizontal_header_labels(model, raw_data(model_headers[:]), 3)

	// Add rows via QStandardItem
	row1 := [?]qt.Standard_Item{
		qt.standard_item_create("Odin"),
		qt.standard_item_create("Systems"),
		qt.standard_item_create("5/5"),
	}
	qt.standard_item_model_append_row(model, raw_data(row1[:]), 3)

	row2 := [?]qt.Standard_Item{
		qt.standard_item_create("Zig"),
		qt.standard_item_create("Systems"),
		qt.standard_item_create("4/5"),
	}
	qt.standard_item_model_append_row(model, raw_data(row2[:]), 3)

	row3 := [?]qt.Standard_Item{
		qt.standard_item_create("Rust"),
		qt.standard_item_create("Systems"),
		qt.standard_item_create("4/5"),
	}
	qt.standard_item_model_append_row(model, raw_data(row3[:]), 3)

	row4 := [?]qt.Standard_Item{
		qt.standard_item_create("Python"),
		qt.standard_item_create("Scripting"),
		qt.standard_item_create("3/5"),
	}
	qt.standard_item_model_append_row(model, raw_data(row4[:]), 3)

	table_view := qt.table_view_create(nil)
	qt.table_view_set_model(table_view, model)
	qt.table_view_set_alternating_row_colours(table_view, 1)
	qt.table_view_set_sorting_enabled(table_view, 1)
	qt.table_view_resize_columns_to_contents(table_view)
	qt.layout_add_widget(left_layout, auto_cast table_view)
	qt.splitter_add_widget(splitter, auto_cast left_group)

	// Right: QFileSystemModel in a QTreeView
	right_group := qt.group_box_create(nil, "QFileSystemModel + QTreeView")
	right_layout := qt.vbox_layout_create(auto_cast right_group)

	fs_model := qt.file_system_model_create(nil)
	root_index := qt.file_system_model_set_root_path(fs_model, "C:/")
	qt.file_system_model_set_read_only(fs_model, 1)

	tree_view := qt.tree_view_create(nil)
	tree_view_set_model_fs :: proc"c"(view: qt.Tree_View, model: qt.File_System_Model) {
		qt.tree_view_set_model(view, model)
	}
	tree_view_set_model_fs(tree_view, fs_model)
	qt.tree_view_set_root_index(tree_view, root_index)
	qt.tree_view_set_sorting_enabled(tree_view, 1)
	qt.layout_add_widget(right_layout, auto_cast tree_view)
	qt.splitter_add_widget(splitter, auto_cast right_group)

	qt.layout_add_widget(layout, auto_cast splitter)
	return page
}

build_custom_drawing_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Custom Drawing (QPainter) Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	description := qt.label_create(nil, "The widget below uses QPainter in a paint callback to draw shapes, text, and a pie chart.")
	qt.label_set_word_wrap(description, 1)
	qt.layout_add_widget(layout, auto_cast description)

	canvas := qt.paintable_widget_create(nil, paint_demo, nil)
	qt.widget_set_minimum_size(auto_cast canvas, 500, 300)
	qt.layout_add_widget(layout, auto_cast canvas)

	repaint_btn := qt.push_button_create(nil, "Trigger Repaint")
	qt.push_button_connect_clicked(repaint_btn, proc"c"(user_data: rawptr) {
		qt.widget_update(auto_cast user_data)
		statusbar_show("Repaint triggered")
	}, auto_cast canvas)
	qt.layout_add_widget(layout, auto_cast repaint_btn)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_syntax_highlighting_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Syntax Highlighting Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	description := qt.label_create(nil, "The text editor below has regex-based syntax highlighting for C-like keywords, strings, and comments.")
	qt.label_set_word_wrap(description, 1)
	qt.layout_add_widget(layout, auto_cast description)

	editor := qt.text_edit_create(nil)
	qt.widget_set_font(auto_cast editor, "Consolas", 11, cast(c.int)qt.Font_Weight.Normal, 0)
	qt.text_edit_set_plain_text(editor, `// Example C code with syntax highlighting
#include <stdio.h>

int main(void) {
    // Print a greeting
    printf("Hello, world!\n");
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
            printf("Even: %d\n", i);
        }
    }
    return 0;
}`)
	qt.layout_add_widget(layout, auto_cast editor)

	// Create highlighter and add rules
	highlighter := qt.syntax_highlighter_create_for_text_edit(editor)

	// Keywords (bold blue)
	keyword_format := qt.text_char_format_create()
	qt.text_char_format_set_foreground(keyword_format, 0, 0, 180, 255)
	qt.text_char_format_set_font_weight(keyword_format, cast(c.int)qt.Font_Weight.Bold)
	qt.syntax_highlighter_add_rule(highlighter, "\\b(int|void|return|if|else|for|while|do|switch|case|break|continue|char|float|double|struct|typedef|enum|const|static|include)\\b", keyword_format)

	// Strings (dark red)
	string_format := qt.text_char_format_create()
	qt.text_char_format_set_foreground(string_format, 180, 0, 0, 255)
	qt.syntax_highlighter_add_rule(highlighter, "\"[^\"]*\"", string_format)

	// Single-line comments (green italic)
	comment_format := qt.text_char_format_create()
	qt.text_char_format_set_foreground(comment_format, 0, 128, 0, 255)
	qt.text_char_format_set_font_italic(comment_format, 1)
	qt.syntax_highlighter_add_rule(highlighter, "//[^\n]*", comment_format)

	// Preprocessor directives (purple)
	preproc_format := qt.text_char_format_create()
	qt.text_char_format_set_foreground(preproc_format, 128, 0, 128, 255)
	qt.syntax_highlighter_add_rule(highlighter, "#\\w+", preproc_format)

	// Numbers (dark cyan)
	number_format := qt.text_char_format_create()
	qt.text_char_format_set_foreground(number_format, 0, 128, 128, 255)
	qt.syntax_highlighter_add_rule(highlighter, "\\b[0-9]+\\b", number_format)

	qt.syntax_highlighter_rehighlight(highlighter)

	return page
}

build_animations_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Animations Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	description := qt.label_create(nil, "Select an easing curve, then click the animation buttons to see it applied.")
	qt.label_set_word_wrap(description, 1)
	qt.layout_add_widget(layout, auto_cast description)

	// Easing curve selector
	easing_row := qt.widget_create(nil)
	easing_row_layout := qt.hbox_layout_create(easing_row)
	easing_label := qt.label_create(nil, "Easing Curve:")
	qt.layout_add_widget(easing_row_layout, auto_cast easing_label)
	demo_state.anim_easing_combo = qt.combo_box_create(nil)
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Linear")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Quad")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Quad")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Quad")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Cubic")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Cubic")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Cubic")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Quart")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Quart")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Quart")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Quint")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Quint")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Quint")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Sine")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Sine")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Sine")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Expo")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Expo")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Expo")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Circ")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Circ")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Circ")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Elastic")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Elastic")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Elastic")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Back")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Back")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Back")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In Bounce")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "Out Bounce")
	qt.combo_box_add_item(demo_state.anim_easing_combo, "In/Out Bounce")
	qt.combo_box_set_current_index(demo_state.anim_easing_combo, 29) // Out Bounce
	qt.layout_add_widget(easing_row_layout, auto_cast demo_state.anim_easing_combo)
	qt.layout_add_widget(layout, easing_row)

	// Property Animation group
	anim_group := qt.group_box_create(nil, "Property Animation")
	anim_layout := qt.vbox_layout_create(auto_cast anim_group)

	// Target widget to animate
	target_btn := qt.push_button_create(nil, "Animate Me!")
	qt.widget_set_minimum_size(auto_cast target_btn, 100, 40)
	qt.layout_add_widget(anim_layout, auto_cast target_btn)

	btn_row := qt.widget_create(nil)
	btn_layout := qt.hbox_layout_create(btn_row)

	// Width animation (maximumWidth constrains layout stretch)
	grow_btn := qt.push_button_create(nil, "Grow Width")
	qt.push_button_connect_clicked(grow_btn, proc"c"(user_data: rawptr) {
		target: qt.Widget = auto_cast user_data
		easing := animation_get_selected_easing()
		anim := qt.property_animation_create(target, "maximumWidth")
		qt.property_animation_set_duration(anim, 1000)
		qt.property_animation_set_start_value_int(anim, 100)
		qt.property_animation_set_end_value_int(anim, 600)
		qt.property_animation_set_clamp_range(anim, 0, 16777215)
		qt.property_animation_set_easing_curve(anim, easing)
		qt.property_animation_connect_finished(anim, animation_finished, nil)
		qt.property_animation_start(anim)
	}, auto_cast target_btn)
	qt.layout_add_widget(btn_layout, auto_cast grow_btn)

	// Shrink width animation
	shrink_btn := qt.push_button_create(nil, "Shrink Width")
	qt.push_button_connect_clicked(shrink_btn, proc"c"(user_data: rawptr) {
		target: qt.Widget = auto_cast user_data
		easing := animation_get_selected_easing()
		anim := qt.property_animation_create(target, "maximumWidth")
		qt.property_animation_set_duration(anim, 800)
		qt.property_animation_set_start_value_int(anim, 600)
		qt.property_animation_set_end_value_int(anim, 100)
		qt.property_animation_set_clamp_range(anim, 0, 16777215)
		qt.property_animation_set_easing_curve(anim, easing)
		qt.property_animation_connect_finished(anim, animation_finished, nil)
		qt.property_animation_start(anim)
	}, auto_cast target_btn)
	qt.layout_add_widget(btn_layout, auto_cast shrink_btn)

	// Grow height animation
	grow_height_btn := qt.push_button_create(nil, "Grow Height")
	qt.push_button_connect_clicked(grow_height_btn, proc"c"(user_data: rawptr) {
		target: qt.Widget = auto_cast user_data
		easing := animation_get_selected_easing()
		anim := qt.property_animation_create(target, "minimumHeight")
		qt.property_animation_set_duration(anim, 1000)
		qt.property_animation_set_start_value_int(anim, 40)
		qt.property_animation_set_end_value_int(anim, 120)
		qt.property_animation_set_clamp_range(anim, 0, 16777215)
		qt.property_animation_set_easing_curve(anim, easing)
		qt.property_animation_connect_finished(anim, animation_finished, nil)
		qt.property_animation_start(anim)
	}, auto_cast target_btn)
	qt.layout_add_widget(btn_layout, auto_cast grow_height_btn)

	// Reset
	reset_btn := qt.push_button_create(nil, "Reset")
	qt.push_button_connect_clicked(reset_btn, proc"c"(user_data: rawptr) {
		target: qt.Widget = auto_cast user_data
		qt.widget_set_minimum_size(target, 100, 40)
		qt.widget_set_maximum_size(target, 16777215, 16777215)
		statusbar_show("Animation target reset")
	}, auto_cast target_btn)
	qt.layout_add_widget(btn_layout, auto_cast reset_btn)

	qt.layout_add_widget(anim_layout, btn_row)
	qt.layout_add_widget(layout, auto_cast anim_group)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_drag_drop_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Drag and Drop Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	description := qt.label_create(nil, "Click and drag from the drag handle into the drop zone. You can also drag text from external applications.")
	qt.label_set_word_wrap(description, 1)
	qt.widget_set_size_policy(auto_cast description, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast description)

	splitter := qt.splitter_create(.Horizontal, nil)

	// Drag source
	source_group := qt.group_box_create(nil, "Drag Source")
	source_layout := qt.vbox_layout_create(auto_cast source_group)

	// Drag handle - user clicks and drags from here
	drag_handle := qt.label_create(nil, "Click and drag from here")
	qt.label_set_alignment(drag_handle, .Centre)
	qt.widget_set_cursor(auto_cast drag_handle, .Open_Hand)
	qt.widget_set_minimum_size(auto_cast drag_handle, 150, 80)
	qt.widget_set_style_sheet(auto_cast drag_handle, "QLabel { background-color: #e0e8f0; border: 2px solid #6090c0; border-radius: 8px; padding: 10px; font-size: 13px; font-weight: bold; }")
	qt.layout_add_widget(source_layout, auto_cast drag_handle)

	// Mouse event filter to start drag on press
	mouse_filter := qt.mouse_event_filter_create(drag_source_mouse_handler, auto_cast drag_handle)
	qt.widget_install_event_filter(auto_cast drag_handle, auto_cast mouse_filter)

	qt.box_layout_add_stretch(source_layout, 1)
	qt.splitter_add_widget(splitter, auto_cast source_group)

	// Drop target
	target_group := qt.group_box_create(nil, "Drop Zone")
	target_layout := qt.vbox_layout_create(auto_cast target_group)
	drop_label := qt.label_create(nil, "Drop text here!")
	qt.label_set_alignment(drop_label, .Centre)
	qt.widget_set_minimum_size(auto_cast drop_label, 200, 100)
	qt.widget_set_style_sheet(auto_cast drop_label, "QLabel { background-color: #f0f0f0; border: 2px dashed #999; border-radius: 8px; padding: 20px; font-size: 14px; }")
	qt.layout_add_widget(target_layout, auto_cast drop_label)

	// Enable drops directly on the drop label
	qt.widget_set_accept_drops(auto_cast drop_label, 1)
	drop_filter := qt.drag_drop_filter_create(drag_enter_accept, drop_handle, auto_cast drop_label)
	qt.widget_install_event_filter(auto_cast drop_label, auto_cast drop_filter)

	qt.splitter_add_widget(splitter, auto_cast target_group)

	qt.layout_add_widget(layout, auto_cast splitter)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

/* ── MDI callbacks ─────────────────────────────────────────────────── */

mdi_add_sub_window :: proc"c"(user_data: rawptr) {
	context = runtime.default_context()
	demo_state.mdi_counter += 1
	sub_content := qt.text_edit_create(nil)
	buf: [64]u8
	msg := fmt.bprintf(buf[:], "Document %d content...", demo_state.mdi_counter)
	buf[len(msg)] = 0
	qt.text_edit_set_plain_text(sub_content, cstring(raw_data(buf[:])))
	sub := qt.mdi_area_add_sub_window(demo_state.mdi_area, auto_cast sub_content)
	title_buf: [64]u8
	title := fmt.bprintf(title_buf[:], "Document %d", demo_state.mdi_counter)
	title_buf[len(title)] = 0
	qt.widget_set_window_title(auto_cast sub, cstring(raw_data(title_buf[:])))
	qt.widget_show(auto_cast sub)
}

wizard_open :: proc"c"(user_data: rawptr) {
	wiz := qt.wizard_create(auto_cast demo_state.window)
	qt.widget_set_window_title(auto_cast wiz, "Sample Wizard")

	page1 := qt.wizard_page_create(nil)
	qt.wizard_page_set_title(page1, "Introduction")
	qt.wizard_page_set_sub_title(page1, "Welcome to the sample wizard.")
	p1_layout := qt.vbox_layout_create(auto_cast page1)
	qt.layout_add_widget(p1_layout, auto_cast qt.label_create(nil, "This wizard demonstrates QWizard and QWizardPage."))
	_ = qt.wizard_add_page(wiz, page1)

	page2 := qt.wizard_page_create(nil)
	qt.wizard_page_set_title(page2, "Configuration")
	qt.wizard_page_set_sub_title(page2, "Set your preferences.")
	p2_layout := qt.form_layout_create(auto_cast page2)
	qt.form_layout_add_row(p2_layout, "Name:", auto_cast qt.line_edit_create(nil))
	qt.form_layout_add_row(p2_layout, "Option:", auto_cast qt.check_box_create(nil, "Enable feature"))
	_ = qt.wizard_add_page(wiz, page2)

	page3 := qt.wizard_page_create(nil)
	qt.wizard_page_set_title(page3, "Summary")
	qt.wizard_page_set_sub_title(page3, "Review and finish.")
	qt.wizard_page_set_final_page(page3, 1)
	p3_layout := qt.vbox_layout_create(auto_cast page3)
	qt.layout_add_widget(p3_layout, auto_cast qt.label_create(nil, "Click Finish to complete the wizard."))
	_ = qt.wizard_add_page(wiz, page3)

	result := qt.dialog_exec(auto_cast wiz)
	if result != 0 {
		statusbar_show("Wizard completed!")
	} else {
		statusbar_show("Wizard cancelled")
	}
	qt.widget_destroy(auto_cast wiz)
}

/* ── Undo callbacks ────────────────────────────────────────────────── */

undo_add_command :: proc"c"(user_data: rawptr) {
	context = runtime.default_context()
	demo_state.undo_counter += 1
	buf: [64]u8
	msg := fmt.bprintf(buf[:], "Action %d", demo_state.undo_counter)
	buf[len(msg)] = 0
	cmd := qt.undo_command_create(cstring(raw_data(buf[:])), nil)
	qt.undo_stack_push(demo_state.undo_stack, cmd)
	label_buf: [64]u8
	label_msg := fmt.bprintf(label_buf[:], "Commands: %d", qt.undo_stack_get_count(demo_state.undo_stack))
	label_buf[len(label_msg)] = 0
	qt.label_set_text(demo_state.undo_label, cstring(raw_data(label_buf[:])))
}

undo_do_undo :: proc"c"(user_data: rawptr) {
	if qt.undo_stack_can_undo(demo_state.undo_stack) != 0 {
		qt.undo_stack_undo(demo_state.undo_stack)
		context = runtime.default_context()
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "Commands: %d (index %d)", qt.undo_stack_get_count(demo_state.undo_stack), qt.undo_stack_get_index(demo_state.undo_stack))
		buf[len(msg)] = 0
		qt.label_set_text(demo_state.undo_label, cstring(raw_data(buf[:])))
	}
}

undo_do_redo :: proc"c"(user_data: rawptr) {
	if qt.undo_stack_can_redo(demo_state.undo_stack) != 0 {
		qt.undo_stack_redo(demo_state.undo_stack)
		context = runtime.default_context()
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "Commands: %d (index %d)", qt.undo_stack_get_count(demo_state.undo_stack), qt.undo_stack_get_index(demo_state.undo_stack))
		buf[len(msg)] = 0
		qt.label_set_text(demo_state.undo_label, cstring(raw_data(buf[:])))
	}
}

/* ── TimeLine callbacks ────────────────────────────────────────────── */

time_line_value_changed :: proc"c"(value: c.double, user_data: rawptr) {
	qt.progress_bar_set_value(demo_state.time_line_progress, cast(c.int)(value * 100.0))
}

time_line_frame_changed :: proc"c"(frame: c.int, user_data: rawptr) {
	context = runtime.default_context()
	buf: [64]u8
	msg := fmt.bprintf(buf[:], "Frame: %d", frame)
	buf[len(msg)] = 0
	qt.label_set_text(demo_state.time_line_label, cstring(raw_data(buf[:])))
}

time_line_finished :: proc"c"(user_data: rawptr) {
	qt.label_set_text(demo_state.time_line_label, "TimeLine finished!")
	statusbar_show("TimeLine finished!")
}

/* ── QtGui paint callback ──────────────────────────────────────────── */

qtgui_paint_demo :: proc"c"(painter: qt.Painter, width: c.int, height: c.int, user_data: rawptr) {
	qt.painter_set_antialiasing(painter, 1)
	qt.painter_fill_rect(painter, 0, 0, width, height, 255, 255, 255, 255)

	// QPen + QBrush + QPainterPath
	pen := qt.pen_create_with_colour(60, 60, 180, 255)
	qt.pen_set_width(pen, 3)
	qt.pen_set_style(pen, .Dash)
	path := qt.painter_path_create()
	qt.painter_path_move_to(path, 20, 30)
	qt.painter_path_line_to(path, 140, 30)
	qt.painter_path_cubic_to(path, 180, 30, 180, 110, 140, 110)
	qt.painter_path_line_to(path, 20, 110)
	qt.painter_path_close_subpath(path)
	qt.painter_fill_path(painter, path, 100, 180, 220, 100)
	qt.painter_stroke_path(painter, path, pen)
	qt.painter_path_destroy(path)
	qt.pen_destroy(pen)

	// QStaticText
	font := qt.font_create("Segoe UI", 11, cast(c.int)qt.Font_Weight.Normal, 0)
	static_txt := qt.static_text_create("QStaticText for efficient rendering")
	qt.static_text_prepare(static_txt, font)
	qt.painter_draw_static_text(painter, 20, 140, static_txt)
	qt.static_text_destroy(static_txt)
	qt.font_destroy(font)

	// QTransform: rotated rectangle
	transform := qt.transform_create()
	qt.transform_translate(transform, 300, 60)
	qt.transform_rotate(transform, 15.0)
	qt.painter_set_transform(painter, transform, 0)
	qt.painter_set_brush_colour(painter, 220, 180, 120, 180)
	qt.painter_set_pen_colour(painter, 140, 100, 40, 255)
	qt.painter_set_pen_width(painter, 2)
	qt.painter_draw_rounded_rect(painter, 0, 0, 100, 50, 8.0, 8.0)
	qt.painter_set_pen_colour(painter, 40, 40, 40, 255)
	qt.painter_set_font(painter, "Segoe UI", 9, cast(c.int)qt.Font_Weight.Normal, 0)
	qt.painter_draw_text(painter, 5, 30, "QTransform")
	qt.painter_reset_transform(painter)
	qt.transform_destroy(transform)

	// Labels
	qt.painter_set_pen_colour(painter, 40, 40, 40, 255)
	qt.painter_set_font(painter, "Segoe UI", 9, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.painter_draw_text(painter, 20, 22, "QPen + QBrush + QPainterPath:")
	qt.painter_draw_text(painter, 300, 22, "QTransform:")
	qt.painter_draw_text(painter, 20, 135, "QStaticText:")
}

/* ── Batch 5 tab builders ─────────────────────────────────────────── */

build_extra_widgets_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	outer_layout := qt.vbox_layout_create(page)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	content := qt.widget_create(nil)
	layout := qt.vbox_layout_create(content)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Extra Widgets Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// QTabBar
	tb_group := qt.group_box_create(nil, "QTabBar (closable, movable)")
	tb_layout := qt.vbox_layout_create(auto_cast tb_group)
	tab_bar := qt.tab_bar_create(nil)
	_ = qt.tab_bar_add_tab(tab_bar, "Documents")
	_ = qt.tab_bar_add_tab(tab_bar, "Images")
	_ = qt.tab_bar_add_tab(tab_bar, "Settings")
	qt.tab_bar_set_tabs_closable(tab_bar, 1)
	qt.tab_bar_set_movable(tab_bar, 1)
	qt.tab_bar_set_document_mode(tab_bar, 1)
	qt.layout_add_widget(tb_layout, auto_cast tab_bar)
	tb_label := qt.label_create(nil, "Current tab index: 0")
	qt.label_set_alignment(tb_label, .Centre)
	_ = qt.tab_bar_connect_current_changed(tab_bar, proc"c"(value: c.int, user_data: rawptr) {
		context = runtime.default_context()
		label: qt.Label = auto_cast user_data
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "Current tab index: %d", value)
		buf[len(msg)] = 0
		qt.label_set_text(label, cstring(raw_data(buf[:])))
	}, auto_cast tb_label)
	qt.layout_add_widget(tb_layout, auto_cast tb_label)
	qt.layout_add_widget(layout, auto_cast tb_group)

	// QToolBox
	tbx_group := qt.group_box_create(nil, "QToolBox (accordion)")
	tbx_layout := qt.vbox_layout_create(auto_cast tbx_group)
	tool_box := qt.tool_box_create(nil)
	_ = qt.tool_box_add_item(tool_box, auto_cast qt.label_create(nil, "First page of the QToolBox. Click headers to switch."), "Page One")
	_ = qt.tool_box_add_item(tool_box, auto_cast qt.label_create(nil, "Second page. QToolBox shows one page at a time."), "Page Two")
	_ = qt.tool_box_add_item(tool_box, auto_cast qt.label_create(nil, "Third page content."), "Page Three")
	qt.widget_set_maximum_height(auto_cast tool_box, 150)
	qt.layout_add_widget(tbx_layout, auto_cast tool_box)
	qt.layout_add_widget(layout, auto_cast tbx_group)

	// QScrollBar + QLCDNumber
	sl_group := qt.group_box_create(nil, "QScrollBar + QLCDNumber")
	sl_layout := qt.hbox_layout_create(auto_cast sl_group)
	scrollbar := qt.scroll_bar_create(.Horizontal, nil)
	qt.scroll_bar_set_range(scrollbar, 0, 255)
	qt.scroll_bar_set_value(scrollbar, 42)
	qt.scroll_bar_set_single_step(scrollbar, 1)
	qt.scroll_bar_set_page_step(scrollbar, 16)
	demo_state.extra_lcd = qt.lcd_number_create(nil)
	qt.lcd_number_set_digit_count(demo_state.extra_lcd, 3)
	qt.lcd_number_set_segment_style(demo_state.extra_lcd, .Flat)
	qt.lcd_number_display_int(demo_state.extra_lcd, 42)
	qt.widget_set_minimum_height(auto_cast demo_state.extra_lcd, 50)
	qt.layout_add_widget(sl_layout, auto_cast scrollbar)
	qt.layout_add_widget(sl_layout, auto_cast demo_state.extra_lcd)
	_ = qt.scroll_bar_connect_value_changed(scrollbar, proc"c"(value: c.int, user_data: rawptr) {
		qt.lcd_number_display_int(demo_state.extra_lcd, value)
	}, nil)
	qt.layout_add_widget(layout, auto_cast sl_group)

	// QCommandLinkButton
	cl_group := qt.group_box_create(nil, "QCommandLinkButton")
	cl_layout := qt.vbox_layout_create(auto_cast cl_group)
	cmd_btn := qt.command_link_button_create(nil, "Open Settings", "Click here to open the application settings panel")
	qt.push_button_connect_clicked(auto_cast cmd_btn, proc"c"(user_data: rawptr) {
		statusbar_show("Command link button clicked!")
	}, nil)
	qt.layout_add_widget(cl_layout, auto_cast cmd_btn)
	qt.layout_add_widget(layout, auto_cast cl_group)

	// QKeySequenceEdit + QFontComboBox
	kf_group := qt.group_box_create(nil, "QKeySequenceEdit + QFontComboBox")
	kf_layout := qt.form_layout_create(auto_cast kf_group)
	key_edit := qt.key_sequence_edit_create(nil)
	qt.form_layout_add_row(kf_layout, "Key Sequence:", auto_cast key_edit)
	font_combo := qt.font_combo_box_create(nil)
	font_preview := qt.label_create(nil, "The quick brown fox jumps over the lazy dog")
	qt.widget_set_font(auto_cast font_preview, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Normal, 0)
	qt.form_layout_add_row(kf_layout, "Font:", auto_cast font_combo)
	qt.form_layout_add_row(kf_layout, "Preview:", auto_cast font_preview)
	_ = qt.font_combo_box_connect_current_font_changed(font_combo, proc"c"(family: cstring, user_data: rawptr) {
		label: qt.Label = auto_cast user_data
		qt.widget_set_font(auto_cast label, family, 14, cast(c.int)qt.Font_Weight.Normal, 0)
	}, auto_cast font_preview)
	qt.layout_add_widget(layout, auto_cast kf_group)

	// QErrorMessage + QWhatsThis
	ew_group := qt.group_box_create(nil, "QErrorMessage + QWhatsThis")
	ew_layout := qt.hbox_layout_create(auto_cast ew_group)
	err_dialog := qt.error_message_create(auto_cast demo_state.window)
	err_btn := qt.push_button_create(nil, "Show Error Message")
	qt.push_button_connect_clicked(err_btn, proc"c"(user_data: rawptr) {
		dialog: qt.Error_Message = auto_cast user_data
		qt.error_message_show_message(dialog, "This is a sample error from the Extra Widgets demo.")
	}, auto_cast err_dialog)
	qt.layout_add_widget(ew_layout, auto_cast err_btn)
	whats_btn := qt.push_button_create(nil, "Enter What's This Mode")
	qt.push_button_connect_clicked(whats_btn, proc"c"(user_data: rawptr) {
		qt.whats_this_enter_mode()
		statusbar_show("What's This mode active")
	}, nil)
	qt.layout_add_widget(ew_layout, auto_cast whats_btn)
	qt.layout_add_widget(layout, auto_cast ew_group)

	// QStackedLayout
	stl_group := qt.group_box_create(nil, "QStackedLayout")
	stl_outer := qt.vbox_layout_create(auto_cast stl_group)
	stl_btn_row := qt.widget_create(nil)
	stl_btn_layout := qt.hbox_layout_create(stl_btn_row)
	stl_container := qt.widget_create(nil)
	stacked_lay := qt.stacked_layout_create(stl_container)
	stl_page_a := qt.label_create(nil, "Stacked Page A")
	qt.label_set_alignment(stl_page_a, .Centre)
	_ = qt.stacked_layout_add_widget(stacked_lay, auto_cast stl_page_a)
	stl_page_b := qt.label_create(nil, "Stacked Page B")
	qt.label_set_alignment(stl_page_b, .Centre)
	_ = qt.stacked_layout_add_widget(stacked_lay, auto_cast stl_page_b)
	stl_page_c := qt.label_create(nil, "Stacked Page C")
	qt.label_set_alignment(stl_page_c, .Centre)
	_ = qt.stacked_layout_add_widget(stacked_lay, auto_cast stl_page_c)
	stl_a := qt.push_button_create(nil, "Page A")
	stl_b := qt.push_button_create(nil, "Page B")
	stl_c := qt.push_button_create(nil, "Page C")
	qt.push_button_connect_clicked(stl_a, proc"c"(ud: rawptr) {
		qt.stacked_layout_set_current_index(auto_cast ud, 0)
	}, auto_cast stacked_lay)
	qt.push_button_connect_clicked(stl_b, proc"c"(ud: rawptr) {
		qt.stacked_layout_set_current_index(auto_cast ud, 1)
	}, auto_cast stacked_lay)
	qt.push_button_connect_clicked(stl_c, proc"c"(ud: rawptr) {
		qt.stacked_layout_set_current_index(auto_cast ud, 2)
	}, auto_cast stacked_lay)
	qt.layout_add_widget(stl_btn_layout, auto_cast stl_a)
	qt.layout_add_widget(stl_btn_layout, auto_cast stl_b)
	qt.layout_add_widget(stl_btn_layout, auto_cast stl_c)
	qt.layout_add_widget(stl_outer, stl_btn_row)
	qt.layout_add_widget(stl_outer, stl_container)
	qt.layout_add_widget(layout, auto_cast stl_group)

	extra_note := qt.label_create(nil, "Also bound: QSizeGrip, QFocusFrame, QRubberBand, QSplashScreen")
	qt.widget_set_style_sheet(auto_cast extra_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast extra_note)

	qt.box_layout_add_stretch(layout, 1)
	qt.scroll_area_set_widget(scroll, content)
	qt.layout_add_widget(outer_layout, auto_cast scroll)
	return page
}

build_mdi_wizard_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "MDI + Wizard Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	// QMdiArea
	mdi_group := qt.group_box_create(nil, "QMdiArea + QMdiSubWindow")
	mdi_layout := qt.vbox_layout_create(auto_cast mdi_group)
	mdi_btn_row := qt.widget_create(nil)
	mdi_btn_layout := qt.hbox_layout_create(mdi_btn_row)
	demo_state.mdi_area = qt.mdi_area_create(nil)

	add_btn := qt.push_button_create(nil, "Add Window")
	qt.push_button_connect_clicked(add_btn, mdi_add_sub_window, nil)
	qt.layout_add_widget(mdi_btn_layout, auto_cast add_btn)

	cascade_btn := qt.push_button_create(nil, "Cascade")
	qt.push_button_connect_clicked(cascade_btn, proc"c"(ud: rawptr) {
		qt.mdi_area_cascade_sub_windows(demo_state.mdi_area)
	}, nil)
	qt.layout_add_widget(mdi_btn_layout, auto_cast cascade_btn)

	tile_btn := qt.push_button_create(nil, "Tile")
	qt.push_button_connect_clicked(tile_btn, proc"c"(ud: rawptr) {
		qt.mdi_area_tile_sub_windows(demo_state.mdi_area)
	}, nil)
	qt.layout_add_widget(mdi_btn_layout, auto_cast tile_btn)

	close_active_btn := qt.push_button_create(nil, "Close Active")
	qt.push_button_connect_clicked(close_active_btn, proc"c"(ud: rawptr) {
		qt.mdi_area_close_active_sub_window(demo_state.mdi_area)
	}, nil)
	qt.layout_add_widget(mdi_btn_layout, auto_cast close_active_btn)

	qt.layout_add_widget(mdi_layout, mdi_btn_row)
	qt.layout_add_widget(mdi_layout, auto_cast demo_state.mdi_area)
	qt.layout_add_widget(layout, auto_cast mdi_group)

	// QWizard + QActionGroup
	bottom_row := qt.widget_create(nil)
	bottom_layout := qt.hbox_layout_create(bottom_row)

	wiz_group := qt.group_box_create(nil, "QWizard + QWizardPage")
	wiz_layout := qt.vbox_layout_create(auto_cast wiz_group)
	wiz_btn := qt.push_button_create(nil, "Open 3-Page Wizard...")
	qt.push_button_connect_clicked(wiz_btn, wizard_open, nil)
	qt.layout_add_widget(wiz_layout, auto_cast wiz_btn)
	qt.layout_add_widget(bottom_layout, auto_cast wiz_group)

	ag_group_box := qt.group_box_create(nil, "QActionGroup (exclusive)")
	ag_box_layout := qt.vbox_layout_create(auto_cast ag_group_box)
	ag_toolbar := qt.toolbar_create(nil, "Actions")
	ag_group := qt.action_group_create(nil)
	qt.action_group_set_exclusive(ag_group, 1)
	ag_a := qt.toolbar_add_action(ag_toolbar, "Option A")
	qt.action_set_checkable(ag_a, 1)
	qt.action_set_checked(ag_a, 1)
	qt.action_group_add_action(ag_group, ag_a)
	ag_b := qt.toolbar_add_action(ag_toolbar, "Option B")
	qt.action_set_checkable(ag_b, 1)
	qt.action_group_add_action(ag_group, ag_b)
	ag_c := qt.toolbar_add_action(ag_toolbar, "Option C")
	qt.action_set_checkable(ag_c, 1)
	qt.action_group_add_action(ag_group, ag_c)
	qt.layout_add_widget(ag_box_layout, auto_cast ag_toolbar)
	qt.layout_add_widget(bottom_layout, auto_cast ag_group_box)

	qt.layout_add_widget(layout, bottom_row)

	mdi_note := qt.label_create(nil, "Also bound: QColumnView, QWidgetAction")
	qt.widget_set_style_sheet(auto_cast mdi_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast mdi_note)
	return page
}

build_graphics_scene_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Graphics Scene Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	desc := qt.label_create(nil, "QGraphicsScene with movable items. Drag items to reposition. Scroll-hand drag to pan.")
	qt.label_set_word_wrap(desc, 1)
	qt.widget_set_size_policy(auto_cast desc, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast desc)

	scene := qt.graphics_scene_create_with_rect(0, 0, 600, 400, nil)
	view := qt.graphics_view_create_with_scene(scene, nil)
	qt.graphics_view_set_render_hint(view, .Antialiasing, 1)
	qt.graphics_view_set_drag_mode(view, .Scroll_Hand_Drag)

	bg := qt.brush_create_with_colour(245, 245, 250, 255)
	qt.graphics_scene_set_background_brush(scene, bg)
	qt.brush_destroy(bg)

	// QGraphicsRectItem
	r_pen := qt.pen_create_with_colour(30, 60, 120, 255)
	qt.pen_set_width(r_pen, 2)
	r_brush := qt.brush_create_with_colour(70, 130, 180, 180)
	rect := qt.graphics_scene_add_rect(scene, 20, 20, 120, 80, r_pen, r_brush)
	qt.graphics_item_set_flag(auto_cast rect, .Is_Movable, 1)
	qt.graphics_item_set_flag(auto_cast rect, .Is_Selectable, 1)
	qt.graphics_item_set_tool_tip(auto_cast rect, "QGraphicsRectItem")
	qt.pen_destroy(r_pen)
	qt.brush_destroy(r_brush)

	// QGraphicsEllipseItem
	e_pen := qt.pen_create_with_colour(120, 30, 30, 255)
	qt.pen_set_width(e_pen, 2)
	e_brush := qt.brush_create_with_colour(220, 100, 100, 180)
	ellipse := qt.graphics_scene_add_ellipse(scene, 180, 40, 100, 80, e_pen, e_brush)
	qt.graphics_item_set_flag(auto_cast ellipse, .Is_Movable, 1)
	qt.graphics_item_set_flag(auto_cast ellipse, .Is_Selectable, 1)
	qt.graphics_item_set_tool_tip(auto_cast ellipse, "QGraphicsEllipseItem")
	qt.pen_destroy(e_pen)
	qt.brush_destroy(e_brush)

	// QGraphicsTextItem
	t_font := qt.font_create("Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	text_item := qt.graphics_scene_add_text(scene, "QGraphicsTextItem", t_font)
	qt.graphics_item_set_pos(auto_cast text_item, 20, 130)
	qt.graphics_item_set_flag(auto_cast text_item, .Is_Movable, 1)
	qt.graphics_text_item_set_default_text_colour(text_item, 40, 40, 120, 255)
	qt.font_destroy(t_font)

	// QGraphicsLineItem
	l_pen := qt.pen_create_with_colour(50, 150, 50, 255)
	qt.pen_set_width(l_pen, 3)
	_ = qt.graphics_scene_add_line(scene, 320, 20, 500, 120, l_pen)
	qt.pen_destroy(l_pen)

	// QGraphicsPathItem
	gpath := qt.painter_path_create()
	qt.painter_path_move_to(gpath, 350, 150)
	qt.painter_path_cubic_to(gpath, 350, 220, 470, 220, 470, 150)
	qt.painter_path_close_subpath(gpath)
	p_pen := qt.pen_create_with_colour(140, 80, 200, 255)
	qt.pen_set_width(p_pen, 2)
	p_brush := qt.brush_create_with_colour(180, 140, 220, 150)
	gpath_item := qt.graphics_scene_add_path(scene, gpath, p_pen, p_brush)
	qt.graphics_item_set_flag(auto_cast gpath_item, .Is_Movable, 1)
	qt.graphics_item_set_tool_tip(auto_cast gpath_item, "QGraphicsPathItem")
	qt.painter_path_destroy(gpath)
	qt.pen_destroy(p_pen)
	qt.brush_destroy(p_brush)

	// QGraphicsProxyWidget
	proxy_btn := qt.push_button_create(nil, "Embedded QPushButton")
	proxy := qt.graphics_scene_add_widget(scene, auto_cast proxy_btn)
	qt.graphics_item_set_pos(auto_cast proxy, 20, 280)
	qt.graphics_item_set_flag(auto_cast proxy, .Is_Movable, 1)

	qt.layout_add_widget(layout, auto_cast view)

	// Zoom/rotate controls
	ctrl_row := qt.widget_create(nil)
	ctrl_layout := qt.hbox_layout_create(ctrl_row)

	zoom_in_btn := qt.push_button_create(nil, "Zoom In")
	qt.push_button_connect_clicked(zoom_in_btn, proc"c"(ud: rawptr) {
		qt.graphics_view_scale(auto_cast ud, 1.25, 1.25)
	}, auto_cast view)
	qt.layout_add_widget(ctrl_layout, auto_cast zoom_in_btn)

	zoom_out_btn := qt.push_button_create(nil, "Zoom Out")
	qt.push_button_connect_clicked(zoom_out_btn, proc"c"(ud: rawptr) {
		qt.graphics_view_scale(auto_cast ud, 0.8, 0.8)
	}, auto_cast view)
	qt.layout_add_widget(ctrl_layout, auto_cast zoom_out_btn)

	reset_view_btn := qt.push_button_create(nil, "Reset View")
	qt.push_button_connect_clicked(reset_view_btn, proc"c"(ud: rawptr) {
		qt.graphics_view_reset_transform(auto_cast ud)
	}, auto_cast view)
	qt.layout_add_widget(ctrl_layout, auto_cast reset_view_btn)

	rotate_view_btn := qt.push_button_create(nil, "Rotate 15\xC2\xB0")
	qt.push_button_connect_clicked(rotate_view_btn, proc"c"(ud: rawptr) {
		qt.graphics_view_rotate(auto_cast ud, 15.0)
	}, auto_cast view)
	qt.layout_add_widget(ctrl_layout, auto_cast rotate_view_btn)

	qt.layout_add_widget(layout, ctrl_row)

	gfx_note := qt.label_create(nil, "Also bound: QGraphicsItemGroup, QGraphicsPixmapItem, QGraphicsBlurEffect, QGraphicsColourizeEffect, QGraphicsDropShadowEffect, QGraphicsOpacityEffect")
	qt.label_set_word_wrap(gfx_note, 1)
	qt.widget_set_style_sheet(auto_cast gfx_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast gfx_note)
	return page
}

build_undo_mapping_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Undo/Redo + Data Mapping Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	splitter := qt.splitter_create(.Horizontal, nil)

	// QUndoStack + QUndoView
	undo_group := qt.group_box_create(nil, "QUndoStack + QUndoView")
	undo_layout := qt.vbox_layout_create(auto_cast undo_group)

	demo_state.undo_stack = qt.undo_stack_create(nil)
	demo_state.undo_label = qt.label_create(nil, "Commands: 0")
	qt.label_set_alignment(demo_state.undo_label, .Centre)
	qt.layout_add_widget(undo_layout, auto_cast demo_state.undo_label)

	undo_btn_row := qt.widget_create(nil)
	undo_btn_layout := qt.hbox_layout_create(undo_btn_row)
	push_cmd_btn := qt.push_button_create(nil, "Push Command")
	qt.push_button_connect_clicked(push_cmd_btn, undo_add_command, nil)
	qt.layout_add_widget(undo_btn_layout, auto_cast push_cmd_btn)
	undo_action_btn := qt.push_button_create(nil, "Undo")
	qt.push_button_connect_clicked(undo_action_btn, undo_do_undo, nil)
	qt.layout_add_widget(undo_btn_layout, auto_cast undo_action_btn)
	redo_action_btn := qt.push_button_create(nil, "Redo")
	qt.push_button_connect_clicked(redo_action_btn, undo_do_redo, nil)
	qt.layout_add_widget(undo_btn_layout, auto_cast redo_action_btn)
	qt.layout_add_widget(undo_layout, undo_btn_row)

	undo_view := qt.undo_view_create(nil)
	qt.undo_view_set_stack(undo_view, demo_state.undo_stack)
	qt.undo_view_set_empty_label(undo_view, "(no commands)")
	qt.layout_add_widget(undo_layout, auto_cast undo_view)
	qt.splitter_add_widget(splitter, auto_cast undo_group)

	// QDataWidgetMapper
	mapper_group := qt.group_box_create(nil, "QDataWidgetMapper")
	mapper_layout := qt.vbox_layout_create(auto_cast mapper_group)

	mapper_model := qt.standard_item_model_create(0, 3, nil)
	mapper_headers := [?]cstring{"Name", "Language", "Rating"}
	qt.standard_item_model_set_horizontal_header_labels(mapper_model, raw_data(mapper_headers[:]), 3)

	mapper_data := [4][3]cstring{
		{"Odin", "Systems", "5/5"},
		{"Zig", "Systems", "4/5"},
		{"Rust", "Systems", "4/5"},
		{"Python", "Scripting", "3/5"},
	}
	for row_idx in 0 ..< 4 {
		items := [3]qt.Standard_Item{
			qt.standard_item_create(mapper_data[row_idx][0]),
			qt.standard_item_create(mapper_data[row_idx][1]),
			qt.standard_item_create(mapper_data[row_idx][2]),
		}
		qt.standard_item_model_append_row(mapper_model, raw_data(items[:]), 3)
	}

	mapper_form_widget := qt.widget_create(nil)
	mapper_form := qt.form_layout_create(mapper_form_widget)
	name_edit := qt.line_edit_create(nil)
	lang_edit := qt.line_edit_create(nil)
	rating_edit := qt.line_edit_create(nil)
	qt.form_layout_add_row(mapper_form, "Name:", auto_cast name_edit)
	qt.form_layout_add_row(mapper_form, "Language:", auto_cast lang_edit)
	qt.form_layout_add_row(mapper_form, "Rating:", auto_cast rating_edit)
	qt.layout_add_widget(mapper_layout, mapper_form_widget)

	mapper := qt.data_widget_mapper_create(nil)
	qt.data_widget_mapper_set_model(mapper, auto_cast mapper_model)
	qt.data_widget_mapper_add_mapping(mapper, auto_cast name_edit, 0)
	qt.data_widget_mapper_add_mapping(mapper, auto_cast lang_edit, 1)
	qt.data_widget_mapper_add_mapping(mapper, auto_cast rating_edit, 2)
	qt.data_widget_mapper_to_first(mapper)

	nav_row := qt.widget_create(nil)
	nav_layout := qt.hbox_layout_create(nav_row)
	first_nav_btn := qt.push_button_create(nil, "First")
	qt.push_button_connect_clicked(first_nav_btn, proc"c"(ud: rawptr) {
		qt.data_widget_mapper_to_first(auto_cast ud)
	}, auto_cast mapper)
	qt.layout_add_widget(nav_layout, auto_cast first_nav_btn)
	prev_nav_btn := qt.push_button_create(nil, "Previous")
	qt.push_button_connect_clicked(prev_nav_btn, proc"c"(ud: rawptr) {
		qt.data_widget_mapper_to_previous(auto_cast ud)
	}, auto_cast mapper)
	qt.layout_add_widget(nav_layout, auto_cast prev_nav_btn)
	next_nav_btn := qt.push_button_create(nil, "Next")
	qt.push_button_connect_clicked(next_nav_btn, proc"c"(ud: rawptr) {
		qt.data_widget_mapper_to_next(auto_cast ud)
	}, auto_cast mapper)
	qt.layout_add_widget(nav_layout, auto_cast next_nav_btn)
	last_nav_btn := qt.push_button_create(nil, "Last")
	qt.push_button_connect_clicked(last_nav_btn, proc"c"(ud: rawptr) {
		qt.data_widget_mapper_to_last(auto_cast ud)
	}, auto_cast mapper)
	qt.layout_add_widget(nav_layout, auto_cast last_nav_btn)
	qt.layout_add_widget(mapper_layout, nav_row)
	qt.splitter_add_widget(splitter, auto_cast mapper_group)

	qt.layout_add_widget(layout, auto_cast splitter)

	undo_note := qt.label_create(nil, "Also bound: QUndoCommand, QUndoGroup, QStyledItemDelegate, QItemDelegate")
	qt.widget_set_style_sheet(auto_cast undo_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast undo_note)
	return page
}

build_qtgui_objects_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "QtGui Objects Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	canvas := qt.paintable_widget_create(nil, qtgui_paint_demo, nil)
	qt.widget_set_minimum_size(auto_cast canvas, 500, 180)
	qt.layout_add_widget(layout, auto_cast canvas)

	info_splitter := qt.splitter_create(.Horizontal, nil)

	// QColor
	colour_group := qt.group_box_create(nil, "QColor")
	colour_layout := qt.vbox_layout_create(auto_cast colour_group)
	colour_info := qt.label_create(nil, "")
	{
		col := qt.colour_create(70, 130, 180, 255)
		col_name := qt.colour_get_name(col)
		col_h, col_s, col_v, col_a: c.int
		qt.colour_get_hsv(col, &col_h, &col_s, &col_v, &col_a)
		lighter := qt.colour_lighter(col, 150)
		lighter_name := qt.colour_get_name(lighter)
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "RGBA(70,130,180,255)\nName: %s\nHSV: %d,%d,%d\nLighter(150): %s", col_name, col_h, col_s, col_v, lighter_name)
		buf[len(msg)] = 0
		qt.label_set_text(colour_info, cstring(raw_data(buf[:])))
		qt.colour_destroy(lighter)
		qt.colour_destroy(col)
		if col_name != nil do qt.free_string(col_name)
		if lighter_name != nil do qt.free_string(lighter_name)
	}
	qt.layout_add_widget(colour_layout, auto_cast colour_info)
	qt.splitter_add_widget(info_splitter, auto_cast colour_group)

	// QFont + QFontDatabase
	font_group := qt.group_box_create(nil, "QFont + QFontDatabase")
	font_layout := qt.vbox_layout_create(auto_cast font_group)
	font_info := qt.label_create(nil, "")
	{
		fnt := qt.font_create("Segoe UI", 12, cast(c.int)qt.Font_Weight.Bold, 1)
		fnt_family := qt.font_get_family(fnt)
		fnt_size := qt.font_get_point_size(fnt)
		is_bold := qt.font_is_bold(fnt)
		is_italic := qt.font_is_italic(fnt)
		families_ptr: [^]cstring
		family_count := qt.font_database_get_families(&families_ptr)
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "Family: %s\nSize: %dpt  Bold: %d  Italic: %d\nFontDatabase: %d families", fnt_family, fnt_size, is_bold, is_italic, family_count)
		buf[len(msg)] = 0
		qt.label_set_text(font_info, cstring(raw_data(buf[:])))
		qt.font_destroy(fnt)
		if fnt_family != nil do qt.free_string(fnt_family)
		if family_count > 0 do qt.font_database_free_families(families_ptr, family_count)
	}
	qt.layout_add_widget(font_layout, auto_cast font_info)
	qt.splitter_add_widget(info_splitter, auto_cast font_group)

	// QKeySequence
	ks_group := qt.group_box_create(nil, "QKeySequence")
	ks_layout := qt.vbox_layout_create(auto_cast ks_group)
	ks_info := qt.label_create(nil, "")
	{
		ks := qt.key_sequence_create("Ctrl+Shift+S")
		ks_str := qt.key_sequence_to_string(ks)
		ks_count := qt.key_sequence_get_count(ks)
		buf: [128]u8
		msg := fmt.bprintf(buf[:], "Input: Ctrl+Shift+S\nParsed: %s\nKey count: %d", ks_str, ks_count)
		buf[len(msg)] = 0
		qt.label_set_text(ks_info, cstring(raw_data(buf[:])))
		if ks_str != nil do qt.free_string(ks_str)
		qt.key_sequence_destroy(ks)
	}
	qt.layout_add_widget(ks_layout, auto_cast ks_info)
	qt.splitter_add_widget(info_splitter, auto_cast ks_group)

	qt.layout_add_widget(layout, auto_cast info_splitter)

	gui_note := qt.label_create(nil, "Also bound: QPalette, QCursor, QRegion, QTextCursor, QTextDocument, QGradient variants, QImage, QBitmap, QPicture, QPageLayout/QPageSize, QMovie, QImageReader/QImageWriter")
	qt.label_set_word_wrap(gui_note, 1)
	qt.widget_set_style_sheet(auto_cast gui_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast gui_note)

	qt.box_layout_add_stretch(layout, 1)
	return page
}

build_file_data_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	layout := qt.vbox_layout_create(page)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "File I/O + Data Formats Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.widget_set_size_policy(auto_cast heading, .Preferred, .Fixed)
	qt.layout_add_widget(layout, auto_cast heading)

	splitter := qt.splitter_create(.Horizontal, nil)

	// QFile, QFileInfo, QDir
	file_group := qt.group_box_create(nil, "QFile, QFileInfo, QDir")
	file_layout := qt.vbox_layout_create(auto_cast file_group)
	file_output := qt.plain_text_edit_create(nil)
	qt.plain_text_edit_set_read_only(file_output, 1)
	qt.widget_set_font(auto_cast file_output, "Consolas", 9, cast(c.int)qt.Font_Weight.Normal, 0)
	{
		dir := qt.dir_create(".")
		dir_path := qt.dir_get_absolute_path(dir)
		home_path := qt.dir_home_path()
		temp_path := qt.dir_temp_path()
		entry_count := qt.dir_get_entry_count(dir, .All_Entries)

		info := qt.file_info_create(".")
		abs_path := qt.file_info_get_absolute_file_path(info)
		is_dir_result := qt.file_info_is_dir(info)

		buf: [1024]u8
		msg := fmt.bprintf(buf[:], "QDir:\n  Path: %s\n  Entries: %d\n  Home: %s\n  Temp: %s\n\nQFileInfo (\".\"):\n  Absolute: %s\n  Is dir: %d\n\nQTemporaryFile, QTemporaryDir,\nQSaveFile, QBuffer,\nQFileSystemWatcher: bound", dir_path, entry_count, home_path, temp_path, abs_path, is_dir_result)
		buf[len(msg)] = 0
		qt.plain_text_edit_set_plain_text(file_output, cstring(raw_data(buf[:])))

		if dir_path != nil do qt.free_string(dir_path)
		if home_path != nil do qt.free_string(home_path)
		if temp_path != nil do qt.free_string(temp_path)
		if abs_path != nil do qt.free_string(abs_path)
		qt.file_info_destroy(info)
		qt.dir_destroy(dir)
	}
	qt.layout_add_widget(file_layout, auto_cast file_output)
	qt.splitter_add_widget(splitter, auto_cast file_group)

	// JSON + XML
	data_group := qt.group_box_create(nil, "QJson*, QXmlStream*")
	data_layout := qt.vbox_layout_create(auto_cast data_group)
	data_output := qt.plain_text_edit_create(nil)
	qt.plain_text_edit_set_read_only(data_output, 1)
	qt.widget_set_font(auto_cast data_output, "Consolas", 9, cast(c.int)qt.Font_Weight.Normal, 0)
	{
		obj := qt.json_object_create()
		qt.json_object_set_string(obj, "name", "Odin Qt Demo")
		qt.json_object_set_int(obj, "version", 1)
		qt.json_object_set_bool(obj, "is_awesome", 1)
		arr := qt.json_array_create()
		qt.json_array_append_string(arr, "widgets")
		qt.json_array_append_string(arr, "bindings")
		qt.json_array_append_string(arr, "demos")
		qt.json_object_set_array(obj, "features", arr)
		doc := qt.json_document_from_object(obj)
		json_text := qt.json_document_to_json(doc, 0)

		writer := qt.xml_stream_writer_create()
		qt.xml_stream_writer_set_auto_formatting(writer, 1)
		qt.xml_stream_writer_write_start_document(writer)
		qt.xml_stream_writer_write_start_element(writer, "demo")
		qt.xml_stream_writer_write_attribute(writer, "version", "1.0")
		qt.xml_stream_writer_write_text_element(writer, "name", "Odin Qt")
		qt.xml_stream_writer_write_text_element(writer, "language", "Odin")
		qt.xml_stream_writer_write_end_element(writer)
		qt.xml_stream_writer_write_end_document(writer)
		xml_text := qt.xml_stream_writer_get_output(writer)

		buf: [2048]u8
		msg := fmt.bprintf(buf[:], "=== JSON ===\n%s\n=== XML ===\n%s", json_text, xml_text)
		buf[len(msg)] = 0
		qt.plain_text_edit_set_plain_text(data_output, cstring(raw_data(buf[:])))

		if json_text != nil do qt.free_string(json_text)
		if xml_text != nil do qt.free_string(xml_text)
		qt.json_document_destroy(doc)
		qt.json_array_destroy(arr)
		qt.json_object_destroy(obj)
		qt.xml_stream_writer_destroy(writer)
	}
	qt.layout_add_widget(data_layout, auto_cast data_output)
	qt.splitter_add_widget(splitter, auto_cast data_group)

	qt.layout_add_widget(layout, auto_cast splitter)
	return page
}

build_core_utilities_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	outer_layout := qt.vbox_layout_create(page)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	content := qt.widget_create(nil)
	layout := qt.vbox_layout_create(content)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Core Utilities Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// QDateTime, QDate, QTime, QLocale, QCalendar
	dt_group := qt.group_box_create(nil, "QDateTime, QDate, QTime, QLocale, QCalendar")
	dt_layout := qt.vbox_layout_create(auto_cast dt_group)
	dt_output := qt.label_create(nil, "")
	{
		dt := qt.date_time_current()
		dt_str := qt.date_time_to_string(dt, "yyyy-MM-dd hh:mm:ss")

		date := qt.date_current()
		date_str := qt.date_to_string(date, "dddd, MMMM d, yyyy")
		day_of_week := qt.date_get_day_of_week(date)

		time_now := qt.time_current()
		time_str := qt.time_to_string(time_now, "hh:mm:ss.zzz")

		locale := qt.locale_create()
		locale_name := qt.locale_get_name(locale)
		locale_lang := qt.locale_get_language_name(locale)

		cal := qt.calendar_create()
		cal_year: c.int
		cal_month: c.int
		cal_day: c.int
		qt.date_time_get_date(dt, &cal_year, &cal_month, &cal_day)
		days_in_month := qt.calendar_get_days_in_month(cal, cal_month, cal_year)
		is_leap := qt.calendar_is_leap_year(cal, cal_year)

		buf: [512]u8
		msg := fmt.bprintf(buf[:], "DateTime: %s\nDate: %s (weekday %d)\nTime: %s\nLocale: %s (%s)\nCalendar: days in month=%d, leap=%d", dt_str, date_str, day_of_week, time_str, locale_name, locale_lang, days_in_month, is_leap)
		buf[len(msg)] = 0
		qt.label_set_text(dt_output, cstring(raw_data(buf[:])))

		if dt_str != nil do qt.free_string(dt_str)
		if date_str != nil do qt.free_string(date_str)
		if time_str != nil do qt.free_string(time_str)
		if locale_name != nil do qt.free_string(locale_name)
		if locale_lang != nil do qt.free_string(locale_lang)
		qt.calendar_destroy(cal)
		qt.locale_destroy(locale)
		qt.time_destroy(time_now)
		qt.date_destroy(date)
		qt.date_time_destroy(dt)
	}
	qt.label_set_word_wrap(dt_output, 1)
	qt.layout_add_widget(dt_layout, auto_cast dt_output)
	qt.layout_add_widget(layout, auto_cast dt_group)

	// QUrl, QUuid, QRegularExpression
	url_group := qt.group_box_create(nil, "QUrl, QUuid, QRegularExpression")
	url_layout := qt.vbox_layout_create(auto_cast url_group)
	url_output := qt.label_create(nil, "")
	{
		url := qt.url_create("https://odin-lang.org/docs?q=hello#section")
		url_scheme := qt.url_get_scheme(url)
		url_host := qt.url_get_host(url)
		url_path := qt.url_get_path(url)
		url_query := qt.url_get_query(url)
		url_frag := qt.url_get_fragment(url)

		uuid := qt.uuid_create()
		uuid_str := qt.uuid_to_string(uuid)

		regex := qt.regex_create("(\\w+)@(\\w+\\.\\w+)")
		regex_valid := qt.regex_is_valid(regex)
		regex_match := qt.regex_has_match(regex, "user@example.com")
		regex_cap := qt.regex_get_match(regex, "user@example.com", 0)

		buf: [512]u8
		msg := fmt.bprintf(buf[:], "URL: %s://%s%s?%s#%s\nUUID: %s\nRegex valid=%d, match=%d, captured='%s'", url_scheme, url_host, url_path, url_query, url_frag, uuid_str, regex_valid, regex_match, regex_cap)
		buf[len(msg)] = 0
		qt.label_set_text(url_output, cstring(raw_data(buf[:])))

		if url_scheme != nil do qt.free_string(url_scheme)
		if url_host != nil do qt.free_string(url_host)
		if url_path != nil do qt.free_string(url_path)
		if url_query != nil do qt.free_string(url_query)
		if url_frag != nil do qt.free_string(url_frag)
		if uuid_str != nil do qt.free_string(uuid_str)
		if regex_cap != nil do qt.free_string(regex_cap)
		qt.regex_destroy(regex)
		qt.uuid_destroy(uuid)
		qt.url_destroy(url)
	}
	qt.label_set_word_wrap(url_output, 1)
	qt.layout_add_widget(url_layout, auto_cast url_output)
	qt.layout_add_widget(layout, auto_cast url_group)

	// QCryptographicHash, QElapsedTimer, QRandomGenerator, QVersionNumber
	crypto_group := qt.group_box_create(nil, "QCryptographicHash, QElapsedTimer, QRandomGenerator, QVersionNumber")
	crypto_layout := qt.vbox_layout_create(auto_cast crypto_group)
	crypto_output := qt.label_create(nil, "")
	{
		input_str: string = "Hello, Odin + Qt!"
		hash := qt.crypto_hash_create(.Sha256)
		qt.crypto_hash_add_data(hash, raw_data(input_str), cast(c.int)len(input_str))
		hash_buf: [32]u8
		hash_len := qt.crypto_hash_get_result(hash, raw_data(hash_buf[:]), 32)

		etimer := qt.elapsed_timer_create()
		qt.elapsed_timer_start(etimer)
		elapsed := qt.elapsed_timer_elapsed(etimer)

		rand_val := qt.random_generator_generate()
		rand_bounded := qt.random_generator_generate_bounded_int(100)
		rand_dbl := qt.random_generator_generate_double()

		v1 := qt.version_number_create(1, 2, 3)
		v2 := qt.version_number_create(1, 3, 0)
		v1_str := qt.version_number_to_string(v1)
		v2_str := qt.version_number_to_string(v2)
		ver_cmp := qt.version_number_compare(v1, v2)

		buf: [512]u8
		msg := fmt.bprintf(buf[:], "SHA256: %02x%02x%02x%02x... (%d bytes)\nElapsed: %dms\nRandom: %d, bounded(100)=%d, dbl=%.4f\nVersion: %s vs %s = %d", hash_buf[0], hash_buf[1], hash_buf[2], hash_buf[3], hash_len, elapsed, rand_val, rand_bounded, rand_dbl, v1_str, v2_str, ver_cmp)
		buf[len(msg)] = 0
		qt.label_set_text(crypto_output, cstring(raw_data(buf[:])))

		if v1_str != nil do qt.free_string(v1_str)
		if v2_str != nil do qt.free_string(v2_str)
		qt.version_number_destroy(v2)
		qt.version_number_destroy(v1)
		qt.elapsed_timer_destroy(etimer)
		qt.crypto_hash_destroy(hash)
	}
	qt.label_set_word_wrap(crypto_output, 1)
	qt.layout_add_widget(crypto_layout, auto_cast crypto_output)
	qt.layout_add_widget(layout, auto_cast crypto_group)

	// QSysInfo, QStorageInfo, QMimeDatabase
	sys_group := qt.group_box_create(nil, "QSysInfo, QStorageInfo, QMimeDatabase")
	sys_layout := qt.vbox_layout_create(auto_cast sys_group)
	sys_output := qt.label_create(nil, "")
	{
		product := qt.sys_info_get_pretty_product_name()
		kernel := qt.sys_info_get_kernel_type()
		kernel_ver := qt.sys_info_get_kernel_version()
		cpu := qt.sys_info_get_cpu_architecture()
		hostname := qt.sys_info_get_machine_host_name()

		storage := qt.storage_info_create("C:/")
		total_bytes := qt.storage_info_get_bytes_total(storage)
		free_bytes := qt.storage_info_get_bytes_free(storage)
		fs_type := qt.storage_info_get_file_system_type(storage)

		mime_db := qt.mime_database_create()
		mime_type := qt.mime_database_mime_type_for_file(mime_db, "test.txt")

		total_gb := cast(f64)total_bytes / (1024.0 * 1024.0 * 1024.0)
		free_gb := cast(f64)free_bytes / (1024.0 * 1024.0 * 1024.0)

		buf: [512]u8
		msg := fmt.bprintf(buf[:], "System: %s\nKernel: %s %s\nCPU: %s  Host: %s\nC:/ %.1fGB total, %.1fGB free (%s)\nMIME .txt: %s", product, kernel, kernel_ver, cpu, hostname, total_gb, free_gb, fs_type, mime_type)
		buf[len(msg)] = 0
		qt.label_set_text(sys_output, cstring(raw_data(buf[:])))

		if product != nil do qt.free_string(product)
		if kernel != nil do qt.free_string(kernel)
		if kernel_ver != nil do qt.free_string(kernel_ver)
		if cpu != nil do qt.free_string(cpu)
		if hostname != nil do qt.free_string(hostname)
		if fs_type != nil do qt.free_string(fs_type)
		if mime_type != nil do qt.free_string(mime_type)
		qt.mime_database_destroy(mime_db)
		qt.storage_info_destroy(storage)
	}
	qt.label_set_word_wrap(sys_output, 1)
	qt.layout_add_widget(sys_layout, auto_cast sys_output)
	qt.layout_add_widget(layout, auto_cast sys_group)

	core_note := qt.label_create(nil, "Also bound: QThread, QMutex, QReadWriteLock, QSemaphore, QProcess, QSharedMemory, QSystemSemaphore, QLockFile, QLibrary, QEventLoop")
	qt.label_set_word_wrap(core_note, 1)
	qt.widget_set_style_sheet(auto_cast core_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast core_note)

	qt.box_layout_add_stretch(layout, 1)
	qt.scroll_area_set_widget(scroll, content)
	qt.layout_add_widget(outer_layout, auto_cast scroll)
	return page
}

build_advanced_models_tab :: proc(application: qt.Application) -> qt.Widget {
	page := qt.widget_create(nil)
	outer_layout := qt.vbox_layout_create(page)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	content := qt.widget_create(nil)
	layout := qt.vbox_layout_create(content)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Advanced Models + Utilities Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// QStringListModel + QListView
	slm_group := qt.group_box_create(nil, "QStringListModel + QListView")
	slm_layout := qt.vbox_layout_create(auto_cast slm_group)
	slm := qt.string_list_model_create(nil)
	slm_items := [?]cstring{"Apple", "Banana", "Cherry", "Date", "Elderberry"}
	qt.string_list_model_set_string_list(slm, raw_data(slm_items[:]), 5)
	slm_view := qt.list_view_create(nil)
	qt.list_view_set_model(slm_view, auto_cast slm)
	qt.widget_set_maximum_height(auto_cast slm_view, 100)
	qt.layout_add_widget(slm_layout, auto_cast slm_view)
	qt.layout_add_widget(layout, auto_cast slm_group)

	// QTransposeProxyModel
	tp_group := qt.group_box_create(nil, "QTransposeProxyModel")
	tp_layout := qt.vbox_layout_create(auto_cast tp_group)
	src_model := qt.standard_item_model_create(0, 2, nil)
	src_headers := [?]cstring{"Name", "Value"}
	qt.standard_item_model_set_horizontal_header_labels(src_model, raw_data(src_headers[:]), 2)
	src_data := [3][2]cstring{{"Alpha", "100"}, {"Beta", "200"}, {"Gamma", "300"}}
	for row_idx in 0 ..< 3 {
		row_items := [2]qt.Standard_Item{
			qt.standard_item_create(src_data[row_idx][0]),
			qt.standard_item_create(src_data[row_idx][1]),
		}
		qt.standard_item_model_append_row(src_model, raw_data(row_items[:]), 2)
	}
	transpose := qt.transpose_proxy_model_create(nil)
	qt.transpose_proxy_model_set_source_model(transpose, auto_cast src_model)

	tp_splitter := qt.splitter_create(.Horizontal, nil)
	orig_container := qt.widget_create(nil)
	orig_cl := qt.vbox_layout_create(orig_container)
	qt.layout_add_widget(orig_cl, auto_cast qt.label_create(nil, "Original (3x2):"))
	orig_table := qt.table_view_create(nil)
	qt.table_view_set_model(orig_table, src_model)
	qt.table_view_resize_columns_to_contents(orig_table)
	qt.widget_set_maximum_height(auto_cast orig_table, 120)
	qt.layout_add_widget(orig_cl, auto_cast orig_table)
	qt.splitter_add_widget(tp_splitter, orig_container)

	trans_container := qt.widget_create(nil)
	trans_cl := qt.vbox_layout_create(trans_container)
	qt.layout_add_widget(trans_cl, auto_cast qt.label_create(nil, "Transposed (2x3):"))
	trans_table := qt.table_view_create(nil)
	qt.table_view_set_model(trans_table, auto_cast transpose)
	qt.table_view_resize_columns_to_contents(trans_table)
	qt.widget_set_maximum_height(auto_cast trans_table, 120)
	qt.layout_add_widget(trans_cl, auto_cast trans_table)
	qt.splitter_add_widget(tp_splitter, trans_container)

	qt.layout_add_widget(tp_layout, auto_cast tp_splitter)
	qt.layout_add_widget(layout, auto_cast tp_group)

	// QStyle / QStyleFactory
	style_group := qt.group_box_create(nil, "QStyle / QStyleFactory")
	style_layout := qt.vbox_layout_create(auto_cast style_group)
	style_combo := qt.combo_box_create(nil)
	{
		keys_ptr: [^]cstring
		key_count := qt.style_get_keys(&keys_ptr)
		for key_idx in 0 ..< key_count {
			qt.combo_box_add_item(style_combo, keys_ptr[key_idx])
		}
		if key_count > 0 do qt.style_free_keys(keys_ptr, key_count)
	}
	_ = qt.combo_box_connect_current_text_changed(style_combo, proc"c"(style_name: cstring, user_data: rawptr) {
		qt.application_set_style(auto_cast user_data, style_name)
	}, auto_cast application)
	qt.layout_add_widget(style_layout, auto_cast style_combo)
	qt.layout_add_widget(layout, auto_cast style_group)

	// QTimeLine
	tl_group := qt.group_box_create(nil, "QTimeLine")
	tl_layout := qt.vbox_layout_create(auto_cast tl_group)
	demo_state.time_line_progress = qt.progress_bar_create(nil)
	qt.progress_bar_set_range(demo_state.time_line_progress, 0, 100)
	qt.progress_bar_set_value(demo_state.time_line_progress, 0)
	demo_state.time_line_label = qt.label_create(nil, "Frame: 0")
	qt.label_set_alignment(demo_state.time_line_label, .Centre)
	demo_state.time_line = qt.time_line_create(3000, nil)
	qt.time_line_set_frame_range(demo_state.time_line, 0, 100)
	qt.time_line_set_easing_curve(demo_state.time_line, .In_Out_Cubic)
	_ = qt.time_line_connect_value_changed(demo_state.time_line, time_line_value_changed, nil)
	_ = qt.time_line_connect_frame_changed(demo_state.time_line, time_line_frame_changed, nil)
	_ = qt.time_line_connect_finished(demo_state.time_line, time_line_finished, nil)
	qt.layout_add_widget(tl_layout, auto_cast demo_state.time_line_progress)
	qt.layout_add_widget(tl_layout, auto_cast demo_state.time_line_label)

	tl_btn_row := qt.widget_create(nil)
	tl_btn_layout := qt.hbox_layout_create(tl_btn_row)
	tl_start := qt.push_button_create(nil, "Start")
	qt.push_button_connect_clicked(tl_start, proc"c"(ud: rawptr) {
		qt.time_line_start(demo_state.time_line)
		statusbar_show("TimeLine started (3 seconds)")
	}, nil)
	qt.layout_add_widget(tl_btn_layout, auto_cast tl_start)
	tl_stop := qt.push_button_create(nil, "Stop")
	qt.push_button_connect_clicked(tl_stop, proc"c"(ud: rawptr) {
		qt.time_line_stop(demo_state.time_line)
	}, nil)
	qt.layout_add_widget(tl_btn_layout, auto_cast tl_stop)
	tl_reset := qt.push_button_create(nil, "Reset")
	qt.push_button_connect_clicked(tl_reset, proc"c"(ud: rawptr) {
		qt.time_line_stop(demo_state.time_line)
		qt.time_line_set_current_time(demo_state.time_line, 0)
		qt.progress_bar_set_value(demo_state.time_line_progress, 0)
		qt.label_set_text(demo_state.time_line_label, "Frame: 0")
	}, nil)
	qt.layout_add_widget(tl_btn_layout, auto_cast tl_reset)
	qt.layout_add_widget(tl_layout, tl_btn_row)
	qt.layout_add_widget(layout, auto_cast tl_group)

	// QSignalMapper
	sm_group := qt.group_box_create(nil, "QSignalMapper")
	sm_layout := qt.vbox_layout_create(auto_cast sm_group)
	sm_result := qt.label_create(nil, "Click a button:")
	qt.label_set_alignment(sm_result, .Centre)
	demo_state.signal_mapper = qt.signal_mapper_create(nil)
	_ = qt.signal_mapper_connect_mapped_int(demo_state.signal_mapper, proc"c"(value: c.int, user_data: rawptr) {
		context = runtime.default_context()
		label: qt.Label = auto_cast user_data
		buf: [64]u8
		msg := fmt.bprintf(buf[:], "Button %d clicked via QSignalMapper", value)
		buf[len(msg)] = 0
		qt.label_set_text(label, cstring(raw_data(buf[:])))
	}, auto_cast sm_result)

	sm_btn_row := qt.widget_create(nil)
	sm_btn_layout := qt.hbox_layout_create(sm_btn_row)
	sm_btn_1 := qt.push_button_create(nil, "Button 1")
	qt.signal_mapper_set_mapping_int(demo_state.signal_mapper, auto_cast sm_btn_1, 1)
	qt.push_button_connect_clicked(sm_btn_1, proc"c"(ud: rawptr) {
		qt.signal_mapper_map(demo_state.signal_mapper, ud)
	}, auto_cast sm_btn_1)
	qt.layout_add_widget(sm_btn_layout, auto_cast sm_btn_1)

	sm_btn_2 := qt.push_button_create(nil, "Button 2")
	qt.signal_mapper_set_mapping_int(demo_state.signal_mapper, auto_cast sm_btn_2, 2)
	qt.push_button_connect_clicked(sm_btn_2, proc"c"(ud: rawptr) {
		qt.signal_mapper_map(demo_state.signal_mapper, ud)
	}, auto_cast sm_btn_2)
	qt.layout_add_widget(sm_btn_layout, auto_cast sm_btn_2)

	sm_btn_3 := qt.push_button_create(nil, "Button 3")
	qt.signal_mapper_set_mapping_int(demo_state.signal_mapper, auto_cast sm_btn_3, 3)
	qt.push_button_connect_clicked(sm_btn_3, proc"c"(ud: rawptr) {
		qt.signal_mapper_map(demo_state.signal_mapper, ud)
	}, auto_cast sm_btn_3)
	qt.layout_add_widget(sm_btn_layout, auto_cast sm_btn_3)

	qt.layout_add_widget(sm_layout, sm_btn_row)
	qt.layout_add_widget(sm_layout, auto_cast sm_result)
	qt.layout_add_widget(layout, auto_cast sm_group)

	adv_note := qt.label_create(nil, "Also bound: QItemSelectionModel, QIdentityProxyModel, QConcatenateTablesProxyModel, QScroller/QScrollerProperties, QLockFile, QLibrary, QSharedMemory, QSystemSemaphore, QEventLoop")
	qt.label_set_word_wrap(adv_note, 1)
	qt.widget_set_style_sheet(auto_cast adv_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast adv_note)

	qt.box_layout_add_stretch(layout, 1)
	qt.scroll_area_set_widget(scroll, content)
	qt.layout_add_widget(outer_layout, auto_cast scroll)
	return page
}

/* ── Widget Properties callbacks ───────────────────────────────────── */

opacity_slider_changed :: proc"c"(value: c.int, user_data: rawptr) {
	opacity := cast(c.double)value / 100.0
	qt.widget_set_window_opacity(auto_cast demo_state.window, opacity)
	context = runtime.default_context()
	buf: [64]u8
	msg := fmt.bprintf(buf[:], "Opacity: %.0f%%", opacity * 100.0)
	buf[len(msg)] = 0
	statusbar_show(cstring(raw_data(buf[:])))
}

widget_show_minimized_cb :: proc"c"(user_data: rawptr) {
	qt.widget_show_minimized(auto_cast demo_state.window)
}

widget_show_maximized_cb :: proc"c"(user_data: rawptr) {
	qt.widget_show_maximized(auto_cast demo_state.window)
}

widget_show_full_screen_cb :: proc"c"(user_data: rawptr) {
	qt.widget_show_full_screen(auto_cast demo_state.window)
}

widget_show_normal_cb :: proc"c"(user_data: rawptr) {
	qt.widget_show_normal(auto_cast demo_state.window)
}

widget_adjust_size_cb :: proc"c"(user_data: rawptr) {
	qt.widget_adjust_size(auto_cast demo_state.window)
	statusbar_show("adjustSize() called")
}

build_widget_properties_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	outer_layout := qt.vbox_layout_create(page)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	content := qt.widget_create(nil)
	layout := qt.vbox_layout_create(content)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Widget Properties Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	description := qt.label_create(nil, "Demonstrates new QWidget methods: window opacity, window state, geometry, coordinate mapping, and more.")
	qt.label_set_word_wrap(description, 1)
	qt.layout_add_widget(layout, auto_cast description)

	// Window Opacity
	opacity_group := qt.group_box_create(nil, "Window Opacity (setWindowOpacity / getWindowOpacity)")
	opacity_layout := qt.vbox_layout_create(auto_cast opacity_group)
	opacity_slider := qt.slider_create(.Horizontal, nil)
	qt.slider_set_range(opacity_slider, 20, 100)
	qt.slider_set_value(opacity_slider, 100)
	qt.slider_set_tick_position(opacity_slider, .Ticks_Below)
	qt.slider_set_tick_interval(opacity_slider, 10)
	qt.slider_connect_value_changed(opacity_slider, opacity_slider_changed, nil)
	qt.layout_add_widget(opacity_layout, auto_cast opacity_slider)
	opacity_note := qt.label_create(nil, "Drag to change main window opacity (20%\xe2\x80\x93100%)")
	qt.layout_add_widget(opacity_layout, auto_cast opacity_note)
	qt.layout_add_widget(layout, auto_cast opacity_group)

	// Window State
	state_group := qt.group_box_create(nil, "Window State (showMinimized / showMaximized / showFullScreen / showNormal)")
	state_layout := qt.hbox_layout_create(auto_cast state_group)
	minimize_btn := qt.push_button_create(nil, "Minimize")
	qt.push_button_connect_clicked(minimize_btn, widget_show_minimized_cb, nil)
	qt.layout_add_widget(state_layout, auto_cast minimize_btn)
	maximize_btn := qt.push_button_create(nil, "Maximize")
	qt.push_button_connect_clicked(maximize_btn, widget_show_maximized_cb, nil)
	qt.layout_add_widget(state_layout, auto_cast maximize_btn)
	fullscreen_btn := qt.push_button_create(nil, "Full Screen")
	qt.push_button_connect_clicked(fullscreen_btn, widget_show_full_screen_cb, nil)
	qt.layout_add_widget(state_layout, auto_cast fullscreen_btn)
	normal_btn := qt.push_button_create(nil, "Normal")
	qt.push_button_connect_clicked(normal_btn, widget_show_normal_cb, nil)
	qt.layout_add_widget(state_layout, auto_cast normal_btn)
	qt.layout_add_widget(layout, auto_cast state_group)

	// Geometry
	geom_group := qt.group_box_create(nil, "Geometry (setGeometry / getGeometry)")
	geom_layout := qt.vbox_layout_create(auto_cast geom_group)
	geom_info := qt.label_create(nil, "(click Refresh to read current geometry)")
	qt.layout_add_widget(geom_layout, auto_cast geom_info)
	geom_btn_row := qt.widget_create(nil)
	geom_btn_layout := qt.hbox_layout_create(geom_btn_row)
	geom_refresh_btn := qt.push_button_create(nil, "Refresh Geometry")
	qt.push_button_connect_clicked(geom_refresh_btn, proc"c"(user_data: rawptr) {
		label: qt.Label = auto_cast user_data
		gx, gy, gw, gh: c.int
		qt.widget_get_geometry(auto_cast demo_state.window, &gx, &gy, &gw, &gh)
		context = runtime.default_context()
		buf: [128]u8
		msg := fmt.bprintf(buf[:], "Window geometry: x=%d, y=%d, w=%d, h=%d", gx, gy, gw, gh)
		buf[len(msg)] = 0
		qt.label_set_text(label, cstring(raw_data(buf[:])))
	}, auto_cast geom_info)
	qt.layout_add_widget(geom_btn_layout, auto_cast geom_refresh_btn)
	geom_set_btn := qt.push_button_create(nil, "Set to 100,100,800,600")
	qt.push_button_connect_clicked(geom_set_btn, proc"c"(user_data: rawptr) {
		qt.widget_set_geometry(auto_cast demo_state.window, 100, 100, 800, 600)
		statusbar_show("Geometry set to 100,100,800,600")
	}, nil)
	qt.layout_add_widget(geom_btn_layout, auto_cast geom_set_btn)
	qt.layout_add_widget(geom_layout, geom_btn_row)
	qt.layout_add_widget(layout, auto_cast geom_group)

	// Coordinate Mapping
	map_group := qt.group_box_create(nil, "Coordinate Mapping (mapToGlobal / mapFromGlobal)")
	map_layout := qt.vbox_layout_create(auto_cast map_group)
	map_info := qt.label_create(nil, "(click to map widget origin (0,0) to global coordinates)")
	qt.layout_add_widget(map_layout, auto_cast map_info)
	map_btn := qt.push_button_create(nil, "Map (0,0) to Global")
	qt.push_button_connect_clicked(map_btn, proc"c"(user_data: rawptr) {
		label: qt.Label = auto_cast user_data
		global_x, global_y: c.int
		qt.widget_map_to_global(auto_cast demo_state.window, 0, 0, &global_x, &global_y)
		context = runtime.default_context()
		buf: [128]u8
		msg := fmt.bprintf(buf[:], "Window (0,0) -> Global (%d, %d)", global_x, global_y)
		buf[len(msg)] = 0
		qt.label_set_text(label, cstring(raw_data(buf[:])))
	}, auto_cast map_info)
	qt.layout_add_widget(map_layout, auto_cast map_btn)
	qt.layout_add_widget(layout, auto_cast map_group)

	// Adjust Size + Contents Margins
	misc_group := qt.group_box_create(nil, "Miscellaneous (adjustSize / contentsMargins / rect / size / pos)")
	misc_layout := qt.vbox_layout_create(auto_cast misc_group)
	misc_info := qt.label_create(nil, "(click Refresh to read rect, size, pos)")
	qt.layout_add_widget(misc_layout, auto_cast misc_info)
	misc_btn_row := qt.widget_create(nil)
	misc_btn_layout := qt.hbox_layout_create(misc_btn_row)
	adjust_btn := qt.push_button_create(nil, "Adjust Size")
	qt.push_button_connect_clicked(adjust_btn, widget_adjust_size_cb, nil)
	qt.layout_add_widget(misc_btn_layout, auto_cast adjust_btn)
	misc_refresh_btn := qt.push_button_create(nil, "Refresh Info")
	qt.push_button_connect_clicked(misc_refresh_btn, proc"c"(user_data: rawptr) {
		label: qt.Label = auto_cast user_data
		rx, ry, rw, rh: c.int
		qt.widget_get_rect(auto_cast demo_state.window, &rx, &ry, &rw, &rh)
		sw, sh: c.int
		qt.widget_get_size(auto_cast demo_state.window, &sw, &sh)
		px, py: c.int
		qt.widget_get_pos(auto_cast demo_state.window, &px, &py)
		is_min := qt.widget_is_minimized(auto_cast demo_state.window)
		is_max := qt.widget_is_maximized(auto_cast demo_state.window)
		is_fs := qt.widget_is_full_screen(auto_cast demo_state.window)
		context = runtime.default_context()
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "rect: (%d,%d,%d,%d)  size: (%d,%d)  pos: (%d,%d)\nminimized=%d  maximized=%d  fullscreen=%d", rx, ry, rw, rh, sw, sh, px, py, is_min, is_max, is_fs)
		buf[len(msg)] = 0
		qt.label_set_text(label, cstring(raw_data(buf[:])))
	}, auto_cast misc_info)
	qt.layout_add_widget(misc_btn_layout, auto_cast misc_refresh_btn)
	qt.layout_add_widget(misc_layout, misc_btn_row)
	qt.layout_add_widget(layout, auto_cast misc_group)

	// Contents Margins demo
	margins_group := qt.group_box_create(nil, "Widget Contents Margins (setContentsMargins / getContentsMargins)")
	margins_layout := qt.vbox_layout_create(auto_cast margins_group)
	margin_target := qt.label_create(nil, "This label has widget-level content margins")
	qt.label_set_alignment(margin_target, .Centre)
	qt.widget_set_style_sheet(auto_cast margin_target, "QLabel { background: #e0e8f0; border: 1px solid #999; }")
	qt.widget_set_contents_margins(auto_cast margin_target, 20, 10, 20, 10)
	qt.layout_add_widget(margins_layout, auto_cast margin_target)
	margin_info := qt.label_create(nil, "")
	{
		left, top, right, bottom: c.int
		qt.widget_get_contents_margins(auto_cast margin_target, &left, &top, &right, &bottom)
		buf: [128]u8
		msg := fmt.bprintf(buf[:], "Margins: left=%d, top=%d, right=%d, bottom=%d", left, top, right, bottom)
		buf[len(msg)] = 0
		qt.label_set_text(margin_info, cstring(raw_data(buf[:])))
	}
	qt.layout_add_widget(margins_layout, auto_cast margin_info)
	qt.layout_add_widget(layout, auto_cast margins_group)

	// Tab order demo
	tab_group := qt.group_box_create(nil, "Tab Order (setTabOrder)")
	tab_layout := qt.vbox_layout_create(auto_cast tab_group)
	tab_note := qt.label_create(nil, "These three fields have explicit tab order: C -> A -> B")
	qt.layout_add_widget(tab_layout, auto_cast tab_note)
	tab_row := qt.widget_create(nil)
	tab_row_layout := qt.hbox_layout_create(tab_row)
	tab_a := qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(tab_a, "Field A")
	tab_b := qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(tab_b, "Field B")
	tab_c := qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(tab_c, "Field C")
	qt.layout_add_widget(tab_row_layout, auto_cast tab_a)
	qt.layout_add_widget(tab_row_layout, auto_cast tab_b)
	qt.layout_add_widget(tab_row_layout, auto_cast tab_c)
	qt.widget_set_tab_order(auto_cast tab_c, auto_cast tab_a)
	qt.widget_set_tab_order(auto_cast tab_a, auto_cast tab_b)
	qt.layout_add_widget(tab_layout, tab_row)
	qt.layout_add_widget(layout, auto_cast tab_group)

	qt.box_layout_add_stretch(layout, 1)
	qt.scroll_area_set_widget(scroll, content)
	qt.layout_add_widget(outer_layout, auto_cast scroll)
	return page
}

/* ── CCustomItemModel callbacks ─────────────────────────────────────── */

CUSTOM_MODEL_ROWS :: 5
CUSTOM_MODEL_COLS :: 3

custom_model_data := [CUSTOM_MODEL_ROWS][CUSTOM_MODEL_COLS]cstring{
	{"Alice", "Engineering", "42"},
	{"Bob", "Marketing", "37"},
	{"Carol", "Design", "29"},
	{"Dave", "Engineering", "55"},
	{"Eve", "Marketing", "31"},
}

custom_model_headers := [CUSTOM_MODEL_COLS]cstring{"Name", "Department", "Age"}

custom_model_row_count :: proc"c"(parent_index: rawptr, user_data: rawptr) -> c.int {
	return CUSTOM_MODEL_ROWS
}

custom_model_column_count :: proc"c"(parent_index: rawptr, user_data: rawptr) -> c.int {
	return CUSTOM_MODEL_COLS
}

custom_model_data_cb :: proc"c"(index: rawptr, role: c.int, user_data: rawptr) -> cstring {
	if role != 0 do return nil // Only handle DisplayRole (0)
	row := qt.model_index_get_row(auto_cast index)
	col := qt.model_index_get_column(auto_cast index)
	if row >= 0 && row < CUSTOM_MODEL_ROWS && col >= 0 && col < CUSTOM_MODEL_COLS {
		return custom_model_data[row][col]
	}
	return nil
}

custom_model_flags_cb :: proc"c"(index: rawptr, user_data: rawptr) -> c.int {
	return 33 // ItemIsEnabled (32) | ItemIsSelectable (1)
}

custom_model_header_data_cb :: proc"c"(section: c.int, orientation: c.int, role: c.int, user_data: rawptr) -> cstring {
	if role != 0 do return nil // Only handle DisplayRole
	if orientation == 1 && section >= 0 && section < CUSTOM_MODEL_COLS { // Horizontal
		return custom_model_headers[section]
	}
	return nil
}

/* ── Rich Text tab builder ─────────────────────────────────────────── */

build_rich_text_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	outer_layout := qt.vbox_layout_create(page)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	content := qt.widget_create(nil)
	layout := qt.vbox_layout_create(content)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "Rich Text Structures Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	description := qt.label_create(nil, "Demonstrates QTextTable, QTextList, QTextBlock, and QTextFrame for rich text manipulation.")
	qt.label_set_word_wrap(description, 1)
	qt.layout_add_widget(layout, auto_cast description)

	// QTextTable demo
	table_group := qt.group_box_create(nil, "QTextTable \xe2\x80\x94 Programmatic Table Insertion")
	table_layout := qt.vbox_layout_create(auto_cast table_group)

	table_edit := qt.text_edit_create(nil)
	qt.widget_set_minimum_height(auto_cast table_edit, 160)
	{
		cursor := qt.text_edit_get_text_cursor(table_edit)
		qt.text_cursor_insert_text(cursor, "Employee Table:\n")
		table_ptr := qt.text_cursor_insert_table(cursor, 4, 3)
		table: qt.Text_Table = auto_cast table_ptr

		// Fill cells using cell cursors
		cell_data := [4][3]cstring{
			{"Name", "Role", "Office"},
			{"Alice", "Developer", "Toronto"},
			{"Bob", "Designer", "Montreal"},
			{"Carol", "Manager", "Vancouver"},
		}
		for row in 0 ..< 4 {
			for col in 0 ..< 3 {
				cell_cursor := qt.text_table_cell_get_first_cursor_position(table, cast(c.int)row, cast(c.int)col)
				qt.text_cursor_insert_text(auto_cast cell_cursor, cell_data[row][col])
				qt.text_cursor_destroy(auto_cast cell_cursor)
			}
		}
		qt.text_cursor_destroy(cursor)
	}
	qt.layout_add_widget(table_layout, auto_cast table_edit)

	table_info := qt.label_create(nil, "Inserted 4x3 table via QTextCursor::insertTable. Cell text set via QTextTableCell cursor positions.")
	qt.label_set_word_wrap(table_info, 1)
	qt.widget_set_style_sheet(auto_cast table_info, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(table_layout, auto_cast table_info)
	qt.layout_add_widget(layout, auto_cast table_group)

	// QTextList demo
	list_group := qt.group_box_create(nil, "QTextList \xe2\x80\x94 Programmatic List Insertion")
	list_layout := qt.vbox_layout_create(auto_cast list_group)

	list_edit := qt.text_edit_create(nil)
	qt.widget_set_minimum_height(auto_cast list_edit, 140)
	{
		cursor := qt.text_edit_get_text_cursor(list_edit)
		qt.text_cursor_insert_text(cursor, "Shopping List:\n")
		qt.text_cursor_insert_list(cursor, .Disc)
		qt.text_cursor_insert_text(cursor, "Apples")
		qt.text_cursor_insert_block(cursor)
		qt.text_cursor_insert_text(cursor, "Bananas")
		qt.text_cursor_insert_block(cursor)
		qt.text_cursor_insert_text(cursor, "Cherries")
		qt.text_cursor_insert_block(cursor)
		qt.text_cursor_insert_text(cursor, "Dates")
		qt.text_cursor_destroy(cursor)
	}
	qt.layout_add_widget(list_layout, auto_cast list_edit)
	qt.layout_add_widget(layout, auto_cast list_group)

	// QTextBlock iteration demo
	block_group := qt.group_box_create(nil, "QTextBlock \xe2\x80\x94 Document Block Iteration")
	block_layout := qt.vbox_layout_create(auto_cast block_group)

	demo_state.block_edit = qt.text_edit_create(nil)
	qt.text_edit_set_plain_text(demo_state.block_edit, "First paragraph.\nSecond paragraph.\nThird paragraph with more text.\nFourth paragraph.")
	qt.widget_set_minimum_height(auto_cast demo_state.block_edit, 100)
	qt.layout_add_widget(block_layout, auto_cast demo_state.block_edit)

	demo_state.block_output = qt.label_create(nil, "(click Inspect to iterate blocks)")
	qt.label_set_word_wrap(demo_state.block_output, 1)
	inspect_btn := qt.push_button_create(nil, "Inspect Blocks")
	qt.push_button_connect_clicked(inspect_btn, proc"c"(user_data: rawptr) {
		context = runtime.default_context()
		document := qt.text_edit_get_document(demo_state.block_edit)
		block_count := qt.text_document_get_block_count(document)
		char_count := qt.text_document_get_character_count(document)

		buf: [512]u8
		written := fmt.bprintf(buf[:], "Blocks: %d, Chars: %d\n", block_count, char_count)

		block := qt.text_document_get_first_block(document)
		block_idx := 0
		for block != nil && qt.text_block_is_valid(block) != 0 && block_idx < 6 {
			text := qt.text_block_get_text(block)
			block_num := qt.text_block_get_block_number(block)
			block_len := qt.text_block_get_length(block)
			remaining := len(buf) - len(written)
			if remaining > 80 {
				extra := fmt.bprintf(buf[len(written):], "  [%d] len=%d: \"%s\"\n", block_num, block_len, text)
				written = string(buf[:len(written) + len(extra)])
			}
			if text != nil do qt.free_string(text)
			next_block := qt.text_block_next(block)
			qt.text_block_destroy(block)
			block = next_block
			block_idx += 1
		}
		if block != nil && qt.text_block_is_valid(block) != 0 do qt.text_block_destroy(block)

		buf[len(written)] = 0
		qt.label_set_text(demo_state.block_output, cstring(raw_data(buf[:])))
	}, nil)
	qt.layout_add_widget(block_layout, auto_cast inspect_btn)
	qt.layout_add_widget(block_layout, auto_cast demo_state.block_output)
	qt.layout_add_widget(layout, auto_cast block_group)

	// QTextFrame demo
	frame_group := qt.group_box_create(nil, "QTextFrame \xe2\x80\x94 Document Frame Info")
	frame_layout := qt.vbox_layout_create(auto_cast frame_group)
	frame_output := qt.label_create(nil, "")
	{
		// Use the block_edit's document to get frame info
		document := qt.text_edit_get_document(demo_state.block_edit)
		block_count := qt.text_document_get_block_count(document)
		line_count := qt.text_document_get_line_count(document)
		context = runtime.default_context()
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "Document has %d blocks, %d lines\n(QTextFrame provides cursor positions and child frame access for documents with embedded frames)", block_count, line_count)
		buf[len(msg)] = 0
		qt.label_set_text(frame_output, cstring(raw_data(buf[:])))
	}
	qt.label_set_word_wrap(frame_output, 1)
	qt.layout_add_widget(frame_layout, auto_cast frame_output)
	qt.layout_add_widget(layout, auto_cast frame_group)

	qt.box_layout_add_stretch(layout, 1)
	qt.scroll_area_set_widget(scroll, content)
	qt.layout_add_widget(outer_layout, auto_cast scroll)
	return page
}

/* ── New Classes tab builder ───────────────────────────────────────── */

build_new_classes_tab :: proc() -> qt.Widget {
	page := qt.widget_create(nil)
	outer_layout := qt.vbox_layout_create(page)
	scroll := qt.scroll_area_create(nil)
	qt.scroll_area_set_widget_resizable(scroll, 1)
	content := qt.widget_create(nil)
	layout := qt.vbox_layout_create(content)
	qt.layout_set_spacing(layout, 8)

	heading := qt.label_create(nil, "New Class Bindings Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.widget_set_font(auto_cast heading, "Segoe UI", 14, cast(c.int)qt.Font_Weight.Bold, 0)
	qt.layout_add_widget(layout, auto_cast heading)

	// QDeadlineTimer
	dt_group := qt.group_box_create(nil, "QDeadlineTimer \xe2\x80\x94 Timeout Management")
	dt_layout := qt.vbox_layout_create(auto_cast dt_group)
	dt_output := qt.label_create(nil, "")
	{
		timer_5s := qt.deadline_timer_create(5000, .Coarse)
		timer_forever := qt.deadline_timer_create_forever(.Coarse)
		timer_expired := qt.deadline_timer_create(0, .Coarse)

		remaining := qt.deadline_timer_get_remaining_time(timer_5s)
		is_forever := qt.deadline_timer_is_forever(timer_forever)
		has_expired := qt.deadline_timer_has_expired(timer_expired)
		timer_type := qt.deadline_timer_get_timer_type(timer_5s)

		context = runtime.default_context()
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "5s timer: %dms remaining, type=%d\nForever timer: is_forever=%d\nExpired timer (0ms): has_expired=%d", remaining, timer_type, is_forever, has_expired)
		buf[len(msg)] = 0
		qt.label_set_text(dt_output, cstring(raw_data(buf[:])))

		qt.deadline_timer_destroy(timer_expired)
		qt.deadline_timer_destroy(timer_forever)
		qt.deadline_timer_destroy(timer_5s)
	}
	qt.label_set_word_wrap(dt_output, 1)
	qt.layout_add_widget(dt_layout, auto_cast dt_output)
	qt.layout_add_widget(layout, auto_cast dt_group)

	// QCollator
	col_group := qt.group_box_create(nil, "QCollator \xe2\x80\x94 Locale-Aware String Comparison")
	col_layout := qt.vbox_layout_create(auto_cast col_group)
	col_output := qt.label_create(nil, "")
	{
		collator := qt.collator_create("")
		locale := qt.collator_get_locale(collator)

		cmp_abc := qt.collator_compare(collator, "apple", "banana")
		cmp_same := qt.collator_compare(collator, "hello", "hello")
		cmp_rev := qt.collator_compare(collator, "zebra", "apple")

		qt.collator_set_numeric_mode(collator, 1)
		cmp_num := qt.collator_compare(collator, "file2", "file10")
		qt.collator_set_numeric_mode(collator, 0)
		cmp_lex := qt.collator_compare(collator, "file2", "file10")

		context = runtime.default_context()
		buf: [384]u8
		msg := fmt.bprintf(buf[:], "Locale: %s\napple vs banana: %d (negative = a < b)\nhello vs hello: %d (zero = equal)\nzebra vs apple: %d (positive = a > b)\nNumeric mode ON:  file2 vs file10: %d (2 < 10)\nNumeric mode OFF: file2 vs file10: %d (lexicographic)", locale, cmp_abc, cmp_same, cmp_rev, cmp_num, cmp_lex)
		buf[len(msg)] = 0
		qt.label_set_text(col_output, cstring(raw_data(buf[:])))

		if locale != nil do qt.free_string(locale)
		qt.collator_destroy(collator)
	}
	qt.label_set_word_wrap(col_output, 1)
	qt.layout_add_widget(col_layout, auto_cast col_output)
	qt.layout_add_widget(layout, auto_cast col_group)

	// QTextStream
	ts_group := qt.group_box_create(nil, "QTextStream \xe2\x80\x94 String Buffer I/O")
	ts_layout := qt.vbox_layout_create(auto_cast ts_group)
	ts_output := qt.label_create(nil, "")
	{
		stream := qt.text_stream_create_string()
		qt.text_stream_write_string(stream, "Hello from Odin! ")
		qt.text_stream_write_string(stream, "Value: ")
		qt.text_stream_write_int(stream, 42)
		qt.text_stream_write_string(stream, ", Pi: ")
		qt.text_stream_write_double(stream, 3.14159)
		qt.text_stream_flush(stream)

		result := qt.text_stream_get_string(stream)
		status := qt.text_stream_get_status(stream)

		context = runtime.default_context()
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "Wrote to string buffer, status: %v\nContent: \"%s\"", status, result)
		buf[len(msg)] = 0
		qt.label_set_text(ts_output, cstring(raw_data(buf[:])))

		if result != nil do qt.free_string(result)
		qt.text_stream_destroy(stream)
	}
	qt.label_set_word_wrap(ts_output, 1)
	qt.layout_add_widget(ts_layout, auto_cast ts_output)
	qt.layout_add_widget(layout, auto_cast ts_group)

	// QDataStream
	ds_group := qt.group_box_create(nil, "QDataStream \xe2\x80\x94 Binary Buffer Round-Trip")
	ds_layout := qt.vbox_layout_create(auto_cast ds_group)
	ds_output := qt.label_create(nil, "")
	{
		stream := qt.data_stream_create_buffer()
		qt.data_stream_write_int32(stream, 12345)
		qt.data_stream_write_double(stream, 2.71828)
		qt.data_stream_write_string(stream, "Odin+Qt")

		write_status := qt.data_stream_get_status(stream)
		byte_order := qt.data_stream_get_byte_order(stream)
		version := qt.data_stream_get_version(stream)

		context = runtime.default_context()
		buf: [256]u8
		msg := fmt.bprintf(buf[:], "Wrote: int32(12345), double(2.71828), string(\"Odin+Qt\")\nWrite status: %v, byte order: %v, version: %d", write_status, byte_order, version)
		buf[len(msg)] = 0
		qt.label_set_text(ds_output, cstring(raw_data(buf[:])))

		qt.data_stream_destroy(stream)
	}
	qt.label_set_word_wrap(ds_output, 1)
	qt.layout_add_widget(ds_layout, auto_cast ds_output)
	qt.layout_add_widget(layout, auto_cast ds_group)

	// QPdfWriter
	pdf_group := qt.group_box_create(nil, "QPdfWriter \xe2\x80\x94 PDF Generation")
	pdf_layout := qt.vbox_layout_create(auto_cast pdf_group)
	pdf_output := qt.label_create(nil, "(click Generate to create a test PDF)")
	qt.label_set_word_wrap(pdf_output, 1)
	pdf_btn := qt.push_button_create(nil, "Generate Test PDF")
	qt.push_button_connect_clicked(pdf_btn, proc"c"(user_data: rawptr) {
		context = runtime.default_context()
		label: qt.Label = auto_cast user_data
		temp_path := qt.standard_paths_writable_location(.Temp)
		if temp_path == nil {
			qt.label_set_text(label, "Error: could not get temp directory")
			return
		}
		buf: [512]u8
		path_msg := fmt.bprintf(buf[:], "%s/odin_qt_test.pdf", temp_path)
		buf[len(path_msg)] = 0
		pdf_path := cstring(raw_data(buf[:]))

		writer := qt.pdf_writer_create(pdf_path)
		qt.pdf_writer_set_title(writer, "Odin + Qt Test PDF")
		qt.pdf_writer_set_creator(writer, "Odin Qt Demo")
		qt.pdf_writer_set_resolution(writer, 300)

		title := qt.pdf_writer_get_title(writer)
		creator := qt.pdf_writer_get_creator(writer)
		resolution := qt.pdf_writer_get_resolution(writer)

		out_buf: [512]u8
		out_msg := fmt.bprintf(out_buf[:], "PDF created: %s\nTitle: %s, Creator: %s\nResolution: %d DPI\n(QPainter can draw to this device for full PDF output)", pdf_path, title, creator, resolution)
		out_buf[len(out_msg)] = 0
		qt.label_set_text(label, cstring(raw_data(out_buf[:])))
		statusbar_show("PDF writer created!")

		if title != nil do qt.free_string(title)
		if creator != nil do qt.free_string(creator)
		qt.pdf_writer_destroy(writer)
		qt.free_string(temp_path)
	}, auto_cast pdf_output)
	qt.layout_add_widget(pdf_layout, auto_cast pdf_btn)
	qt.layout_add_widget(pdf_layout, auto_cast pdf_output)
	qt.layout_add_widget(layout, auto_cast pdf_group)

	// QPolygon
	poly_group := qt.group_box_create(nil, "QPolygon \xe2\x80\x94 Geometric Polygon Operations")
	poly_layout := qt.vbox_layout_create(auto_cast poly_group)
	poly_output := qt.label_create(nil, "")
	{
		// Create a triangle polygon
		triangle_points := [?]c.int{100, 50, 50, 150, 150, 150}
		polygon := qt.polygon_create_from_points(raw_data(triangle_points[:]), 3)
		point_count := qt.polygon_get_count(polygon)

		// Test contains
		is_inside := qt.polygon_contains_point(polygon, 100, 100, .Odd_Even)
		is_outside := qt.polygon_contains_point(polygon, 10, 10, .Odd_Even)

		// Bounding rect
		bx, by, bw, bh: c.int
		qt.polygon_get_bounding_rect(polygon, &bx, &by, &bw, &bh)

		// Translate
		qt.polygon_translate(polygon, 50, 50)
		bx2, by2, bw2, bh2: c.int
		qt.polygon_get_bounding_rect(polygon, &bx2, &by2, &bw2, &bh2)

		context = runtime.default_context()
		buf: [384]u8
		msg := fmt.bprintf(buf[:], "Triangle: 3 points [(100,50), (50,150), (150,150)], count=%d\nContains (100,100): %d (1=yes)\nContains (10,10): %d (0=no)\nBounding rect: (%d,%d,%d,%d)\nAfter translate(50,50): (%d,%d,%d,%d)", point_count, is_inside, is_outside, bx, by, bw, bh, bx2, by2, bw2, bh2)
		buf[len(msg)] = 0
		qt.label_set_text(poly_output, cstring(raw_data(buf[:])))

		qt.polygon_destroy(polygon)
	}
	qt.label_set_word_wrap(poly_output, 1)
	qt.layout_add_widget(poly_layout, auto_cast poly_output)
	qt.layout_add_widget(layout, auto_cast poly_group)

	// CCustomItemModel + QTableView
	model_group := qt.group_box_create(nil, "CCustomItemModel \xe2\x80\x94 Odin-Driven Table Model")
	model_layout := qt.vbox_layout_create(auto_cast model_group)
	model_desc := qt.label_create(nil, "A QTableView backed by an Odin-side data array via callback-driven QAbstractItemModel:")
	qt.label_set_word_wrap(model_desc, 1)
	qt.layout_add_widget(model_layout, auto_cast model_desc)

	custom_model := qt.custom_item_model_create(
		custom_model_row_count,
		custom_model_column_count,
		custom_model_data_cb,
		custom_model_flags_cb,
		custom_model_header_data_cb,
		nil,
	)
	model_view := qt.table_view_create(nil)
	qt.table_view_set_model(model_view, auto_cast custom_model)
	qt.table_view_resize_columns_to_contents(model_view)
	qt.widget_set_minimum_height(auto_cast model_view, 180)
	qt.layout_add_widget(model_layout, auto_cast model_view)

	model_note := qt.label_create(nil, "5 rows x 3 cols. Data returned from Odin callbacks (row_count, column_count, data, flags, header_data).")
	qt.label_set_word_wrap(model_note, 1)
	qt.widget_set_style_sheet(auto_cast model_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(model_layout, auto_cast model_note)
	qt.layout_add_widget(layout, auto_cast model_group)

	// QPauseAnimation
	pause_group := qt.group_box_create(nil, "QPauseAnimation \xe2\x80\x94 Animation Delay")
	pause_layout := qt.vbox_layout_create(auto_cast pause_group)
	pause_output := qt.label_create(nil, "")
	{
		pause_anim := qt.pause_animation_create(500, nil)
		duration := qt.pause_animation_get_duration(pause_anim)
		qt.pause_animation_set_duration(pause_anim, 1000)
		new_duration := qt.pause_animation_get_duration(pause_anim)

		context = runtime.default_context()
		buf: [128]u8
		msg := fmt.bprintf(buf[:], "Created with 500ms, duration=%d\nSet to 1000ms, duration=%d\n(Used in QSequentialAnimationGroup for delays between animations)", duration, new_duration)
		buf[len(msg)] = 0
		qt.label_set_text(pause_output, cstring(raw_data(buf[:])))

		qt.pause_animation_destroy(pause_anim)
	}
	qt.label_set_word_wrap(pause_output, 1)
	qt.layout_add_widget(pause_layout, auto_cast pause_output)
	qt.layout_add_widget(layout, auto_cast pause_group)

	also_note := qt.label_create(nil, "Also bound: QTextOption (text layout options), QDrag (explicit drag source), QPolygonF (float variant)")
	qt.label_set_word_wrap(also_note, 1)
	qt.widget_set_style_sheet(auto_cast also_note, "QLabel { color: #666; font-style: italic; }")
	qt.layout_add_widget(layout, auto_cast also_note)

	qt.box_layout_add_stretch(layout, 1)
	qt.scroll_area_set_widget(scroll, content)
	qt.layout_add_widget(outer_layout, auto_cast scroll)
	return page
}

/* ── Main ──────────────────────────────────────────────────────────── */

main :: proc() {
	argc: c.int = 0
	application := qt.application_create(&argc, nil)
	defer qt.application_destroy(application)

	qt.application_set_application_name(application, "Odin Qt Demo")
	qt.application_set_organization_name(application, "Odin")

	demo_state.window = qt.main_window_create(nil)
	defer qt.widget_destroy(auto_cast demo_state.window)

	qt.widget_set_window_title(auto_cast demo_state.window, "Odin + Qt \xe2\x80\x94 Comprehensive Widget Demo")
	qt.widget_resize(auto_cast demo_state.window, 900, 700)

	// Timer (created early so tab builder can reference it)
	demo_state.timer = qt.timer_create(auto_cast demo_state.window)
	qt.timer_connect_timeout(demo_state.timer, timer_tick, nil)

	// ── Menu bar ──────────────────────────────────────────────────
	menu_bar := qt.main_window_menu_bar(demo_state.window)

	// File menu
	file_menu := qt.menu_bar_add_menu(menu_bar, "&File")
	open_action := qt.menu_add_action(file_menu, "&Open...")
	qt.action_set_shortcut(open_action, "Ctrl+O")
	qt.action_set_tooltip(open_action, "Open a file")
	qt.action_connect_triggered(open_action, dialog_open_file, nil)
	save_action := qt.menu_add_action(file_menu, "&Save...")
	qt.action_set_shortcut(save_action, "Ctrl+S")
	qt.action_connect_triggered(save_action, dialog_save_file, nil)
	qt.menu_add_separator(file_menu)
	exit_action := qt.menu_add_action(file_menu, "E&xit")
	qt.action_set_shortcut(exit_action, "Ctrl+Q")
	qt.action_connect_triggered(exit_action, menu_exit, auto_cast application)

	// Edit menu with checkable actions
	edit_menu := qt.menu_bar_add_menu(menu_bar, "&Edit")
	bold_action := qt.menu_add_action(edit_menu, "&Bold")
	qt.action_set_shortcut(bold_action, "Ctrl+B")
	qt.action_set_checkable(bold_action, 1)
	italic_action := qt.menu_add_action(edit_menu, "&Italic")
	qt.action_set_shortcut(italic_action, "Ctrl+I")
	qt.action_set_checkable(italic_action, 1)

	// View menu with sub-menu
	view_menu := qt.menu_bar_add_menu(menu_bar, "&View")
	panels_menu := qt.menu_add_menu(view_menu, "Panels")
	_ = qt.menu_add_action(panels_menu, "Show Properties")
	_ = qt.menu_add_action(panels_menu, "Show Output")

	// ── Toolbar ───────────────────────────────────────────────────
	toolbar := qt.toolbar_create(nil, "Main")
	toolbar_open := qt.toolbar_add_action(toolbar, "Open")
	qt.action_connect_triggered(toolbar_open, dialog_open_file, nil)
	toolbar_save := qt.toolbar_add_action(toolbar, "Save")
	qt.action_connect_triggered(toolbar_save, dialog_save_file, nil)
	qt.toolbar_add_separator(toolbar)
	toolbar_quit := qt.toolbar_add_action(toolbar, "Quit")
	qt.action_connect_triggered(toolbar_quit, menu_exit, auto_cast application)
	qt.main_window_add_toolbar(demo_state.window, .Top, toolbar)

	// ── Dock widget ───────────────────────────────────────────────
	dock := qt.dock_widget_create(auto_cast demo_state.window, "Properties")
	dock_content := qt.widget_create(nil)
	dock_layout := qt.form_layout_create(dock_content)
	dock_name := qt.line_edit_create(nil)
	qt.line_edit_set_text(dock_name, "Widget Demo")
	qt.form_layout_add_row(dock_layout, "Name:", auto_cast dock_name)
	dock_spin := qt.spin_box_create(nil)
	qt.spin_box_set_range(dock_spin, 1, 10)
	qt.spin_box_set_value(dock_spin, 5)
	qt.form_layout_add_row(dock_layout, "Level:", auto_cast dock_spin)
	dock_check := qt.check_box_create(nil, "Visible")
	qt.check_box_set_checked(dock_check, 1)
	qt.form_layout_add_row(dock_layout, "Status:", auto_cast dock_check)
	qt.dock_widget_set_widget(dock, dock_content)
	qt.main_window_add_dock_widget(demo_state.window, .Right, dock)

	// ── Central tab widget ────────────────────────────────────────
	tabs := qt.tab_widget_create(nil)
	_ = qt.tab_widget_add_tab(tabs, build_basic_inputs_tab(), "Basic Inputs")
	_ = qt.tab_widget_add_tab(tabs, build_numeric_inputs_tab(), "Numeric")
	_ = qt.tab_widget_add_tab(tabs, build_text_tab(), "Text")
	_ = qt.tab_widget_add_tab(tabs, build_data_views_tab(), "Data Views")
	_ = qt.tab_widget_add_tab(tabs, build_containers_tab(), "Containers")
	_ = qt.tab_widget_add_tab(tabs, build_layouts_tab(), "Layouts")
	_ = qt.tab_widget_add_tab(tabs, build_dialogs_tab(), "Dialogs")
	_ = qt.tab_widget_add_tab(tabs, build_timer_utility_tab(application), "Timer && Utility")
	_ = qt.tab_widget_add_tab(tabs, build_model_view_tab(), "Model/View")
	_ = qt.tab_widget_add_tab(tabs, build_custom_drawing_tab(), "Drawing")
	_ = qt.tab_widget_add_tab(tabs, build_syntax_highlighting_tab(), "Syntax HL")
	_ = qt.tab_widget_add_tab(tabs, build_animations_tab(), "Animations")
	_ = qt.tab_widget_add_tab(tabs, build_drag_drop_tab(), "Drag && Drop")
	_ = qt.tab_widget_add_tab(tabs, build_extra_widgets_tab(), "Extra Widgets")
	_ = qt.tab_widget_add_tab(tabs, build_mdi_wizard_tab(), "MDI && Wizard")
	_ = qt.tab_widget_add_tab(tabs, build_graphics_scene_tab(), "Graphics Scene")
	_ = qt.tab_widget_add_tab(tabs, build_undo_mapping_tab(), "Undo && Mapping")
	_ = qt.tab_widget_add_tab(tabs, build_qtgui_objects_tab(), "QtGui Objects")
	_ = qt.tab_widget_add_tab(tabs, build_file_data_tab(), "File && Data")
	_ = qt.tab_widget_add_tab(tabs, build_core_utilities_tab(), "Core Utilities")
	_ = qt.tab_widget_add_tab(tabs, build_advanced_models_tab(application), "Adv. Models")
	_ = qt.tab_widget_add_tab(tabs, build_widget_properties_tab(), "Widget Props")
	_ = qt.tab_widget_add_tab(tabs, build_rich_text_tab(), "Rich Text")
	_ = qt.tab_widget_add_tab(tabs, build_new_classes_tab(), "New Classes")

	qt.main_window_set_central_widget(demo_state.window, auto_cast tabs)

	// ── Status bar ────────────────────────────────────────────────
	statusbar := qt.main_window_get_statusbar(demo_state.window)
	permanent_label := qt.label_create(nil, "Odin + Qt 6.8.3")
	qt.statusbar_add_permanent_widget(statusbar, auto_cast permanent_label)
	qt.main_window_statusbar_show_message(demo_state.window, "Ready", 0)

	qt.widget_show(auto_cast demo_state.window)

	fmt.printfln("Odin + Qt comprehensive demo \xe2\x80\x94 close the window to exit.")
	_ = qt.application_exec(application)
}
