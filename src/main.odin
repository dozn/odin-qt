#+vet explicit-allocators
package main

import "core:c"
import "core:fmt"

import qt "../libs/qt"

spin_box_sync_value :: proc "c" (value: c.int, user_data: rawptr) {
	qt.spin_box_set_value(auto_cast user_data, value)
}

slider_sync_value :: proc "c" (value: c.int, user_data: rawptr) {
	qt.slider_set_value(auto_cast user_data, value)
}

button_sync_enabled :: proc "c" (value: c.int, user_data: rawptr) {
	qt.widget_set_enabled(auto_cast user_data, value)
}

open_file_dialog_show :: proc "c" (user_data: rawptr) {
	window: qt.Main_Window = auto_cast user_data
	file_path := qt.file_dialog_get_open_file_name(auto_cast window, "Open File", "", "All Files (*)")
	if file_path != nil {
		qt.main_window_statusbar_show_message(window, file_path, 5000)
		qt.dialog_free_string(file_path)
	} else {
		qt.main_window_statusbar_show_message(window, "File dialog cancelled", 3000)
	}
}

question_message_box_show :: proc "c" (user_data: rawptr) {
	window: qt.Main_Window = auto_cast user_data
	result := qt.message_box_show_question(auto_cast window, "Question", "Do you like Odin + Qt?")
	switch result {
	case .Yes:
		qt.main_window_statusbar_show_message(window, "You answered: Yes!", 3000)
	case .No:
		qt.main_window_statusbar_show_message(window, "You answered: No", 3000)
	case .None, .Ok, .Save, .Open, .Yes_To_All, .No_To_All,
		.Abort, .Retry, .Ignore, .Close, .Cancel, .Discard,
		.Help, .Apply, .Reset:
		qt.main_window_statusbar_show_message(window, "Dialog dismissed", 3000)
	}
}

colour_dialog_show :: proc "c" (user_data: rawptr) {
	window: qt.Main_Window = auto_cast user_data
	result_r, result_g, result_b, result_a: c.int
	is_accepted := qt.colour_dialog_get_colour(
		auto_cast window,
		255, 255, 255, 255,
		&result_r, &result_g, &result_b, &result_a,
	)
	if is_accepted != 0 {
		qt.main_window_statusbar_show_message(window, "Colour selected!", 3000)
	} else {
		qt.main_window_statusbar_show_message(window, "Colour dialog cancelled", 3000)
	}
}

font_dialog_show :: proc "c" (user_data: rawptr) {
	window: qt.Main_Window = auto_cast user_data
	family_buf: [256]u8
	point_size, weight, is_italic: c.int
	is_accepted := qt.font_dialog_get_font(
		auto_cast window,
		raw_data(family_buf[:]), 256,
		&point_size, &weight, &is_italic,
	)
	if is_accepted != 0 {
		qt.main_window_statusbar_show_message(window, "Font selected!", 3000)
	} else {
		qt.main_window_statusbar_show_message(window, "Font dialog cancelled", 3000)
	}
}

text_input_dialog_show :: proc "c" (user_data: rawptr) {
	window: qt.Main_Window = auto_cast user_data
	is_ok: c.int
	text := qt.input_dialog_get_text(auto_cast window, "Input", "Enter your name:", "", &is_ok)
	if is_ok != 0 && text != nil {
		qt.main_window_statusbar_show_message(window, text, 5000)
		qt.dialog_free_string(text)
	} else {
		qt.main_window_statusbar_show_message(window, "Input dialog cancelled", 3000)
	}
}

progress_bar_advance_value :: proc "c" (user_data: rawptr) {
	progress: qt.Progress_Bar = auto_cast user_data
	current_value := qt.progress_bar_get_value(progress)
	new_value := current_value + 10
	if new_value > 100 {
		new_value = 0
	}
	qt.progress_bar_set_value(progress, new_value)
}

