#ifndef QT_WRAPPER_H
#define QT_WRAPPER_H

#ifdef __cplusplus
extern "C" {
#endif

/* ── Callback types ─────────────────────────────────────────────────── */

typedef void (*qt_callback_t)(void *user_data);
typedef void (*qt_int_callback_t)(int value, void *user_data);
typedef void (*qt_double_callback_t)(double value, void *user_data);
typedef void (*qt_string_callback_t)(const char *text, void *user_data);
typedef void (*qt_cell_callback_t)(int value_a, int value_b, void *user_data);
typedef void (*qt_item_callback_t)(void *item, int column, void *user_data);
typedef void (*qt_point_callback_t)(int x, int y, void *user_data);
typedef int  (*qt_event_filter_callback_t)(int event_type, void *user_data);
typedef int  (*qt_close_event_callback_t)(void *user_data);
typedef int  (*qt_key_event_callback_t)(int event_type, int key, int modifiers, int is_auto_repeat, const char *text, void *user_data);
typedef int  (*qt_mouse_event_callback_t)(int event_type, int button, int x, int y, int global_x, int global_y, int modifiers, void *user_data);
typedef void (*qt_four_int_callback_t)(int a, int b, int c, int d, void *user_data);
typedef void (*qt_two_pointer_callback_t)(void *first, void *second, void *user_data);

/* ── QApplication ──────────────────────────────────────────────────── */

void *qt_application_create(int *argc, char **argv);
void  qt_application_destroy(void *app);
int   qt_application_exec(void *app);
void  qt_application_quit(void *app);
void  qt_application_process_events(void *app);
void  qt_application_set_application_name(void *app, const char *name);
void  qt_application_set_organization_name(void *app, const char *name);

/* ── QMainWindow ───────────────────────────────────────────────────── */

void *qt_main_window_create(void *parent);
void  qt_main_window_set_central_widget(void *window, void *widget);
void *qt_main_window_menu_bar(void *window);
void  qt_main_window_add_toolbar(void *window, int area, void *toolbar);
void  qt_main_window_statusbar_show_message(void *window, const char *message, int timeout_ms);
void  qt_main_window_add_dock_widget(void *window, int area, void *dock_widget);
void *qt_main_window_get_statusbar(void *window);
void *qt_main_window_get_central_widget(void *window);
void  qt_main_window_remove_dock_widget(void *window, void *dock_widget);
void  qt_main_window_tabify_dock_widget(void *window, void *first, void *second);
void  qt_main_window_set_dock_options(void *window, int options);
void  qt_main_window_set_tool_button_style(void *window, int style);
void  qt_main_window_set_animated(void *window, int is_animated);
void  qt_main_window_set_corner(void *window, int corner, int area);
char *qt_main_window_save_state(void *window, int *out_len, int version);
int   qt_main_window_restore_state(void *window, const char *data, int len, int version);

/* ── QWidget (works on any QWidget-derived object) ─────────────────── */

void *qt_widget_create(void *parent);
void  qt_widget_destroy(void *widget);
void  qt_widget_show(void *widget);
void  qt_widget_hide(void *widget);
void  qt_widget_close(void *widget);
void  qt_widget_set_visible(void *widget, int is_visible);
void  qt_widget_set_enabled(void *widget, int is_enabled);
int   qt_widget_is_enabled(void *widget);
void  qt_widget_set_window_title(void *widget, const char *title);
void  qt_widget_resize(void *widget, int width, int height);
void  qt_widget_set_fixed_size(void *widget, int width, int height);
void  qt_widget_set_minimum_size(void *widget, int width, int height);
void  qt_widget_set_maximum_size(void *widget, int width, int height);
void  qt_widget_set_minimum_width(void *widget, int width);
void  qt_widget_set_minimum_height(void *widget, int height);
void  qt_widget_set_maximum_width(void *widget, int width);
void  qt_widget_set_maximum_height(void *widget, int height);
int   qt_widget_get_width(void *widget);
int   qt_widget_get_height(void *widget);
int   qt_widget_get_x(void *widget);
int   qt_widget_get_y(void *widget);
void  qt_widget_move(void *widget, int x, int y);
void  qt_widget_set_font(void *widget, const char *family, int point_size, int weight, int is_italic);
void  qt_widget_set_focus(void *widget);
int   qt_widget_has_focus(void *widget);
void  qt_widget_set_cursor(void *widget, int cursor_shape);
void  qt_widget_update(void *widget);
void  qt_widget_raise(void *widget);
void  qt_widget_lower(void *widget);
void  qt_widget_set_tooltip(void *widget, const char *tooltip);
void  qt_widget_set_style_sheet(void *widget, const char *style_sheet);
void  qt_widget_set_layout(void *widget, void *layout);
void  qt_widget_set_size_policy(void *widget, int horizontal, int vertical);
void  qt_widget_set_context_menu_policy(void *widget, int policy);
void  qt_widget_add_action(void *widget, void *action);
int   qt_widget_is_visible(void *widget);
char *qt_widget_get_window_title(void *widget);
char *qt_widget_get_tool_tip(void *widget);
char *qt_widget_get_style_sheet(void *widget);
void  qt_widget_set_fixed_width(void *widget, int width);
void  qt_widget_set_fixed_height(void *widget, int height);
void  qt_widget_set_object_name(void *widget, const char *name);
char *qt_widget_get_object_name(void *widget);
void  qt_widget_set_window_flags(void *widget, int flags);
int   qt_widget_get_window_flags(void *widget);
void  qt_widget_set_window_state(void *widget, int state);
int   qt_widget_get_window_state(void *widget);
void  qt_widget_show_minimized(void *widget);
void  qt_widget_show_maximized(void *widget);
void  qt_widget_show_full_screen(void *widget);
void  qt_widget_show_normal(void *widget);
int   qt_widget_is_minimized(void *widget);
int   qt_widget_is_maximized(void *widget);
int   qt_widget_is_full_screen(void *widget);
void  qt_widget_set_window_modality(void *widget, int modality);
void  qt_widget_set_window_opacity(void *widget, double opacity);
double qt_widget_get_window_opacity(void *widget);
void  qt_widget_set_geometry(void *widget, int x, int y, int w, int h);
void  qt_widget_get_geometry(void *widget, int *out_x, int *out_y, int *out_w, int *out_h);
void  qt_widget_map_to_global(void *widget, int x, int y, int *out_x, int *out_y);
void  qt_widget_map_from_global(void *widget, int x, int y, int *out_x, int *out_y);
void  qt_widget_map_to_parent(void *widget, int x, int y, int *out_x, int *out_y);
void  qt_widget_map_from_parent(void *widget, int x, int y, int *out_x, int *out_y);
void  qt_widget_set_parent(void *widget, void *parent);
void *qt_widget_get_parent_widget(void *widget);
void  qt_widget_set_focus_policy(void *widget, int policy);
void  qt_widget_set_attribute(void *widget, int attribute, int on);
int   qt_widget_test_attribute(void *widget, int attribute);
void  qt_widget_adjust_size(void *widget);
void  qt_widget_set_contents_margins(void *widget, int left, int top, int right, int bottom);
void  qt_widget_get_contents_margins(void *widget, int *left, int *top, int *right, int *bottom);
void  qt_widget_repaint(void *widget);
void  qt_widget_set_tab_order(void *first, void *second);
void *qt_widget_grab(void *widget);
void  qt_widget_get_rect(void *widget, int *out_x, int *out_y, int *out_w, int *out_h);
void  qt_widget_get_size(void *widget, int *out_w, int *out_h);
void  qt_widget_get_pos(void *widget, int *out_x, int *out_y);

/* ── QLabel ─────────────────────────────────────────────────────────── */

void *qt_label_create(void *parent, const char *text);
void  qt_label_set_text(void *label, const char *text);
char *qt_label_get_text(void *label);
void  qt_label_set_alignment(void *label, int alignment);
void  qt_label_set_word_wrap(void *label, int is_word_wrap);
void  qt_label_clear(void *label);
void  qt_label_set_scaled_contents(void *label, int is_scaled);
void  qt_label_set_text_format(void *label, int format);
void  qt_label_set_text_interaction_flags(void *label, int flags);
void  qt_label_set_open_external_links(void *label, int is_open);
void  qt_label_set_buddy(void *label, void *buddy);
void  qt_label_set_indent(void *label, int indent);
void  qt_label_set_margin(void *label, int margin);

/* ── QPushButton ────────────────────────────────────────────────────── */

void *qt_push_button_create(void *parent, const char *text);
void  qt_push_button_set_text(void *button, const char *text);
char *qt_push_button_get_text(void *button);
void  qt_push_button_set_flat(void *button, int is_flat);
int   qt_push_button_is_flat(void *button);
void  qt_push_button_set_checkable(void *button, int is_checkable);
int   qt_push_button_is_checked(void *button);
void  qt_push_button_set_checked(void *button, int is_checked);
void  qt_push_button_set_default(void *button, int is_default);
int   qt_push_button_is_default(void *button);
void  qt_push_button_set_auto_default(void *button, int is_auto_default);
int   qt_push_button_is_auto_default(void *button);
void  qt_push_button_set_menu(void *button, void *menu);
void  qt_push_button_show_menu(void *button);

/* ── QRadioButton ───────────────────────────────────────────────────── */

void *qt_radio_button_create(void *parent, const char *text);
void  qt_radio_button_set_text(void *radio_button, const char *text);
char *qt_radio_button_get_text(void *radio_button);
int   qt_radio_button_is_checked(void *radio_button);
void  qt_radio_button_set_checked(void *radio_button, int is_checked);

/* ── QLineEdit ──────────────────────────────────────────────────────── */

void *qt_line_edit_create(void *parent);
void  qt_line_edit_set_text(void *line_edit, const char *text);
char *qt_line_edit_get_text(void *line_edit);
void  qt_line_edit_set_placeholder_text(void *line_edit, const char *text);
void  qt_line_edit_set_read_only(void *line_edit, int is_read_only);
void  qt_line_edit_set_echo_mode(void *line_edit, int mode);
void  qt_line_edit_clear(void *line_edit);
int   qt_line_edit_is_read_only(void *line_edit);
char *qt_line_edit_get_placeholder_text(void *line_edit);
void  qt_line_edit_select_all(void *line_edit);
void  qt_line_edit_set_max_length(void *line_edit, int length);
int   qt_line_edit_get_max_length(void *line_edit);
void  qt_line_edit_set_alignment(void *line_edit, int alignment);
void  qt_line_edit_set_cursor_position(void *line_edit, int position);
int   qt_line_edit_get_cursor_position(void *line_edit);
void  qt_line_edit_set_input_mask(void *line_edit, const char *mask);
int   qt_line_edit_has_selected_text(void *line_edit);
char *qt_line_edit_get_selected_text(void *line_edit);
void  qt_line_edit_set_selection(void *line_edit, int start, int length);
void  qt_line_edit_undo(void *line_edit);
void  qt_line_edit_redo(void *line_edit);
int   qt_line_edit_is_modified(void *line_edit);
void  qt_line_edit_set_modified(void *line_edit, int is_modified);
void  qt_line_edit_set_drag_enabled(void *line_edit, int is_drag_enabled);
void  qt_line_edit_home(void *line_edit, int is_mark);
void  qt_line_edit_end(void *line_edit, int is_mark);

/* ── QTextEdit ──────────────────────────────────────────────────────── */

void *qt_text_edit_create(void *parent);
void  qt_text_edit_set_plain_text(void *text_edit, const char *text);
char *qt_text_edit_get_plain_text(void *text_edit);
void  qt_text_edit_set_read_only(void *text_edit, int is_read_only);
int   qt_text_edit_is_read_only(void *text_edit);
void  qt_text_edit_clear(void *text_edit);
void  qt_text_edit_set_html(void *text_edit, const char *html);
char *qt_text_edit_get_html(void *text_edit);
void  qt_text_edit_append(void *text_edit, const char *text);
void  qt_text_edit_insert_plain_text(void *text_edit, const char *text);
void  qt_text_edit_set_tab_stop_distance(void *text_edit, double distance);
double qt_text_edit_get_tab_stop_distance(void *text_edit);
void  qt_text_edit_set_line_wrap_mode(void *text_edit, int mode);
void  qt_text_edit_set_word_wrap_mode(void *text_edit, int mode);
void  qt_text_edit_set_accept_rich_text(void *text_edit, int is_accept);
int   qt_text_edit_find(void *text_edit, const char *text, int flags);
void  qt_text_edit_undo(void *text_edit);
void  qt_text_edit_redo(void *text_edit);
void  qt_text_edit_zoom_in(void *text_edit, int range);
void  qt_text_edit_zoom_out(void *text_edit, int range);
void *qt_text_edit_get_text_cursor(void *text_edit);
void *qt_text_edit_get_document(void *text_edit);
void  qt_text_edit_set_current_font(void *text_edit, void *font);
void  qt_text_edit_set_font_weight(void *text_edit, int weight);
void  qt_text_edit_set_font_italic(void *text_edit, int is_italic);
void  qt_text_edit_set_font_underline(void *text_edit, int is_underline);
void  qt_text_edit_set_font_point_size(void *text_edit, double size);
void  qt_text_edit_set_font_family(void *text_edit, const char *family);
void  qt_text_edit_set_text_colour(void *text_edit, void *colour);
void  qt_text_edit_set_text_background_colour(void *text_edit, void *colour);
void  qt_text_edit_set_alignment(void *text_edit, int alignment);
void  qt_text_edit_move_cursor(void *text_edit, int operation, int mode);
void  qt_text_edit_ensure_cursor_visible(void *text_edit);
void  qt_text_edit_set_overwrite_mode(void *text_edit, int is_overwrite);
int   qt_text_edit_can_paste(void *text_edit);
void *qt_text_edit_get_vertical_scroll_bar(void *text_edit);
void *qt_text_edit_get_horizontal_scroll_bar(void *text_edit);

/* ── QPlainTextEdit ─────────────────────────────────────────────────── */

void *qt_plain_text_edit_create(void *parent);
void  qt_plain_text_edit_set_plain_text(void *text_edit, const char *text);
char *qt_plain_text_edit_get_plain_text(void *text_edit);
void  qt_plain_text_edit_set_read_only(void *text_edit, int is_read_only);
int   qt_plain_text_edit_is_read_only(void *text_edit);
void  qt_plain_text_edit_clear(void *text_edit);
void  qt_plain_text_edit_append_plain_text(void *text_edit, const char *text);
void  qt_plain_text_edit_insert_plain_text(void *text_edit, const char *text);
void  qt_plain_text_edit_set_tab_stop_distance(void *text_edit, double distance);
double qt_plain_text_edit_get_tab_stop_distance(void *text_edit);
void  qt_plain_text_edit_set_line_wrap_mode(void *text_edit, int mode);
int   qt_plain_text_edit_find(void *text_edit, const char *text, int flags);
void  qt_plain_text_edit_undo(void *text_edit);
void  qt_plain_text_edit_redo(void *text_edit);
void  qt_plain_text_edit_zoom_in(void *text_edit, int range);
void  qt_plain_text_edit_zoom_out(void *text_edit, int range);
void *qt_plain_text_edit_get_text_cursor(void *text_edit);
void *qt_plain_text_edit_get_document(void *text_edit);
int   qt_plain_text_edit_get_block_count(void *text_edit);
void  qt_plain_text_edit_set_maximum_block_count(void *text_edit, int count);
void  qt_plain_text_edit_move_cursor(void *text_edit, int operation, int mode);
void  qt_plain_text_edit_ensure_cursor_visible(void *text_edit);
void  qt_plain_text_edit_set_overwrite_mode(void *text_edit, int is_overwrite);
void *qt_plain_text_edit_get_vertical_scroll_bar(void *text_edit);
void *qt_plain_text_edit_get_horizontal_scroll_bar(void *text_edit);

/* ── QCheckBox ──────────────────────────────────────────────────────── */

void *qt_check_box_create(void *parent, const char *text);
int   qt_check_box_is_checked(void *check_box);
void  qt_check_box_set_checked(void *check_box, int is_checked);
void  qt_check_box_set_text(void *check_box, const char *text);
char *qt_check_box_get_text(void *check_box);
void  qt_check_box_set_tristate(void *check_box, int is_tristate);
int   qt_check_box_is_tristate(void *check_box);
int   qt_check_box_get_check_state(void *check_box);
void  qt_check_box_set_check_state(void *check_box, int state);

/* ── QComboBox ──────────────────────────────────────────────────────── */

void *qt_combo_box_create(void *parent);
void  qt_combo_box_add_item(void *combo_box, const char *text);
void  qt_combo_box_remove_item(void *combo_box, int index);
int   qt_combo_box_get_current_index(void *combo_box);
void  qt_combo_box_set_current_index(void *combo_box, int index);
char *qt_combo_box_get_current_text(void *combo_box);
int   qt_combo_box_get_count(void *combo_box);
void  qt_combo_box_clear(void *combo_box);
void  qt_combo_box_set_editable(void *combo_box, int is_editable);
void  qt_combo_box_insert_item(void *combo_box, int index, const char *text);
void  qt_combo_box_set_item_text(void *combo_box, int index, const char *text);
char *qt_combo_box_get_item_text(void *combo_box, int index);
int   qt_combo_box_find_text(void *combo_box, const char *text);
void  qt_combo_box_set_current_text(void *combo_box, const char *text);
void  qt_combo_box_add_items(void *combo_box, const char **items, int count);
void  qt_combo_box_insert_items(void *combo_box, int index, const char **items, int count);
void  qt_combo_box_set_max_visible_items(void *combo_box, int max_items);
void  qt_combo_box_set_max_count(void *combo_box, int max_count);
void  qt_combo_box_set_insert_policy(void *combo_box, int policy);
void  qt_combo_box_set_duplicates_enabled(void *combo_box, int is_duplicates_enabled);
void *qt_combo_box_get_line_edit(void *combo_box);
void  qt_combo_box_show_popup(void *combo_box);
void  qt_combo_box_hide_popup(void *combo_box);
void  qt_combo_box_set_model(void *combo_box, void *model);
void *qt_combo_box_get_model(void *combo_box);
void  qt_combo_box_set_size_adjust_policy(void *combo_box, int policy);

/* ── QSlider ────────────────────────────────────────────────────────── */

void *qt_slider_create(int orientation, void *parent);
void  qt_slider_set_range(void *slider, int min_val, int max_val);
int   qt_slider_get_value(void *slider);
void  qt_slider_set_value(void *slider, int value);
void  qt_slider_set_tick_position(void *slider, int position);
void  qt_slider_set_tick_interval(void *slider, int interval);
void  qt_slider_set_single_step(void *slider, int step);
void  qt_slider_set_page_step(void *slider, int step);
void  qt_slider_set_orientation(void *slider, int orientation);
void  qt_slider_set_minimum(void *slider, int min_val);
void  qt_slider_set_maximum(void *slider, int max_val);
int   qt_slider_get_minimum(void *slider);
int   qt_slider_get_maximum(void *slider);
void  qt_slider_set_inverted_appearance(void *slider, int is_inverted);
void  qt_slider_set_inverted_controls(void *slider, int is_inverted);

/* ── QProgressBar ───────────────────────────────────────────────────── */

void *qt_progress_bar_create(void *parent);
void  qt_progress_bar_set_range(void *progress_bar, int min_val, int max_val);
int   qt_progress_bar_get_value(void *progress_bar);
void  qt_progress_bar_set_value(void *progress_bar, int value);
void  qt_progress_bar_set_format(void *progress_bar, const char *format);
void  qt_progress_bar_set_text_visible(void *progress_bar, int is_visible);
void  qt_progress_bar_reset(void *progress_bar);
void  qt_progress_bar_set_orientation(void *progress_bar, int orientation);
void  qt_progress_bar_set_minimum(void *progress_bar, int min_val);
void  qt_progress_bar_set_maximum(void *progress_bar, int max_val);
int   qt_progress_bar_get_minimum(void *progress_bar);
int   qt_progress_bar_get_maximum(void *progress_bar);
int   qt_progress_bar_is_text_visible(void *progress_bar);
char *qt_progress_bar_get_text(void *progress_bar);

/* ── QSpinBox ───────────────────────────────────────────────────────── */

void *qt_spin_box_create(void *parent);
void  qt_spin_box_set_range(void *spin_box, int min_val, int max_val);
int   qt_spin_box_get_value(void *spin_box);
void  qt_spin_box_set_value(void *spin_box, int value);
void  qt_spin_box_set_prefix(void *spin_box, const char *prefix);
void  qt_spin_box_set_suffix(void *spin_box, const char *suffix);
void  qt_spin_box_set_single_step(void *spin_box, int step);
void  qt_spin_box_set_read_only(void *spin_box, int is_read_only);
int   qt_spin_box_is_read_only(void *spin_box);
void  qt_spin_box_set_wrapping(void *spin_box, int is_wrapping);

/* ── QDoubleSpinBox ─────────────────────────────────────────────────── */

void  *qt_double_spin_box_create(void *parent);
void   qt_double_spin_box_set_range(void *spin_box, double min_val, double max_val);
double qt_double_spin_box_get_value(void *spin_box);
void   qt_double_spin_box_set_value(void *spin_box, double value);
void   qt_double_spin_box_set_decimals(void *spin_box, int decimals);
void   qt_double_spin_box_set_single_step(void *spin_box, double step);
void   qt_double_spin_box_set_prefix(void *spin_box, const char *prefix);
void   qt_double_spin_box_set_suffix(void *spin_box, const char *suffix);
void   qt_double_spin_box_set_read_only(void *spin_box, int is_read_only);
int    qt_double_spin_box_is_read_only(void *spin_box);
void   qt_double_spin_box_set_wrapping(void *spin_box, int is_wrapping);

/* ── Layouts (QVBoxLayout, QHBoxLayout, QGridLayout, QFormLayout) ──── */

void *qt_vbox_layout_create(void *parent);
void *qt_hbox_layout_create(void *parent);
void *qt_grid_layout_create(void *parent);
void *qt_form_layout_create(void *parent);
void  qt_layout_add_widget(void *layout, void *widget);
void  qt_grid_layout_add_widget(void *layout, void *widget, int row, int col, int row_span, int col_span);
void  qt_form_layout_add_row(void *layout, const char *label, void *widget);
void  qt_box_layout_add_layout(void *layout, void *child_layout);
void  qt_box_layout_add_stretch(void *layout, int stretch);
void  qt_box_layout_add_spacing(void *layout, int size);
void  qt_box_layout_add_widget_with_stretch(void *layout, void *widget, int stretch, int alignment);
void  qt_layout_set_spacing(void *layout, int spacing);
void  qt_layout_set_contents_margins(void *layout, int left, int top, int right, int bottom);
void  qt_layout_remove_widget(void *layout, void *widget);
void  qt_grid_layout_set_row_stretch(void *layout, int row, int stretch);
void  qt_grid_layout_set_column_stretch(void *layout, int column, int stretch);
void  qt_grid_layout_add_layout(void *layout, void *child_layout, int row, int col, int row_span, int col_span);
void  qt_form_layout_add_row_widgets(void *layout, void *label_widget, void *field_widget);
int   qt_layout_get_count(void *layout);
void *qt_layout_item_at(void *layout, int index);
void *qt_layout_take_at(void *layout, int index);
void *qt_layout_item_get_widget(void *item);
void  qt_layout_item_destroy(void *item);
void  qt_box_layout_insert_widget(void *layout, int index, void *widget, int stretch, int alignment);
void *qt_spacer_item_create(int width, int height, int horizontal_policy, int vertical_policy);
void  qt_box_layout_add_spacer_item(void *layout, void *spacer);
void  qt_grid_layout_add_spacer_item(void *layout, void *spacer, int row, int col, int row_span, int col_span);
int   qt_layout_set_widget_alignment(void *layout, void *widget, int alignment);

/* ── QListWidget ────────────────────────────────────────────────────── */

void *qt_list_widget_create(void *parent);
void  qt_list_widget_add_item(void *list, const char *text);
void  qt_list_widget_remove_item(void *list, int row);
int   qt_list_widget_get_current_row(void *list);
void  qt_list_widget_set_current_row(void *list, int row);
int   qt_list_widget_get_count(void *list);
void  qt_list_widget_clear(void *list);
char *qt_list_widget_get_item_text(void *list, int row);
void  qt_list_widget_insert_item(void *list, int row, const char *text);
void  qt_list_widget_sort_items(void *list, int order);
void  qt_list_widget_set_selection_mode(void *list, int mode);
void *qt_list_widget_get_item(void *list, int row);
void *qt_list_widget_get_item_at(void *list, int x, int y);
void *qt_list_widget_get_current_item(void *list);
void  qt_list_widget_set_current_item(void *list, void *item);
void  qt_list_widget_get_selected_items(void *list, void ***out_items, int *out_count);
void  qt_list_widget_add_items(void *list, const char **items, int count);
void  qt_list_widget_find_items(void *list, const char *text, int match_flags, void ***out_items, int *out_count);
void  qt_list_widget_scroll_to_item(void *list, void *item, int scroll_hint);
void  qt_list_widget_set_view_mode(void *list, int mode);
void  qt_list_widget_set_icon_size(void *list, int w, int h);
void  qt_list_widget_set_grid_size(void *list, int w, int h);
void  qt_list_widget_set_flow(void *list, int flow);
void  qt_list_widget_set_spacing(void *list, int spacing);
void  qt_list_widget_set_sorting_enabled(void *list, int is_enabled);

/* QListWidgetItem */
void *qt_list_widget_item_create(const char *text);
void  qt_list_widget_item_set_text(void *item, const char *text);
char *qt_list_widget_item_get_text(void *item);
void  qt_list_widget_item_set_font(void *item, const char *family, int point_size, int weight, int is_italic);
void  qt_list_widget_item_set_foreground(void *item, int r, int g, int b, int a);
void  qt_list_widget_item_set_background(void *item, int r, int g, int b, int a);
void  qt_list_widget_item_set_icon(void *item, void *icon);
void  qt_list_widget_item_set_flags(void *item, int flags);
int   qt_list_widget_item_get_flags(void *item);
void  qt_list_widget_item_set_size_hint(void *item, int w, int h);
void  qt_list_widget_item_set_text_alignment(void *item, int alignment);
int   qt_list_widget_item_get_text_alignment(void *item);
void  qt_list_widget_item_set_tool_tip(void *item, const char *tooltip);
char *qt_list_widget_item_get_tool_tip(void *item);
void  qt_list_widget_item_set_check_state(void *item, int state);
int   qt_list_widget_item_get_check_state(void *item);
void  qt_list_widget_item_set_hidden(void *item, int is_hidden);
int   qt_list_widget_item_is_hidden(void *item);
void  qt_list_widget_item_set_selected(void *item, int is_selected);
int   qt_list_widget_item_is_selected(void *item);
int   qt_list_widget_item_get_row(void *item);
void  qt_list_widget_add_item_object(void *list, void *item);
void  qt_list_widget_insert_item_object(void *list, int row, void *item);

/* ── QTreeWidget ────────────────────────────────────────────────────── */

void *qt_tree_widget_create(void *parent);
void  qt_tree_widget_set_column_count(void *tree, int count);
void  qt_tree_widget_set_header_labels(void *tree, const char **labels, int count);
void  qt_tree_widget_add_top_level_item(void *tree, void *item);
void  qt_tree_widget_clear(void *tree);
int   qt_tree_widget_get_top_level_item_count(void *tree);
void *qt_tree_widget_get_current_item(void *tree);
void  qt_tree_widget_remove_top_level_item(void *tree, int index);
void  qt_tree_widget_set_current_item(void *tree, void *item);
void  qt_tree_widget_expand_all(void *tree);
void  qt_tree_widget_collapse_all(void *tree);
void  qt_tree_widget_expand_item(void *tree, void *item);
void  qt_tree_widget_collapse_item(void *tree, void *item);
void  qt_tree_widget_set_selection_mode(void *tree, int mode);
void  qt_tree_widget_set_sorting_enabled(void *tree, int is_enabled);
void  qt_tree_widget_insert_top_level_item(void *tree, int index, void *item);
void *qt_tree_widget_get_top_level_item(void *tree, int index);
int   qt_tree_widget_index_of_top_level_item(void *tree, void *item);
void  qt_tree_widget_get_selected_items(void *tree, void ***out_items, int *out_count);
void  qt_tree_widget_find_items(void *tree, const char *text, int flags, int column, void ***out_items, int *out_count);
void  qt_tree_widget_scroll_to_item(void *tree, void *item, int scroll_hint);
void  qt_tree_widget_sort_items(void *tree, int column, int order);
void  qt_tree_widget_set_indentation(void *tree, int indentation);
void  qt_tree_widget_set_uniform_row_heights(void *tree, int is_uniform);
void  qt_tree_widget_set_animated(void *tree, int is_animated);
void  qt_tree_widget_set_header_hidden(void *tree, int is_hidden);

/* QTreeWidgetItem */
void *qt_tree_widget_item_create(const char **texts, int count);
void  qt_tree_widget_item_add_child(void *item, void *child);
void  qt_tree_widget_item_set_text(void *item, int column, const char *text);
char *qt_tree_widget_item_get_text(void *item, int column);
int   qt_tree_widget_item_child_count(void *item);
void *qt_tree_widget_item_get_child(void *item, int index);
void *qt_tree_widget_item_get_parent(void *item);
void  qt_tree_widget_item_remove_child(void *item, void *child);
void  qt_tree_widget_item_set_expanded(void *item, int is_expanded);
int   qt_tree_widget_item_is_expanded(void *item);
void  qt_tree_widget_item_set_icon(void *item, int column, void *icon);
void  qt_tree_widget_item_set_check_state(void *item, int column, int state);
int   qt_tree_widget_item_get_check_state(void *item, int column);
void  qt_tree_widget_item_set_flags(void *item, int flags);
void  qt_tree_widget_item_set_data(void *item, int column, int role, int value);
int   qt_tree_widget_item_get_data(void *item, int column, int role);
void  qt_tree_widget_item_set_data_string(void *item, int column, int role, const char *value);
char *qt_tree_widget_item_get_data_string(void *item, int column, int role);
void  qt_tree_widget_item_set_tool_tip(void *item, int column, const char *tooltip);
void  qt_tree_widget_item_set_hidden(void *item, int is_hidden);
int   qt_tree_widget_item_is_hidden(void *item);
void  qt_tree_widget_item_set_disabled(void *item, int is_disabled);
int   qt_tree_widget_item_is_disabled(void *item);
void  qt_tree_widget_item_set_selected(void *item, int is_selected);
int   qt_tree_widget_item_is_selected(void *item);
void  qt_tree_widget_item_set_first_column_spanned(void *item, int is_spanned);
void *qt_tree_widget_item_get_tree_widget(void *item);
void *qt_tree_widget_item_take_child(void *item, int index);
void  qt_tree_widget_item_sort_children(void *item, int column, int order);

/* ── QTreeWidgetItemIterator ───────────────────────────────────────── */

void *qt_tree_widget_item_iterator_create(void *tree, int flags);
void  qt_tree_widget_item_iterator_destroy(void *iter);
int   qt_tree_widget_item_iterator_is_valid(void *iter);
void *qt_tree_widget_item_iterator_get_item(void *iter);
void  qt_tree_widget_item_iterator_next(void *iter);

/* ── QTableWidget ───────────────────────────────────────────────────── */

void *qt_table_widget_create(int rows, int cols, void *parent);
void  qt_table_widget_set_row_count(void *table, int count);
void  qt_table_widget_set_column_count(void *table, int count);
void  qt_table_widget_set_horizontal_header_labels(void *table, const char **labels, int count);
void  qt_table_widget_set_vertical_header_labels(void *table, const char **labels, int count);
void  qt_table_widget_set_item(void *table, int row, int col, const char *text);
char *qt_table_widget_get_item_text(void *table, int row, int col);
int   qt_table_widget_get_current_row(void *table);
int   qt_table_widget_get_current_column(void *table);
int   qt_table_widget_get_row_count(void *table);
int   qt_table_widget_get_column_count(void *table);
void  qt_table_widget_clear(void *table);
void  qt_table_widget_clear_contents(void *table);
void  qt_table_widget_insert_row(void *table, int row);
void  qt_table_widget_insert_column(void *table, int column);
void  qt_table_widget_remove_row(void *table, int row);
void  qt_table_widget_remove_column(void *table, int column);
void  qt_table_widget_set_selection_mode(void *table, int mode);
void  qt_table_widget_set_selection_behaviour(void *table, int behaviour);
void  qt_table_widget_set_alternating_row_colours(void *table, int is_alternating);
void  qt_table_widget_set_sorting_enabled(void *table, int is_enabled);
void  qt_table_widget_set_column_width(void *table, int column, int width);
void  qt_table_widget_set_row_height(void *table, int row, int height);
void  qt_table_widget_resize_columns_to_contents(void *table);
void  qt_table_widget_resize_rows_to_contents(void *table);
void  qt_table_widget_set_cell_widget(void *table, int row, int col, void *widget);
void *qt_table_widget_get_cell_widget(void *table, int row, int col);
void *qt_table_widget_get_item(void *table, int row, int col);
void *qt_table_widget_get_current_item(void *table);
void  qt_table_widget_set_current_cell(void *table, int row, int col);
void  qt_table_widget_get_selected_items(void *table, void ***out_items, int *out_count);
void  qt_table_widget_set_show_grid(void *table, int is_show);
void  qt_table_widget_set_span(void *table, int row, int col, int row_span, int col_span);
int   qt_table_widget_get_row_span(void *table, int row, int col);
int   qt_table_widget_get_column_span(void *table, int row, int col);
void  qt_table_widget_scroll_to_item(void *table, void *item, int scroll_hint);
void  qt_table_widget_find_items(void *table, const char *text, int flags, void ***out_items, int *out_count);
void  qt_table_widget_set_word_wrap(void *table, int is_word_wrap);
void  qt_table_widget_set_corner_button_enabled(void *table, int is_enabled);

/* QTableWidgetItem */
void *qt_table_widget_item_create(const char *text);
void  qt_table_widget_item_set_text(void *item, const char *text);
char *qt_table_widget_item_get_text(void *item);
void  qt_table_widget_item_set_font(void *item, const char *family, int point_size, int weight, int is_italic);
void  qt_table_widget_item_set_foreground(void *item, int r, int g, int b, int a);
void  qt_table_widget_item_set_background(void *item, int r, int g, int b, int a);
void  qt_table_widget_item_set_icon(void *item, void *icon);
void  qt_table_widget_item_set_flags(void *item, int flags);
int   qt_table_widget_item_get_flags(void *item);
void  qt_table_widget_item_set_text_alignment(void *item, int alignment);
int   qt_table_widget_item_get_text_alignment(void *item);
void  qt_table_widget_item_set_tool_tip(void *item, const char *tooltip);
char *qt_table_widget_item_get_tool_tip(void *item);
void  qt_table_widget_item_set_check_state(void *item, int state);
int   qt_table_widget_item_get_check_state(void *item);
void  qt_table_widget_item_set_data(void *item, int role, const char *value);
char *qt_table_widget_item_get_data(void *item, int role);
void  qt_table_widget_item_set_size_hint(void *item, int w, int h);
int   qt_table_widget_item_get_row(void *item);
int   qt_table_widget_item_get_column(void *item);
void  qt_table_widget_item_set_selected(void *item, int is_selected);
int   qt_table_widget_item_is_selected(void *item);
void  qt_table_widget_set_item_object(void *table, int row, int col, void *item);

/* ── QTableWidgetSelectionRange ────────────────────────────────────── */

int   qt_table_widget_get_selection_ranges(void *table, int **out_ranges, int *out_count);
void  qt_table_widget_free_selection_ranges(int *ranges);
void  qt_table_widget_set_range_selected(void *table, int top_row, int left_col, int bottom_row, int right_col, int is_selected);

/* ── QFileIconProvider ─────────────────────────────────────────────── */

void *qt_file_icon_provider_create(void);
void  qt_file_icon_provider_destroy(void *provider);
void *qt_file_icon_provider_get_icon_for_file(void *provider, const char *file_path);
void *qt_file_icon_provider_get_icon_for_type(void *provider, int icon_type);

/* ── QScrollArea ────────────────────────────────────────────────────── */

void *qt_scroll_area_create(void *parent);
void  qt_scroll_area_set_widget(void *scroll_area, void *widget);
void  qt_scroll_area_set_widget_resizable(void *scroll_area, int is_resizable);
void *qt_scroll_area_get_widget(void *scroll_area);
void  qt_scroll_area_set_horizontal_scroll_bar_policy(void *scroll_area, int policy);
void  qt_scroll_area_set_vertical_scroll_bar_policy(void *scroll_area, int policy);
void  qt_scroll_area_ensure_visible(void *scroll_area, int x, int y, int x_margin, int y_margin);
void  qt_scroll_area_ensure_widget_visible(void *scroll_area, void *widget, int x_margin, int y_margin);
void *qt_scroll_area_take_widget(void *scroll_area);
void *qt_scroll_area_get_vertical_scroll_bar(void *scroll_area);
void *qt_scroll_area_get_horizontal_scroll_bar(void *scroll_area);
void  qt_scroll_area_set_alignment(void *scroll_area, int alignment);

/* ── QSplitter ──────────────────────────────────────────────────────── */

void *qt_splitter_create(int orientation, void *parent);
void  qt_splitter_add_widget(void *splitter, void *widget);
void  qt_splitter_set_sizes(void *splitter, const int *sizes, int count);
void  qt_splitter_get_sizes(void *splitter, int *sizes_out, int count);
void  qt_splitter_set_stretch_factor(void *splitter, int index, int stretch);
int   qt_splitter_get_count(void *splitter);
void  qt_splitter_set_collapsible(void *splitter, int index, int is_collapsible);
void *qt_splitter_get_widget(void *splitter, int index);
int   qt_splitter_index_of(void *splitter, void *widget);
void  qt_splitter_set_children_collapsible(void *splitter, int is_collapsible);
void  qt_splitter_set_opaque_resize(void *splitter, int is_opaque);
void  qt_splitter_set_handle_width(void *splitter, int width);
char *qt_splitter_save_state(void *splitter, int *out_len);
int   qt_splitter_restore_state(void *splitter, const char *data, int len);

/* ── QStackedWidget ─────────────────────────────────────────────────── */

void *qt_stacked_widget_create(void *parent);
int   qt_stacked_widget_add_widget(void *stacked, void *widget);
void  qt_stacked_widget_set_current_index(void *stacked, int index);
int   qt_stacked_widget_get_current_index(void *stacked);
int   qt_stacked_widget_get_count(void *stacked);
void  qt_stacked_widget_remove_widget(void *stacked, void *widget);
void *qt_stacked_widget_get_widget(void *stacked, int index);
int   qt_stacked_widget_index_of(void *stacked, void *widget);
void  qt_stacked_widget_set_current_widget(void *stacked, void *widget);

/* ── QFrame ─────────────────────────────────────────────────────────── */

void *qt_frame_create(void *parent);
void  qt_frame_set_frame_shape(void *frame, int shape);
void  qt_frame_set_frame_shadow(void *frame, int shadow);
void  qt_frame_set_line_width(void *frame, int width);
int   qt_frame_get_frame_shape(void *frame);
int   qt_frame_get_frame_shadow(void *frame);
int   qt_frame_get_line_width(void *frame);
void  qt_frame_set_mid_line_width(void *frame, int width);
int   qt_frame_get_mid_line_width(void *frame);

/* ── QMenuBar ───────────────────────────────────────────────────────── */

void *qt_menu_bar_add_menu(void *menu_bar, const char *title);
void  qt_menu_bar_clear(void *menu_bar);

/* ── QMenu ──────────────────────────────────────────────────────────── */

void *qt_menu_create(void *parent);
void *qt_menu_add_action(void *menu, const char *text);
void  qt_menu_add_separator(void *menu);
void *qt_menu_add_menu(void *menu, const char *title);
void  qt_menu_popup(void *menu, int global_x, int global_y);
void  qt_menu_clear(void *menu);
void *qt_menu_add_section(void *menu, const char *text);
void  qt_menu_insert_action(void *menu, void *before, void *action);
void *qt_menu_insert_separator(void *menu, void *before);
void *qt_menu_insert_menu(void *menu, void *before, void *submenu);
void  qt_menu_set_title(void *menu, const char *title);
char *qt_menu_get_title(void *menu);
void  qt_menu_set_icon(void *menu, void *icon);
void  qt_menu_set_tear_off_enabled(void *menu, int is_enabled);
void  qt_menu_set_default_action(void *menu, void *action);
void  qt_menu_get_actions(void *menu, void ***out_actions, int *out_count);
int   qt_menu_is_empty(void *menu);

/* ── QAction ────────────────────────────────────────────────────────── */

void  qt_action_set_enabled(void *action, int is_enabled);
void  qt_action_set_shortcut(void *action, const char *shortcut);
void  qt_action_set_checkable(void *action, int is_checkable);
int   qt_action_is_checked(void *action);
void  qt_action_set_checked(void *action, int is_checked);
void  qt_action_set_tooltip(void *action, const char *tooltip);
void  qt_action_set_text(void *action, const char *text);
char *qt_action_get_text(void *action);
int   qt_action_is_enabled(void *action);
int   qt_action_is_checkable(void *action);
void  qt_action_set_visible(void *action, int is_visible);
int   qt_action_is_visible(void *action);
void  qt_action_set_shortcut_context(void *action, int context);
void  qt_action_set_status_tip(void *action, const char *tip);
void  qt_action_set_whats_this(void *action, const char *text);
void  qt_action_set_auto_repeat(void *action, int is_enabled);
void  qt_action_set_data(void *action, const char *data);
char *qt_action_get_data(void *action);
void  qt_action_trigger(void *action);
void  qt_action_set_menu_role(void *action, int role);

/* ── QToolBar ───────────────────────────────────────────────────────── */

void *qt_toolbar_create(void *parent, const char *title);
void *qt_toolbar_add_action(void *toolbar, const char *text);
void  qt_toolbar_add_separator(void *toolbar);
void  qt_toolbar_add_widget(void *toolbar, void *widget);
void  qt_toolbar_set_movable(void *toolbar, int is_movable);
int   qt_toolbar_is_movable(void *toolbar);
void  qt_toolbar_set_icon_size(void *toolbar, int width, int height);
void  qt_toolbar_set_tool_button_style(void *toolbar, int style);
void  qt_toolbar_insert_action(void *toolbar, void *before, void *action);
void *qt_toolbar_insert_separator(void *toolbar, void *before);
void *qt_toolbar_insert_widget(void *toolbar, void *before, void *widget);
void  qt_toolbar_set_allowed_areas(void *toolbar, int areas);
void  qt_toolbar_set_floatable(void *toolbar, int is_floatable);
void  qt_toolbar_set_orientation(void *toolbar, int orientation);
void *qt_toolbar_toggle_view_action(void *toolbar);
void *qt_toolbar_widget_for_action(void *toolbar, void *action);
void  qt_toolbar_clear(void *toolbar);

/* ── QTabWidget ─────────────────────────────────────────────────────── */

void *qt_tab_widget_create(void *parent);
int   qt_tab_widget_add_tab(void *tab_widget, void *widget, const char *label);
int   qt_tab_widget_get_current_index(void *tab_widget);
void  qt_tab_widget_set_current_index(void *tab_widget, int index);
int   qt_tab_widget_get_count(void *tab_widget);
void  qt_tab_widget_set_tab_text(void *tab_widget, int index, const char *text);
void  qt_tab_widget_remove_tab(void *tab_widget, int index);
int   qt_tab_widget_insert_tab(void *tab_widget, int index, void *widget, const char *label);
void  qt_tab_widget_set_tab_enabled(void *tab_widget, int index, int is_enabled);
int   qt_tab_widget_is_tab_enabled(void *tab_widget, int index);
void  qt_tab_widget_set_tabs_closable(void *tab_widget, int is_closable);
void  qt_tab_widget_set_movable(void *tab_widget, int is_movable);
void *qt_tab_widget_get_widget(void *tab_widget, int index);
int   qt_tab_widget_index_of(void *tab_widget, void *widget);
void *qt_tab_widget_get_current_widget(void *tab_widget);
void  qt_tab_widget_clear(void *tab_widget);
void  qt_tab_widget_set_document_mode(void *tab_widget, int is_document_mode);
void  qt_tab_widget_set_elide_mode(void *tab_widget, int mode);
void  qt_tab_widget_set_uses_scroll_buttons(void *tab_widget, int is_uses);
void  qt_tab_widget_set_tab_bar_auto_hide(void *tab_widget, int is_auto_hide);
void  qt_tab_widget_set_corner_widget(void *tab_widget, void *widget, int corner);

/* ── QGroupBox ──────────────────────────────────────────────────────── */

void *qt_group_box_create(void *parent, const char *title);
void  qt_group_box_set_title(void *group_box, const char *title);
void  qt_group_box_set_checkable(void *group_box, int is_checkable);
int   qt_group_box_is_checked(void *group_box);
void  qt_group_box_set_checked(void *group_box, int is_checked);
char *qt_group_box_get_title(void *group_box);
void  qt_group_box_set_flat(void *group_box, int is_flat);
int   qt_group_box_is_flat(void *group_box);
void  qt_group_box_set_alignment(void *group_box, int alignment);

/* ── QDialog ────────────────────────────────────────────────────────── */

void *qt_dialog_create(void *parent);
int   qt_dialog_exec(void *dialog);
void  qt_dialog_accept(void *dialog);
void  qt_dialog_reject(void *dialog);
void  qt_dialog_set_modal(void *dialog, int is_modal);
void  qt_dialog_open(void *dialog);
void  qt_dialog_done(void *dialog, int result);
void  qt_dialog_set_result(void *dialog, int result);
int   qt_dialog_get_result(void *dialog);
void  qt_dialog_set_size_grip_enabled(void *dialog, int is_enabled);

/* ── QDockWidget ────────────────────────────────────────────────────── */

void *qt_dock_widget_create(void *parent, const char *title);
void  qt_dock_widget_set_widget(void *dock, void *widget);
void  qt_dock_widget_set_allowed_areas(void *dock, int areas);
void  qt_dock_widget_set_features(void *dock, int features);
int   qt_dock_widget_is_floating(void *dock);
void  qt_dock_widget_set_floating(void *dock, int is_floating);
void *qt_dock_widget_toggle_view_action(void *dock);
void  qt_dock_widget_set_title_bar_widget(void *dock, void *widget);
void *qt_dock_widget_get_title_bar_widget(void *dock);

/* ── QStatusBar ─────────────────────────────────────────────────────── */

void  qt_statusbar_show_message(void *statusbar, const char *message, int timeout_ms);
void  qt_statusbar_clear_message(void *statusbar);
void  qt_statusbar_add_permanent_widget(void *statusbar, void *widget);
void  qt_statusbar_add_widget(void *statusbar, void *widget);
void  qt_statusbar_remove_widget(void *statusbar, void *widget);
int   qt_statusbar_insert_widget(void *statusbar, int index, void *widget, int stretch);
int   qt_statusbar_insert_permanent_widget(void *statusbar, int index, void *widget, int stretch);
char *qt_statusbar_get_current_message(void *statusbar);
void  qt_statusbar_set_size_grip_enabled(void *statusbar, int is_enabled);

/* ── QTimer ─────────────────────────────────────────────────────────── */

void *qt_timer_create(void *parent);
void  qt_timer_destroy(void *timer);
void  qt_timer_start(void *timer, int interval_ms);
void  qt_timer_stop(void *timer);
void  qt_timer_set_single_shot(void *timer, int is_single_shot);
int   qt_timer_is_active(void *timer);
int   qt_timer_get_interval(void *timer);
int   qt_timer_get_remaining_time(void *timer);
void  qt_timer_single_shot(int interval_ms, qt_callback_t callback, void *user_data);
void  qt_timer_set_interval(void *timer, int interval_ms);
void  qt_timer_set_timer_type(void *timer, int timer_type);

/* ── QPixmap ────────────────────────────────────────────────────────── */

void *qt_pixmap_create_from_file(const char *file_path);
void  qt_pixmap_destroy(void *pixmap);
int   qt_pixmap_get_width(void *pixmap);
int   qt_pixmap_get_height(void *pixmap);
int   qt_pixmap_is_null(void *pixmap);
void *qt_pixmap_scaled(void *pixmap, int w, int h, int aspect_ratio_mode, int transform_mode);
void *qt_pixmap_scaled_to_width(void *pixmap, int width, int transform_mode);
void *qt_pixmap_scaled_to_height(void *pixmap, int height, int transform_mode);
void  qt_pixmap_fill(void *pixmap, void *colour);
int   qt_pixmap_save(void *pixmap, const char *file_path);
int   qt_pixmap_load(void *pixmap, const char *file_path);
void *qt_pixmap_copy(void *pixmap, int x, int y, int w, int h);
void  qt_pixmap_get_size(void *pixmap, int *w, int *h);
void  qt_pixmap_get_rect(void *pixmap, int *x, int *y, int *w, int *h);
void *qt_pixmap_from_image(void *image);
void *qt_pixmap_create_mask_from_colour(void *pixmap, void *colour, int mode);
void  qt_pixmap_set_mask(void *pixmap, void *bitmap);
void *qt_pixmap_get_mask(void *pixmap);

/* ── QIcon ──────────────────────────────────────────────────────────── */

void *qt_icon_create(void);
void *qt_icon_create_from_file(const char *file_path);
void *qt_icon_create_from_pixmap(void *pixmap);
void  qt_icon_destroy(void *icon);
int   qt_icon_is_null(void *icon);
void  qt_icon_add_file(void *icon, const char *filename, int w, int h, int mode, int state);
void  qt_icon_add_pixmap(void *icon, void *pixmap, int mode, int state);
void *qt_icon_get_pixmap(void *icon, int w, int h, int mode, int state);
void *qt_icon_from_theme(const char *name);
int   qt_icon_has_theme_icon(const char *name);
void  qt_icon_set_theme_name(const char *name);
char *qt_icon_get_theme_name(void);
void  qt_icon_get_available_sizes(void *icon, int mode, int state, int **out_sizes, int *out_count);
void  qt_icon_free_available_sizes(int *sizes);

/* Icon/pixmap setters on existing widgets */
void  qt_push_button_set_icon(void *button, void *icon);
void  qt_action_set_icon(void *action, void *icon);
void  qt_widget_set_window_icon(void *widget, void *icon);
void  qt_tab_widget_set_tab_icon(void *tab_widget, int index, void *icon);
void  qt_label_set_pixmap(void *label, void *pixmap);

/* ── QShortcut ──────────────────────────────────────────────────────── */

void *qt_shortcut_create(void *parent, const char *key_sequence);
void  qt_shortcut_destroy(void *shortcut);
void  qt_shortcut_set_key(void *shortcut, const char *key_sequence);
void  qt_shortcut_set_enabled(void *shortcut, int is_enabled);

/* ── QDialogButtonBox ───────────────────────────────────────────────── */

void *qt_dialog_button_box_create(void *parent);
void *qt_dialog_button_box_create_with_buttons(int buttons, void *parent);
void *qt_dialog_button_box_add_button(void *button_box, int button);
void  qt_dialog_button_box_set_orientation(void *button_box, int orientation);

/* ── QToolButton ────────────────────────────────────────────────────── */

void *qt_tool_button_create(void *parent);
void  qt_tool_button_set_text(void *button, const char *text);
void  qt_tool_button_set_icon(void *button, void *icon);
void  qt_tool_button_set_popup_mode(void *button, int mode);
void  qt_tool_button_set_menu(void *button, void *menu);
void  qt_tool_button_set_default_action(void *button, void *action);
void  qt_tool_button_set_auto_raise(void *button, int is_auto_raise);
void  qt_tool_button_set_tool_button_style(void *button, int style);
void  qt_tool_button_set_arrow_type(void *button, int arrow_type);
void *qt_tool_button_get_default_action(void *button);

/* ── QButtonGroup ───────────────────────────────────────────────────── */

void *qt_button_group_create(void *parent);
void  qt_button_group_destroy(void *group);
void  qt_button_group_add_button(void *group, void *button, int id);
void  qt_button_group_remove_button(void *group, void *button);
void  qt_button_group_set_exclusive(void *group, int is_exclusive);
int   qt_button_group_get_checked_id(void *group);

/* ── QCalendarWidget ────────────────────────────────────────────────── */

void *qt_calendar_widget_create(void *parent);
void  qt_calendar_widget_get_selected_date(void *calendar, int *year, int *month, int *day);
void  qt_calendar_widget_set_selected_date(void *calendar, int year, int month, int day);
void  qt_calendar_widget_set_minimum_date(void *calendar, int year, int month, int day);
void  qt_calendar_widget_set_maximum_date(void *calendar, int year, int month, int day);
void  qt_calendar_widget_set_grid_visible(void *calendar, int is_visible);

/* ── QDateEdit ──────────────────────────────────────────────────────── */

void *qt_date_edit_create(void *parent);
void  qt_date_edit_get_date(void *date_edit, int *year, int *month, int *day);
void  qt_date_edit_set_date(void *date_edit, int year, int month, int day);
void  qt_date_edit_set_minimum_date(void *date_edit, int year, int month, int day);
void  qt_date_edit_set_maximum_date(void *date_edit, int year, int month, int day);
void  qt_date_edit_set_display_format(void *date_edit, const char *format);
void  qt_date_edit_set_calendar_popup(void *date_edit, int is_enabled);

/* ── QTimeEdit ──────────────────────────────────────────────────────── */

void *qt_time_edit_create(void *parent);
void  qt_time_edit_get_time(void *time_edit, int *hour, int *minute, int *second);
void  qt_time_edit_set_time(void *time_edit, int hour, int minute, int second);
void  qt_time_edit_set_display_format(void *time_edit, const char *format);

/* ── QDateTimeEdit ──────────────────────────────────────────────────── */

void *qt_date_time_edit_create(void *parent);
void  qt_date_time_edit_get_date_time(void *dt_edit, int *year, int *month, int *day, int *hour, int *minute, int *second);
void  qt_date_time_edit_set_date_time(void *dt_edit, int year, int month, int day, int hour, int minute, int second);
void  qt_date_time_edit_set_display_format(void *dt_edit, const char *format);
void  qt_date_time_edit_set_calendar_popup(void *dt_edit, int is_enabled);

/* ── QDial ──────────────────────────────────────────────────────────── */

void *qt_dial_create(void *parent);
void  qt_dial_set_range(void *dial, int min_val, int max_val);
int   qt_dial_get_value(void *dial);
void  qt_dial_set_value(void *dial, int value);
void  qt_dial_set_notch_target(void *dial, double target);
void  qt_dial_set_notches_visible(void *dial, int is_visible);
void  qt_dial_set_wrapping(void *dial, int is_wrapping);
void  qt_dial_set_single_step(void *dial, int step);

/* ── QProgressDialog ────────────────────────────────────────────────── */

void *qt_progress_dialog_create(void *parent, const char *label_text, const char *cancel_button_text, int minimum, int maximum);
void  qt_progress_dialog_set_value(void *dialog, int progress);
int   qt_progress_dialog_get_value(void *dialog);
void  qt_progress_dialog_set_label_text(void *dialog, const char *text);
void  qt_progress_dialog_set_cancel_button_text(void *dialog, const char *text);
void  qt_progress_dialog_set_range(void *dialog, int minimum, int maximum);
void  qt_progress_dialog_set_minimum_duration(void *dialog, int ms);
void  qt_progress_dialog_set_auto_close(void *dialog, int is_auto_close);
void  qt_progress_dialog_set_auto_reset(void *dialog, int is_auto_reset);
int   qt_progress_dialog_was_canceled(void *dialog);
void  qt_progress_dialog_reset(void *dialog);

/* ── QTextBrowser ───────────────────────────────────────────────────── */

void *qt_text_browser_create(void *parent);
void  qt_text_browser_set_html(void *browser, const char *html);
void  qt_text_browser_set_source(void *browser, const char *url);
void  qt_text_browser_set_open_external_links(void *browser, int is_open);
void  qt_text_browser_backward(void *browser);
void  qt_text_browser_forward(void *browser);
void  qt_text_browser_home(void *browser);

/* ── QHeaderView ────────────────────────────────────────────────────── */

void  qt_header_view_set_section_resize_mode(void *header, int mode);
void  qt_header_view_set_section_resize_mode_for(void *header, int section, int mode);
void  qt_header_view_set_stretch_last_section(void *header, int is_stretch);
void  qt_header_view_set_visible(void *header, int is_visible);
void  qt_header_view_set_sort_indicator(void *header, int section, int order);
void  qt_header_view_set_sort_indicator_shown(void *header, int is_shown);
void  qt_header_view_set_section_hidden(void *header, int section, int is_hidden);
int   qt_header_view_is_section_hidden(void *header, int section);
void  qt_header_view_resize_section(void *header, int section, int size);
int   qt_header_view_get_section_size(void *header, int section);
void  qt_header_view_move_section(void *header, int from, int to);
void  qt_header_view_set_sort_indicator_clearable(void *header, int is_clearable);
int   qt_header_view_get_count(void *header);
void  qt_header_view_swap_sections(void *header, int first, int second);
void  qt_header_view_set_minimum_section_size(void *header, int size);
void  qt_header_view_set_maximum_section_size(void *header, int size);
int   qt_header_view_connect_section_clicked(void *header, qt_int_callback_t callback, void *user_data);
int   qt_header_view_connect_section_resized(void *header, qt_item_callback_t callback, void *user_data);
int   qt_header_view_connect_section_moved(void *header, qt_item_callback_t callback, void *user_data);
int   qt_header_view_connect_sort_indicator_changed(void *header, qt_cell_callback_t callback, void *user_data);
void *qt_table_widget_get_horizontal_header(void *table);
void *qt_table_widget_get_vertical_header(void *table);
void *qt_tree_widget_get_header(void *tree);

/* ── QSystemTrayIcon ────────────────────────────────────────────────── */

void *qt_system_tray_icon_create(void *parent);
void  qt_system_tray_icon_destroy(void *tray_icon);
void  qt_system_tray_icon_set_icon(void *tray_icon, void *icon);
void  qt_system_tray_icon_set_tooltip(void *tray_icon, const char *tooltip);
void  qt_system_tray_icon_set_context_menu(void *tray_icon, void *menu);
void  qt_system_tray_icon_show(void *tray_icon);
void  qt_system_tray_icon_hide(void *tray_icon);
void  qt_system_tray_icon_show_message(void *tray_icon, const char *title, const char *message, int icon_type, int timeout_ms);
int   qt_system_tray_icon_is_available(void);

/* ── Clipboard ──────────────────────────────────────────────────────── */

char *qt_clipboard_get_text(void);
void  qt_clipboard_set_text(const char *text);

/* ── String management ──────────────────────────────────────────────── */

void qt_free_string(char *str);
void qt_dialog_free_string(char *str);
void qt_free_string_array(char **names, int count);

/* ── Dialog helpers ─────────────────────────────────────────────────── */

/* QFileDialog */
char *qt_file_dialog_get_open_file_name(void *parent, const char *caption, const char *dir, const char *filter);
char *qt_file_dialog_get_save_file_name(void *parent, const char *caption, const char *dir, const char *filter);
char *qt_file_dialog_get_existing_directory(void *parent, const char *caption, const char *dir);
int   qt_file_dialog_get_open_file_names(void *parent, const char *caption, const char *dir, const char *filter,
                                         char ***out_names, int *out_count);

/* QMessageBox — returns Standard_Button value */
int qt_message_box_show_information(void *parent, const char *title, const char *text);
int qt_message_box_show_warning(void *parent, const char *title, const char *text);
int qt_message_box_show_critical(void *parent, const char *title, const char *text);
int qt_message_box_show_question(void *parent, const char *title, const char *text);
int qt_message_box_show_information_ex(void *parent, const char *title, const char *text, int buttons);
int qt_message_box_show_warning_ex(void *parent, const char *title, const char *text, int buttons);
int qt_message_box_show_critical_ex(void *parent, const char *title, const char *text, int buttons);
int qt_message_box_show_question_ex(void *parent, const char *title, const char *text, int buttons);

/* QColorDialog — returns 1 if accepted, 0 if cancelled */
int qt_colour_dialog_get_colour(void *parent,
                                int initial_r, int initial_g, int initial_b, int initial_a,
                                int *result_r, int *result_g, int *result_b, int *result_a);

/* QFontDialog — returns 1 if accepted, 0 if cancelled */
int qt_font_dialog_get_font(void *parent, char *family_buf, int family_buf_size,
                            int *point_size, int *weight, int *is_italic);

/* QInputDialog */
char  *qt_input_dialog_get_text(void *parent, const char *title, const char *label,
                                const char *default_text, int *is_ok);
int    qt_input_dialog_get_int(void *parent, const char *title, const char *label,
                               int value, int min_val, int max_val, int step, int *is_ok);
double qt_input_dialog_get_double(void *parent, const char *title, const char *label,
                                  double value, double min_val, double max_val, int decimals, int *is_ok);
char  *qt_input_dialog_get_item(void *parent, const char *title, const char *label,
                                const char **items, int items_count, int current, int is_editable, int *is_ok);

/* ── Signal connections (all return a connection ID for qt_disconnect) ── */

int qt_push_button_connect_clicked(void *button, qt_callback_t callback, void *user_data);
int qt_push_button_connect_pressed(void *button, qt_callback_t callback, void *user_data);
int qt_push_button_connect_released(void *button, qt_callback_t callback, void *user_data);
int qt_check_box_connect_toggled(void *check_box, qt_int_callback_t callback, void *user_data);
int qt_radio_button_connect_toggled(void *radio_button, qt_int_callback_t callback, void *user_data);
int qt_slider_connect_value_changed(void *slider, qt_int_callback_t callback, void *user_data);
int qt_spin_box_connect_value_changed(void *spin_box, qt_int_callback_t callback, void *user_data);
int qt_double_spin_box_connect_value_changed(void *spin_box, qt_double_callback_t callback, void *user_data);
int qt_line_edit_connect_text_changed(void *line_edit, qt_string_callback_t callback, void *user_data);
int qt_line_edit_connect_return_pressed(void *line_edit, qt_callback_t callback, void *user_data);
int qt_line_edit_connect_editing_finished(void *line_edit, qt_callback_t callback, void *user_data);
int qt_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data);
int qt_combo_box_connect_index_changed(void *combo_box, qt_int_callback_t callback, void *user_data);
int qt_list_widget_connect_current_row_changed(void *list, qt_int_callback_t callback, void *user_data);
int qt_tree_widget_connect_item_clicked(void *tree, qt_item_callback_t callback, void *user_data);
int qt_table_widget_connect_cell_clicked(void *table, qt_cell_callback_t callback, void *user_data);
int qt_widget_connect_custom_context_menu_requested(void *widget, qt_point_callback_t callback, void *user_data);
int qt_action_connect_triggered(void *action, qt_callback_t callback, void *user_data);
int qt_tab_widget_connect_current_changed(void *tab_widget, qt_int_callback_t callback, void *user_data);
int qt_group_box_connect_toggled(void *group_box, qt_int_callback_t callback, void *user_data);
int qt_stacked_widget_connect_current_changed(void *stacked, qt_int_callback_t callback, void *user_data);
int qt_timer_connect_timeout(void *timer, qt_callback_t callback, void *user_data);

