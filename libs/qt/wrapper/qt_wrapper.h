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

/* ── QLabel ─────────────────────────────────────────────────────────── */

void *qt_label_create(void *parent, const char *text);
void  qt_label_set_text(void *label, const char *text);
char *qt_label_get_text(void *label);
void  qt_label_set_alignment(void *label, int alignment);
void  qt_label_set_word_wrap(void *label, int is_word_wrap);

/* ── QPushButton ────────────────────────────────────────────────────── */

void *qt_push_button_create(void *parent, const char *text);
void  qt_push_button_set_text(void *button, const char *text);
char *qt_push_button_get_text(void *button);
void  qt_push_button_set_flat(void *button, int is_flat);
int   qt_push_button_is_flat(void *button);
void  qt_push_button_set_checkable(void *button, int is_checkable);
int   qt_push_button_is_checked(void *button);
void  qt_push_button_set_checked(void *button, int is_checked);

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

/* ── QPlainTextEdit ─────────────────────────────────────────────────── */

void *qt_plain_text_edit_create(void *parent);
void  qt_plain_text_edit_set_plain_text(void *text_edit, const char *text);
char *qt_plain_text_edit_get_plain_text(void *text_edit);
void  qt_plain_text_edit_set_read_only(void *text_edit, int is_read_only);
int   qt_plain_text_edit_is_read_only(void *text_edit);
void  qt_plain_text_edit_clear(void *text_edit);
void  qt_plain_text_edit_append_plain_text(void *text_edit, const char *text);
void  qt_plain_text_edit_insert_plain_text(void *text_edit, const char *text);

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

/* ── QSlider ────────────────────────────────────────────────────────── */

void *qt_slider_create(int orientation, void *parent);
void  qt_slider_set_range(void *slider, int min_val, int max_val);
int   qt_slider_get_value(void *slider);
void  qt_slider_set_value(void *slider, int value);
void  qt_slider_set_tick_position(void *slider, int position);
void  qt_slider_set_tick_interval(void *slider, int interval);
void  qt_slider_set_single_step(void *slider, int step);
void  qt_slider_set_page_step(void *slider, int step);

/* ── QProgressBar ───────────────────────────────────────────────────── */

void *qt_progress_bar_create(void *parent);
void  qt_progress_bar_set_range(void *progress_bar, int min_val, int max_val);
int   qt_progress_bar_get_value(void *progress_bar);
void  qt_progress_bar_set_value(void *progress_bar, int value);
void  qt_progress_bar_set_format(void *progress_bar, const char *format);
void  qt_progress_bar_set_text_visible(void *progress_bar, int is_visible);
void  qt_progress_bar_reset(void *progress_bar);
void  qt_progress_bar_set_orientation(void *progress_bar, int orientation);

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

/* ── QScrollArea ────────────────────────────────────────────────────── */

void *qt_scroll_area_create(void *parent);
void  qt_scroll_area_set_widget(void *scroll_area, void *widget);
void  qt_scroll_area_set_widget_resizable(void *scroll_area, int is_resizable);
void *qt_scroll_area_get_widget(void *scroll_area);
void  qt_scroll_area_set_horizontal_scroll_bar_policy(void *scroll_area, int policy);
void  qt_scroll_area_set_vertical_scroll_bar_policy(void *scroll_area, int policy);

/* ── QSplitter ──────────────────────────────────────────────────────── */

void *qt_splitter_create(int orientation, void *parent);
void  qt_splitter_add_widget(void *splitter, void *widget);
void  qt_splitter_set_sizes(void *splitter, const int *sizes, int count);
void  qt_splitter_get_sizes(void *splitter, int *sizes_out, int count);
void  qt_splitter_set_stretch_factor(void *splitter, int index, int stretch);
int   qt_splitter_get_count(void *splitter);
void  qt_splitter_set_collapsible(void *splitter, int index, int is_collapsible);

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

/* ── QToolBar ───────────────────────────────────────────────────────── */

void *qt_toolbar_create(void *parent, const char *title);
void *qt_toolbar_add_action(void *toolbar, const char *text);
void  qt_toolbar_add_separator(void *toolbar);
void  qt_toolbar_add_widget(void *toolbar, void *widget);
void  qt_toolbar_set_movable(void *toolbar, int is_movable);
int   qt_toolbar_is_movable(void *toolbar);
void  qt_toolbar_set_icon_size(void *toolbar, int width, int height);
void  qt_toolbar_set_tool_button_style(void *toolbar, int style);

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