main :: proc() {
	argc: c.int = 0
	application := qt.application_create(&argc, nil)
	defer qt.application_destroy(application)

	window := qt.main_window_create(nil)
	defer qt.widget_destroy(auto_cast window)

	qt.widget_set_title(auto_cast window, "Odin + Qt — Widget Demo")
	qt.widget_resize(auto_cast window, 640, 480)

	// Menu bar
	menu_bar := qt.main_window_get_menu_bar(window)
	file_menu := qt.menu_bar_add_menu(menu_bar, "&File")
	_ = qt.menu_add_action(file_menu, "&Open")
	_ = qt.menu_add_action(file_menu, "&Save")
	qt.menu_add_separator(file_menu)
	_ = qt.menu_add_action(file_menu, "E&xit")

	// Toolbar
	toolbar := qt.toolbar_create(nil, "Main")
	_ = qt.toolbar_add_action(toolbar, "New")
	_ = qt.toolbar_add_action(toolbar, "Open")
	qt.toolbar_add_separator(toolbar)
	_ = qt.toolbar_add_action(toolbar, "Save")
	qt.main_window_add_toolbar(window, .Top, toolbar)

	// Central widget with vertical layout
	central := qt.widget_create(nil)
	layout := qt.vbox_layout_create(central)

	// Heading
	heading := qt.label_create(nil, "Odin + Qt Widget Demo")
	qt.label_set_alignment(heading, .Centre)
	qt.layout_add_widget(layout, auto_cast heading)

	// Text input
	input := qt.line_edit_create(nil)
	qt.line_edit_set_placeholder_text(input, "Type something here...")
	qt.layout_add_widget(layout, auto_cast input)

	// Button + checkbox row
	button_row := qt.widget_create(nil)
	button_row_layout := qt.hbox_layout_create(button_row)
	button := qt.push_button_create(nil, "Click Me")
	qt.layout_add_widget(button_row_layout, auto_cast button)
	check := qt.check_box_create(nil, "Enable feature")
	qt.widget_set_enabled(auto_cast button, 0)
	qt.check_box_connect_toggled(check, button_sync_enabled, auto_cast button)
	qt.layout_add_widget(button_row_layout, auto_cast check)
	qt.layout_add_widget(layout, button_row)

	// Combo box
	combo := qt.combo_box_create(nil)
	qt.combo_box_add_item(combo, "Option A")
	qt.combo_box_add_item(combo, "Option B")
	qt.combo_box_add_item(combo, "Option C")
	qt.layout_add_widget(layout, auto_cast combo)

	// Slider + spin box row
	slider_row := qt.widget_create(nil)
	slider_row_layout := qt.hbox_layout_create(slider_row)
	slider := qt.slider_create(.Horizontal, nil)
	qt.slider_set_range(slider, 0, 100)
	qt.slider_set_value(slider, 50)
	qt.layout_add_widget(slider_row_layout, auto_cast slider)
	spin := qt.spin_box_create(nil)
	qt.spin_box_set_range(spin, 0, 100)
	qt.spin_box_set_value(spin, 50)
	qt.layout_add_widget(slider_row_layout, auto_cast spin)
	qt.slider_connect_value_changed(slider, spin_box_sync_value, auto_cast spin)
	qt.spin_box_connect_value_changed(spin, slider_sync_value, auto_cast slider)
	qt.layout_add_widget(layout, slider_row)

	// Progress bar
	progress := qt.progress_bar_create(nil)
	qt.progress_bar_set_range(progress, 0, 100)
	qt.progress_bar_set_value(progress, 75)
	qt.push_button_connect_clicked(button, progress_bar_advance_value, auto_cast progress)
	qt.layout_add_widget(layout, auto_cast progress)

	// Group box with text edit
	group := qt.group_box_create(nil, "Notes")
	group_layout := qt.vbox_layout_create(auto_cast group)
	notes := qt.text_edit_create(nil)
	qt.text_edit_set_plain_text(notes, "Enter notes here...")
	qt.layout_add_widget(group_layout, auto_cast notes)
	qt.layout_add_widget(layout, auto_cast group)

	// Dialogs group box
	dialog_group := qt.group_box_create(nil, "Dialogs")
	dialog_group_layout := qt.hbox_layout_create(auto_cast dialog_group)

	open_file_btn := qt.push_button_create(nil, "Open File...")
	qt.push_button_connect_clicked(open_file_btn, open_file_dialog_show, auto_cast window)
	qt.layout_add_widget(dialog_group_layout, auto_cast open_file_btn)

	message_box_btn := qt.push_button_create(nil, "Question...")
	qt.push_button_connect_clicked(message_box_btn, question_message_box_show, auto_cast window)
	qt.layout_add_widget(dialog_group_layout, auto_cast message_box_btn)

	colour_btn := qt.push_button_create(nil, "Pick Colour...")
	qt.push_button_connect_clicked(colour_btn, colour_dialog_show, auto_cast window)
	qt.layout_add_widget(dialog_group_layout, auto_cast colour_btn)

	font_btn := qt.push_button_create(nil, "Pick Font...")
	qt.push_button_connect_clicked(font_btn, font_dialog_show, auto_cast window)
	qt.layout_add_widget(dialog_group_layout, auto_cast font_btn)

	input_btn := qt.push_button_create(nil, "Text Input...")
	qt.push_button_connect_clicked(input_btn, text_input_dialog_show, auto_cast window)
	qt.layout_add_widget(dialog_group_layout, auto_cast input_btn)

	qt.layout_add_widget(layout, auto_cast dialog_group)

	qt.main_window_set_central_widget(window, central)
	qt.main_window_statusbar_show_message(window, "Ready", 0)
	qt.widget_show(auto_cast window)

	fmt.printfln("Qt widget demo — close the window to exit.")

	_ = qt.application_exec(application)
}