/* New signals for section 3 */
int qt_tab_widget_connect_tab_close_requested(void *tab_widget, qt_int_callback_t callback, void *user_data);
int qt_table_widget_connect_cell_double_clicked(void *table, qt_cell_callback_t callback, void *user_data);
int qt_table_widget_connect_cell_changed(void *table, qt_cell_callback_t callback, void *user_data);
int qt_table_widget_connect_item_selection_changed(void *table, qt_callback_t callback, void *user_data);
int qt_tree_widget_connect_item_double_clicked(void *tree, qt_item_callback_t callback, void *user_data);
int qt_tree_widget_connect_item_expanded(void *tree, qt_item_callback_t callback, void *user_data);
int qt_tree_widget_connect_item_collapsed(void *tree, qt_item_callback_t callback, void *user_data);
int qt_tree_widget_connect_current_item_changed(void *tree, qt_callback_t callback, void *user_data);
int qt_list_widget_connect_item_clicked(void *list, qt_int_callback_t callback, void *user_data);
int qt_list_widget_connect_item_double_clicked(void *list, qt_int_callback_t callback, void *user_data);
int qt_list_widget_connect_item_selection_changed(void *list, qt_callback_t callback, void *user_data);
int qt_combo_box_connect_current_text_changed(void *combo_box, qt_string_callback_t callback, void *user_data);
int qt_combo_box_connect_activated(void *combo_box, qt_int_callback_t callback, void *user_data);
int qt_combo_box_connect_highlighted(void *combo_box, qt_int_callback_t callback, void *user_data);
int qt_combo_box_connect_edit_text_changed(void *combo_box, qt_string_callback_t callback, void *user_data);
int qt_progress_bar_connect_value_changed(void *progress_bar, qt_int_callback_t callback, void *user_data);
int qt_slider_connect_slider_pressed(void *slider, qt_callback_t callback, void *user_data);
int qt_slider_connect_slider_released(void *slider, qt_callback_t callback, void *user_data);
int qt_dock_widget_connect_visibility_changed(void *dock, qt_int_callback_t callback, void *user_data);
int qt_dialog_connect_accepted(void *dialog, qt_callback_t callback, void *user_data);
int qt_dialog_connect_rejected(void *dialog, qt_callback_t callback, void *user_data);
int qt_dialog_connect_finished(void *dialog, qt_int_callback_t callback, void *user_data);