/* ── QGroupBox ──────────────────────────────────────────────────────── */

void *qt_group_box_create(void *parent, const char *title);
void  qt_group_box_set_title(void *group_box, const char *title);
void  qt_group_box_set_checkable(void *group_box, int is_checkable);
int   qt_group_box_is_checked(void *group_box);
void  qt_group_box_set_checked(void *group_box, int is_checked);
char *qt_group_box_get_title(void *group_box);
void  qt_group_box_set_flat(void *group_box, int is_flat);
int   qt_group_box_is_flat(void *group_box);

/* ── QDialog ────────────────────────────────────────────────────────── */

void *qt_dialog_create(void *parent);
int   qt_dialog_exec(void *dialog);
void  qt_dialog_accept(void *dialog);
void  qt_dialog_reject(void *dialog);

/* ── QDockWidget ────────────────────────────────────────────────────── */

void *qt_dock_widget_create(void *parent, const char *title);
void  qt_dock_widget_set_widget(void *dock, void *widget);
void  qt_dock_widget_set_allowed_areas(void *dock, int areas);
void  qt_dock_widget_set_features(void *dock, int features);
int   qt_dock_widget_is_floating(void *dock);
void  qt_dock_widget_set_floating(void *dock, int is_floating);
void *qt_dock_widget_toggle_view_action(void *dock);

/* ── QStatusBar ─────────────────────────────────────────────────────── */

void  qt_statusbar_show_message(void *statusbar, const char *message, int timeout_ms);
void  qt_statusbar_clear_message(void *statusbar);
void  qt_statusbar_add_permanent_widget(void *statusbar, void *widget);
void  qt_statusbar_add_widget(void *statusbar, void *widget);
void  qt_statusbar_remove_widget(void *statusbar, void *widget);

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

/* ── QPixmap ────────────────────────────────────────────────────────── */

void *qt_pixmap_create_from_file(const char *file_path);
void  qt_pixmap_destroy(void *pixmap);
int   qt_pixmap_get_width(void *pixmap);
int   qt_pixmap_get_height(void *pixmap);
int   qt_pixmap_is_null(void *pixmap);

/* ── QIcon ──────────────────────────────────────────────────────────── */

void *qt_icon_create(void);
void *qt_icon_create_from_file(const char *file_path);
void *qt_icon_create_from_pixmap(void *pixmap);
void  qt_icon_destroy(void *icon);
int   qt_icon_is_null(void *icon);

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
void qt_painter_set_brush_colour(void *painter, int r, int g, int b, int a);
void qt_painter_set_no_brush(void *painter);
void qt_painter_set_font(void *painter, const char *family, int point_size, int weight, int is_italic);
void qt_painter_set_antialiasing(void *painter, int is_enabled);
void qt_painter_set_opacity(void *painter, double opacity);
void qt_painter_draw_line(void *painter, int x1, int y1, int x2, int y2);
void qt_painter_draw_rect(void *painter, int x, int y, int width, int height);
void qt_painter_fill_rect(void *painter, int x, int y, int width, int height, int r, int g, int b, int a);
void qt_painter_draw_ellipse(void *painter, int x, int y, int width, int height);
void qt_painter_draw_arc(void *painter, int x, int y, int width, int height, int start_angle, int span_angle);
void qt_painter_draw_pie(void *painter, int x, int y, int width, int height, int start_angle, int span_angle);
void qt_painter_draw_rounded_rect(void *painter, int x, int y, int width, int height, double x_radius, double y_radius);
void qt_painter_draw_text(void *painter, int x, int y, const char *text);
void qt_painter_draw_text_in_rect(void *painter, int x, int y, int width, int height, int flags, const char *text);
void qt_painter_draw_pixmap(void *painter, int x, int y, void *pixmap);
void qt_painter_draw_polygon(void *painter, const int *points, int point_count);
void qt_painter_save(void *painter);
void qt_painter_restore(void *painter);
void qt_painter_translate(void *painter, double dx, double dy);
void qt_painter_rotate(void *painter, double angle);
void qt_painter_scale(void *painter, double sx, double sy);

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
void  qt_painter_draw_path(void *painter, void *path);
void  qt_painter_set_clip_path(void *painter, void *path);
void  qt_painter_fill_path(void *painter, void *path, int r, int g, int b, int a);
void  qt_painter_stroke_path(void *painter, void *path, void *pen);

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

#ifdef __cplusplus
}
#endif

#endif /* QT_WRAPPER_H */
