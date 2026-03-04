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

/* ── Signal disconnection ───────────────────────────────────────────── */

void qt_disconnect(int connection_id);

#ifdef __cplusplus
}
#endif

#endif /* QT_WRAPPER_H */
