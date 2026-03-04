#ifndef QT_WRAPPER_H
#define QT_WRAPPER_H

#ifdef __cplusplus
extern "C" {
#endif

/* QApplication */
void *qt_application_create(int *argc, char **argv);
void  qt_application_destroy(void *app);
int   qt_application_exec(void *app);

/* QMainWindow */
void *qt_main_window_create(void *parent);
void  qt_main_window_set_central_widget(void *window, void *widget);
void *qt_main_window_menu_bar(void *window);
void  qt_main_window_add_toolbar(void *window, int area, void *toolbar);
void  qt_main_window_statusbar_show_message(void *window, const char *message, int timeout_ms);

/* QWidget (works on any QWidget-derived object) */
void *qt_widget_create(void *parent);
void  qt_widget_destroy(void *widget);
void  qt_widget_show(void *widget);
void  qt_widget_hide(void *widget);
void  qt_widget_set_visible(void *widget, int is_visible);
void  qt_widget_set_enabled(void *widget, int is_enabled);
int   qt_widget_is_enabled(void *widget);
void  qt_widget_set_window_title(void *widget, const char *title);
void  qt_widget_resize(void *widget, int width, int height);
void  qt_widget_set_fixed_size(void *widget, int width, int height);
void  qt_widget_set_minimum_size(void *widget, int width, int height);
void  qt_widget_set_maximum_size(void *widget, int width, int height);
int   qt_widget_get_width(void *widget);
int   qt_widget_get_height(void *widget);
void  qt_widget_set_tooltip(void *widget, const char *tooltip);
void  qt_widget_set_style_sheet(void *widget, const char *style_sheet);
void  qt_widget_set_layout(void *widget, void *layout);

/* QLabel */
void *qt_label_create(void *parent, const char *text);
void  qt_label_set_text(void *label, const char *text);
void  qt_label_set_alignment(void *label, int alignment);

/* QPushButton */
void *qt_push_button_create(void *parent, const char *text);
void  qt_push_button_set_text(void *button, const char *text);

/* QLineEdit */
void *qt_line_edit_create(void *parent);
void  qt_line_edit_set_text(void *line_edit, const char *text);
void  qt_line_edit_set_placeholder_text(void *line_edit, const char *text);
void  qt_line_edit_set_read_only(void *line_edit, int is_read_only);
void  qt_line_edit_clear(void *line_edit);

/* QTextEdit */
void *qt_text_edit_create(void *parent);
void  qt_text_edit_set_plain_text(void *text_edit, const char *text);
void  qt_text_edit_set_read_only(void *text_edit, int is_read_only);
void  qt_text_edit_clear(void *text_edit);

/* QCheckBox */
void *qt_check_box_create(void *parent, const char *text);
int   qt_check_box_is_checked(void *check_box);
void  qt_check_box_set_checked(void *check_box, int is_checked);

/* QComboBox */
void *qt_combo_box_create(void *parent);
void  qt_combo_box_add_item(void *combo_box, const char *text);
int   qt_combo_box_get_current_index(void *combo_box);
void  qt_combo_box_set_current_index(void *combo_box, int index);
int   qt_combo_box_get_count(void *combo_box);
void  qt_combo_box_clear(void *combo_box);

/* QSlider */
void *qt_slider_create(int orientation, void *parent);
void  qt_slider_set_range(void *slider, int min_val, int max_val);
int   qt_slider_get_value(void *slider);
void  qt_slider_set_value(void *slider, int value);

/* QProgressBar */
void *qt_progress_bar_create(void *parent);
void  qt_progress_bar_set_range(void *progress_bar, int min_val, int max_val);
int   qt_progress_bar_get_value(void *progress_bar);
void  qt_progress_bar_set_value(void *progress_bar, int value);

/* QSpinBox */
void *qt_spin_box_create(void *parent);
void  qt_spin_box_set_range(void *spin_box, int min_val, int max_val);
int   qt_spin_box_get_value(void *spin_box);
void  qt_spin_box_set_value(void *spin_box, int value);

/* Layouts (QVBoxLayout, QHBoxLayout, QGridLayout) */
void *qt_vbox_layout_create(void *parent);
void *qt_hbox_layout_create(void *parent);
void *qt_grid_layout_create(void *parent);
void  qt_layout_add_widget(void *layout, void *widget);
void  qt_grid_layout_add_widget(void *layout, void *widget, int row, int col, int row_span, int col_span);
void  qt_box_layout_add_layout(void *layout, void *child_layout);
void  qt_layout_set_spacing(void *layout, int spacing);
void  qt_layout_set_contents_margins(void *layout, int left, int top, int right, int bottom);

/* QMenuBar */
void *qt_menu_bar_add_menu(void *menu_bar, const char *title);

/* QMenu */
void *qt_menu_add_action(void *menu, const char *text);
void  qt_menu_add_separator(void *menu);

/* QAction */
void qt_action_set_enabled(void *action, int is_enabled);

/* QToolBar */
void *qt_toolbar_create(void *parent, const char *title);
void *qt_toolbar_add_action(void *toolbar, const char *text);
void  qt_toolbar_add_separator(void *toolbar);
void  qt_toolbar_add_widget(void *toolbar, void *widget);

/* QTabWidget */
void *qt_tab_widget_create(void *parent);
int   qt_tab_widget_add_tab(void *tab_widget, void *widget, const char *label);
int   qt_tab_widget_get_current_index(void *tab_widget);
void  qt_tab_widget_set_current_index(void *tab_widget, int index);
int   qt_tab_widget_get_count(void *tab_widget);

/* QGroupBox */
void *qt_group_box_create(void *parent, const char *title);
void  qt_group_box_set_title(void *group_box, const char *title);

/* ── Callback types ─────────────────────────────────────────────────── */

typedef void (*qt_callback_t)(void *user_data);
typedef void (*qt_int_callback_t)(int value, void *user_data);
typedef void (*qt_string_callback_t)(const char *text, void *user_data);

/* ── Signal connections ─────────────────────────────────────────────── */

void qt_push_button_connect_clicked(void *button, qt_callback_t callback, void *user_data);
void qt_check_box_connect_toggled(void *check_box, qt_int_callback_t callback, void *user_data);
void qt_slider_connect_value_changed(void *slider, qt_int_callback_t callback, void *user_data);
void qt_spin_box_connect_value_changed(void *spin_box, qt_int_callback_t callback, void *user_data);
void qt_line_edit_connect_text_changed(void *line_edit, qt_string_callback_t callback, void *user_data);
void qt_line_edit_connect_return_pressed(void *line_edit, qt_callback_t callback, void *user_data);
void qt_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data);
void qt_combo_box_connect_index_changed(void *combo_box, qt_int_callback_t callback, void *user_data);
void qt_action_connect_triggered(void *action, qt_callback_t callback, void *user_data);
void qt_tab_widget_connect_current_changed(void *tab_widget, qt_int_callback_t callback, void *user_data);

#ifdef __cplusplus
}
#endif

#endif /* QT_WRAPPER_H */
