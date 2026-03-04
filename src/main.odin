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

	qt.main_window_set_central_widget(window, central)
	qt.main_window_statusbar_show_message(window, "Ready", 0)
	qt.widget_show(auto_cast window)

	fmt.printfln("Qt widget demo — close the window to exit.")

	_ = qt.application_exec(application)
}