/* New signals for section 4 */
int qt_shortcut_connect_activated(void *shortcut, qt_callback_t callback, void *user_data);
int qt_dialog_button_box_connect_accepted(void *button_box, qt_callback_t callback, void *user_data);
int qt_dialog_button_box_connect_rejected(void *button_box, qt_callback_t callback, void *user_data);
int qt_tool_button_connect_clicked(void *button, qt_callback_t callback, void *user_data);
int qt_button_group_connect_id_clicked(void *group, qt_int_callback_t callback, void *user_data);
int qt_button_group_connect_id_toggled(void *group, qt_cell_callback_t callback, void *user_data);
int qt_calendar_widget_connect_selection_changed(void *calendar, qt_callback_t callback, void *user_data);
int qt_date_edit_connect_date_changed(void *date_edit, qt_callback_t callback, void *user_data);
int qt_time_edit_connect_time_changed(void *time_edit, qt_callback_t callback, void *user_data);
int qt_date_time_edit_connect_date_time_changed(void *dt_edit, qt_callback_t callback, void *user_data);
int qt_dial_connect_value_changed(void *dial, qt_int_callback_t callback, void *user_data);
int qt_progress_dialog_connect_canceled(void *dialog, qt_callback_t callback, void *user_data);
int qt_text_browser_connect_anchor_clicked(void *browser, qt_string_callback_t callback, void *user_data);
int qt_system_tray_icon_connect_activated(void *tray_icon, qt_int_callback_t callback, void *user_data);

/* New signals for QTableWidget and QTreeWidget */
int qt_table_widget_connect_current_cell_changed(void *table, qt_four_int_callback_t callback, void *user_data);
int qt_table_widget_connect_current_item_changed(void *table, qt_two_pointer_callback_t callback, void *user_data);
int qt_tree_widget_connect_item_changed(void *tree, qt_item_callback_t callback, void *user_data);
int qt_tree_widget_connect_item_selection_changed(void *tree, qt_callback_t callback, void *user_data);

/* Memory management for out-param arrays */
void qt_free_item_array(void **items);

