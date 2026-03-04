#include "qt_wrapper.h"

#include <QApplication>
#include <QMainWindow>
#include <QStatusBar>
#include <QString>
#include <QtPlugin>
#include <QLabel>
#include <QPushButton>
#include <QLineEdit>
#include <QTextEdit>
#include <QCheckBox>
#include <QComboBox>
#include <QSlider>
#include <QProgressBar>
#include <QSpinBox>
#include <QBoxLayout>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QGridLayout>
#include <QMenuBar>
#include <QMenu>
#include <QAction>
#include <QToolBar>
#include <QTabWidget>
#include <QGroupBox>

Q_IMPORT_PLUGIN(QWindowsIntegrationPlugin)
Q_IMPORT_PLUGIN(QModernWindowsStylePlugin)

extern "C" {

/* ── QApplication ──────────────────────────────────────────────────── */

void *qt_application_create(int *argc, char **argv) {
    return static_cast<void *>(new QApplication(*argc, argv));
}

void qt_application_destroy(void *app) {
    delete static_cast<QApplication *>(app);
}

int qt_application_exec(void *app) {
    return static_cast<QApplication *>(app)->exec();
}

/* ── QMainWindow ───────────────────────────────────────────────────── */

void *qt_main_window_create(void *parent) {
    return static_cast<void *>(new QMainWindow(static_cast<QWidget *>(parent)));
}

void qt_main_window_set_central_widget(void *window, void *widget) {
    static_cast<QMainWindow *>(window)->setCentralWidget(static_cast<QWidget *>(widget));
}

void *qt_main_window_menu_bar(void *window) {
    return static_cast<void *>(static_cast<QMainWindow *>(window)->menuBar());
}

void qt_main_window_add_toolbar(void *window, int area, void *toolbar) {
    static_cast<QMainWindow *>(window)->addToolBar(
        static_cast<Qt::ToolBarArea>(area),
        static_cast<QToolBar *>(toolbar)
    );
}

void qt_main_window_statusbar_show_message(void *window, const char *message, int timeout_ms) {
    static_cast<QMainWindow *>(window)->statusBar()->showMessage(
        QString::fromUtf8(message), timeout_ms
    );
}

/* ── QWidget ───────────────────────────────────────────────────────── */

void *qt_widget_create(void *parent) {
    return static_cast<void *>(new QWidget(static_cast<QWidget *>(parent)));
}

void qt_widget_destroy(void *widget) {
    delete static_cast<QWidget *>(widget);
}

void qt_widget_show(void *widget) {
    static_cast<QWidget *>(widget)->show();
}

void qt_widget_hide(void *widget) {
    static_cast<QWidget *>(widget)->hide();
}

void qt_widget_set_visible(void *widget, int is_visible) {
    static_cast<QWidget *>(widget)->setVisible(is_visible != 0);
}

void qt_widget_set_enabled(void *widget, int is_enabled) {
    static_cast<QWidget *>(widget)->setEnabled(is_enabled != 0);
}

int qt_widget_is_enabled(void *widget) {
    return static_cast<QWidget *>(widget)->isEnabled() ? 1 : 0;
}

void qt_widget_set_window_title(void *widget, const char *title) {
    static_cast<QWidget *>(widget)->setWindowTitle(QString::fromUtf8(title));
}

void qt_widget_resize(void *widget, int width, int height) {
    static_cast<QWidget *>(widget)->resize(width, height);
}

void qt_widget_set_fixed_size(void *widget, int width, int height) {
    static_cast<QWidget *>(widget)->setFixedSize(width, height);
}

void qt_widget_set_minimum_size(void *widget, int width, int height) {
    static_cast<QWidget *>(widget)->setMinimumSize(width, height);
}

void qt_widget_set_maximum_size(void *widget, int width, int height) {
    static_cast<QWidget *>(widget)->setMaximumSize(width, height);
}

int qt_widget_get_width(void *widget) {
    return static_cast<QWidget *>(widget)->width();
}

int qt_widget_get_height(void *widget) {
    return static_cast<QWidget *>(widget)->height();
}

void qt_widget_set_tooltip(void *widget, const char *tooltip) {
    static_cast<QWidget *>(widget)->setToolTip(QString::fromUtf8(tooltip));
}

void qt_widget_set_style_sheet(void *widget, const char *style_sheet) {
    static_cast<QWidget *>(widget)->setStyleSheet(QString::fromUtf8(style_sheet));
}

void qt_widget_set_layout(void *widget, void *layout) {
    static_cast<QWidget *>(widget)->setLayout(static_cast<QLayout *>(layout));
}

/* ── QLabel ─────────────────────────────────────────────────────────── */

void *qt_label_create(void *parent, const char *text) {
    return static_cast<void *>(new QLabel(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

void qt_label_set_text(void *label, const char *text) {
    static_cast<QLabel *>(label)->setText(QString::fromUtf8(text));
}

void qt_label_set_alignment(void *label, int alignment) {
    static_cast<QLabel *>(label)->setAlignment(static_cast<Qt::Alignment>(alignment));
}

/* ── QPushButton ────────────────────────────────────────────────────── */

void *qt_push_button_create(void *parent, const char *text) {
    return static_cast<void *>(new QPushButton(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

void qt_push_button_set_text(void *button, const char *text) {
    static_cast<QPushButton *>(button)->setText(QString::fromUtf8(text));
}

/* ── QLineEdit ──────────────────────────────────────────────────────── */

void *qt_line_edit_create(void *parent) {
    return static_cast<void *>(new QLineEdit(static_cast<QWidget *>(parent)));
}

void qt_line_edit_set_text(void *line_edit, const char *text) {
    static_cast<QLineEdit *>(line_edit)->setText(QString::fromUtf8(text));
}

void qt_line_edit_set_placeholder_text(void *line_edit, const char *text) {
    static_cast<QLineEdit *>(line_edit)->setPlaceholderText(QString::fromUtf8(text));
}

void qt_line_edit_set_read_only(void *line_edit, int is_read_only) {
    static_cast<QLineEdit *>(line_edit)->setReadOnly(is_read_only != 0);
}

void qt_line_edit_clear(void *line_edit) {
    static_cast<QLineEdit *>(line_edit)->clear();
}

/* ── QTextEdit ──────────────────────────────────────────────────────── */

void *qt_text_edit_create(void *parent) {
    return static_cast<void *>(new QTextEdit(static_cast<QWidget *>(parent)));
}

void qt_text_edit_set_plain_text(void *text_edit, const char *text) {
    static_cast<QTextEdit *>(text_edit)->setPlainText(QString::fromUtf8(text));
}

void qt_text_edit_set_read_only(void *text_edit, int is_read_only) {
    static_cast<QTextEdit *>(text_edit)->setReadOnly(is_read_only != 0);
}

void qt_text_edit_clear(void *text_edit) {
    static_cast<QTextEdit *>(text_edit)->clear();
}

/* ── QCheckBox ──────────────────────────────────────────────────────── */

void *qt_check_box_create(void *parent, const char *text) {
    return static_cast<void *>(new QCheckBox(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

int qt_check_box_is_checked(void *check_box) {
    return static_cast<QCheckBox *>(check_box)->isChecked() ? 1 : 0;
}

void qt_check_box_set_checked(void *check_box, int is_checked) {
    static_cast<QCheckBox *>(check_box)->setChecked(is_checked != 0);
}

/* ── QComboBox ──────────────────────────────────────────────────────── */

void *qt_combo_box_create(void *parent) {
    return static_cast<void *>(new QComboBox(static_cast<QWidget *>(parent)));
}

void qt_combo_box_add_item(void *combo_box, const char *text) {
    static_cast<QComboBox *>(combo_box)->addItem(QString::fromUtf8(text));
}

int qt_combo_box_get_current_index(void *combo_box) {
    return static_cast<QComboBox *>(combo_box)->currentIndex();
}

void qt_combo_box_set_current_index(void *combo_box, int index) {
    static_cast<QComboBox *>(combo_box)->setCurrentIndex(index);
}

int qt_combo_box_get_count(void *combo_box) {
    return static_cast<QComboBox *>(combo_box)->count();
}

void qt_combo_box_clear(void *combo_box) {
    static_cast<QComboBox *>(combo_box)->clear();
}

/* ── QSlider ────────────────────────────────────────────────────────── */

void *qt_slider_create(int orientation, void *parent) {
    return static_cast<void *>(new QSlider(
        static_cast<Qt::Orientation>(orientation),
        static_cast<QWidget *>(parent)
    ));
}

void qt_slider_set_range(void *slider, int min_val, int max_val) {
    static_cast<QSlider *>(slider)->setRange(min_val, max_val);
}

int qt_slider_get_value(void *slider) {
    return static_cast<QSlider *>(slider)->value();
}

void qt_slider_set_value(void *slider, int value) {
    static_cast<QSlider *>(slider)->setValue(value);
}

/* ── QProgressBar ───────────────────────────────────────────────────── */

void *qt_progress_bar_create(void *parent) {
    return static_cast<void *>(new QProgressBar(static_cast<QWidget *>(parent)));
}

void qt_progress_bar_set_range(void *progress_bar, int min_val, int max_val) {
    static_cast<QProgressBar *>(progress_bar)->setRange(min_val, max_val);
}

int qt_progress_bar_get_value(void *progress_bar) {
    return static_cast<QProgressBar *>(progress_bar)->value();
}

void qt_progress_bar_set_value(void *progress_bar, int value) {
    static_cast<QProgressBar *>(progress_bar)->setValue(value);
}

/* ── QSpinBox ───────────────────────────────────────────────────────── */

void *qt_spin_box_create(void *parent) {
    return static_cast<void *>(new QSpinBox(static_cast<QWidget *>(parent)));
}

void qt_spin_box_set_range(void *spin_box, int min_val, int max_val) {
    static_cast<QSpinBox *>(spin_box)->setRange(min_val, max_val);
}

int qt_spin_box_get_value(void *spin_box) {
    return static_cast<QSpinBox *>(spin_box)->value();
}

void qt_spin_box_set_value(void *spin_box, int value) {
    static_cast<QSpinBox *>(spin_box)->setValue(value);
}

/* ── Layouts ────────────────────────────────────────────────────────── */

void *qt_vbox_layout_create(void *parent) {
    return static_cast<void *>(new QVBoxLayout(static_cast<QWidget *>(parent)));
}

void *qt_hbox_layout_create(void *parent) {
    return static_cast<void *>(new QHBoxLayout(static_cast<QWidget *>(parent)));
}

void *qt_grid_layout_create(void *parent) {
    return static_cast<void *>(new QGridLayout(static_cast<QWidget *>(parent)));
}

void qt_layout_add_widget(void *layout, void *widget) {
    static_cast<QLayout *>(layout)->addWidget(static_cast<QWidget *>(widget));
}

void qt_grid_layout_add_widget(void *layout, void *widget, int row, int col, int row_span, int col_span) {
    static_cast<QGridLayout *>(layout)->addWidget(
        static_cast<QWidget *>(widget), row, col, row_span, col_span
    );
}

void qt_box_layout_add_layout(void *layout, void *child_layout) {
    static_cast<QBoxLayout *>(layout)->addLayout(static_cast<QLayout *>(child_layout));
}

void qt_layout_set_spacing(void *layout, int spacing) {
    static_cast<QLayout *>(layout)->setSpacing(spacing);
}

void qt_layout_set_contents_margins(void *layout, int left, int top, int right, int bottom) {
    static_cast<QLayout *>(layout)->setContentsMargins(left, top, right, bottom);
}

/* ── QMenuBar ───────────────────────────────────────────────────────── */

void *qt_menu_bar_add_menu(void *menu_bar, const char *title) {
    return static_cast<void *>(static_cast<QMenuBar *>(menu_bar)->addMenu(QString::fromUtf8(title)));
}

/* ── QMenu ──────────────────────────────────────────────────────────── */

void *qt_menu_add_action(void *menu, const char *text) {
    return static_cast<void *>(static_cast<QMenu *>(menu)->addAction(QString::fromUtf8(text)));
}

void qt_menu_add_separator(void *menu) {
    static_cast<QMenu *>(menu)->addSeparator();
}

/* ── QAction ────────────────────────────────────────────────────────── */

void qt_action_set_enabled(void *action, int is_enabled) {
    static_cast<QAction *>(action)->setEnabled(is_enabled != 0);
}

/* ── QToolBar ───────────────────────────────────────────────────────── */

void *qt_toolbar_create(void *parent, const char *title) {
    return static_cast<void *>(new QToolBar(QString::fromUtf8(title), static_cast<QWidget *>(parent)));
}

void *qt_toolbar_add_action(void *toolbar, const char *text) {
    return static_cast<void *>(static_cast<QToolBar *>(toolbar)->addAction(QString::fromUtf8(text)));
}

void qt_toolbar_add_separator(void *toolbar) {
    static_cast<QToolBar *>(toolbar)->addSeparator();
}

void qt_toolbar_add_widget(void *toolbar, void *widget) {
    static_cast<QToolBar *>(toolbar)->addWidget(static_cast<QWidget *>(widget));
}

/* ── QTabWidget ─────────────────────────────────────────────────────── */

void *qt_tab_widget_create(void *parent) {
    return static_cast<void *>(new QTabWidget(static_cast<QWidget *>(parent)));
}

int qt_tab_widget_add_tab(void *tab_widget, void *widget, const char *label) {
    return static_cast<QTabWidget *>(tab_widget)->addTab(
        static_cast<QWidget *>(widget), QString::fromUtf8(label)
    );
}

int qt_tab_widget_get_current_index(void *tab_widget) {
    return static_cast<QTabWidget *>(tab_widget)->currentIndex();
}

void qt_tab_widget_set_current_index(void *tab_widget, int index) {
    static_cast<QTabWidget *>(tab_widget)->setCurrentIndex(index);
}

int qt_tab_widget_get_count(void *tab_widget) {
    return static_cast<QTabWidget *>(tab_widget)->count();
}

/* ── QGroupBox ──────────────────────────────────────────────────────── */

void *qt_group_box_create(void *parent, const char *title) {
    return static_cast<void *>(new QGroupBox(QString::fromUtf8(title), static_cast<QWidget *>(parent)));
}

void qt_group_box_set_title(void *group_box, const char *title) {
    static_cast<QGroupBox *>(group_box)->setTitle(QString::fromUtf8(title));
}

/* ── Signal connections ──────────────────────────────────────────────── */

void qt_push_button_connect_clicked(void *button, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QPushButton *>(button), &QPushButton::clicked, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_check_box_connect_toggled(void *check_box, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QCheckBox *>(check_box), &QCheckBox::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
}

void qt_slider_connect_value_changed(void *slider, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QSlider *>(slider), &QSlider::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
}

void qt_spin_box_connect_value_changed(void *spin_box, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QSpinBox *>(spin_box), &QSpinBox::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
}

void qt_line_edit_connect_text_changed(void *line_edit, qt_string_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QLineEdit *>(line_edit), &QLineEdit::textChanged, [callback, user_data](const QString &text) {
        QByteArray utf8 = text.toUtf8();
        callback(utf8.constData(), user_data);
    });
}

void qt_line_edit_connect_return_pressed(void *line_edit, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QLineEdit *>(line_edit), &QLineEdit::returnPressed, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::textChanged, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_combo_box_connect_index_changed(void *combo_box, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::currentIndexChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
}

void qt_action_connect_triggered(void *action, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QAction *>(action), &QAction::triggered, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_tab_widget_connect_current_changed(void *tab_widget, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QTabWidget *>(tab_widget), &QTabWidget::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
}

} /* extern "C" */
