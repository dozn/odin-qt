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
	// Animations tab
	anim_easing_combo: qt.Combo_Box,
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