/* New signals for QTextEdit and QPlainTextEdit */
int qt_text_edit_connect_cursor_position_changed(void *text_edit, qt_callback_t callback, void *user_data);
int qt_text_edit_connect_selection_changed(void *text_edit, qt_callback_t callback, void *user_data);
int qt_text_edit_connect_copy_available(void *text_edit, qt_int_callback_t callback, void *user_data);
int qt_text_edit_connect_undo_available(void *text_edit, qt_int_callback_t callback, void *user_data);
int qt_text_edit_connect_redo_available(void *text_edit, qt_int_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_cursor_position_changed(void *text_edit, qt_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_selection_changed(void *text_edit, qt_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_block_count_changed(void *text_edit, qt_int_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_copy_available(void *text_edit, qt_int_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_undo_available(void *text_edit, qt_int_callback_t callback, void *user_data);
int qt_plain_text_edit_connect_redo_available(void *text_edit, qt_int_callback_t callback, void *user_data);

/* New signals for QListWidget, QMenu, QAction */
int qt_list_widget_connect_item_changed(void *list, qt_item_callback_t callback, void *user_data);
int qt_list_widget_connect_item_activated(void *list, qt_item_callback_t callback, void *user_data);
int qt_menu_connect_about_to_show(void *menu, qt_callback_t callback, void *user_data);
int qt_menu_connect_about_to_hide(void *menu, qt_callback_t callback, void *user_data);
int qt_menu_connect_triggered(void *menu, qt_item_callback_t callback, void *user_data);
int qt_action_connect_toggled(void *action, qt_int_callback_t callback, void *user_data);
int qt_action_connect_hovered(void *action, qt_callback_t callback, void *user_data);

/* New signals for QTabWidget, QSplitter, QToolBar, QSlider, QStatusBar */
int qt_tab_widget_connect_tab_bar_clicked(void *tab_widget, qt_int_callback_t callback, void *user_data);
int qt_tab_widget_connect_tab_bar_double_clicked(void *tab_widget, qt_int_callback_t callback, void *user_data);
int qt_splitter_connect_splitter_moved(void *splitter, qt_cell_callback_t callback, void *user_data);
int qt_toolbar_connect_action_triggered(void *toolbar, qt_item_callback_t callback, void *user_data);
int qt_toolbar_connect_visibility_changed(void *toolbar, qt_int_callback_t callback, void *user_data);
int qt_toolbar_connect_top_level_changed(void *toolbar, qt_int_callback_t callback, void *user_data);
int qt_slider_connect_slider_moved(void *slider, qt_int_callback_t callback, void *user_data);
int qt_slider_connect_range_changed(void *slider, qt_cell_callback_t callback, void *user_data);
int qt_statusbar_connect_message_changed(void *statusbar, qt_string_callback_t callback, void *user_data);

/* ── QSettings ──────────────────────────────────────────────────────── */

void *qt_settings_create(void *parent);
void  qt_settings_destroy(void *settings);
void  qt_settings_set_value_int(void *settings, const char *key, int value);
int   qt_settings_get_value_int(void *settings, const char *key, int default_value);
void  qt_settings_set_value_string(void *settings, const char *key, const char *value);
char *qt_settings_get_value_string(void *settings, const char *key, const char *default_value);
void  qt_settings_set_value_bool(void *settings, const char *key, int value);
int   qt_settings_get_value_bool(void *settings, const char *key, int default_value);
void  qt_settings_set_value_double(void *settings, const char *key, double value);
double qt_settings_get_value_double(void *settings, const char *key, double default_value);
void  qt_settings_remove(void *settings, const char *key);
int   qt_settings_contains(void *settings, const char *key);
void  qt_settings_sync(void *settings);
void  qt_settings_begin_group(void *settings, const char *prefix);
void  qt_settings_end_group(void *settings);

/* ── QDesktopServices ───────────────────────────────────────────────── */

int qt_desktop_services_open_url(const char *url);

/* ── QStandardPaths ─────────────────────────────────────────────────── */

char *qt_standard_paths_writable_location(int type);
char *qt_standard_paths_display_name(int type);

/* ── QScreen ────────────────────────────────────────────────────────── */

void   qt_screen_get_geometry(int *x, int *y, int *width, int *height);
double qt_screen_get_device_pixel_ratio(void);
double qt_screen_get_logical_dpi_x(void);
double qt_screen_get_logical_dpi_y(void);
char  *qt_screen_get_name(void);

/* ── QFontMetrics ───────────────────────────────────────────────────── */

void *qt_font_metrics_create(const char *family, int point_size, int weight, int is_italic);
void  qt_font_metrics_destroy(void *metrics);
int   qt_font_metrics_get_horizontal_advance(void *metrics, const char *text);
int   qt_font_metrics_get_height(void *metrics);
int   qt_font_metrics_get_ascent(void *metrics);
int   qt_font_metrics_get_descent(void *metrics);
int   qt_font_metrics_get_leading(void *metrics);
int   qt_font_metrics_get_average_char_width(void *metrics);
void  qt_font_metrics_get_bounding_rect(void *metrics, const char *text, int *x, int *y, int *width, int *height);

/* ── QApplication extras ────────────────────────────────────────────── */

void qt_application_set_style(void *app, const char *style_name);
void qt_application_set_style_sheet(void *app, const char *style_sheet);
void qt_application_set_font(void *app, const char *family, int point_size, int weight, int is_italic);
void qt_application_set_window_icon(void *app, void *icon);
void qt_application_set_application_version(void *app, const char *version);

/* ── QCompleter ─────────────────────────────────────────────────────── */

void *qt_completer_create(const char **items, int count, void *parent);
void  qt_completer_destroy(void *completer);
void  qt_completer_set_case_sensitivity(void *completer, int case_sensitivity);
void  qt_completer_set_filter_mode(void *completer, int filter_mode);
void  qt_line_edit_set_completer(void *line_edit, void *completer);
void  qt_combo_box_set_completer(void *combo_box, void *completer);

/* ── QValidator ─────────────────────────────────────────────────────── */

void *qt_int_validator_create(int minimum, int maximum, void *parent);
void *qt_double_validator_create(double minimum, double maximum, int decimals, void *parent);
void *qt_regex_validator_create(const char *pattern, void *parent);
void  qt_validator_destroy(void *validator);
void  qt_line_edit_set_validator(void *line_edit, void *validator);

/* ── QToolTip ───────────────────────────────────────────────────────── */

void qt_tooltip_show_text(int global_x, int global_y, const char *text, void *widget);
void qt_tooltip_hide_text(void);

/* ── Signal disconnection ───────────────────────────────────────────── */

void qt_disconnect(int connection_id);

/* ── Event system ───────────────────────────────────────────────────── */

/* Generic event filter (receives all events as int event_type) */
void *qt_event_filter_create(qt_event_filter_callback_t callback, void *user_data);
void  qt_event_filter_destroy(void *filter);
void  qt_widget_install_event_filter(void *widget, void *filter);
void  qt_widget_remove_event_filter(void *widget, void *filter);

/* Close event interception (callback returns 1 to allow close, 0 to reject) */
void *qt_close_event_filter_create(qt_close_event_callback_t callback, void *user_data);

/* Key event handling (callback returns 1 to consume, 0 to pass through) */
void *qt_key_event_filter_create(qt_key_event_callback_t callback, void *user_data);

/* Mouse event handling (callback returns 1 to consume, 0 to pass through) */
void *qt_mouse_event_filter_create(qt_mouse_event_callback_t callback, void *user_data);

/* Mouse tracking (required for mouse move events without held buttons) */
void  qt_widget_set_mouse_tracking(void *widget, int is_enabled);
int   qt_widget_has_mouse_tracking(void *widget);

/* ── Section 8: Lower Priority Features ────────────────────────────── */

/* ── New callback types ────────────────────────────────────────────── */

typedef void (*qt_paint_callback_t)(void *painter, int width, int height, void *user_data);
typedef int  (*qt_drag_enter_callback_t)(const char *mime_text, void *user_data);
typedef void (*qt_drop_callback_t)(const char *mime_text, int x, int y, void *user_data);

/* ── QObject utilities ─────────────────────────────────────────────── */

void qt_object_delete_later(void *object);

/* ── Dynamic properties ────────────────────────────────────────────── */

void   qt_object_set_property_int(void *object, const char *name, int value);
int    qt_object_get_property_int(void *object, const char *name, int default_value);
void   qt_object_set_property_string(void *object, const char *name, const char *value);
char  *qt_object_get_property_string(void *object, const char *name, const char *default_value);
void   qt_object_set_property_bool(void *object, const char *name, int value);
int    qt_object_get_property_bool(void *object, const char *name, int default_value);
void   qt_object_set_property_double(void *object, const char *name, double value);
double qt_object_get_property_double(void *object, const char *name, double default_value);

/* ── Model/View — QStandardItem ────────────────────────────────────── */

void *qt_standard_item_create(const char *text);
void  qt_standard_item_set_text(void *item, const char *text);
char *qt_standard_item_get_text(void *item);
void  qt_standard_item_set_editable(void *item, int is_editable);
int   qt_standard_item_is_editable(void *item);
void  qt_standard_item_set_checkable(void *item, int is_checkable);
int   qt_standard_item_is_checkable(void *item);
void  qt_standard_item_set_check_state(void *item, int state);
int   qt_standard_item_get_check_state(void *item);
void  qt_standard_item_set_icon(void *item, void *icon);
void  qt_standard_item_set_selectable(void *item, int is_selectable);
void  qt_standard_item_set_enabled(void *item, int is_enabled);
void  qt_standard_item_append_row(void *parent, void **items, int count);
void  qt_standard_item_append_child(void *parent, void *child);
int   qt_standard_item_row_count(void *item);
void *qt_standard_item_get_child(void *item, int row, int column);

/* ── Model/View — QStandardItemModel ───────────────────────────────── */

void *qt_standard_item_model_create(int rows, int columns, void *parent);
void  qt_standard_item_model_destroy(void *model);
void  qt_standard_item_model_set_item(void *model, int row, int column, void *item);
void *qt_standard_item_model_get_item(void *model, int row, int column);
void  qt_standard_item_model_set_horizontal_header_labels(void *model, const char **labels, int count);
void  qt_standard_item_model_set_vertical_header_labels(void *model, const char **labels, int count);
int   qt_standard_item_model_get_row_count(void *model);
int   qt_standard_item_model_get_column_count(void *model);
void  qt_standard_item_model_clear(void *model);
void  qt_standard_item_model_append_row(void *model, void **items, int count);
void  qt_standard_item_model_insert_row(void *model, int row, void **items, int count);
void  qt_standard_item_model_remove_row(void *model, int row);
void  qt_standard_item_model_remove_column(void *model, int column);
void *qt_standard_item_model_get_invisible_root_item(void *model);

/* ── Model/View — Model Index ──────────────────────────────────────── */

void qt_model_index_destroy(void *index);
int  qt_model_index_get_row(void *index);
int  qt_model_index_get_column(void *index);
int  qt_model_index_is_valid(void *index);

/* ── Model/View — QFileSystemModel ─────────────────────────────────── */

void *qt_file_system_model_create(void *parent);
void  qt_file_system_model_destroy(void *model);
void *qt_file_system_model_set_root_path(void *model, const char *path);
void  qt_file_system_model_set_name_filters(void *model, const char **filters, int count);
void  qt_file_system_model_set_name_filter_disables(void *model, int is_disables);
void  qt_file_system_model_set_read_only(void *model, int is_read_only);
int   qt_file_system_model_is_read_only(void *model);
char *qt_file_system_model_get_file_path(void *model, void *index);

/* ── Model/View — QSortFilterProxyModel ────────────────────────────── */

void *qt_sort_filter_proxy_model_create(void *parent);
void  qt_sort_filter_proxy_model_destroy(void *proxy);
void  qt_sort_filter_proxy_model_set_source_model(void *proxy, void *source);
void  qt_sort_filter_proxy_model_set_filter_key_column(void *proxy, int column);
void  qt_sort_filter_proxy_model_set_filter_regular_expression(void *proxy, const char *pattern);
void  qt_sort_filter_proxy_model_set_filter_case_sensitivity(void *proxy, int case_sensitivity);
void  qt_sort_filter_proxy_model_set_sort_case_sensitivity(void *proxy, int case_sensitivity);
void  qt_sort_filter_proxy_model_invalidate(void *proxy);
void  qt_sort_filter_proxy_model_sort(void *proxy, int column, int order);

/* ── Model/View — Views ────────────────────────────────────────────── */

void *qt_tree_view_create(void *parent);
void  qt_tree_view_set_model(void *view, void *model);
void  qt_tree_view_set_root_index(void *view, void *index);
void  qt_tree_view_expand_all(void *view);
void  qt_tree_view_collapse_all(void *view);
void  qt_tree_view_set_sorting_enabled(void *view, int is_enabled);
void  qt_tree_view_set_header_hidden(void *view, int is_hidden);

void *qt_table_view_create(void *parent);
void  qt_table_view_set_model(void *view, void *model);
void  qt_table_view_set_sorting_enabled(void *view, int is_enabled);
void  qt_table_view_resize_columns_to_contents(void *view);
void  qt_table_view_resize_rows_to_contents(void *view);
void  qt_table_view_set_selection_behaviour(void *view, int behaviour);
void  qt_table_view_set_selection_mode(void *view, int mode);
void  qt_table_view_set_alternating_row_colours(void *view, int is_alternating);

void *qt_list_view_create(void *parent);
void  qt_list_view_set_model(void *view, void *model);
void  qt_list_view_set_selection_mode(void *view, int mode);

/* ── QPainter / Custom drawing ─────────────────────────────────────── */

void *qt_paintable_widget_create(void *parent, qt_paint_callback_t callback, void *user_data);

void qt_painter_set_pen_colour(void *painter, int r, int g, int b, int a);
void qt_painter_set_pen_width(void *painter, int width);
void qt_painter_set_no_pen(void *painter);
void qt_painter_set_pen(void *painter, void *pen);
void qt_painter_set_brush_colour(void *painter, int r, int g, int b, int a);
void qt_painter_set_no_brush(void *painter);
void qt_painter_set_brush(void *painter, void *brush);
void qt_painter_set_font(void *painter, const char *family, int point_size, int weight, int is_italic);
void qt_painter_set_antialiasing(void *painter, int is_enabled);
void qt_painter_set_opacity(void *painter, double opacity);
void qt_painter_set_render_hint(void *painter, int hint, int is_on);
void qt_painter_set_render_hints(void *painter, int hints, int is_on);
void qt_painter_set_composition_mode(void *painter, int mode);
int  qt_painter_get_composition_mode(void *painter);
void qt_painter_set_clipping(void *painter, int is_enabled);
int  qt_painter_has_clipping(void *painter);
void qt_painter_get_clip_bounding_rect(void *painter, int *x, int *y, int *w, int *h);
void qt_painter_draw_line(void *painter, int x1, int y1, int x2, int y2);
void qt_painter_draw_rect(void *painter, int x, int y, int width, int height);
void qt_painter_fill_rect(void *painter, int x, int y, int width, int height, int r, int g, int b, int a);
void qt_painter_erase_rect(void *painter, int x, int y, int width, int height);
void qt_painter_draw_ellipse(void *painter, int x, int y, int width, int height);
void qt_painter_draw_arc(void *painter, int x, int y, int width, int height, int start_angle, int span_angle);
void qt_painter_draw_pie(void *painter, int x, int y, int width, int height, int start_angle, int span_angle);
void qt_painter_draw_chord(void *painter, int x, int y, int width, int height, int start_angle, int span_angle);
void qt_painter_draw_rounded_rect(void *painter, int x, int y, int width, int height, double x_radius, double y_radius);
void qt_painter_draw_text(void *painter, int x, int y, const char *text);
void qt_painter_draw_text_in_rect(void *painter, int x, int y, int width, int height, int flags, const char *text);
void qt_painter_bounding_rect(void *painter, int x, int y, int w, int h, int flags, const char *text, int *out_x, int *out_y, int *out_w, int *out_h);
void qt_painter_draw_pixmap(void *painter, int x, int y, void *pixmap);
void qt_painter_draw_image(void *painter, int x, int y, void *image);
void qt_painter_draw_point(void *painter, int x, int y);
void qt_painter_draw_points(void *painter, const int *points, int point_count);
void qt_painter_draw_polygon(void *painter, const int *points, int point_count);
void qt_painter_draw_polyline(void *painter, const int *points, int point_count);
void qt_painter_draw_convex_polygon(void *painter, const int *points, int point_count);
void qt_painter_save(void *painter);
void qt_painter_restore(void *painter);
void qt_painter_translate(void *painter, double dx, double dy);
void qt_painter_rotate(void *painter, double angle);
void qt_painter_scale(void *painter, double sx, double sy);
void  *qt_painter_create(void);
void   qt_painter_destroy(void *painter);
int    qt_painter_begin(void *painter, void *device);
int    qt_painter_begin_pdf_writer(void *painter, void *pdf_writer);
int    qt_painter_end(void *painter);
int    qt_painter_is_active(void *painter);

/* ── Drag and Drop ─────────────────────────────────────────────────── */

void  qt_widget_set_accept_drops(void *widget, int is_accept);
void *qt_drag_drop_filter_create(qt_drag_enter_callback_t enter_cb, qt_drop_callback_t drop_cb, void *user_data);
void  qt_widget_start_drag(void *widget, const char *mime_text);

/* ── QSyntaxHighlighter ────────────────────────────────────────────── */

void *qt_text_char_format_create(void);
void  qt_text_char_format_destroy(void *format);
void  qt_text_char_format_set_foreground(void *format, int r, int g, int b, int a);
void  qt_text_char_format_set_background(void *format, int r, int g, int b, int a);
void  qt_text_char_format_set_font_weight(void *format, int weight);
void  qt_text_char_format_set_font_italic(void *format, int is_italic);
void  qt_text_char_format_set_font_underline(void *format, int is_underline);

void *qt_syntax_highlighter_create_for_text_edit(void *text_edit);
void *qt_syntax_highlighter_create_for_plain_text_edit(void *plain_text_edit);
void  qt_syntax_highlighter_destroy(void *highlighter);
void  qt_syntax_highlighter_add_rule(void *highlighter, const char *pattern, void *format);
void  qt_syntax_highlighter_clear_rules(void *highlighter);
void  qt_syntax_highlighter_rehighlight(void *highlighter);

/* ── QPropertyAnimation / Animation groups ─────────────────────────── */

void *qt_property_animation_create(void *target, const char *property_name);
void  qt_property_animation_destroy(void *animation);
void  qt_property_animation_set_duration(void *animation, int ms);
void  qt_property_animation_set_start_value_int(void *animation, int value);
void  qt_property_animation_set_end_value_int(void *animation, int value);
void  qt_property_animation_set_start_value_double(void *animation, double value);
void  qt_property_animation_set_end_value_double(void *animation, double value);
void  qt_property_animation_set_start_value_rect(void *animation, int x, int y, int w, int h);
void  qt_property_animation_set_end_value_rect(void *animation, int x, int y, int w, int h);
void  qt_property_animation_set_start_value_size(void *animation, int w, int h);
void  qt_property_animation_set_end_value_size(void *animation, int w, int h);
void  qt_property_animation_set_start_value_point(void *animation, int x, int y);
void  qt_property_animation_set_end_value_point(void *animation, int x, int y);
void  qt_property_animation_set_easing_curve(void *animation, int curve_type);
void  qt_property_animation_set_clamp_range(void *animation, int min_val, int max_val);
void  qt_property_animation_start(void *animation);
void  qt_property_animation_stop(void *animation);
void  qt_property_animation_pause(void *animation);
void  qt_property_animation_resume(void *animation);
void  qt_property_animation_set_loop_count(void *animation, int count);
int   qt_property_animation_connect_finished(void *animation, qt_callback_t callback, void *user_data);

void *qt_parallel_animation_group_create(void *parent);
void  qt_parallel_animation_group_destroy(void *group);
void  qt_parallel_animation_group_add_animation(void *group, void *animation);
void  qt_parallel_animation_group_start(void *group);
void  qt_parallel_animation_group_stop(void *group);
int   qt_parallel_animation_group_connect_finished(void *group, qt_callback_t callback, void *user_data);

void *qt_sequential_animation_group_create(void *parent);
void  qt_sequential_animation_group_destroy(void *group);
void  qt_sequential_animation_group_add_animation(void *group, void *animation);
void  qt_sequential_animation_group_start(void *group);
void  qt_sequential_animation_group_stop(void *group);
int   qt_sequential_animation_group_connect_finished(void *group, qt_callback_t callback, void *user_data);

/* ── QPauseAnimation ───────────────────────────────────────────────── */

void *qt_pause_animation_create(int duration_ms, void *parent);
void  qt_pause_animation_destroy(void *animation);
void  qt_pause_animation_set_duration(void *animation, int ms);
int   qt_pause_animation_get_duration(void *animation);

/* ── QTabBar ────────────────────────────────────────────────────────── */

void *qt_tab_bar_create(void *parent);
int   qt_tab_bar_add_tab(void *tab_bar, const char *text);
int   qt_tab_bar_insert_tab(void *tab_bar, int index, const char *text);
void  qt_tab_bar_remove_tab(void *tab_bar, int index);
int   qt_tab_bar_get_current_index(void *tab_bar);
void  qt_tab_bar_set_current_index(void *tab_bar, int index);
int   qt_tab_bar_get_count(void *tab_bar);
void  qt_tab_bar_set_tab_text(void *tab_bar, int index, const char *text);
char *qt_tab_bar_get_tab_text(void *tab_bar, int index);
void  qt_tab_bar_set_tab_enabled(void *tab_bar, int index, int is_enabled);
int   qt_tab_bar_is_tab_enabled(void *tab_bar, int index);
void  qt_tab_bar_set_tab_visible(void *tab_bar, int index, int is_visible);
int   qt_tab_bar_is_tab_visible(void *tab_bar, int index);
void  qt_tab_bar_set_tabs_closable(void *tab_bar, int is_closable);
void  qt_tab_bar_set_movable(void *tab_bar, int is_movable);
void  qt_tab_bar_set_expanding(void *tab_bar, int is_expanding);
void  qt_tab_bar_set_shape(void *tab_bar, int shape);
void  qt_tab_bar_set_icon_size(void *tab_bar, int width, int height);
void  qt_tab_bar_set_document_mode(void *tab_bar, int is_document_mode);
void  qt_tab_bar_set_draw_base(void *tab_bar, int is_draw_base);
void  qt_tab_bar_set_tab_icon(void *tab_bar, int index, void *icon);
int   qt_tab_bar_connect_current_changed(void *tab_bar, qt_int_callback_t callback, void *user_data);
int   qt_tab_bar_connect_tab_close_requested(void *tab_bar, qt_int_callback_t callback, void *user_data);

/* ── QToolBox ───────────────────────────────────────────────────────── */

void *qt_tool_box_create(void *parent);
int   qt_tool_box_add_item(void *tool_box, void *widget, const char *text);
int   qt_tool_box_insert_item(void *tool_box, int index, void *widget, const char *text);
void  qt_tool_box_remove_item(void *tool_box, int index);
int   qt_tool_box_get_current_index(void *tool_box);
void  qt_tool_box_set_current_index(void *tool_box, int index);
int   qt_tool_box_get_count(void *tool_box);
void  qt_tool_box_set_item_text(void *tool_box, int index, const char *text);
char *qt_tool_box_get_item_text(void *tool_box, int index);
void  qt_tool_box_set_item_enabled(void *tool_box, int index, int is_enabled);
int   qt_tool_box_is_item_enabled(void *tool_box, int index);
void  qt_tool_box_set_item_icon(void *tool_box, int index, void *icon);
void *qt_tool_box_get_widget(void *tool_box, int index);
int   qt_tool_box_connect_current_changed(void *tool_box, qt_int_callback_t callback, void *user_data);

/* ── QScrollBar ─────────────────────────────────────────────────────── */

void *qt_scroll_bar_create(int orientation, void *parent);
void  qt_scroll_bar_set_range(void *scroll_bar, int min_val, int max_val);
int   qt_scroll_bar_get_value(void *scroll_bar);
void  qt_scroll_bar_set_value(void *scroll_bar, int value);
void  qt_scroll_bar_set_single_step(void *scroll_bar, int step);
void  qt_scroll_bar_set_page_step(void *scroll_bar, int step);
void  qt_scroll_bar_set_orientation(void *scroll_bar, int orientation);
int   qt_scroll_bar_connect_value_changed(void *scroll_bar, qt_int_callback_t callback, void *user_data);

/* ── QLCDNumber ─────────────────────────────────────────────────────── */

void *qt_lcd_number_create(void *parent);
void  qt_lcd_number_display_int(void *lcd, int value);
void  qt_lcd_number_display_double(void *lcd, double value);
void  qt_lcd_number_display_string(void *lcd, const char *text);
void  qt_lcd_number_set_digit_count(void *lcd, int count);
int   qt_lcd_number_get_digit_count(void *lcd);
void  qt_lcd_number_set_mode(void *lcd, int mode);
int   qt_lcd_number_get_mode(void *lcd);
void  qt_lcd_number_set_segment_style(void *lcd, int style);
int   qt_lcd_number_get_segment_style(void *lcd);
void  qt_lcd_number_set_small_decimal_point(void *lcd, int is_small);

/* ── QCommandLinkButton ─────────────────────────────────────────────── */

void *qt_command_link_button_create(void *parent, const char *text, const char *description);
void  qt_command_link_button_set_description(void *button, const char *description);
char *qt_command_link_button_get_description(void *button);

/* ── QKeySequenceEdit ───────────────────────────────────────────────── */

void *qt_key_sequence_edit_create(void *parent);
char *qt_key_sequence_edit_get_key_sequence(void *edit);
void  qt_key_sequence_edit_set_key_sequence(void *edit, const char *key_sequence);
void  qt_key_sequence_edit_clear(void *edit);
int   qt_key_sequence_edit_connect_key_sequence_changed(void *edit, qt_string_callback_t callback, void *user_data);

/* ── QFontComboBox ──────────────────────────────────────────────────── */

void *qt_font_combo_box_create(void *parent);
char *qt_font_combo_box_get_current_font_family(void *combo);
void  qt_font_combo_box_set_current_font_family(void *combo, const char *family);
void  qt_font_combo_box_set_font_filters(void *combo, int filters);
int   qt_font_combo_box_connect_current_font_changed(void *combo, qt_string_callback_t callback, void *user_data);

/* ── QSplashScreen ──────────────────────────────────────────────────── */

void *qt_splash_screen_create(void);
void *qt_splash_screen_create_with_pixmap(void *pixmap);
void  qt_splash_screen_show_message(void *splash, const char *message, int alignment, int colour_r, int colour_g, int colour_b);
void  qt_splash_screen_clear_message(void *splash);
void  qt_splash_screen_finish(void *splash, void *main_window);

/* ── QStackedLayout ─────────────────────────────────────────────────── */

void *qt_stacked_layout_create(void *parent);
int   qt_stacked_layout_add_widget(void *layout, void *widget);
int   qt_stacked_layout_insert_widget(void *layout, int index, void *widget);
void  qt_stacked_layout_set_current_index(void *layout, int index);
int   qt_stacked_layout_get_current_index(void *layout);
int   qt_stacked_layout_get_count(void *layout);
void *qt_stacked_layout_get_widget(void *layout, int index);
void  qt_stacked_layout_set_current_widget(void *layout, void *widget);
void  qt_stacked_layout_set_stacking_mode(void *layout, int mode);
int   qt_stacked_layout_connect_current_changed(void *layout, qt_int_callback_t callback, void *user_data);

/* ── QWidgetAction ──────────────────────────────────────────────────── */

void *qt_widget_action_create(void *parent);
void  qt_widget_action_set_default_widget(void *action, void *widget);
void *qt_widget_action_get_default_widget(void *action);

/* ── QActionGroup ───────────────────────────────────────────────────── */

void *qt_action_group_create(void *parent);
void  qt_action_group_destroy(void *group);
void  qt_action_group_add_action(void *group, void *action);
void  qt_action_group_remove_action(void *group, void *action);
void  qt_action_group_set_exclusive(void *group, int is_exclusive);
int   qt_action_group_is_exclusive(void *group);
void  qt_action_group_set_enabled(void *group, int is_enabled);
int   qt_action_group_is_enabled(void *group);
void  qt_action_group_set_visible(void *group, int is_visible);
int   qt_action_group_is_visible(void *group);
void *qt_action_group_get_checked_action(void *group);
int   qt_action_group_connect_triggered(void *group, qt_callback_t callback, void *user_data);

/* ── QErrorMessage ──────────────────────────────────────────────────── */

void *qt_error_message_create(void *parent);
void  qt_error_message_show_message(void *dialog, const char *message);
void  qt_error_message_show_message_type(void *dialog, const char *message, const char *type);

/* ── QMdiArea ───────────────────────────────────────────────────────── */

void *qt_mdi_area_create(void *parent);
void *qt_mdi_area_add_sub_window(void *mdi_area, void *widget);
void  qt_mdi_area_remove_sub_window(void *mdi_area, void *widget);
void  qt_mdi_area_set_active_sub_window(void *mdi_area, void *sub_window);
void *qt_mdi_area_get_active_sub_window(void *mdi_area);
int   qt_mdi_area_get_sub_window_count(void *mdi_area);
void  qt_mdi_area_cascade_sub_windows(void *mdi_area);
void  qt_mdi_area_tile_sub_windows(void *mdi_area);
void  qt_mdi_area_close_active_sub_window(void *mdi_area);
void  qt_mdi_area_close_all_sub_windows(void *mdi_area);
void  qt_mdi_area_set_view_mode(void *mdi_area, int mode);
int   qt_mdi_area_connect_sub_window_activated(void *mdi_area, qt_callback_t callback, void *user_data);

/* ── QMdiSubWindow ──────────────────────────────────────────────────── */

void *qt_mdi_sub_window_create(void *parent);
void  qt_mdi_sub_window_set_widget(void *sub_window, void *widget);
void *qt_mdi_sub_window_get_widget(void *sub_window);
void  qt_mdi_sub_window_set_system_menu(void *sub_window, void *menu);
int   qt_mdi_sub_window_is_shaded(void *sub_window);
void  qt_mdi_sub_window_show_shaded(void *sub_window);
void  qt_mdi_sub_window_show_normal(void *sub_window);

/* ── QWizard ────────────────────────────────────────────────────────── */

void *qt_wizard_create(void *parent);
int   qt_wizard_add_page(void *wizard, void *page);
void  qt_wizard_set_page(void *wizard, int id, void *page);
void  qt_wizard_remove_page(void *wizard, int id);
int   qt_wizard_get_current_id(void *wizard);
void  qt_wizard_set_start_id(void *wizard, int id);
void  qt_wizard_set_button_text(void *wizard, int which, const char *text);
void  qt_wizard_set_wizard_style(void *wizard, int style);
void  qt_wizard_set_option(void *wizard, int option, int is_on);
void  qt_wizard_restart(void *wizard);
int   qt_wizard_connect_current_id_changed(void *wizard, qt_int_callback_t callback, void *user_data);
int   qt_wizard_connect_page_added(void *wizard, qt_int_callback_t callback, void *user_data);
int   qt_wizard_connect_page_removed(void *wizard, qt_int_callback_t callback, void *user_data);

/* ── QWizardPage ────────────────────────────────────────────────────── */

void *qt_wizard_page_create(void *parent);
void  qt_wizard_page_set_title(void *page, const char *title);
char *qt_wizard_page_get_title(void *page);
void  qt_wizard_page_set_sub_title(void *page, const char *sub_title);
char *qt_wizard_page_get_sub_title(void *page);
void  qt_wizard_page_set_commit_page(void *page, int is_commit);
int   qt_wizard_page_is_commit_page(void *page);
void  qt_wizard_page_set_final_page(void *page, int is_final);
int   qt_wizard_page_is_final_page(void *page);

/* ── QColumnView ────────────────────────────────────────────────────── */

void *qt_column_view_create(void *parent);
void  qt_column_view_set_model(void *view, void *model);
void  qt_column_view_set_root_index(void *view, void *index);
void  qt_column_view_set_preview_widget(void *view, void *widget);
void *qt_column_view_get_preview_widget(void *view);
void  qt_column_view_set_resizing_grips_visible(void *view, int is_visible);

/* ── QUndoView ──────────────────────────────────────────────────────── */

void *qt_undo_view_create(void *parent);
void  qt_undo_view_set_stack(void *view, void *stack);
void  qt_undo_view_set_group(void *view, void *group);
void  qt_undo_view_set_clean_icon(void *view, void *icon);
void  qt_undo_view_set_empty_label(void *view, const char *label);

/* ── QRubberBand ────────────────────────────────────────────────────── */

void *qt_rubber_band_create(int shape, void *parent);
void  qt_rubber_band_set_geometry(void *band, int x, int y, int width, int height);
void  qt_rubber_band_move(void *band, int x, int y);
void  qt_rubber_band_resize(void *band, int width, int height);

/* ── QFocusFrame ────────────────────────────────────────────────────── */

void *qt_focus_frame_create(void *parent);
void  qt_focus_frame_set_widget(void *frame, void *widget);
void *qt_focus_frame_get_widget(void *frame);

/* ── QSizeGrip ──────────────────────────────────────────────────────── */

void *qt_size_grip_create(void *parent);

/* ── QWhatsThis ─────────────────────────────────────────────────────── */

void qt_whats_this_enter_mode(void);
void qt_whats_this_leave_mode(void);
int  qt_whats_this_is_in_mode(void);
void qt_whats_this_show_text(int global_x, int global_y, const char *text, void *widget);
void qt_whats_this_hide_text(void);

/* ── QImage ──────────────────────────────────────────────────────────── */

void *qt_image_create(int width, int height, int format);
void *qt_image_create_from_file(const char *file_path);
void *qt_image_create_from_data(const unsigned char *data, int size);
void  qt_image_destroy(void *image);
int   qt_image_get_width(void *image);
int   qt_image_get_height(void *image);
int   qt_image_get_format(void *image);
int   qt_image_is_null(void *image);
void  qt_image_fill(void *image, int r, int g, int b, int a);
void  qt_image_set_pixel(void *image, int x, int y, int r, int g, int b, int a);
void  qt_image_get_pixel(void *image, int x, int y, int *r, int *g, int *b, int *a);
void *qt_image_scaled(void *image, int width, int height, int aspect_mode, int transform_mode);
void *qt_image_mirrored(void *image, int is_horizontal, int is_vertical);
void *qt_image_copy(void *image, int x, int y, int width, int height);
int   qt_image_save(void *image, const char *file_path, const char *format, int quality);
void *qt_image_to_pixmap(void *image);
void *qt_pixmap_to_image(void *pixmap);
int   qt_image_get_depth(void *image);
int   qt_image_get_byte_count(void *image);
const unsigned char *qt_image_get_bits(void *image);
void *qt_image_convert_to_format(void *image, int format);
void *qt_image_rgb_swapped(void *image);
void *qt_image_transformed(void *image, void *transform);
void  qt_image_set_text(void *image, const char *key, const char *value);
char *qt_image_get_text(void *image, const char *key);
int   qt_image_is_all_grey(void *image);
int   qt_image_is_greyscale(void *image);

/* ── QColor (standalone) ────────────────────────────────────────────── */

void *qt_colour_create(int r, int g, int b, int a);
void *qt_colour_create_from_name(const char *name);
void *qt_colour_create_from_hsv(int h, int s, int v, int a);
void *qt_colour_create_from_hsl(int h, int s, int l, int a);
void  qt_colour_destroy(void *colour);
void  qt_colour_get_rgb(void *colour, int *r, int *g, int *b, int *a);
void  qt_colour_get_hsv(void *colour, int *h, int *s, int *v, int *a);
void  qt_colour_get_hsl(void *colour, int *h, int *s, int *l, int *a);
char *qt_colour_get_name(void *colour);
int   qt_colour_is_valid(void *colour);
void *qt_colour_lighter(void *colour, int factor);
void *qt_colour_darker(void *colour, int factor);
void  qt_colour_set_alpha(void *colour, int alpha);
int   qt_colour_get_alpha(void *colour);
void  qt_colour_set_red(void *colour, int red);
int   qt_colour_get_red(void *colour);
void  qt_colour_set_green(void *colour, int green);
int   qt_colour_get_green(void *colour);
void  qt_colour_set_blue(void *colour, int blue);
int   qt_colour_get_blue(void *colour);
void *qt_colour_to_rgb(void *colour);
void *qt_colour_to_hsv(void *colour);
void *qt_colour_to_hsl(void *colour);
int   qt_colour_get_spec(void *colour);
void  qt_colour_set_named_colour(void *colour, const char *name);

/* ── QFont (standalone) ─────────────────────────────────────────────── */

void *qt_font_create(const char *family, int point_size, int weight, int is_italic);
void *qt_font_create_default(void);
void  qt_font_destroy(void *font);
void  qt_font_set_family(void *font, const char *family);
char *qt_font_get_family(void *font);
void  qt_font_set_point_size(void *font, int size);
int   qt_font_get_point_size(void *font);
void  qt_font_set_pixel_size(void *font, int size);
int   qt_font_get_pixel_size(void *font);
void  qt_font_set_weight(void *font, int weight);
int   qt_font_get_weight(void *font);
void  qt_font_set_bold(void *font, int is_bold);
int   qt_font_is_bold(void *font);
void  qt_font_set_italic(void *font, int is_italic);
int   qt_font_is_italic(void *font);
void  qt_font_set_underline(void *font, int is_underline);
int   qt_font_is_underline(void *font);
void  qt_font_set_strikeout(void *font, int is_strikeout);
int   qt_font_is_strikeout(void *font);
void  qt_font_set_kerning(void *font, int is_kerning);
int   qt_font_is_kerning(void *font);
void  qt_font_set_letter_spacing(void *font, int spacing_type, double spacing);
void  qt_font_set_word_spacing(void *font, double spacing);
void  qt_font_set_stretch(void *font, int factor);
void  qt_font_set_style_hint(void *font, int hint);
char *qt_font_to_string(void *font);
void  qt_font_set_style_strategy(void *font, int strategy);
void *qt_font_from_string(const char *description);
int   qt_font_is_exact_match(void *font);
void  qt_font_set_overline(void *font, int is_overline);
int   qt_font_is_overline(void *font);
void  qt_font_set_capitalization(void *font, int capitalization);
void  qt_font_set_hinting_preference(void *font, int preference);

/* ── QPen (standalone) ──────────────────────────────────────────────── */

void *qt_pen_create(void);
void *qt_pen_create_with_colour(int r, int g, int b, int a);
void  qt_pen_destroy(void *pen);
void  qt_pen_set_colour(void *pen, int r, int g, int b, int a);
void  qt_pen_get_colour(void *pen, int *r, int *g, int *b, int *a);
void  qt_pen_set_width(void *pen, int width);
int   qt_pen_get_width(void *pen);
void  qt_pen_set_width_f(void *pen, double width);
double qt_pen_get_width_f(void *pen);
void  qt_pen_set_style(void *pen, int style);
int   qt_pen_get_style(void *pen);
void  qt_pen_set_cap_style(void *pen, int style);
int   qt_pen_get_cap_style(void *pen);
void  qt_pen_set_join_style(void *pen, int style);
int   qt_pen_get_join_style(void *pen);
void  qt_pen_set_dash_offset(void *pen, double offset);
double qt_pen_get_dash_offset(void *pen);
void   qt_pen_set_brush(void *pen, void *brush);
void  *qt_pen_get_brush(void *pen);
void   qt_pen_set_dash_pattern(void *pen, const double *pattern, int count);
void   qt_pen_get_dash_pattern(void *pen, double **out_pattern, int *out_count);
void   qt_pen_free_dash_pattern(double *pattern);
void   qt_pen_set_cosmetic(void *pen, int is_cosmetic);
int    qt_pen_is_cosmetic(void *pen);
void   qt_pen_set_miter_limit(void *pen, double limit);
double qt_pen_get_miter_limit(void *pen);

/* ── QBrush (standalone) ────────────────────────────────────────────── */

void *qt_brush_create(void);
void *qt_brush_create_with_colour(int r, int g, int b, int a);
void  qt_brush_destroy(void *brush);
void  qt_brush_set_colour(void *brush, int r, int g, int b, int a);
void  qt_brush_get_colour(void *brush, int *r, int *g, int *b, int *a);
void  qt_brush_set_style(void *brush, int style);
int   qt_brush_get_style(void *brush);
void  qt_brush_set_texture(void *brush, void *pixmap);

/* ── QPalette ───────────────────────────────────────────────────────── */

void *qt_palette_create(void);
void *qt_palette_create_from_widget(void *widget);
void  qt_palette_destroy(void *palette);
void  qt_palette_set_colour(void *palette, int group, int role, int r, int g, int b, int a);
void  qt_palette_get_colour(void *palette, int group, int role, int *r, int *g, int *b, int *a);
void  qt_palette_set_brush(void *palette, int group, int role, void *brush);
void  qt_widget_set_palette(void *widget, void *palette);

/* ── QCursor (standalone) ───────────────────────────────────────────── */

void *qt_cursor_create(int shape);
void *qt_cursor_create_from_pixmap(void *pixmap, int hot_x, int hot_y);
void  qt_cursor_destroy(void *cursor);
void  qt_cursor_get_pos(int *x, int *y);
void  qt_cursor_set_pos(int x, int y);
void  qt_widget_set_cursor_object(void *widget, void *cursor);

/* ── QPainterPath ───────────────────────────────────────────────────── */

void *qt_painter_path_create(void);
void  qt_painter_path_destroy(void *path);
void  qt_painter_path_move_to(void *path, double x, double y);
void  qt_painter_path_line_to(void *path, double x, double y);
void  qt_painter_path_cubic_to(void *path, double ctrl1_x, double ctrl1_y, double ctrl2_x, double ctrl2_y, double end_x, double end_y);
void  qt_painter_path_quad_to(void *path, double ctrl_x, double ctrl_y, double end_x, double end_y);
void  qt_painter_path_arc_to(void *path, double x, double y, double width, double height, double start_angle, double sweep_length);
void  qt_painter_path_add_rect(void *path, double x, double y, double width, double height);
void  qt_painter_path_add_ellipse(void *path, double x, double y, double width, double height);
void  qt_painter_path_add_text(void *path, double x, double y, void *font, const char *text);
void  qt_painter_path_add_rounded_rect(void *path, double x, double y, double w, double h, double x_radius, double y_radius);
void  qt_painter_path_close_subpath(void *path);
int   qt_painter_path_is_empty(void *path);
int   qt_painter_path_contains_point(void *path, double x, double y);
void  qt_painter_path_add_path(void *path, void *other);
void  qt_painter_path_add_polygon(void *path, const double *points, int point_count);
void  qt_painter_path_get_bounding_rect(void *path, double *x, double *y, double *w, double *h);
double qt_painter_path_get_length(void *path);
double qt_painter_path_get_percent_at_length(void *path, double length);
void  qt_painter_path_get_point_at_percent(void *path, double percent, double *x, double *y);
double qt_painter_path_get_angle_at_percent(void *path, double percent);
void *qt_painter_path_united(void *path, void *other);
void *qt_painter_path_intersected(void *path, void *other);
void *qt_painter_path_subtracted(void *path, void *other);
void *qt_painter_path_simplified(void *path);
void *qt_painter_path_translated(void *path, double dx, double dy);
void *qt_painter_path_to_reversed(void *path);
int   qt_painter_path_intersects_rect(void *path, double x, double y, double w, double h);
int   qt_painter_path_intersects_path(void *path, void *other);
void  qt_painter_path_set_fill_rule(void *path, int rule);
int   qt_painter_path_get_fill_rule(void *path);
int   qt_painter_path_get_element_count(void *path);
void  qt_painter_draw_path(void *painter, void *path);
void  qt_painter_set_clip_path(void *painter, void *path);
void  qt_painter_fill_path(void *painter, void *path, int r, int g, int b, int a);
void  qt_painter_stroke_path(void *painter, void *path, void *pen);

/* ── QPainterPathStroker ───────────────────────────────────────────── */

void *qt_painter_path_stroker_create(void);
void  qt_painter_path_stroker_destroy(void *stroker);
void  qt_painter_path_stroker_set_width(void *stroker, double width);
double qt_painter_path_stroker_get_width(void *stroker);
void  qt_painter_path_stroker_set_cap_style(void *stroker, int style);
int   qt_painter_path_stroker_get_cap_style(void *stroker);
void  qt_painter_path_stroker_set_join_style(void *stroker, int style);
int   qt_painter_path_stroker_get_join_style(void *stroker);
void  qt_painter_path_stroker_set_miter_limit(void *stroker, double limit);
double qt_painter_path_stroker_get_miter_limit(void *stroker);
void  qt_painter_path_stroker_set_dash_pattern(void *stroker, int style);
void  qt_painter_path_stroker_set_dash_offset(void *stroker, double offset);
double qt_painter_path_stroker_get_dash_offset(void *stroker);
void *qt_painter_path_stroker_create_stroke(void *stroker, void *path);

/* ── QTransform ─────────────────────────────────────────────────────── */

void  *qt_transform_create(void);
void  *qt_transform_create_values(double m11, double m12, double m13, double m21, double m22, double m23, double m31, double m32, double m33);
void   qt_transform_destroy(void *transform);
void  *qt_transform_inverted(void *transform);
void  *qt_transform_transposed(void *transform);
void   qt_transform_translate(void *transform, double dx, double dy);
void   qt_transform_scale(void *transform, double sx, double sy);
void   qt_transform_rotate(void *transform, double angle);
void   qt_transform_shear(void *transform, double sh, double sv);
void   qt_transform_reset(void *transform);
int    qt_transform_is_identity(void *transform);
double qt_transform_determinant(void *transform);
void   qt_painter_set_transform(void *painter, void *transform, int is_combine);
void   qt_painter_reset_transform(void *painter);

/* ── QRegion ────────────────────────────────────────────────────────── */

void *qt_region_create(void);
void *qt_region_create_rect(int x, int y, int width, int height);
void *qt_region_create_ellipse(int x, int y, int width, int height);
void  qt_region_destroy(void *region);
int   qt_region_is_empty(void *region);
int   qt_region_contains_point(void *region, int x, int y);
int   qt_region_contains_rect(void *region, int x, int y, int width, int height);
void *qt_region_united(void *region, void *other);
void *qt_region_intersected(void *region, void *other);
void *qt_region_subtracted(void *region, void *other);
void *qt_region_xored(void *region, void *other);
void  qt_region_get_bounding_rect(void *region, int *x, int *y, int *width, int *height);
void  qt_painter_set_clip_region(void *painter, void *region);

/* ── QGradient / QLinearGradient / QRadialGradient / QConicalGradient ── */

void *qt_linear_gradient_create(double x1, double y1, double x2, double y2);
void *qt_radial_gradient_create(double cx, double cy, double radius);
void *qt_radial_gradient_create_focal(double cx, double cy, double radius, double fx, double fy);
void *qt_conical_gradient_create(double cx, double cy, double angle);
void  qt_gradient_destroy(void *gradient);
void  qt_gradient_set_colour_at(void *gradient, double position, int r, int g, int b, int a);
void  qt_gradient_set_spread(void *gradient, int spread);
void  qt_brush_set_gradient(void *brush, void *gradient);

/* ── QTextCursor ────────────────────────────────────────────────────── */

void *qt_text_cursor_create(void *document);
void *qt_text_cursor_create_from_text_edit(void *text_edit);
void *qt_text_cursor_create_from_plain_text_edit(void *plain_text_edit);
void  qt_text_cursor_destroy(void *cursor);
int   qt_text_cursor_get_position(void *cursor);
void  qt_text_cursor_set_position(void *cursor, int position, int move_mode);
int   qt_text_cursor_get_anchor(void *cursor);
int   qt_text_cursor_has_selection(void *cursor);
char *qt_text_cursor_get_selected_text(void *cursor);
void  qt_text_cursor_remove_selected_text(void *cursor);
void  qt_text_cursor_insert_text(void *cursor, const char *text);
void  qt_text_cursor_insert_html(void *cursor, const char *html);
void  qt_text_cursor_select(void *cursor, int selection_type);
void  qt_text_cursor_move_position(void *cursor, int operation, int move_mode, int n);
void  qt_text_cursor_begin_edit_block(void *cursor);
void  qt_text_cursor_end_edit_block(void *cursor);
int   qt_text_cursor_at_start(void *cursor);
int   qt_text_cursor_at_end(void *cursor);
int   qt_text_cursor_get_block_number(void *cursor);
int   qt_text_cursor_get_column_number(void *cursor);
void  qt_text_cursor_insert_block(void *cursor);
void  qt_text_cursor_insert_image(void *cursor, const char *file_path);
void *qt_text_cursor_insert_table(void *cursor, int rows, int cols);
void  qt_text_cursor_insert_list(void *cursor, int style);
void  qt_text_cursor_delete_char(void *cursor);
void  qt_text_cursor_delete_previous_char(void *cursor);
void  qt_text_cursor_clear_selection(void *cursor);
int   qt_text_cursor_get_selection_start(void *cursor);
int   qt_text_cursor_get_selection_end(void *cursor);
int   qt_text_cursor_get_block(void *cursor, int *out_position, int *out_length);
void  qt_text_edit_set_text_cursor(void *text_edit, void *cursor);
void  qt_plain_text_edit_set_text_cursor(void *text_edit, void *cursor);

/* ── QTextDocument ──────────────────────────────────────────────────── */

void *qt_text_document_create(void *parent);
void *qt_text_document_create_from_text_edit(void *text_edit);
void *qt_text_document_create_from_plain_text_edit(void *plain_text_edit);
void  qt_text_document_destroy(void *document);
char *qt_text_document_get_plain_text(void *document);
char *qt_text_document_get_html(void *document);
void  qt_text_document_set_plain_text(void *document, const char *text);
void  qt_text_document_set_html(void *document, const char *html);
int   qt_text_document_is_modified(void *document);
void  qt_text_document_set_modified(void *document, int is_modified);
int   qt_text_document_is_empty(void *document);
int   qt_text_document_get_block_count(void *document);
int   qt_text_document_get_character_count(void *document);
void  qt_text_document_set_default_font(void *document, void *font);
void  qt_text_document_undo(void *document);
void  qt_text_document_redo(void *document);
int   qt_text_document_is_undo_available(void *document);
int   qt_text_document_is_redo_available(void *document);
void  qt_text_document_clear_undo_redo_stacks(void *document);
void  qt_text_document_set_maximum_block_count(void *document, int maximum);
void *qt_text_document_find(void *document, const char *text, int position, int flags);
void  qt_text_document_set_default_style_sheet(void *document, const char *sheet);
void  qt_text_document_set_page_size(void *document, double w, double h);
void  qt_text_document_get_page_size(void *document, double *out_w, double *out_h);
void  qt_text_document_set_text_width(void *document, double width);
double qt_text_document_get_text_width(void *document);
double qt_text_document_get_ideal_width(void *document);
int   qt_text_document_get_line_count(void *document);
int   qt_text_document_connect_contents_changed(void *document, qt_callback_t callback, void *user_data);
int   qt_text_document_connect_modification_changed(void *document, qt_int_callback_t callback, void *user_data);
int   qt_text_document_connect_undo_available(void *document, qt_int_callback_t callback, void *user_data);
int   qt_text_document_connect_redo_available(void *document, qt_int_callback_t callback, void *user_data);

/* ── QTextBlock ────────────────────────────────────────────────────── */

void *qt_text_block_create_from_cursor(void *cursor);
void  qt_text_block_destroy(void *block);
int   qt_text_block_is_valid(void *block);
int   qt_text_block_get_block_number(void *block);
int   qt_text_block_get_position(void *block);
int   qt_text_block_get_length(void *block);
char *qt_text_block_get_text(void *block);
void *qt_text_block_next(void *block);
void *qt_text_block_previous(void *block);
int   qt_text_block_get_line_count(void *block);
int   qt_text_block_is_visible(void *block);
void  qt_text_block_set_visible(void *block, int is_visible);
int   qt_text_block_get_revision(void *block);
void *qt_text_document_get_first_block(void *document);
void *qt_text_document_get_last_block(void *document);
void *qt_text_document_find_block_by_number(void *document, int block_number);

/* ── QTextBlockFormat ──────────────────────────────────────────────── */

void *qt_text_block_format_create(void);
void  qt_text_block_format_destroy(void *fmt);
void  qt_text_block_format_set_alignment(void *fmt, int alignment);
int   qt_text_block_format_get_alignment(void *fmt);
void  qt_text_block_format_set_indent(void *fmt, int indent);
int   qt_text_block_format_get_indent(void *fmt);
void  qt_text_block_format_set_text_indent(void *fmt, double indent);
double qt_text_block_format_get_text_indent(void *fmt);
void  qt_text_block_format_set_top_margin(void *fmt, double margin);
double qt_text_block_format_get_top_margin(void *fmt);
void  qt_text_block_format_set_bottom_margin(void *fmt, double margin);
double qt_text_block_format_get_bottom_margin(void *fmt);
void  qt_text_block_format_set_left_margin(void *fmt, double margin);
double qt_text_block_format_get_left_margin(void *fmt);
void  qt_text_block_format_set_right_margin(void *fmt, double margin);
double qt_text_block_format_get_right_margin(void *fmt);
void  qt_text_block_format_set_line_height(void *fmt, double height, int height_type);
double qt_text_block_format_get_line_height(void *fmt);
int   qt_text_block_format_get_line_height_type(void *fmt);
void  qt_text_cursor_set_block_format(void *cursor, void *fmt);
void  qt_text_cursor_merge_block_format(void *cursor, void *fmt);

/* ── QTextListFormat ──────────────────────────────────────────────── */

void *qt_text_list_format_create(void);
void  qt_text_list_format_destroy(void *fmt);
void  qt_text_list_format_set_style(void *fmt, int style);
int   qt_text_list_format_get_style(void *fmt);
void  qt_text_list_format_set_indent(void *fmt, int indent);
int   qt_text_list_format_get_indent(void *fmt);
void  qt_text_list_format_set_number_prefix(void *fmt, const char *prefix);
char *qt_text_list_format_get_number_prefix(void *fmt);
void  qt_text_list_format_set_number_suffix(void *fmt, const char *suffix);
char *qt_text_list_format_get_number_suffix(void *fmt);
void  qt_text_cursor_insert_list_with_format(void *cursor, void *fmt);

/* ── QTextImageFormat ─────────────────────────────────────────────── */

void *qt_text_image_format_create(void);
void  qt_text_image_format_destroy(void *fmt);
void  qt_text_image_format_set_name(void *fmt, const char *name);
char *qt_text_image_format_get_name(void *fmt);
void  qt_text_image_format_set_width(void *fmt, double width);
double qt_text_image_format_get_width(void *fmt);
void  qt_text_image_format_set_height(void *fmt, double height);
double qt_text_image_format_get_height(void *fmt);
void  qt_text_cursor_insert_image_with_format(void *cursor, void *fmt);

/* ── QTextFrameFormat ─────────────────────────────────────────────── */

void *qt_text_frame_format_create(void);
void  qt_text_frame_format_destroy(void *fmt);
void  qt_text_frame_format_set_border(void *fmt, double border);
double qt_text_frame_format_get_border(void *fmt);
void  qt_text_frame_format_set_border_style(void *fmt, int style);
int   qt_text_frame_format_get_border_style(void *fmt);
void  qt_text_frame_format_set_margin(void *fmt, double margin);
double qt_text_frame_format_get_margin(void *fmt);
void  qt_text_frame_format_set_padding(void *fmt, double padding);
double qt_text_frame_format_get_padding(void *fmt);
void  qt_text_frame_format_set_width(void *fmt, double width, int type);
void  qt_text_frame_format_set_height(void *fmt, double height, int type);
void  qt_text_frame_format_set_position(void *fmt, int position);
int   qt_text_frame_format_get_position(void *fmt);
void  qt_text_frame_set_frame_format(void *frame, void *fmt);

/* ── QTextTableFormat ─────────────────────────────────────────────── */

void *qt_text_table_format_create(void);
void  qt_text_table_format_destroy(void *fmt);
void  qt_text_table_format_set_columns(void *fmt, int columns);
int   qt_text_table_format_get_columns(void *fmt);
void  qt_text_table_format_set_cell_padding(void *fmt, double padding);
double qt_text_table_format_get_cell_padding(void *fmt);
void  qt_text_table_format_set_cell_spacing(void *fmt, double spacing);
double qt_text_table_format_get_cell_spacing(void *fmt);
void  qt_text_table_format_set_alignment(void *fmt, int alignment);
int   qt_text_table_format_get_alignment(void *fmt);
void  qt_text_table_format_set_border(void *fmt, double border);
void  qt_text_table_format_set_border_style(void *fmt, int style);
void  qt_text_table_set_format(void *table, void *fmt);
void *qt_text_cursor_insert_table_with_format(void *cursor, int rows, int cols, void *fmt);

/* ── QTextTableCellFormat ─────────────────────────────────────────── */

void *qt_text_table_cell_format_create(void);
void  qt_text_table_cell_format_destroy(void *fmt);
void  qt_text_table_cell_format_set_top_padding(void *fmt, double padding);
double qt_text_table_cell_format_get_top_padding(void *fmt);
void  qt_text_table_cell_format_set_bottom_padding(void *fmt, double padding);
double qt_text_table_cell_format_get_bottom_padding(void *fmt);
void  qt_text_table_cell_format_set_left_padding(void *fmt, double padding);
double qt_text_table_cell_format_get_left_padding(void *fmt);
void  qt_text_table_cell_format_set_right_padding(void *fmt, double padding);
double qt_text_table_cell_format_get_right_padding(void *fmt);
void  qt_text_table_cell_format_set_background(void *fmt, int r, int g, int b, int a);
void  qt_text_table_cell_format_set_border_brush(void *fmt, int r, int g, int b, int a);
void  qt_text_table_cell_set_format(void *table, int row, int col, void *fmt);

/* ── QTextDocumentFragment ────────────────────────────────────────── */

void *qt_text_document_fragment_from_plain_text(const char *text);
void *qt_text_document_fragment_from_html(const char *html);
void *qt_text_document_fragment_from_selection(void *cursor);
void  qt_text_document_fragment_destroy(void *fragment);
char *qt_text_document_fragment_to_plain_text(void *fragment);
char *qt_text_document_fragment_to_html(void *fragment);
void  qt_text_cursor_insert_fragment(void *cursor, void *fragment);

/* ── QTextDocumentWriter ──────────────────────────────────────────── */

void *qt_text_document_writer_create(const char *file_path, const char *format);
void  qt_text_document_writer_destroy(void *writer);
void  qt_text_document_writer_set_format(void *writer, const char *format);
int   qt_text_document_writer_write(void *writer, void *document);

/* ── QTextOption ───────────────────────────────────────────────────── */

void *qt_text_option_create(void);
void *qt_text_option_create_with_alignment(int alignment);
void  qt_text_option_destroy(void *option);
void  qt_text_option_set_alignment(void *option, int alignment);
int   qt_text_option_get_alignment(void *option);
void  qt_text_option_set_wrap_mode(void *option, int mode);
int   qt_text_option_get_wrap_mode(void *option);
void  qt_text_option_set_tab_stop_distance(void *option, double distance);
double qt_text_option_get_tab_stop_distance(void *option);
void  qt_text_document_set_default_text_option(void *document, void *option);

/* ── QDrag ─────────────────────────────────────────────────────────── */

void *qt_drag_create(void *source);
void  qt_drag_destroy(void *drag);
void  qt_drag_set_mime_data_text(void *drag, const char *text);
void  qt_drag_set_mime_data(void *drag, void *mime_data);
void  qt_drag_set_pixmap(void *drag, void *pixmap);
void  qt_drag_set_hot_spot(void *drag, int x, int y);
int   qt_drag_exec(void *drag, int supported_actions, int default_action);

/* ── QMimeData ─────────────────────────────────────────────────────── */

void *qt_mime_data_create(void);
void  qt_mime_data_destroy(void *mime);
void  qt_mime_data_set_text(void *mime, const char *text);
char *qt_mime_data_get_text(void *mime);
int   qt_mime_data_has_text(void *mime);
void  qt_mime_data_set_html(void *mime, const char *html);
char *qt_mime_data_get_html(void *mime);
int   qt_mime_data_has_html(void *mime);
void  qt_mime_data_set_urls(void *mime, const char **urls, int count);
void  qt_mime_data_get_urls(void *mime, char ***out_urls, int *out_count);
int   qt_mime_data_has_urls(void *mime);
void  qt_mime_data_set_image_data(void *mime, void *image);
int   qt_mime_data_has_image(void *mime);
void  qt_mime_data_set_data(void *mime, const char *mime_type, const unsigned char *data, int size);
void  qt_mime_data_get_data(void *mime, const char *mime_type, unsigned char **out_data, int *out_size);
int   qt_mime_data_has_format(void *mime, const char *mime_type);
void  qt_mime_data_get_formats(void *mime, char ***out_formats, int *out_count);
void  qt_mime_data_remove_format(void *mime, const char *mime_type);
void  qt_mime_data_clear(void *mime);

/* ── QPolygon ──────────────────────────────────────────────────────── */

void *qt_polygon_create(void);
void *qt_polygon_create_from_points(const int *points, int count);
void  qt_polygon_destroy(void *polygon);
void  qt_polygon_append(void *polygon, int x, int y);
int   qt_polygon_get_count(void *polygon);
void  qt_polygon_get_point(void *polygon, int index, int *x, int *y);
void  qt_polygon_set_point(void *polygon, int index, int x, int y);
int   qt_polygon_contains_point(void *polygon, int x, int y, int fill_rule);
void  qt_polygon_translate(void *polygon, int dx, int dy);
void *qt_polygon_translated(void *polygon, int dx, int dy);
void  qt_polygon_get_bounding_rect(void *polygon, int *x, int *y, int *w, int *h);

void *qt_polygon_f_create(void);
void *qt_polygon_f_create_from_points(const double *points, int count);
void  qt_polygon_f_destroy(void *polygon);
void  qt_polygon_f_append(void *polygon, double x, double y);
int   qt_polygon_f_get_count(void *polygon);
void  qt_polygon_f_get_point(void *polygon, int index, double *x, double *y);
int   qt_polygon_f_contains_point(void *polygon, double x, double y, int fill_rule);
void  qt_polygon_f_translate(void *polygon, double dx, double dy);
void *qt_polygon_f_translated(void *polygon, double dx, double dy);
void  qt_polygon_f_get_bounding_rect(void *polygon, double *x, double *y, double *w, double *h);

/* ── QFontDatabase ──────────────────────────────────────────────────── */

int   qt_font_database_get_families(char ***families_out);
void  qt_font_database_free_families(char **families, int count);
int   qt_font_database_has_family(const char *family);
int   qt_font_database_is_fixed_pitch(const char *family);
int   qt_font_database_is_scalable(const char *family);
int   qt_font_database_add_application_font(const char *file_path);
int   qt_font_database_add_application_font_from_data(const unsigned char *data, int size);
void  qt_font_database_remove_application_font(int id);

/* ── QKeySequence (standalone) ──────────────────────────────────────── */

void *qt_key_sequence_create(const char *key);
void *qt_key_sequence_create_standard(int standard_key);
void  qt_key_sequence_destroy(void *key_sequence);
char *qt_key_sequence_to_string(void *key_sequence);
int   qt_key_sequence_get_count(void *key_sequence);
int   qt_key_sequence_matches(void *key_sequence, void *other);

/* ── QMovie ─────────────────────────────────────────────────────────── */

void *qt_movie_create(const char *file_path, void *parent);
void  qt_movie_destroy(void *movie);
void  qt_movie_start(void *movie);
void  qt_movie_stop(void *movie);
void  qt_movie_set_paused(void *movie, int is_paused);
int   qt_movie_is_valid(void *movie);
int   qt_movie_get_frame_count(void *movie);
int   qt_movie_get_current_frame_number(void *movie);
void  qt_movie_set_speed(void *movie, int percent);
void  qt_movie_set_scaled_size(void *movie, int width, int height);
int   qt_movie_get_state(void *movie);
void  qt_label_set_movie(void *label, void *movie);
int   qt_movie_connect_frame_changed(void *movie, qt_int_callback_t callback, void *user_data);
int   qt_movie_connect_state_changed(void *movie, qt_int_callback_t callback, void *user_data);

/* ── QImageReader ───────────────────────────────────────────────────── */

void *qt_image_reader_create(const char *file_path);
void  qt_image_reader_destroy(void *reader);
int   qt_image_reader_can_read(void *reader);
void *qt_image_reader_read(void *reader);
int   qt_image_reader_get_image_count(void *reader);
void  qt_image_reader_get_size(void *reader, int *width, int *height);
char *qt_image_reader_get_format(void *reader);
char *qt_image_reader_get_error_string(void *reader);
void  qt_image_reader_set_scaled_size(void *reader, int width, int height);

/* ── QImageWriter ───────────────────────────────────────────────────── */

void *qt_image_writer_create(const char *file_path);
void  qt_image_writer_destroy(void *writer);
void  qt_image_writer_set_format(void *writer, const char *format);
void  qt_image_writer_set_quality(void *writer, int quality);
int   qt_image_writer_write(void *writer, void *image);
char *qt_image_writer_get_error_string(void *writer);

/* ── QBitmap ────────────────────────────────────────────────────────── */

void *qt_bitmap_create(int width, int height);
void *qt_bitmap_create_from_file(const char *file_path);
void  qt_bitmap_destroy(void *bitmap);
void *qt_bitmap_from_image(void *image);
void  qt_bitmap_clear(void *bitmap);

/* ── QStaticText ────────────────────────────────────────────────────── */

void *qt_static_text_create(const char *text);
void  qt_static_text_destroy(void *static_text);
void  qt_static_text_set_text(void *static_text, const char *text);
char *qt_static_text_get_text(void *static_text);
void  qt_static_text_set_text_format(void *static_text, int format);
void  qt_static_text_set_text_width(void *static_text, double width);
void  qt_static_text_prepare(void *static_text, void *font);
void  qt_painter_draw_static_text(void *painter, int x, int y, void *static_text);

/* ── QPicture ───────────────────────────────────────────────────────── */

void *qt_picture_create(void);
void  qt_picture_destroy(void *picture);
int   qt_picture_is_null(void *picture);
int   qt_picture_save(void *picture, const char *file_path);
int   qt_picture_load(void *picture, const char *file_path);
void  qt_picture_get_bounding_rect(void *picture, int *x, int *y, int *width, int *height);
void  qt_painter_draw_picture(void *painter, int x, int y, void *picture);

/* ── QPageLayout / QPageSize ────────────────────────────────────────── */

void *qt_page_size_create(int page_size_id);
void *qt_page_size_create_custom(double width, double height, int unit);
void  qt_page_size_destroy(void *page_size);
char *qt_page_size_get_name(void *page_size);
int   qt_page_size_get_id(void *page_size);
int   qt_page_size_is_valid(void *page_size);

void *qt_page_layout_create(void *page_size, int orientation, double left, double top, double right, double bottom, int unit);
void  qt_page_layout_destroy(void *page_layout);
int   qt_page_layout_get_orientation(void *page_layout);
void  qt_page_layout_set_orientation(void *page_layout, int orientation);
int   qt_page_layout_is_valid(void *page_layout);

/* ── QFile ───────────────────────────────────────────────────────────── */

void *qt_file_create(const char *file_path);
void  qt_file_destroy(void *file);
int   qt_file_open(void *file, int mode);
void  qt_file_close(void *file);
int   qt_file_is_open(void *file);
long long qt_file_size(void *file);
long long qt_file_pos(void *file);
int   qt_file_seek(void *file, long long pos);
int   qt_file_at_end(void *file);
long long qt_file_read(void *file, char *data, long long max_size);
long long qt_file_write(void *file, const char *data, long long size);
char *qt_file_read_all(void *file);
int   qt_file_exists(const char *file_path);
int   qt_file_remove(const char *file_path);
int   qt_file_copy(const char *source, const char *destination);
int   qt_file_rename(const char *old_name, const char *new_name);
char *qt_file_get_error_string(void *file);

/* ── QFileInfo ──────────────────────────────────────────────────────── */

void *qt_file_info_create(const char *file_path);
void  qt_file_info_destroy(void *info);
int   qt_file_info_exists(void *info);
char *qt_file_info_get_file_name(void *info);
char *qt_file_info_get_file_path(void *info);
char *qt_file_info_get_absolute_file_path(void *info);
char *qt_file_info_get_absolute_path(void *info);
char *qt_file_info_get_suffix(void *info);
char *qt_file_info_get_complete_suffix(void *info);
char *qt_file_info_get_base_name(void *info);
long long qt_file_info_get_size(void *info);
int   qt_file_info_is_file(void *info);
int   qt_file_info_is_dir(void *info);
int   qt_file_info_is_symlink(void *info);
int   qt_file_info_is_readable(void *info);
int   qt_file_info_is_writable(void *info);
int   qt_file_info_is_executable(void *info);
int   qt_file_info_is_hidden(void *info);

/* ── QDir ───────────────────────────────────────────────────────────── */

void *qt_dir_create(const char *path);
void  qt_dir_destroy(void *dir);
char *qt_dir_get_path(void *dir);
char *qt_dir_get_absolute_path(void *dir);
int   qt_dir_exists(void *dir);
int   qt_dir_mkdir(void *dir, const char *name);
int   qt_dir_mkpath(void *dir, const char *path);
int   qt_dir_rmdir(void *dir, const char *name);
int   qt_dir_rmpath(void *dir, const char *path);
int   qt_dir_remove(void *dir, const char *file_name);
int   qt_dir_rename(void *dir, const char *old_name, const char *new_name);
int   qt_dir_cd(void *dir, const char *dir_name);
int   qt_dir_cd_up(void *dir);
int   qt_dir_get_entry_count(void *dir, int filters);
int   qt_dir_get_entry_list(void *dir, int filters, char ***entries_out);
void  qt_dir_free_entry_list(char **entries, int count);
char *qt_dir_home_path(void);
char *qt_dir_temp_path(void);
char *qt_dir_root_path(void);
char *qt_dir_current_path(void);

/* ── QDirIterator ──────────────────────────────────────────────────── */

void *qt_dir_iterator_create(const char *path, int filters, int iterator_flags);
void *qt_dir_iterator_create_with_patterns(const char *path, const char **name_filters, int filter_count, int dir_filters, int iterator_flags);
void  qt_dir_iterator_destroy(void *iter);
int   qt_dir_iterator_has_next(void *iter);
char *qt_dir_iterator_next(void *iter);
char *qt_dir_iterator_get_file_name(void *iter);
char *qt_dir_iterator_get_file_path(void *iter);
char *qt_dir_iterator_get_path(void *iter);

/* ── QTimeZone ─────────────────────────────────────────────────────── */

void *qt_time_zone_create(const char *iana_id);
void *qt_time_zone_create_utc(void);
void *qt_time_zone_create_system(void);
void  qt_time_zone_destroy(void *tz);
int   qt_time_zone_is_valid(void *tz);
char *qt_time_zone_get_id(void *tz);
char *qt_time_zone_get_display_name(void *tz, int time_type);
int   qt_time_zone_get_offset_from_utc(void *tz, void *datetime);
int   qt_time_zone_has_daylight_time(void *tz);
int   qt_time_zone_is_daylight_time(void *tz, void *datetime);
int   qt_time_zone_get_available_ids(char ***ids_out);
void  qt_time_zone_free_ids(char **ids, int count);
void  qt_date_time_set_time_zone(void *datetime, void *tz);

/* ── QProcess ───────────────────────────────────────────────────────── */

void *qt_process_create(void *parent);
void  qt_process_destroy(void *process);
void  qt_process_start(void *process, const char *program, const char **arguments, int arg_count);
void  qt_process_start_command(void *process, const char *command);
int   qt_process_wait_for_started(void *process, int timeout_ms);
int   qt_process_wait_for_finished(void *process, int timeout_ms);
void  qt_process_kill(void *process);
void  qt_process_terminate(void *process);
int   qt_process_get_state(void *process);
int   qt_process_get_exit_code(void *process);
int   qt_process_get_exit_status(void *process);
char *qt_process_read_all_standard_output(void *process);
char *qt_process_read_all_standard_error(void *process);
void  qt_process_write(void *process, const char *data, int size);
void  qt_process_close_write_channel(void *process);
void  qt_process_set_working_directory(void *process, const char *dir);
int   qt_process_connect_finished(void *process, qt_int_callback_t callback, void *user_data);
int   qt_process_connect_error_occurred(void *process, qt_int_callback_t callback, void *user_data);
int   qt_process_connect_started(void *process, qt_callback_t callback, void *user_data);
void  qt_process_set_environment(void *process, const char **env, int count);
void  qt_process_set_standard_output_process(void *process, void *destination);
void  qt_process_set_read_channel(void *process, int channel);
void  qt_process_set_process_channel_mode(void *process, int mode);
int   qt_process_connect_ready_read_standard_output(void *process, qt_callback_t callback, void *user_data);
int   qt_process_connect_ready_read_standard_error(void *process, qt_callback_t callback, void *user_data);

/* ── QThread ────────────────────────────────────────────────────────── */

void  qt_thread_sleep(unsigned long ms);
void  qt_thread_msleep(unsigned long ms);
void  qt_thread_usleep(unsigned long us);

/* ── QMutex ─────────────────────────────────────────────────────────── */

void *qt_mutex_create(void);
void  qt_mutex_destroy(void *mutex);
void  qt_mutex_lock(void *mutex);
void  qt_mutex_unlock(void *mutex);
int   qt_mutex_try_lock(void *mutex);

/* ── QReadWriteLock ─────────────────────────────────────────────────── */

void *qt_read_write_lock_create(void);
void  qt_read_write_lock_destroy(void *lock);
void  qt_read_write_lock_lock_for_read(void *lock);
void  qt_read_write_lock_lock_for_write(void *lock);
void  qt_read_write_lock_unlock(void *lock);
int   qt_read_write_lock_try_lock_for_read(void *lock);
int   qt_read_write_lock_try_lock_for_write(void *lock);

/* ── QSemaphore ─────────────────────────────────────────────────────── */

void *qt_semaphore_create(int n);
void  qt_semaphore_destroy(void *semaphore);
void  qt_semaphore_acquire(void *semaphore, int n);
void  qt_semaphore_release(void *semaphore, int n);
int   qt_semaphore_available(void *semaphore);
int   qt_semaphore_try_acquire(void *semaphore, int n);

/* ── QBuffer ────────────────────────────────────────────────────────── */

void *qt_buffer_create(void);
void  qt_buffer_destroy(void *buffer);
int   qt_buffer_open(void *buffer, int mode);
void  qt_buffer_close(void *buffer);
void  qt_buffer_set_data(void *buffer, const char *data, int size);
char *qt_buffer_get_data(void *buffer, int *size);
long long qt_buffer_size(void *buffer);

/* ── QJsonDocument / QJsonObject / QJsonArray ───────────────────────── */

void *qt_json_document_from_json(const char *json, int size, char **error_out);
void *qt_json_document_from_object(void *object);
void *qt_json_document_from_array(void *array);
void  qt_json_document_destroy(void *doc);
char *qt_json_document_to_json(void *doc, int is_compact);
int   qt_json_document_is_object(void *doc);
int   qt_json_document_is_array(void *doc);
void *qt_json_document_get_object(void *doc);
void *qt_json_document_get_array(void *doc);

void *qt_json_object_create(void);
void  qt_json_object_destroy(void *obj);
int   qt_json_object_get_count(void *obj);
int   qt_json_object_contains(void *obj, const char *key);
void  qt_json_object_set_string(void *obj, const char *key, const char *value);
void  qt_json_object_set_int(void *obj, const char *key, int value);
void  qt_json_object_set_double(void *obj, const char *key, double value);
void  qt_json_object_set_bool(void *obj, const char *key, int value);
void  qt_json_object_set_object(void *obj, const char *key, void *child);
void  qt_json_object_set_array(void *obj, const char *key, void *array);
void  qt_json_object_set_null(void *obj, const char *key);
char *qt_json_object_get_string(void *obj, const char *key);
int   qt_json_object_get_int(void *obj, const char *key, int default_val);
double qt_json_object_get_double(void *obj, const char *key, double default_val);
int   qt_json_object_get_bool(void *obj, const char *key, int default_val);
void *qt_json_object_get_object(void *obj, const char *key);
void *qt_json_object_get_array(void *obj, const char *key);
void  qt_json_object_remove(void *obj, const char *key);
int   qt_json_object_get_keys(void *obj, char ***keys_out);
void  qt_json_object_free_keys(char **keys, int count);

void *qt_json_array_create(void);
void  qt_json_array_destroy(void *arr);
int   qt_json_array_get_count(void *arr);
void  qt_json_array_append_string(void *arr, const char *value);
void  qt_json_array_append_int(void *arr, int value);
void  qt_json_array_append_double(void *arr, double value);
void  qt_json_array_append_bool(void *arr, int value);
void  qt_json_array_append_object(void *arr, void *object);
void  qt_json_array_append_array(void *arr, void *other);
void  qt_json_array_append_null(void *arr);
char *qt_json_array_get_string(void *arr, int index);
int   qt_json_array_get_int(void *arr, int index, int default_val);
double qt_json_array_get_double(void *arr, int index, double default_val);
int   qt_json_array_get_bool(void *arr, int index, int default_val);
void *qt_json_array_get_object(void *arr, int index);
void *qt_json_array_get_array(void *arr, int index);
void  qt_json_array_remove_at(void *arr, int index);

/* ── QXmlStreamReader / QXmlStreamWriter ────────────────────────────── */

void *qt_xml_stream_reader_create(const char *data, int size);
void  qt_xml_stream_reader_destroy(void *reader);
int   qt_xml_stream_reader_read_next(void *reader);
int   qt_xml_stream_reader_get_token_type(void *reader);
char *qt_xml_stream_reader_get_name(void *reader);
char *qt_xml_stream_reader_get_text(void *reader);
int   qt_xml_stream_reader_at_end(void *reader);
int   qt_xml_stream_reader_has_error(void *reader);
char *qt_xml_stream_reader_get_error_string(void *reader);
char *qt_xml_stream_reader_get_attribute(void *reader, const char *name);
int   qt_xml_stream_reader_is_start_element(void *reader);
int   qt_xml_stream_reader_is_end_element(void *reader);

void *qt_xml_stream_writer_create(void);
void  qt_xml_stream_writer_destroy(void *writer);
void  qt_xml_stream_writer_set_auto_formatting(void *writer, int is_enabled);
void  qt_xml_stream_writer_write_start_document(void *writer);
void  qt_xml_stream_writer_write_end_document(void *writer);
void  qt_xml_stream_writer_write_start_element(void *writer, const char *name);
void  qt_xml_stream_writer_write_end_element(void *writer);
void  qt_xml_stream_writer_write_attribute(void *writer, const char *name, const char *value);
void  qt_xml_stream_writer_write_text_element(void *writer, const char *name, const char *text);
void  qt_xml_stream_writer_write_characters(void *writer, const char *text);
char *qt_xml_stream_writer_get_output(void *writer);

/* ── QDateTime / QDate / QTime (standalone) ─────────────────────────── */

void *qt_date_time_create(void);
void *qt_date_time_create_from_components(int year, int month, int day, int hour, int minute, int second);
void *qt_date_time_current(void);
void *qt_date_time_current_utc(void);
void  qt_date_time_destroy(void *dt);
char *qt_date_time_to_string(void *dt, const char *format);
long long qt_date_time_to_msecs_since_epoch(void *dt);
void *qt_date_time_from_msecs_since_epoch(long long msecs);
int   qt_date_time_is_valid(void *dt);
void  qt_date_time_get_date(void *dt, int *year, int *month, int *day);
void  qt_date_time_get_time(void *dt, int *hour, int *minute, int *second);
long long qt_date_time_secs_to(void *dt, void *other);
long long qt_date_time_days_to(void *dt, void *other);
void *qt_date_time_add_days(void *dt, long long days);
void *qt_date_time_add_secs(void *dt, long long seconds);

void *qt_date_create(int year, int month, int day);
void *qt_date_current(void);
void  qt_date_destroy(void *date);
char *qt_date_to_string(void *date, const char *format);
int   qt_date_is_valid(void *date);
int   qt_date_get_year(void *date);
int   qt_date_get_month(void *date);
int   qt_date_get_day(void *date);
int   qt_date_get_day_of_week(void *date);
int   qt_date_get_day_of_year(void *date);
int   qt_date_get_days_in_month(void *date);
int   qt_date_get_days_in_year(void *date);

void *qt_time_create(int hour, int minute, int second, int ms);
void *qt_time_current(void);
void  qt_time_destroy(void *time_obj);
char *qt_time_to_string(void *time_obj, const char *format);
int   qt_time_is_valid(void *time_obj);
int   qt_time_get_hour(void *time_obj);
int   qt_time_get_minute(void *time_obj);
int   qt_time_get_second(void *time_obj);
int   qt_time_get_msec(void *time_obj);
int   qt_time_msecs_since_start_of_day(void *time_obj);

/* ── QLocale ────────────────────────────────────────────────────────── */

void *qt_locale_create(void);
void *qt_locale_create_from_name(const char *name);
void  qt_locale_destroy(void *locale);
char *qt_locale_get_name(void *locale);
char *qt_locale_get_language_name(void *locale);
char *qt_locale_get_country_name(void *locale);
char *qt_locale_get_decimal_point(void *locale);
char *qt_locale_to_string_int(void *locale, int value);
char *qt_locale_to_string_double(void *locale, double value, int precision);
char *qt_locale_format_date_time(void *locale, void *dt, const char *format);

/* ── QRegularExpression (standalone) ────────────────────────────────── */

void *qt_regex_create(const char *pattern);
void *qt_regex_create_with_options(const char *pattern, int options);
void  qt_regex_destroy(void *regex);
char *qt_regex_get_pattern(void *regex);
int   qt_regex_is_valid(void *regex);
char *qt_regex_get_error_string(void *regex);
int   qt_regex_has_match(void *regex, const char *subject);
char *qt_regex_get_match(void *regex, const char *subject, int capture_group);
int   qt_regex_get_match_start(void *regex, const char *subject, int capture_group);
int   qt_regex_get_match_end(void *regex, const char *subject, int capture_group);

/* ── QUrl ───────────────────────────────────────────────────────────── */

void *qt_url_create(const char *url);
void *qt_url_create_from_local_file(const char *file_path);
void  qt_url_destroy(void *url);
char *qt_url_to_string(void *url);
char *qt_url_to_local_file(void *url);
char *qt_url_get_scheme(void *url);
char *qt_url_get_host(void *url);
int   qt_url_get_port(void *url);
char *qt_url_get_path(void *url);
char *qt_url_get_query(void *url);
char *qt_url_get_fragment(void *url);
int   qt_url_is_valid(void *url);
int   qt_url_is_local_file(void *url);
char *qt_url_get_file_name(void *url);

/* ── QUuid ──────────────────────────────────────────────────────────── */

void *qt_uuid_create(void);
void *qt_uuid_create_from_string(const char *text);
void  qt_uuid_destroy(void *uuid);
char *qt_uuid_to_string(void *uuid);
int   qt_uuid_is_null(void *uuid);

/* ── QElapsedTimer ──────────────────────────────────────────────────── */

void *qt_elapsed_timer_create(void);
void  qt_elapsed_timer_destroy(void *timer);
void  qt_elapsed_timer_start(void *timer);
long long qt_elapsed_timer_elapsed(void *timer);
long long qt_elapsed_timer_restart(void *timer);
int   qt_elapsed_timer_is_valid(void *timer);
int   qt_elapsed_timer_has_expired(void *timer, long long timeout);

/* ── QCryptographicHash ─────────────────────────────────────────────── */

void *qt_crypto_hash_create(int algorithm);
void  qt_crypto_hash_destroy(void *hash);
void  qt_crypto_hash_add_data(void *hash, const unsigned char *data, int size);
void  qt_crypto_hash_reset(void *hash);
int   qt_crypto_hash_get_result(void *hash, unsigned char *out, int max_size);
int   qt_crypto_hash_static(int algorithm, const unsigned char *data, int size, unsigned char *out, int max_size);

/* ── QMimeType / QMimeDatabase ──────────────────────────────────────── */

void *qt_mime_database_create(void);
void  qt_mime_database_destroy(void *db);
char *qt_mime_database_mime_type_for_file(void *db, const char *file_path);
char *qt_mime_database_mime_type_for_data(void *db, const unsigned char *data, int size);
char *qt_mime_database_suffix_for_mime_type(void *db, const char *mime_type);

/* ── QStorageInfo ───────────────────────────────────────────────────── */

void *qt_storage_info_create(const char *path);
void  qt_storage_info_destroy(void *info);
char *qt_storage_info_get_root_path(void *info);
char *qt_storage_info_get_device(void *info);
char *qt_storage_info_get_display_name(void *info);
char *qt_storage_info_get_file_system_type(void *info);
long long qt_storage_info_get_bytes_total(void *info);
long long qt_storage_info_get_bytes_free(void *info);
long long qt_storage_info_get_bytes_available(void *info);
int   qt_storage_info_is_valid(void *info);
int   qt_storage_info_is_ready(void *info);
int   qt_storage_info_is_read_only(void *info);

/* ── QVersionNumber ─────────────────────────────────────────────────── */

void *qt_version_number_create(int major, int minor, int micro);
void  qt_version_number_destroy(void *version);
int   qt_version_number_get_major(void *version);
int   qt_version_number_get_minor(void *version);
int   qt_version_number_get_micro(void *version);
char *qt_version_number_to_string(void *version);
int   qt_version_number_compare(void *v1, void *v2);
int   qt_version_number_is_null(void *version);

/* ── QTranslator ────────────────────────────────────────────────────── */

void *qt_translator_create(void *parent);
void  qt_translator_destroy(void *translator);
int   qt_translator_load(void *translator, const char *filename, const char *directory);
int   qt_translator_is_empty(void *translator);
void  qt_application_install_translator(void *app, void *translator);
void  qt_application_remove_translator(void *app, void *translator);

/* ── QCommandLineParser / QCommandLineOption ────────────────────────── */

void *qt_command_line_parser_create(void);
void  qt_command_line_parser_destroy(void *parser);
void  qt_command_line_parser_set_application_description(void *parser, const char *description);
void  qt_command_line_parser_add_help_option(void *parser);
void  qt_command_line_parser_add_version_option(void *parser);
void  qt_command_line_parser_add_option(void *parser, const char *name, const char *description, const char *value_name, const char *default_value);
void  qt_command_line_parser_add_positional_argument(void *parser, const char *name, const char *description, const char *syntax);
void  qt_command_line_parser_process(void *parser, void *app);
int   qt_command_line_parser_is_set(void *parser, const char *name);
char *qt_command_line_parser_get_value(void *parser, const char *name);

/* ── QTemporaryFile ─────────────────────────────────────────────────── */

void *qt_temporary_file_create(void);
void *qt_temporary_file_create_with_template(const char *template_name);
void  qt_temporary_file_destroy(void *file);
int   qt_temporary_file_open(void *file);
char *qt_temporary_file_get_file_name(void *file);
int   qt_temporary_file_auto_remove(void *file);
void  qt_temporary_file_set_auto_remove(void *file, int is_auto_remove);

/* ── QTemporaryDir ──────────────────────────────────────────────────── */

void *qt_temporary_dir_create(void);
void *qt_temporary_dir_create_with_template(const char *template_name);
void  qt_temporary_dir_destroy(void *dir);
int   qt_temporary_dir_is_valid(void *dir);
char *qt_temporary_dir_get_path(void *dir);
int   qt_temporary_dir_auto_remove(void *dir);
void  qt_temporary_dir_set_auto_remove(void *dir, int is_auto_remove);
int   qt_temporary_dir_remove(void *dir);

/* ── QSaveFile ──────────────────────────────────────────────────────── */

void *qt_save_file_create(const char *file_path);
void  qt_save_file_destroy(void *file);
int   qt_save_file_open(void *file, int mode);
long long qt_save_file_write(void *file, const char *data, long long size);
int   qt_save_file_commit(void *file);
void  qt_save_file_cancel_writing(void *file);
char *qt_save_file_get_error_string(void *file);

/* ── QFileSystemWatcher ─────────────────────────────────────────────── */

void *qt_file_system_watcher_create(void *parent);
void  qt_file_system_watcher_destroy(void *watcher);
int   qt_file_system_watcher_add_path(void *watcher, const char *path);
int   qt_file_system_watcher_remove_path(void *watcher, const char *path);
int   qt_file_system_watcher_connect_file_changed(void *watcher, qt_string_callback_t callback, void *user_data);
int   qt_file_system_watcher_connect_directory_changed(void *watcher, qt_string_callback_t callback, void *user_data);

/* ── QStringListModel ───────────────────────────────────────────────── */

void *qt_string_list_model_create(void *parent);
void  qt_string_list_model_destroy(void *model);
void  qt_string_list_model_set_string_list(void *model, const char **strings, int count);
int   qt_string_list_model_get_string_list(void *model, char ***strings_out);
void  qt_string_list_model_free_string_list(char **strings, int count);

/* ── QItemSelectionModel ────────────────────────────────────────────── */

void *qt_item_selection_model_create(void *model, void *parent);
void  qt_item_selection_model_destroy(void *selection_model);
void  qt_item_selection_model_select_index(void *selection_model, void *index, int flags);
void  qt_item_selection_model_clear(void *selection_model);
void  qt_item_selection_model_clear_selection(void *selection_model);
int   qt_item_selection_model_is_selected(void *selection_model, void *index);
int   qt_item_selection_model_has_selection(void *selection_model);
void *qt_item_selection_model_get_current_index(void *selection_model);
void  qt_item_selection_model_set_current_index(void *selection_model, void *index, int flags);
int   qt_item_selection_model_connect_selection_changed(void *selection_model, qt_callback_t callback, void *user_data);
int   qt_item_selection_model_connect_current_changed(void *selection_model, qt_callback_t callback, void *user_data);

/* ── QUndoCommand ───────────────────────────────────────────────────── */

void *qt_undo_command_create(const char *text, void *parent);
void  qt_undo_command_destroy(void *command);
char *qt_undo_command_get_text(void *command);
char *qt_undo_command_get_action_text(void *command);
void  qt_undo_command_set_obsolete(void *command, int is_obsolete);
int   qt_undo_command_is_obsolete(void *command);
int   qt_undo_command_get_child_count(void *command);
void *qt_undo_command_get_child(void *command, int index);

/* ── QUndoStack ────────────────────────────────────────────────────── */

void *qt_undo_stack_create(void *parent);
void  qt_undo_stack_destroy(void *stack);
void  qt_undo_stack_push(void *stack, void *command);
void  qt_undo_stack_clear(void *stack);
void  qt_undo_stack_undo(void *stack);
void  qt_undo_stack_redo(void *stack);
int   qt_undo_stack_can_undo(void *stack);
int   qt_undo_stack_can_redo(void *stack);
char *qt_undo_stack_get_undo_text(void *stack);
char *qt_undo_stack_get_redo_text(void *stack);
int   qt_undo_stack_is_clean(void *stack);
int   qt_undo_stack_get_clean_index(void *stack);
void  qt_undo_stack_set_clean(void *stack);
int   qt_undo_stack_get_index(void *stack);
int   qt_undo_stack_get_count(void *stack);
void  qt_undo_stack_set_index(void *stack, int index);
void  qt_undo_stack_set_undo_limit(void *stack, int limit);
int   qt_undo_stack_get_undo_limit(void *stack);
void  qt_undo_stack_begin_macro(void *stack, const char *text);
void  qt_undo_stack_end_macro(void *stack);
void  qt_undo_stack_set_active(void *stack, int is_active);
int   qt_undo_stack_is_active(void *stack);
int   qt_undo_stack_connect_can_undo_changed(void *stack, qt_int_callback_t callback, void *user_data);
int   qt_undo_stack_connect_can_redo_changed(void *stack, qt_int_callback_t callback, void *user_data);
int   qt_undo_stack_connect_clean_changed(void *stack, qt_int_callback_t callback, void *user_data);
int   qt_undo_stack_connect_index_changed(void *stack, qt_int_callback_t callback, void *user_data);
int   qt_undo_stack_connect_undo_text_changed(void *stack, qt_string_callback_t callback, void *user_data);
int   qt_undo_stack_connect_redo_text_changed(void *stack, qt_string_callback_t callback, void *user_data);

/* ── QUndoGroup ────────────────────────────────────────────────────── */

void *qt_undo_group_create(void *parent);
void  qt_undo_group_destroy(void *group);
void  qt_undo_group_add_stack(void *group, void *stack);
void  qt_undo_group_remove_stack(void *group, void *stack);
void  qt_undo_group_set_active_stack(void *group, void *stack);
void *qt_undo_group_get_active_stack(void *group);
void  qt_undo_group_undo(void *group);
void  qt_undo_group_redo(void *group);
int   qt_undo_group_can_undo(void *group);
int   qt_undo_group_can_redo(void *group);
char *qt_undo_group_get_undo_text(void *group);
char *qt_undo_group_get_redo_text(void *group);
int   qt_undo_group_is_clean(void *group);
int   qt_undo_group_connect_active_stack_changed(void *group, qt_callback_t callback, void *user_data);
int   qt_undo_group_connect_can_undo_changed(void *group, qt_int_callback_t callback, void *user_data);
int   qt_undo_group_connect_can_redo_changed(void *group, qt_int_callback_t callback, void *user_data);
int   qt_undo_group_connect_clean_changed(void *group, qt_int_callback_t callback, void *user_data);

/* ── QDataWidgetMapper ─────────────────────────────────────────────── */

void *qt_data_widget_mapper_create(void *parent);
void  qt_data_widget_mapper_destroy(void *mapper);
void  qt_data_widget_mapper_set_model(void *mapper, void *model);
void *qt_data_widget_mapper_get_model(void *mapper);
void  qt_data_widget_mapper_add_mapping(void *mapper, void *widget, int section);
void  qt_data_widget_mapper_add_mapping_with_property(void *mapper, void *widget, int section, const char *property_name);
void  qt_data_widget_mapper_remove_mapping(void *mapper, void *widget);
void  qt_data_widget_mapper_set_current_index(void *mapper, int index);
int   qt_data_widget_mapper_get_current_index(void *mapper);
void  qt_data_widget_mapper_set_root_index(void *mapper, void *index);
void  qt_data_widget_mapper_to_first(void *mapper);
void  qt_data_widget_mapper_to_last(void *mapper);
void  qt_data_widget_mapper_to_next(void *mapper);
void  qt_data_widget_mapper_to_previous(void *mapper);
int   qt_data_widget_mapper_submit(void *mapper);
void  qt_data_widget_mapper_revert(void *mapper);
void  qt_data_widget_mapper_set_submit_policy(void *mapper, int policy);
int   qt_data_widget_mapper_get_submit_policy(void *mapper);
void  qt_data_widget_mapper_set_orientation(void *mapper, int orientation);
int   qt_data_widget_mapper_get_orientation(void *mapper);
int   qt_data_widget_mapper_connect_current_index_changed(void *mapper, qt_int_callback_t callback, void *user_data);

/* ── QStyledItemDelegate ───────────────────────────────────────────── */

void *qt_styled_item_delegate_create(void *parent);
void  qt_styled_item_delegate_destroy(void *delegate);

/* ── QItemDelegate ─────────────────────────────────────────────────── */

void *qt_item_delegate_create(void *parent);
void  qt_item_delegate_destroy(void *delegate);

/* ── QGraphicsScene ────────────────────────────────────────────────── */

void *qt_graphics_scene_create(void *parent);
void *qt_graphics_scene_create_with_rect(double x, double y, double width, double height, void *parent);
void  qt_graphics_scene_destroy(void *scene);
void  qt_graphics_scene_set_scene_rect(void *scene, double x, double y, double width, double height);
void  qt_graphics_scene_get_scene_rect(void *scene, double *x, double *y, double *width, double *height);
void  qt_graphics_scene_set_background_brush(void *scene, void *brush);
void  qt_graphics_scene_set_foreground_brush(void *scene, void *brush);
void  qt_graphics_scene_add_item(void *scene, void *item);
void  qt_graphics_scene_remove_item(void *scene, void *item);
void  qt_graphics_scene_clear(void *scene);
void *qt_graphics_scene_add_rect(void *scene, double x, double y, double w, double h, void *pen, void *brush);
void *qt_graphics_scene_add_ellipse(void *scene, double x, double y, double w, double h, void *pen, void *brush);
void *qt_graphics_scene_add_text(void *scene, const char *text, void *font);
void *qt_graphics_scene_add_line(void *scene, double x1, double y1, double x2, double y2, void *pen);
void *qt_graphics_scene_add_pixmap(void *scene, void *pixmap);
void *qt_graphics_scene_add_path(void *scene, void *path, void *pen, void *brush);
void *qt_graphics_scene_add_widget(void *scene, void *widget);
void *qt_graphics_scene_create_item_group(void *scene, void **items, int count);
void  qt_graphics_scene_destroy_item_group(void *scene, void *group);
int   qt_graphics_scene_get_item_count(void *scene);
void  qt_graphics_scene_set_selection_area(void *scene, void *path);
void  qt_graphics_scene_clear_selection(void *scene);
int   qt_graphics_scene_connect_selection_changed(void *scene, qt_callback_t callback, void *user_data);
void *qt_graphics_scene_item_at(void *scene, double x, double y, void *transform);
void  qt_graphics_scene_get_items(void *scene, void ***out_items, int *out_count);
void  qt_graphics_scene_get_items_in_rect(void *scene, double x, double y, double w, double h, void ***out_items, int *out_count);
void  qt_graphics_scene_get_colliding_items(void *scene, void *item, void ***out_items, int *out_count);
void  qt_graphics_scene_render(void *scene, void *painter);
double qt_graphics_scene_get_width(void *scene);
double qt_graphics_scene_get_height(void *scene);
void  qt_graphics_scene_invalidate(void *scene);
void  qt_graphics_scene_advance(void *scene);
void  qt_graphics_scene_set_focus_item(void *scene, void *item);
void *qt_graphics_scene_get_focus_item(void *scene);
int   qt_graphics_scene_connect_scene_rect_changed(void *scene, qt_callback_t callback, void *user_data);

/* ── QGraphicsView ─────────────────────────────────────────────────── */

void *qt_graphics_view_create(void *parent);
void *qt_graphics_view_create_with_scene(void *scene, void *parent);
void  qt_graphics_view_destroy(void *view);
void  qt_graphics_view_set_scene(void *view, void *scene);
void *qt_graphics_view_get_scene(void *view);
void  qt_graphics_view_set_render_hint(void *view, int hint, int is_enabled);
void  qt_graphics_view_set_drag_mode(void *view, int mode);
int   qt_graphics_view_get_drag_mode(void *view);
void  qt_graphics_view_set_interactive(void *view, int is_interactive);
int   qt_graphics_view_is_interactive(void *view);
void  qt_graphics_view_set_alignment(void *view, int alignment);
void  qt_graphics_view_set_viewport_update_mode(void *view, int mode);
void  qt_graphics_view_fit_in_view(void *view, double x, double y, double w, double h, int aspect_ratio_mode);
void  qt_graphics_view_center_on(void *view, double x, double y);
void  qt_graphics_view_scale(void *view, double sx, double sy);
void  qt_graphics_view_rotate(void *view, double angle);
void  qt_graphics_view_reset_transform(void *view);
void  qt_graphics_view_set_scene_rect(void *view, double x, double y, double w, double h);
void  qt_graphics_view_ensure_visible(void *view, double x, double y, double w, double h, int x_margin, int y_margin);
void  qt_graphics_view_set_transformation_anchor(void *view, int anchor);
void  qt_graphics_view_set_resize_anchor(void *view, int anchor);
void  qt_graphics_view_set_viewport(void *view, void *viewport_widget);
void  qt_graphics_view_set_background_brush(void *view, void *brush);
void  qt_graphics_view_set_foreground_brush(void *view, void *brush);
void  qt_graphics_view_set_transform(void *view, void *transform, int is_combine);
void *qt_graphics_view_get_transform(void *view);
void  qt_graphics_view_get_items(void *view, void ***out_items, int *out_count);
void *qt_graphics_view_get_item_at(void *view, int x, int y);
void *qt_graphics_view_get_viewport(void *view);

/* ── QGraphicsItem (base operations) ───────────────────────────────── */

void  qt_graphics_item_set_pos(void *item, double x, double y);
void  qt_graphics_item_get_pos(void *item, double *x, double *y);
void  qt_graphics_item_set_z_value(void *item, double z);
double qt_graphics_item_get_z_value(void *item);
void  qt_graphics_item_set_rotation(void *item, double angle);
double qt_graphics_item_get_rotation(void *item);
void  qt_graphics_item_set_scale(void *item, double scale);
double qt_graphics_item_get_scale(void *item);
void  qt_graphics_item_set_opacity(void *item, double opacity);
double qt_graphics_item_get_opacity(void *item);
void  qt_graphics_item_set_visible(void *item, int is_visible);
int   qt_graphics_item_is_visible(void *item);
void  qt_graphics_item_set_enabled(void *item, int is_enabled);
int   qt_graphics_item_is_enabled(void *item);
void  qt_graphics_item_set_selected(void *item, int is_selected);
int   qt_graphics_item_is_selected(void *item);
void  qt_graphics_item_set_flag(void *item, int flag, int is_enabled);
void  qt_graphics_item_set_flags(void *item, int flags);
int   qt_graphics_item_get_flags(void *item);
void  qt_graphics_item_set_tool_tip(void *item, const char *tooltip);
void *qt_graphics_item_get_parent_item(void *item);
void  qt_graphics_item_set_parent_item(void *item, void *parent);
void  qt_graphics_item_destroy(void *item);
void  qt_graphics_item_move_by(void *item, double dx, double dy);
void  qt_graphics_item_get_bounding_rect(void *item, double *x, double *y, double *w, double *h);
int   qt_graphics_item_collides_with_item(void *item, void *other);
void  qt_graphics_item_set_cursor(void *item, int shape);
void  qt_graphics_item_unset_cursor(void *item);
void  qt_graphics_item_set_transform(void *item, void *transform, int is_combine);
void *qt_graphics_item_get_transform(void *item);
void  qt_graphics_item_set_transform_origin_point(void *item, double x, double y);
void  qt_graphics_item_map_to_scene(void *item, double x, double y, double *out_x, double *out_y);
void  qt_graphics_item_map_from_scene(void *item, double x, double y, double *out_x, double *out_y);
void  qt_graphics_item_map_to_parent(void *item, double x, double y, double *out_x, double *out_y);
void  qt_graphics_item_map_from_parent(void *item, double x, double y, double *out_x, double *out_y);
int   qt_graphics_item_collides_with_path(void *item, void *path);
int   qt_graphics_item_contains(void *item, double x, double y);
void *qt_graphics_item_get_shape(void *item);
void  qt_graphics_item_update(void *item);
void  qt_graphics_item_get_child_items(void *item, void ***out_items, int *out_count);
void  qt_graphics_item_get_scene_bounding_rect(void *item, double *x, double *y, double *w, double *h);
void  qt_graphics_item_set_accept_hover_events(void *item, int is_enabled);
void  qt_graphics_item_set_accept_drops(void *item, int is_enabled);

/* ── QGraphicsRectItem ─────────────────────────────────────────────── */

void *qt_graphics_rect_item_create(double x, double y, double w, double h, void *parent);
void  qt_graphics_rect_item_set_rect(void *item, double x, double y, double w, double h);
void  qt_graphics_rect_item_get_rect(void *item, double *x, double *y, double *w, double *h);
void  qt_graphics_rect_item_set_pen(void *item, void *pen);
void  qt_graphics_rect_item_set_brush(void *item, void *brush);

/* ── QGraphicsEllipseItem ──────────────────────────────────────────── */

void *qt_graphics_ellipse_item_create(double x, double y, double w, double h, void *parent);
void  qt_graphics_ellipse_item_set_rect(void *item, double x, double y, double w, double h);
void  qt_graphics_ellipse_item_get_rect(void *item, double *x, double *y, double *w, double *h);
void  qt_graphics_ellipse_item_set_pen(void *item, void *pen);
void  qt_graphics_ellipse_item_set_brush(void *item, void *brush);
void  qt_graphics_ellipse_item_set_start_angle(void *item, int angle);
void  qt_graphics_ellipse_item_set_span_angle(void *item, int angle);

/* ── QGraphicsTextItem ─────────────────────────────────────────────── */

void *qt_graphics_text_item_create(const char *text, void *parent);
void  qt_graphics_text_item_set_text(void *item, const char *text);
void  qt_graphics_text_item_set_html(void *item, const char *html);
char *qt_graphics_text_item_get_text(void *item);
void  qt_graphics_text_item_set_font(void *item, void *font);
void  qt_graphics_text_item_set_default_text_colour(void *item, int r, int g, int b, int a);
void  qt_graphics_text_item_set_text_width(void *item, double width);
double qt_graphics_text_item_get_text_width(void *item);
void  qt_graphics_text_item_set_text_interaction_flags(void *item, int flags);

/* ── QGraphicsLineItem ─────────────────────────────────────────────── */

void *qt_graphics_line_item_create(double x1, double y1, double x2, double y2, void *parent);
void  qt_graphics_line_item_set_line(void *item, double x1, double y1, double x2, double y2);
void  qt_graphics_line_item_set_pen(void *item, void *pen);

/* ── QGraphicsPixmapItem ───────────────────────────────────────────── */

void *qt_graphics_pixmap_item_create(void *pixmap, void *parent);
void  qt_graphics_pixmap_item_set_pixmap(void *item, void *pixmap);
void  qt_graphics_pixmap_item_set_offset(void *item, double x, double y);
void  qt_graphics_pixmap_item_set_transformation_mode(void *item, int mode);
void  qt_graphics_pixmap_item_set_shape_mode(void *item, int mode);

/* ── QGraphicsPathItem ─────────────────────────────────────────────── */

void *qt_graphics_path_item_create(void *path, void *parent);
void  qt_graphics_path_item_set_path(void *item, void *path);
void  qt_graphics_path_item_set_pen(void *item, void *pen);
void  qt_graphics_path_item_set_brush(void *item, void *brush);

/* ── QGraphicsPolygonItem ──────────────────────────────────────────── */

void *qt_graphics_polygon_item_create(void *polygon_f, void *parent);
void  qt_graphics_polygon_item_set_polygon(void *item, void *polygon_f);
void  qt_graphics_polygon_item_set_pen(void *item, void *pen);
void  qt_graphics_polygon_item_set_brush(void *item, void *brush);
void  qt_graphics_polygon_item_set_fill_rule(void *item, int fill_rule);
int   qt_graphics_polygon_item_get_fill_rule(void *item);

/* ── QGraphicsSimpleTextItem ───────────────────────────────────────── */

void *qt_graphics_simple_text_item_create(const char *text, void *parent);
void  qt_graphics_simple_text_item_set_text(void *item, const char *text);
char *qt_graphics_simple_text_item_get_text(void *item);
void  qt_graphics_simple_text_item_set_font(void *item, void *font);
void  qt_graphics_simple_text_item_set_pen(void *item, void *pen);
void  qt_graphics_simple_text_item_set_brush(void *item, void *brush);

/* ── QGraphicsItemGroup ────────────────────────────────────────────── */

void *qt_graphics_item_group_create(void *parent);
void  qt_graphics_item_group_add_to_group(void *group, void *item);
void  qt_graphics_item_group_remove_from_group(void *group, void *item);

/* ── QGraphicsProxyWidget ──────────────────────────────────────────── */

void *qt_graphics_proxy_widget_create(void *parent);
void  qt_graphics_proxy_widget_set_widget(void *proxy, void *widget);
void *qt_graphics_proxy_widget_get_widget(void *proxy);

/* ── QGraphicsWidget ───────────────────────────────────────────────── */

void *qt_graphics_widget_create(void *parent);
void  qt_graphics_widget_set_layout(void *widget, void *layout);
void *qt_graphics_widget_get_layout(void *widget);
void  qt_graphics_widget_set_geometry(void *widget, double x, double y, double w, double h);
void  qt_graphics_widget_set_minimum_size(void *widget, double w, double h);
void  qt_graphics_widget_set_maximum_size(void *widget, double w, double h);
void  qt_graphics_widget_set_preferred_size(void *widget, double w, double h);
void  qt_graphics_widget_set_size_policy(void *widget, int horizontal, int vertical);
void  qt_graphics_widget_set_window_title(void *widget, const char *title);
void  qt_graphics_widget_set_window_flags(void *widget, int flags);
void  qt_graphics_widget_set_palette(void *widget, void *palette);
void  qt_graphics_widget_set_font(void *widget, void *font);
void  qt_graphics_widget_set_style(void *widget, void *style);
void  qt_graphics_widget_resize(void *widget, double w, double h);
void  qt_graphics_widget_set_auto_fill_background(void *widget, int is_enabled);

/* ── QGraphicsLinearLayout ─────────────────────────────────────────── */

void *qt_graphics_linear_layout_create(int orientation, void *parent);
void  qt_graphics_linear_layout_destroy(void *layout);
void  qt_graphics_linear_layout_add_item(void *layout, void *item);
void  qt_graphics_linear_layout_insert_item(void *layout, int index, void *item);
void  qt_graphics_linear_layout_remove_item(void *layout, void *item);
void  qt_graphics_linear_layout_add_stretch(void *layout, int stretch);
void  qt_graphics_linear_layout_set_spacing(void *layout, double spacing);
double qt_graphics_linear_layout_get_spacing(void *layout);
void  qt_graphics_linear_layout_set_alignment(void *layout, void *item, int alignment);
int   qt_graphics_linear_layout_get_count(void *layout);

/* ── QGraphicsGridLayout ───────────────────────────────────────────── */

void *qt_graphics_grid_layout_create(void *parent);
void  qt_graphics_grid_layout_destroy(void *layout);
void  qt_graphics_grid_layout_add_item(void *layout, void *item, int row, int col, int row_span, int col_span, int alignment);
void  qt_graphics_grid_layout_set_row_spacing(void *layout, int row, double spacing);
void  qt_graphics_grid_layout_set_column_spacing(void *layout, int col, double spacing);
void  qt_graphics_grid_layout_set_row_stretch_factor(void *layout, int row, int stretch);
void  qt_graphics_grid_layout_set_column_stretch_factor(void *layout, int col, int stretch);
void  qt_graphics_grid_layout_set_row_minimum_height(void *layout, int row, double height);
void  qt_graphics_grid_layout_set_column_minimum_width(void *layout, int col, double width);
void  qt_graphics_grid_layout_set_spacing(void *layout, double spacing);
int   qt_graphics_grid_layout_get_count(void *layout);

/* ── QGraphicsEffect (base + subclasses) ───────────────────────────── */

void  qt_graphics_effect_set_enabled(void *effect, int is_enabled);
int   qt_graphics_effect_is_enabled(void *effect);

void *qt_graphics_blur_effect_create(void *parent);
void  qt_graphics_blur_effect_destroy(void *effect);
void  qt_graphics_blur_effect_set_blur_radius(void *effect, double radius);
double qt_graphics_blur_effect_get_blur_radius(void *effect);
void  qt_graphics_blur_effect_set_blur_hints(void *effect, int hints);
int   qt_graphics_blur_effect_connect_blur_radius_changed(void *effect, qt_double_callback_t callback, void *user_data);

void *qt_graphics_colourize_effect_create(void *parent);
void  qt_graphics_colourize_effect_destroy(void *effect);
void  qt_graphics_colourize_effect_set_colour(void *effect, int r, int g, int b, int a);
void  qt_graphics_colourize_effect_get_colour(void *effect, int *r, int *g, int *b, int *a);
void  qt_graphics_colourize_effect_set_strength(void *effect, double strength);
double qt_graphics_colourize_effect_get_strength(void *effect);
int   qt_graphics_colourize_effect_connect_colour_changed(void *effect, qt_callback_t callback, void *user_data);
int   qt_graphics_colourize_effect_connect_strength_changed(void *effect, qt_double_callback_t callback, void *user_data);

void *qt_graphics_drop_shadow_effect_create(void *parent);
void  qt_graphics_drop_shadow_effect_destroy(void *effect);
void  qt_graphics_drop_shadow_effect_set_blur_radius(void *effect, double radius);
double qt_graphics_drop_shadow_effect_get_blur_radius(void *effect);
void  qt_graphics_drop_shadow_effect_set_colour(void *effect, int r, int g, int b, int a);
void  qt_graphics_drop_shadow_effect_get_colour(void *effect, int *r, int *g, int *b, int *a);
void  qt_graphics_drop_shadow_effect_set_offset(void *effect, double dx, double dy);
void  qt_graphics_drop_shadow_effect_get_offset(void *effect, double *dx, double *dy);
int   qt_graphics_drop_shadow_effect_connect_blur_radius_changed(void *effect, qt_double_callback_t callback, void *user_data);
int   qt_graphics_drop_shadow_effect_connect_colour_changed(void *effect, qt_callback_t callback, void *user_data);
int   qt_graphics_drop_shadow_effect_connect_offset_changed(void *effect, qt_callback_t callback, void *user_data);

void *qt_graphics_opacity_effect_create(void *parent);
void  qt_graphics_opacity_effect_destroy(void *effect);
void  qt_graphics_opacity_effect_set_opacity(void *effect, double opacity);
double qt_graphics_opacity_effect_get_opacity(void *effect);
void  qt_graphics_opacity_effect_set_opacity_mask(void *effect, void *brush);
int   qt_graphics_opacity_effect_connect_opacity_changed(void *effect, qt_double_callback_t callback, void *user_data);

/* ── QStyle / QStyleFactory ────────────────────────────────────────── */

int   qt_style_get_keys(char ***keys_out);
void  qt_style_free_keys(char **keys, int count);
void *qt_application_get_style(void *app);
int   qt_style_get_pixel_metric(void *style, int metric, void *widget);
char *qt_style_get_name(void *style);

/* ── QProxyStyle ───────────────────────────────────────────────────── */

void *qt_proxy_style_create(const char *base_style_key);
void  qt_proxy_style_destroy(void *style);
void  qt_application_set_style_object(void *style);

/* ── QScroller / QScrollerProperties ───────────────────────────────── */

void *qt_scroller_grab(void *target, int gesture_type);
void *qt_scroller_get_scroller(void *target);
void  qt_scroller_set_snap_positions_x(void *scroller, double first, double interval);
void  qt_scroller_set_snap_positions_y(void *scroller, double first, double interval);
int   qt_scroller_get_state(void *scroller);
void  qt_scroller_stop(void *scroller);

void *qt_scroller_properties_create(void *scroller);
void  qt_scroller_properties_destroy(void *props);
void  qt_scroller_properties_set_metric(void *props, int metric, double value);
double qt_scroller_properties_get_metric(void *props, int metric);
void  qt_scroller_properties_apply(void *props, void *scroller);

/* ── QIdentityProxyModel ───────────────────────────────────────────── */

void *qt_identity_proxy_model_create(void *parent);
void  qt_identity_proxy_model_destroy(void *model);
void  qt_identity_proxy_model_set_source_model(void *model, void *source);
void *qt_identity_proxy_model_get_source_model(void *model);
void *qt_identity_proxy_model_map_to_source(void *model, void *proxy_index);
void *qt_identity_proxy_model_map_from_source(void *model, void *source_index);

/* ── QTransposeProxyModel ──────────────────────────────────────────── */

void *qt_transpose_proxy_model_create(void *parent);
void  qt_transpose_proxy_model_destroy(void *model);
void  qt_transpose_proxy_model_set_source_model(void *model, void *source);
void *qt_transpose_proxy_model_get_source_model(void *model);

/* ── QConcatenateTablesProxyModel ──────────────────────────────────── */

void *qt_concatenate_tables_proxy_model_create(void *parent);
void  qt_concatenate_tables_proxy_model_destroy(void *model);
void  qt_concatenate_tables_proxy_model_add_source_model(void *model, void *source);
void  qt_concatenate_tables_proxy_model_remove_source_model(void *model, void *source);
void *qt_concatenate_tables_proxy_model_map_to_source(void *model, void *proxy_index);
void *qt_concatenate_tables_proxy_model_map_from_source(void *model, void *source_index, void *source_model);

/* ── QSignalMapper ─────────────────────────────────────────────────── */

void *qt_signal_mapper_create(void *parent);
void  qt_signal_mapper_destroy(void *mapper);
void  qt_signal_mapper_set_mapping_int(void *mapper, void *sender, int id);
void  qt_signal_mapper_set_mapping_string(void *mapper, void *sender, const char *text);
void  qt_signal_mapper_set_mapping_widget(void *mapper, void *sender, void *widget);
void  qt_signal_mapper_remove_mappings(void *mapper, void *sender);
void  qt_signal_mapper_map(void *mapper, void *sender);
int   qt_signal_mapper_connect_mapped_int(void *mapper, qt_int_callback_t callback, void *user_data);
int   qt_signal_mapper_connect_mapped_string(void *mapper, qt_string_callback_t callback, void *user_data);

/* ── QLockFile ─────────────────────────────────────────────────────── */

void *qt_lock_file_create(const char *file_path);
void  qt_lock_file_destroy(void *lock);
int   qt_lock_file_lock(void *lock);
int   qt_lock_file_try_lock(void *lock, int timeout_ms);
void  qt_lock_file_unlock(void *lock);
int   qt_lock_file_is_locked(void *lock);
int   qt_lock_file_get_error(void *lock);
void  qt_lock_file_set_stale_lock_time(void *lock, int msecs);
int   qt_lock_file_get_stale_lock_time(void *lock);
int   qt_lock_file_remove_stale_lock_file(void *lock);

/* ── QTimeLine ─────────────────────────────────────────────────────── */

void *qt_time_line_create(int duration_ms, void *parent);
void  qt_time_line_destroy(void *timeline);
void  qt_time_line_start(void *timeline);
void  qt_time_line_stop(void *timeline);
void  qt_time_line_resume(void *timeline);
void  qt_time_line_set_paused(void *timeline, int is_paused);
int   qt_time_line_get_state(void *timeline);
void  qt_time_line_set_duration(void *timeline, int duration_ms);
int   qt_time_line_get_duration(void *timeline);
void  qt_time_line_set_frame_range(void *timeline, int start, int end);
int   qt_time_line_get_start_frame(void *timeline);
int   qt_time_line_get_end_frame(void *timeline);
int   qt_time_line_get_current_frame(void *timeline);
double qt_time_line_get_current_value(void *timeline);
void  qt_time_line_set_current_time(void *timeline, int msec);
int   qt_time_line_get_current_time(void *timeline);
void  qt_time_line_set_loop_count(void *timeline, int count);
int   qt_time_line_get_loop_count(void *timeline);
void  qt_time_line_set_direction(void *timeline, int direction);
int   qt_time_line_get_direction(void *timeline);
void  qt_time_line_set_easing_curve(void *timeline, int curve_type);
void  qt_time_line_set_update_interval(void *timeline, int interval_ms);
int   qt_time_line_connect_value_changed(void *timeline, qt_double_callback_t callback, void *user_data);
int   qt_time_line_connect_frame_changed(void *timeline, qt_int_callback_t callback, void *user_data);
int   qt_time_line_connect_state_changed(void *timeline, qt_int_callback_t callback, void *user_data);
int   qt_time_line_connect_finished(void *timeline, qt_callback_t callback, void *user_data);

/* ── QCalendar ─────────────────────────────────────────────────────── */

void *qt_calendar_create(void);
void *qt_calendar_create_with_system(int system);
void  qt_calendar_destroy(void *calendar);
int   qt_calendar_is_valid(void *calendar);
int   qt_calendar_get_days_in_month(void *calendar, int month, int year);
int   qt_calendar_get_days_in_year(void *calendar, int year);
int   qt_calendar_get_months_in_year(void *calendar, int year);
int   qt_calendar_is_date_valid(void *calendar, int year, int month, int day);
int   qt_calendar_is_gregorian(void *calendar);
int   qt_calendar_is_leap_year(void *calendar, int year);
int   qt_calendar_get_maximum_days_in_month(void *calendar);
int   qt_calendar_get_maximum_months_in_year(void *calendar);

/* ── QRandomGenerator ──────────────────────────────────────────────── */

unsigned int   qt_random_generator_generate(void);
unsigned int   qt_random_generator_generate_bounded_int(int highest);
unsigned int   qt_random_generator_generate_bounded_range(int lowest, int highest);
double         qt_random_generator_generate_double(void);

/* ── QEventLoop ────────────────────────────────────────────────────── */

void *qt_event_loop_create(void *parent);
void  qt_event_loop_destroy(void *loop);
int   qt_event_loop_exec(void *loop, int flags);
void  qt_event_loop_exit(void *loop, int return_code);
void  qt_event_loop_quit(void *loop);
int   qt_event_loop_is_running(void *loop);
void  qt_event_loop_process_events(void *loop, int flags);
void  qt_event_loop_wake_up(void *loop);

/* ── QSysInfo ──────────────────────────────────────────────────────── */

char *qt_sys_info_get_product_type(void);
char *qt_sys_info_get_product_version(void);
char *qt_sys_info_get_pretty_product_name(void);
char *qt_sys_info_get_kernel_type(void);
char *qt_sys_info_get_kernel_version(void);
char *qt_sys_info_get_cpu_architecture(void);
char *qt_sys_info_get_build_abi(void);
char *qt_sys_info_get_build_cpu_architecture(void);
char *qt_sys_info_get_machine_host_name(void);
char *qt_sys_info_get_machine_unique_id(void);
char *qt_sys_info_get_boot_unique_id(void);

/* ── QLibrary ──────────────────────────────────────────────────────── */

void *qt_library_create(const char *file_path, void *parent);
void  qt_library_destroy(void *library);
int   qt_library_load(void *library);
int   qt_library_unload(void *library);
int   qt_library_is_loaded(void *library);
void *qt_library_resolve(void *library, const char *symbol);
char *qt_library_get_error_string(void *library);
void  qt_library_set_file_name(void *library, const char *file_path);
char *qt_library_get_file_name(void *library);
void  qt_library_set_load_hints(void *library, int hints);
int   qt_library_get_load_hints(void *library);
int   qt_library_is_library(const char *file_path);

/* ── QSharedMemory ─────────────────────────────────────────────────── */

void *qt_shared_memory_create(const char *key, void *parent);
void  qt_shared_memory_destroy(void *shm);
int   qt_shared_memory_create_segment(void *shm, int size, int mode);
int   qt_shared_memory_attach(void *shm, int mode);
int   qt_shared_memory_detach(void *shm);
int   qt_shared_memory_is_attached(void *shm);
void *qt_shared_memory_get_data(void *shm);
int   qt_shared_memory_get_size(void *shm);
int   qt_shared_memory_lock(void *shm);
int   qt_shared_memory_unlock(void *shm);
char *qt_shared_memory_get_error_string(void *shm);
int   qt_shared_memory_get_error(void *shm);
void  qt_shared_memory_set_key(void *shm, const char *key);
void  qt_shared_memory_set_native_key(void *shm, const char *key);
char *qt_shared_memory_get_native_key(void *shm);

/* ── QSystemSemaphore ──────────────────────────────────────────────── */

void *qt_system_semaphore_create(const char *key, int initial_value, int mode);
void  qt_system_semaphore_destroy(void *sem);
int   qt_system_semaphore_acquire(void *sem);
int   qt_system_semaphore_release(void *sem, int count);
char *qt_system_semaphore_get_error_string(void *sem);
int   qt_system_semaphore_get_error(void *sem);
void  qt_system_semaphore_set_key(void *sem, const char *key, int initial_value, int mode);

/* ── QDeadlineTimer ────────────────────────────────────────────────── */

void *qt_deadline_timer_create(long long msecs, int timer_type);
void *qt_deadline_timer_create_forever(int timer_type);
void  qt_deadline_timer_destroy(void *timer);
int   qt_deadline_timer_has_expired(void *timer);
int   qt_deadline_timer_is_forever(void *timer);
long long qt_deadline_timer_get_remaining_time(void *timer);
long long qt_deadline_timer_get_remaining_time_nsecs(void *timer);
long long qt_deadline_timer_get_deadline(void *timer);
long long qt_deadline_timer_get_deadline_nsecs(void *timer);
void  qt_deadline_timer_set_remaining_time(void *timer, long long msecs, int timer_type);
void  qt_deadline_timer_set_deadline(void *timer, long long msecs, int timer_type);
void  qt_deadline_timer_set_timer_type(void *timer, int timer_type);
int   qt_deadline_timer_get_timer_type(void *timer);

/* ── QCollator ─────────────────────────────────────────────────────── */

void *qt_collator_create(const char *locale_name);
void  qt_collator_destroy(void *collator);
void  qt_collator_set_locale(void *collator, const char *locale_name);
char *qt_collator_get_locale(void *collator);
void  qt_collator_set_case_sensitivity(void *collator, int cs);
int   qt_collator_get_case_sensitivity(void *collator);
void  qt_collator_set_numeric_mode(void *collator, int is_on);
int   qt_collator_is_numeric_mode(void *collator);
void  qt_collator_set_ignore_punctuation(void *collator, int is_on);
int   qt_collator_does_ignore_punctuation(void *collator);
int   qt_collator_compare(void *collator, const char *s1, const char *s2);

/* ── QPdfWriter ────────────────────────────────────────────────────── */

void *qt_pdf_writer_create(const char *filename);
void  qt_pdf_writer_destroy(void *writer);
void  qt_pdf_writer_set_title(void *writer, const char *title);
char *qt_pdf_writer_get_title(void *writer);
void  qt_pdf_writer_set_creator(void *writer, const char *creator);
char *qt_pdf_writer_get_creator(void *writer);
int   qt_pdf_writer_new_page(void *writer);
void  qt_pdf_writer_set_resolution(void *writer, int dpi);
int   qt_pdf_writer_get_resolution(void *writer);
void  qt_pdf_writer_set_page_size(void *writer, int page_size_id);
void  qt_pdf_writer_set_page_orientation(void *writer, int orientation);
void  qt_pdf_writer_set_page_margins(void *writer, double left, double top, double right, double bottom, int unit);
void  qt_pdf_writer_set_pdf_version(void *writer, int version);
int   qt_pdf_writer_get_pdf_version(void *writer);

/* ── QTextStream ───────────────────────────────────────────────────── */

void *qt_text_stream_create_file(const char *filename, int mode);
void *qt_text_stream_create_string(void);
void  qt_text_stream_destroy(void *stream);
void  qt_text_stream_write_string(void *stream, const char *text);
void  qt_text_stream_write_int(void *stream, int value);
void  qt_text_stream_write_double(void *stream, double value);
char *qt_text_stream_read_line(void *stream);
char *qt_text_stream_read_all(void *stream);
int   qt_text_stream_is_at_end(void *stream);
void  qt_text_stream_flush(void *stream);
void  qt_text_stream_seek(void *stream, long long pos);
long long qt_text_stream_get_pos(void *stream);
int   qt_text_stream_get_status(void *stream);
void  qt_text_stream_reset_status(void *stream);
char *qt_text_stream_get_string(void *stream);

/* ── QDataStream ───────────────────────────────────────────────────── */

void *qt_data_stream_create_file(const char *filename, int mode);
void *qt_data_stream_create_buffer(void);
void  qt_data_stream_destroy(void *stream);
void  qt_data_stream_write_int8(void *stream, int value);
void  qt_data_stream_write_int16(void *stream, int value);
void  qt_data_stream_write_int32(void *stream, int value);
void  qt_data_stream_write_int64(void *stream, long long value);
void  qt_data_stream_write_float(void *stream, float value);
void  qt_data_stream_write_double(void *stream, double value);
void  qt_data_stream_write_string(void *stream, const char *text);
int   qt_data_stream_read_int8(void *stream);
int   qt_data_stream_read_int16(void *stream);
int   qt_data_stream_read_int32(void *stream);
long long qt_data_stream_read_int64(void *stream);
float qt_data_stream_read_float(void *stream);
double qt_data_stream_read_double(void *stream);
char *qt_data_stream_read_string(void *stream);
int   qt_data_stream_is_at_end(void *stream);
int   qt_data_stream_get_status(void *stream);
void  qt_data_stream_reset_status(void *stream);
void  qt_data_stream_set_byte_order(void *stream, int order);
int   qt_data_stream_get_byte_order(void *stream);
void  qt_data_stream_set_version(void *stream, int version);
int   qt_data_stream_get_version(void *stream);
void *qt_data_stream_get_buffer(void *stream);

/* ── QTextTable ────────────────────────────────────────────────────── */

void  qt_text_table_resize(void *table, int rows, int cols);
void  qt_text_table_insert_rows(void *table, int pos, int count);
void  qt_text_table_insert_columns(void *table, int pos, int count);
void  qt_text_table_append_rows(void *table, int count);
void  qt_text_table_append_columns(void *table, int count);
void  qt_text_table_remove_rows(void *table, int pos, int count);
void  qt_text_table_remove_columns(void *table, int pos, int count);
void  qt_text_table_merge_cells(void *table, int row, int col, int num_rows, int num_cols);
void  qt_text_table_split_cell(void *table, int row, int col, int num_rows, int num_cols);
int   qt_text_table_get_rows(void *table);
int   qt_text_table_get_columns(void *table);

/* ── QTextTableCell ────────────────────────────────────────────────── */

int   qt_text_table_cell_get_row(void *table, int row, int col);
int   qt_text_table_cell_get_column(void *table, int row, int col);
int   qt_text_table_cell_get_row_span(void *table, int row, int col);
int   qt_text_table_cell_get_column_span(void *table, int row, int col);
int   qt_text_table_cell_is_valid(void *table, int row, int col);
void *qt_text_table_cell_get_first_cursor_position(void *table, int row, int col);
void *qt_text_table_cell_get_last_cursor_position(void *table, int row, int col);

/* ── QTextList ─────────────────────────────────────────────────────── */

int   qt_text_list_get_count(void *list);
void *qt_text_list_get_item(void *list, int index);
int   qt_text_list_get_item_number(void *list, void *block);
char *qt_text_list_get_item_text(void *list, void *block);
void  qt_text_list_remove_item(void *list, int index);
void  qt_text_list_add(void *list, void *block);
void  qt_text_list_set_style(void *list, int style);
int   qt_text_list_get_style(void *list);

/* ── QTextFrame ────────────────────────────────────────────────────── */

void *qt_text_frame_get_first_cursor_position(void *frame);
void *qt_text_frame_get_last_cursor_position(void *frame);
int   qt_text_frame_get_first_position(void *frame);
int   qt_text_frame_get_last_position(void *frame);
void *qt_text_frame_get_parent_frame(void *frame);
void  qt_text_frame_get_child_frames(void *frame, void **out_items, int *out_count);

/* ── QAbstractItemModel helper (CCustomItemModel) ──────────────────── */

typedef int   (*qt_model_row_count_callback_t)(void *parent_index, void *user_data);
typedef int   (*qt_model_column_count_callback_t)(void *parent_index, void *user_data);
typedef const char *(*qt_model_data_callback_t)(void *index, int role, void *user_data);
typedef int         (*qt_model_flags_callback_t)(void *index, void *user_data);
typedef const char *(*qt_model_header_data_callback_t)(int section, int orientation, int role, void *user_data);

void *qt_custom_item_model_create(
    qt_model_row_count_callback_t    row_count_cb,
    qt_model_column_count_callback_t column_count_cb,
    qt_model_data_callback_t         data_cb,
    qt_model_flags_callback_t        flags_cb,
    qt_model_header_data_callback_t  header_data_cb,
    void *user_data);
void  qt_custom_item_model_destroy(void *model);
void  qt_custom_item_model_begin_reset(void *model);
void  qt_custom_item_model_end_reset(void *model);
void  qt_custom_item_model_begin_insert_rows(void *model, void *parent, int first, int last);
void  qt_custom_item_model_end_insert_rows(void *model);
void  qt_custom_item_model_begin_remove_rows(void *model, void *parent, int first, int last);
void  qt_custom_item_model_end_remove_rows(void *model);
void  qt_custom_item_model_begin_insert_columns(void *model, void *parent, int first, int last);
void  qt_custom_item_model_end_insert_columns(void *model);
void  qt_custom_item_model_begin_remove_columns(void *model, void *parent, int first, int last);
void  qt_custom_item_model_end_remove_columns(void *model);
void  qt_custom_item_model_emit_data_changed(void *model, void *top_left, void *bottom_right);
void *qt_custom_item_model_create_index(void *model, int row, int column, void *parent);

#ifdef __cplusplus
}
#endif

#endif /* QT_WRAPPER_H */
