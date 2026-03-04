#include "qt_wrapper.h"

#include <QApplication>
#include <QMainWindow>
#include <QStatusBar>
#include <QString>
#include <QtPlugin>
#include <QLabel>
#include <QPushButton>
#include <QRadioButton>
#include <QLineEdit>
#include <QTextEdit>
#include <QPlainTextEdit>
#include <QCheckBox>
#include <QComboBox>
#include <QSlider>
#include <QProgressBar>
#include <QSpinBox>
#include <QDoubleSpinBox>
#include <QBoxLayout>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QGridLayout>
#include <QFormLayout>
#include <QMenuBar>
#include <QMenu>
#include <QAction>
#include <QToolBar>
#include <QTabWidget>
#include <QGroupBox>
#include <QListWidget>
#include <QTreeWidget>
#include <QTreeWidgetItem>
#include <QTableWidget>
#include <QTableWidgetItem>
#include <QScrollArea>
#include <QSplitter>
#include <QStackedWidget>
#include <QFrame>
#include <QDialog>
#include <QDockWidget>
#include <QTimer>
#include <QClipboard>
#include <QKeySequence>
#include <QCursor>
#include <QSizePolicy>
#include <QFileDialog>
#include <QMessageBox>
#include <QColorDialog>
#include <QFontDialog>
#include <QInputDialog>
#include <QStringList>
#include <cstdlib>
#include <cstring>

Q_IMPORT_PLUGIN(QWindowsIntegrationPlugin)
Q_IMPORT_PLUGIN(QModernWindowsStylePlugin)

static char *qstring_to_heap_utf8(const QString &s) {
    if (s.isEmpty()) return nullptr;
    QByteArray utf8 = s.toUtf8();
    char *result = static_cast<char *>(malloc(utf8.size() + 1));
    memcpy(result, utf8.constData(), utf8.size() + 1);
    return result;
}

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

void qt_application_quit(void *app) {
    (void)app;
    QApplication::quit();
}

void qt_application_process_events(void *app) {
    (void)app;
    QApplication::processEvents();
}

void qt_application_set_application_name(void *app, const char *name) {
    (void)app;
    QApplication::setApplicationName(QString::fromUtf8(name));
}

void qt_application_set_organization_name(void *app, const char *name) {
    (void)app;
    QApplication::setOrganizationName(QString::fromUtf8(name));
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

void qt_main_window_add_dock_widget(void *window, int area, void *dock_widget) {
    static_cast<QMainWindow *>(window)->addDockWidget(
        static_cast<Qt::DockWidgetArea>(area),
        static_cast<QDockWidget *>(dock_widget)
    );
}

void *qt_main_window_get_statusbar(void *window) {
    return static_cast<void *>(static_cast<QMainWindow *>(window)->statusBar());
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

void qt_widget_close(void *widget) {
    static_cast<QWidget *>(widget)->close();
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

void qt_widget_set_minimum_width(void *widget, int width) {
    static_cast<QWidget *>(widget)->setMinimumWidth(width);
}

void qt_widget_set_minimum_height(void *widget, int height) {
    static_cast<QWidget *>(widget)->setMinimumHeight(height);
}

void qt_widget_set_maximum_width(void *widget, int width) {
    static_cast<QWidget *>(widget)->setMaximumWidth(width);
}

void qt_widget_set_maximum_height(void *widget, int height) {
    static_cast<QWidget *>(widget)->setMaximumHeight(height);
}

int qt_widget_get_width(void *widget) {
    return static_cast<QWidget *>(widget)->width();
}

int qt_widget_get_height(void *widget) {
    return static_cast<QWidget *>(widget)->height();
}

int qt_widget_get_x(void *widget) {
    return static_cast<QWidget *>(widget)->x();
}

int qt_widget_get_y(void *widget) {
    return static_cast<QWidget *>(widget)->y();
}

void qt_widget_move(void *widget, int x, int y) {
    static_cast<QWidget *>(widget)->move(x, y);
}

void qt_widget_set_font(void *widget, const char *family, int point_size, int weight, int is_italic) {
    QFont font(QString::fromUtf8(family), point_size, weight, is_italic != 0);
    static_cast<QWidget *>(widget)->setFont(font);
}

void qt_widget_set_focus(void *widget) {
    static_cast<QWidget *>(widget)->setFocus();
}

int qt_widget_has_focus(void *widget) {
    return static_cast<QWidget *>(widget)->hasFocus() ? 1 : 0;
}

void qt_widget_set_cursor(void *widget, int cursor_shape) {
    static_cast<QWidget *>(widget)->setCursor(QCursor(static_cast<Qt::CursorShape>(cursor_shape)));
}

void qt_widget_update(void *widget) {
    static_cast<QWidget *>(widget)->update();
}

void qt_widget_raise(void *widget) {
    static_cast<QWidget *>(widget)->raise();
}

void qt_widget_lower(void *widget) {
    static_cast<QWidget *>(widget)->lower();
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

void qt_widget_set_size_policy(void *widget, int horizontal, int vertical) {
    static_cast<QWidget *>(widget)->setSizePolicy(
        static_cast<QSizePolicy::Policy>(horizontal),
        static_cast<QSizePolicy::Policy>(vertical)
    );
}

void qt_widget_set_context_menu_policy(void *widget, int policy) {
    static_cast<QWidget *>(widget)->setContextMenuPolicy(
        static_cast<Qt::ContextMenuPolicy>(policy)
    );
}

void qt_widget_add_action(void *widget, void *action) {
    static_cast<QWidget *>(widget)->addAction(static_cast<QAction *>(action));
}

/* ── QLabel ─────────────────────────────────────────────────────────── */

void *qt_label_create(void *parent, const char *text) {
    return static_cast<void *>(new QLabel(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

void qt_label_set_text(void *label, const char *text) {
    static_cast<QLabel *>(label)->setText(QString::fromUtf8(text));
}

char *qt_label_get_text(void *label) {
    return qstring_to_heap_utf8(static_cast<QLabel *>(label)->text());
}

void qt_label_set_alignment(void *label, int alignment) {
    static_cast<QLabel *>(label)->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void qt_label_set_word_wrap(void *label, int is_word_wrap) {
    static_cast<QLabel *>(label)->setWordWrap(is_word_wrap != 0);
}

/* ── QPushButton ────────────────────────────────────────────────────── */

void *qt_push_button_create(void *parent, const char *text) {
    return static_cast<void *>(new QPushButton(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

void qt_push_button_set_text(void *button, const char *text) {
    static_cast<QPushButton *>(button)->setText(QString::fromUtf8(text));
}

/* ── QRadioButton ───────────────────────────────────────────────────── */

void *qt_radio_button_create(void *parent, const char *text) {
    return static_cast<void *>(new QRadioButton(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

int qt_radio_button_is_checked(void *radio_button) {
    return static_cast<QRadioButton *>(radio_button)->isChecked() ? 1 : 0;
}

void qt_radio_button_set_checked(void *radio_button, int is_checked) {
    static_cast<QRadioButton *>(radio_button)->setChecked(is_checked != 0);
}

/* ── QLineEdit ──────────────────────────────────────────────────────── */

void *qt_line_edit_create(void *parent) {
    return static_cast<void *>(new QLineEdit(static_cast<QWidget *>(parent)));
}

void qt_line_edit_set_text(void *line_edit, const char *text) {
    static_cast<QLineEdit *>(line_edit)->setText(QString::fromUtf8(text));
}

char *qt_line_edit_get_text(void *line_edit) {
    return qstring_to_heap_utf8(static_cast<QLineEdit *>(line_edit)->text());
}

void qt_line_edit_set_placeholder_text(void *line_edit, const char *text) {
    static_cast<QLineEdit *>(line_edit)->setPlaceholderText(QString::fromUtf8(text));
}

void qt_line_edit_set_read_only(void *line_edit, int is_read_only) {
    static_cast<QLineEdit *>(line_edit)->setReadOnly(is_read_only != 0);
}

void qt_line_edit_set_echo_mode(void *line_edit, int mode) {
    static_cast<QLineEdit *>(line_edit)->setEchoMode(static_cast<QLineEdit::EchoMode>(mode));
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

char *qt_text_edit_get_plain_text(void *text_edit) {
    return qstring_to_heap_utf8(static_cast<QTextEdit *>(text_edit)->toPlainText());
}

void qt_text_edit_set_read_only(void *text_edit, int is_read_only) {
    static_cast<QTextEdit *>(text_edit)->setReadOnly(is_read_only != 0);
}

void qt_text_edit_clear(void *text_edit) {
    static_cast<QTextEdit *>(text_edit)->clear();
}

/* ── QPlainTextEdit ─────────────────────────────────────────────────── */

void *qt_plain_text_edit_create(void *parent) {
    return static_cast<void *>(new QPlainTextEdit(static_cast<QWidget *>(parent)));
}

void qt_plain_text_edit_set_plain_text(void *text_edit, const char *text) {
    static_cast<QPlainTextEdit *>(text_edit)->setPlainText(QString::fromUtf8(text));
}

char *qt_plain_text_edit_get_plain_text(void *text_edit) {
    return qstring_to_heap_utf8(static_cast<QPlainTextEdit *>(text_edit)->toPlainText());
}

void qt_plain_text_edit_set_read_only(void *text_edit, int is_read_only) {
    static_cast<QPlainTextEdit *>(text_edit)->setReadOnly(is_read_only != 0);
}

void qt_plain_text_edit_clear(void *text_edit) {
    static_cast<QPlainTextEdit *>(text_edit)->clear();
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

void qt_check_box_set_text(void *check_box, const char *text) {
    static_cast<QCheckBox *>(check_box)->setText(QString::fromUtf8(text));
}

/* ── QComboBox ──────────────────────────────────────────────────────── */

void *qt_combo_box_create(void *parent) {
    return static_cast<void *>(new QComboBox(static_cast<QWidget *>(parent)));
}

void qt_combo_box_add_item(void *combo_box, const char *text) {
    static_cast<QComboBox *>(combo_box)->addItem(QString::fromUtf8(text));
}

void qt_combo_box_remove_item(void *combo_box, int index) {
    static_cast<QComboBox *>(combo_box)->removeItem(index);
}

int qt_combo_box_get_current_index(void *combo_box) {
    return static_cast<QComboBox *>(combo_box)->currentIndex();
}

void qt_combo_box_set_current_index(void *combo_box, int index) {
    static_cast<QComboBox *>(combo_box)->setCurrentIndex(index);
}

char *qt_combo_box_get_current_text(void *combo_box) {
    return qstring_to_heap_utf8(static_cast<QComboBox *>(combo_box)->currentText());
}

int qt_combo_box_get_count(void *combo_box) {
    return static_cast<QComboBox *>(combo_box)->count();
}

void qt_combo_box_clear(void *combo_box) {
    static_cast<QComboBox *>(combo_box)->clear();
}

void qt_combo_box_set_editable(void *combo_box, int is_editable) {
    static_cast<QComboBox *>(combo_box)->setEditable(is_editable != 0);
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

void qt_progress_bar_set_format(void *progress_bar, const char *format) {
    static_cast<QProgressBar *>(progress_bar)->setFormat(QString::fromUtf8(format));
}

void qt_progress_bar_set_text_visible(void *progress_bar, int is_visible) {
    static_cast<QProgressBar *>(progress_bar)->setTextVisible(is_visible != 0);
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

void qt_spin_box_set_prefix(void *spin_box, const char *prefix) {
    static_cast<QSpinBox *>(spin_box)->setPrefix(QString::fromUtf8(prefix));
}

void qt_spin_box_set_suffix(void *spin_box, const char *suffix) {
    static_cast<QSpinBox *>(spin_box)->setSuffix(QString::fromUtf8(suffix));
}

void qt_spin_box_set_single_step(void *spin_box, int step) {
    static_cast<QSpinBox *>(spin_box)->setSingleStep(step);
}

/* ── QDoubleSpinBox ─────────────────────────────────────────────────── */

void *qt_double_spin_box_create(void *parent) {
    return static_cast<void *>(new QDoubleSpinBox(static_cast<QWidget *>(parent)));
}

void qt_double_spin_box_set_range(void *spin_box, double min_val, double max_val) {
    static_cast<QDoubleSpinBox *>(spin_box)->setRange(min_val, max_val);
}

double qt_double_spin_box_get_value(void *spin_box) {
    return static_cast<QDoubleSpinBox *>(spin_box)->value();
}

void qt_double_spin_box_set_value(void *spin_box, double value) {
    static_cast<QDoubleSpinBox *>(spin_box)->setValue(value);
}

void qt_double_spin_box_set_decimals(void *spin_box, int decimals) {
    static_cast<QDoubleSpinBox *>(spin_box)->setDecimals(decimals);
}

void qt_double_spin_box_set_single_step(void *spin_box, double step) {
    static_cast<QDoubleSpinBox *>(spin_box)->setSingleStep(step);
}

void qt_double_spin_box_set_prefix(void *spin_box, const char *prefix) {
    static_cast<QDoubleSpinBox *>(spin_box)->setPrefix(QString::fromUtf8(prefix));
}

void qt_double_spin_box_set_suffix(void *spin_box, const char *suffix) {
    static_cast<QDoubleSpinBox *>(spin_box)->setSuffix(QString::fromUtf8(suffix));
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

void *qt_form_layout_create(void *parent) {
    return static_cast<void *>(new QFormLayout(static_cast<QWidget *>(parent)));
}

void qt_layout_add_widget(void *layout, void *widget) {
    static_cast<QLayout *>(layout)->addWidget(static_cast<QWidget *>(widget));
}

void qt_grid_layout_add_widget(void *layout, void *widget, int row, int col, int row_span, int col_span) {
    static_cast<QGridLayout *>(layout)->addWidget(
        static_cast<QWidget *>(widget), row, col, row_span, col_span
    );
}

void qt_form_layout_add_row(void *layout, const char *label, void *widget) {
    static_cast<QFormLayout *>(layout)->addRow(
        QString::fromUtf8(label), static_cast<QWidget *>(widget)
    );
}

void qt_box_layout_add_layout(void *layout, void *child_layout) {
    static_cast<QBoxLayout *>(layout)->addLayout(static_cast<QLayout *>(child_layout));
}

void qt_box_layout_add_stretch(void *layout, int stretch) {
    static_cast<QBoxLayout *>(layout)->addStretch(stretch);
}

void qt_box_layout_add_spacing(void *layout, int size) {
    static_cast<QBoxLayout *>(layout)->addSpacing(size);
}

void qt_box_layout_add_widget_with_stretch(void *layout, void *widget, int stretch, int alignment) {
    static_cast<QBoxLayout *>(layout)->addWidget(
        static_cast<QWidget *>(widget), stretch, static_cast<Qt::Alignment>(alignment)
    );
}

void qt_layout_set_spacing(void *layout, int spacing) {
    static_cast<QLayout *>(layout)->setSpacing(spacing);
}

void qt_layout_set_contents_margins(void *layout, int left, int top, int right, int bottom) {
    static_cast<QLayout *>(layout)->setContentsMargins(left, top, right, bottom);
}

void qt_layout_remove_widget(void *layout, void *widget) {
    static_cast<QLayout *>(layout)->removeWidget(static_cast<QWidget *>(widget));
}

void qt_grid_layout_set_row_stretch(void *layout, int row, int stretch) {
    static_cast<QGridLayout *>(layout)->setRowStretch(row, stretch);
}

void qt_grid_layout_set_column_stretch(void *layout, int column, int stretch) {
    static_cast<QGridLayout *>(layout)->setColumnStretch(column, stretch);
}

/* ── QListWidget ────────────────────────────────────────────────────── */

void *qt_list_widget_create(void *parent) {
    return static_cast<void *>(new QListWidget(static_cast<QWidget *>(parent)));
}

void qt_list_widget_add_item(void *list, const char *text) {
    static_cast<QListWidget *>(list)->addItem(QString::fromUtf8(text));
}

void qt_list_widget_remove_item(void *list, int row) {
    auto *lw = static_cast<QListWidget *>(list);
    auto *item = lw->takeItem(row);
    delete item;
}

int qt_list_widget_get_current_row(void *list) {
    return static_cast<QListWidget *>(list)->currentRow();
}

void qt_list_widget_set_current_row(void *list, int row) {
    static_cast<QListWidget *>(list)->setCurrentRow(row);
}

int qt_list_widget_get_count(void *list) {
    return static_cast<QListWidget *>(list)->count();
}

void qt_list_widget_clear(void *list) {
    static_cast<QListWidget *>(list)->clear();
}

char *qt_list_widget_get_item_text(void *list, int row) {
    auto *lw = static_cast<QListWidget *>(list);
    auto *item = lw->item(row);
    if (!item) return nullptr;
    return qstring_to_heap_utf8(item->text());
}

/* ── QTreeWidget ────────────────────────────────────────────────────── */

void *qt_tree_widget_create(void *parent) {
    return static_cast<void *>(new QTreeWidget(static_cast<QWidget *>(parent)));
}

void qt_tree_widget_set_column_count(void *tree, int count) {
    static_cast<QTreeWidget *>(tree)->setColumnCount(count);
}

void qt_tree_widget_set_header_labels(void *tree, const char **labels, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(labels[i]));
    }
    static_cast<QTreeWidget *>(tree)->setHeaderLabels(sl);
}

void qt_tree_widget_add_top_level_item(void *tree, void *item) {
    static_cast<QTreeWidget *>(tree)->addTopLevelItem(
        static_cast<QTreeWidgetItem *>(item)
    );
}

void qt_tree_widget_clear(void *tree) {
    static_cast<QTreeWidget *>(tree)->clear();
}

int qt_tree_widget_get_top_level_item_count(void *tree) {
    return static_cast<QTreeWidget *>(tree)->topLevelItemCount();
}

void *qt_tree_widget_get_current_item(void *tree) {
    return static_cast<void *>(static_cast<QTreeWidget *>(tree)->currentItem());
}

/* QTreeWidgetItem */

void *qt_tree_widget_item_create(const char **texts, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(texts[i]));
    }
    return static_cast<void *>(new QTreeWidgetItem(sl));
}

void qt_tree_widget_item_add_child(void *item, void *child) {
    static_cast<QTreeWidgetItem *>(item)->addChild(
        static_cast<QTreeWidgetItem *>(child)
    );
}

void qt_tree_widget_item_set_text(void *item, int column, const char *text) {
    static_cast<QTreeWidgetItem *>(item)->setText(column, QString::fromUtf8(text));
}

char *qt_tree_widget_item_get_text(void *item, int column) {
    return qstring_to_heap_utf8(static_cast<QTreeWidgetItem *>(item)->text(column));
}

/* ── QTableWidget ───────────────────────────────────────────────────── */

void *qt_table_widget_create(int rows, int cols, void *parent) {
    return static_cast<void *>(new QTableWidget(rows, cols, static_cast<QWidget *>(parent)));
}

void qt_table_widget_set_row_count(void *table, int count) {
    static_cast<QTableWidget *>(table)->setRowCount(count);
}

void qt_table_widget_set_column_count(void *table, int count) {
    static_cast<QTableWidget *>(table)->setColumnCount(count);
}

void qt_table_widget_set_horizontal_header_labels(void *table, const char **labels, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(labels[i]));
    }
    static_cast<QTableWidget *>(table)->setHorizontalHeaderLabels(sl);
}

void qt_table_widget_set_vertical_header_labels(void *table, const char **labels, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(labels[i]));
    }
    static_cast<QTableWidget *>(table)->setVerticalHeaderLabels(sl);
}

void qt_table_widget_set_item(void *table, int row, int col, const char *text) {
    static_cast<QTableWidget *>(table)->setItem(
        row, col, new QTableWidgetItem(QString::fromUtf8(text))
    );
}

char *qt_table_widget_get_item_text(void *table, int row, int col) {
    auto *tw = static_cast<QTableWidget *>(table);
    auto *item = tw->item(row, col);
    if (!item) return nullptr;
    return qstring_to_heap_utf8(item->text());
}

int qt_table_widget_get_current_row(void *table) {
    return static_cast<QTableWidget *>(table)->currentRow();
}

int qt_table_widget_get_current_column(void *table) {
    return static_cast<QTableWidget *>(table)->currentColumn();
}

int qt_table_widget_get_row_count(void *table) {
    return static_cast<QTableWidget *>(table)->rowCount();
}

int qt_table_widget_get_column_count(void *table) {
    return static_cast<QTableWidget *>(table)->columnCount();
}

void qt_table_widget_clear(void *table) {
    static_cast<QTableWidget *>(table)->clear();
}

void qt_table_widget_clear_contents(void *table) {
    static_cast<QTableWidget *>(table)->clearContents();
}

/* ── QScrollArea ────────────────────────────────────────────────────── */

void *qt_scroll_area_create(void *parent) {
    return static_cast<void *>(new QScrollArea(static_cast<QWidget *>(parent)));
}

void qt_scroll_area_set_widget(void *scroll_area, void *widget) {
    static_cast<QScrollArea *>(scroll_area)->setWidget(static_cast<QWidget *>(widget));
}

void qt_scroll_area_set_widget_resizable(void *scroll_area, int is_resizable) {
    static_cast<QScrollArea *>(scroll_area)->setWidgetResizable(is_resizable != 0);
}

/* ── QSplitter ──────────────────────────────────────────────────────── */

void *qt_splitter_create(int orientation, void *parent) {
    return static_cast<void *>(new QSplitter(
        static_cast<Qt::Orientation>(orientation),
        static_cast<QWidget *>(parent)
    ));
}

void qt_splitter_add_widget(void *splitter, void *widget) {
    static_cast<QSplitter *>(splitter)->addWidget(static_cast<QWidget *>(widget));
}

/* ── QStackedWidget ─────────────────────────────────────────────────── */

void *qt_stacked_widget_create(void *parent) {
    return static_cast<void *>(new QStackedWidget(static_cast<QWidget *>(parent)));
}

int qt_stacked_widget_add_widget(void *stacked, void *widget) {
    return static_cast<QStackedWidget *>(stacked)->addWidget(static_cast<QWidget *>(widget));
}

void qt_stacked_widget_set_current_index(void *stacked, int index) {
    static_cast<QStackedWidget *>(stacked)->setCurrentIndex(index);
}

int qt_stacked_widget_get_current_index(void *stacked) {
    return static_cast<QStackedWidget *>(stacked)->currentIndex();
}

int qt_stacked_widget_get_count(void *stacked) {
    return static_cast<QStackedWidget *>(stacked)->count();
}

/* ── QFrame ─────────────────────────────────────────────────────────── */

void *qt_frame_create(void *parent) {
    return static_cast<void *>(new QFrame(static_cast<QWidget *>(parent)));
}

void qt_frame_set_frame_shape(void *frame, int shape) {
    static_cast<QFrame *>(frame)->setFrameShape(static_cast<QFrame::Shape>(shape));
}

void qt_frame_set_frame_shadow(void *frame, int shadow) {
    static_cast<QFrame *>(frame)->setFrameShadow(static_cast<QFrame::Shadow>(shadow));
}

void qt_frame_set_line_width(void *frame, int width) {
    static_cast<QFrame *>(frame)->setLineWidth(width);
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

void *qt_menu_add_menu(void *menu, const char *title) {
    return static_cast<void *>(static_cast<QMenu *>(menu)->addMenu(QString::fromUtf8(title)));
}

/* ── QAction ────────────────────────────────────────────────────────── */

void qt_action_set_enabled(void *action, int is_enabled) {
    static_cast<QAction *>(action)->setEnabled(is_enabled != 0);
}

void qt_action_set_shortcut(void *action, const char *shortcut) {
    static_cast<QAction *>(action)->setShortcut(QKeySequence(QString::fromUtf8(shortcut)));
}

void qt_action_set_checkable(void *action, int is_checkable) {
    static_cast<QAction *>(action)->setCheckable(is_checkable != 0);
}

int qt_action_is_checked(void *action) {
    return static_cast<QAction *>(action)->isChecked() ? 1 : 0;
}

void qt_action_set_checked(void *action, int is_checked) {
    static_cast<QAction *>(action)->setChecked(is_checked != 0);
}

void qt_action_set_tooltip(void *action, const char *tooltip) {
    static_cast<QAction *>(action)->setToolTip(QString::fromUtf8(tooltip));
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

void qt_tab_widget_set_tab_text(void *tab_widget, int index, const char *text) {
    static_cast<QTabWidget *>(tab_widget)->setTabText(index, QString::fromUtf8(text));
}

/* ── QGroupBox ──────────────────────────────────────────────────────── */

void *qt_group_box_create(void *parent, const char *title) {
    return static_cast<void *>(new QGroupBox(QString::fromUtf8(title), static_cast<QWidget *>(parent)));
}

void qt_group_box_set_title(void *group_box, const char *title) {
    static_cast<QGroupBox *>(group_box)->setTitle(QString::fromUtf8(title));
}

void qt_group_box_set_checkable(void *group_box, int is_checkable) {
    static_cast<QGroupBox *>(group_box)->setCheckable(is_checkable != 0);
}

int qt_group_box_is_checked(void *group_box) {
    return static_cast<QGroupBox *>(group_box)->isChecked() ? 1 : 0;
}

void qt_group_box_set_checked(void *group_box, int is_checked) {
    static_cast<QGroupBox *>(group_box)->setChecked(is_checked != 0);
}

/* ── QDialog ────────────────────────────────────────────────────────── */

void *qt_dialog_create(void *parent) {
    return static_cast<void *>(new QDialog(static_cast<QWidget *>(parent)));
}

int qt_dialog_exec(void *dialog) {
    return static_cast<QDialog *>(dialog)->exec() == QDialog::Accepted ? 1 : 0;
}

void qt_dialog_accept(void *dialog) {
    static_cast<QDialog *>(dialog)->accept();
}

void qt_dialog_reject(void *dialog) {
    static_cast<QDialog *>(dialog)->reject();
}

/* ── QDockWidget ────────────────────────────────────────────────────── */

void *qt_dock_widget_create(void *parent, const char *title) {
    return static_cast<void *>(new QDockWidget(QString::fromUtf8(title), static_cast<QWidget *>(parent)));
}

void qt_dock_widget_set_widget(void *dock, void *widget) {
    static_cast<QDockWidget *>(dock)->setWidget(static_cast<QWidget *>(widget));
}

/* ── QStatusBar ─────────────────────────────────────────────────────── */

void qt_statusbar_show_message(void *statusbar, const char *message, int timeout_ms) {
    static_cast<QStatusBar *>(statusbar)->showMessage(QString::fromUtf8(message), timeout_ms);
}

void qt_statusbar_clear_message(void *statusbar) {
    static_cast<QStatusBar *>(statusbar)->clearMessage();
}

void qt_statusbar_add_permanent_widget(void *statusbar, void *widget) {
    static_cast<QStatusBar *>(statusbar)->addPermanentWidget(static_cast<QWidget *>(widget));
}

/* ── QTimer ─────────────────────────────────────────────────────────── */

void *qt_timer_create(void *parent) {
    return static_cast<void *>(new QTimer(static_cast<QObject *>(parent)));
}

void qt_timer_destroy(void *timer) {
    delete static_cast<QTimer *>(timer);
}

void qt_timer_start(void *timer, int interval_ms) {
    static_cast<QTimer *>(timer)->start(interval_ms);
}

void qt_timer_stop(void *timer) {
    static_cast<QTimer *>(timer)->stop();
}

void qt_timer_set_single_shot(void *timer, int is_single_shot) {
    static_cast<QTimer *>(timer)->setSingleShot(is_single_shot != 0);
}

int qt_timer_is_active(void *timer) {
    return static_cast<QTimer *>(timer)->isActive() ? 1 : 0;
}

/* ── Clipboard ──────────────────────────────────────────────────────── */

char *qt_clipboard_get_text(void) {
    return qstring_to_heap_utf8(QApplication::clipboard()->text());
}

void qt_clipboard_set_text(const char *text) {
    QApplication::clipboard()->setText(QString::fromUtf8(text));
}

/* ── String management ──────────────────────────────────────────────── */

void qt_free_string(char *str) {
    free(str);
}

void qt_dialog_free_string(char *str) {
    free(str);
}

/* ── QFileDialog ────────────────────────────────────────────────────── */

char *qt_file_dialog_get_open_file_name(void *parent, const char *caption, const char *dir, const char *filter) {
    QString result = QFileDialog::getOpenFileName(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(caption),
        QString::fromUtf8(dir),
        QString::fromUtf8(filter)
    );
    return qstring_to_heap_utf8(result);
}

char *qt_file_dialog_get_save_file_name(void *parent, const char *caption, const char *dir, const char *filter) {
    QString result = QFileDialog::getSaveFileName(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(caption),
        QString::fromUtf8(dir),
        QString::fromUtf8(filter)
    );
    return qstring_to_heap_utf8(result);
}

char *qt_file_dialog_get_existing_directory(void *parent, const char *caption, const char *dir) {
    QString result = QFileDialog::getExistingDirectory(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(caption),
        QString::fromUtf8(dir)
    );
    return qstring_to_heap_utf8(result);
}

/* ── QMessageBox ────────────────────────────────────────────────────── */

int qt_message_box_show_information(void *parent, const char *title, const char *text) {
    return static_cast<int>(QMessageBox::information(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text)
    ));
}

int qt_message_box_show_warning(void *parent, const char *title, const char *text) {
    return static_cast<int>(QMessageBox::warning(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text)
    ));
}

int qt_message_box_show_critical(void *parent, const char *title, const char *text) {
    return static_cast<int>(QMessageBox::critical(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text)
    ));
}

int qt_message_box_show_question(void *parent, const char *title, const char *text) {
    return static_cast<int>(QMessageBox::question(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text)
    ));
}

/* ── QColorDialog ───────────────────────────────────────────────────── */

int qt_colour_dialog_get_colour(void *parent,
                                int initial_r, int initial_g, int initial_b, int initial_a,
                                int *result_r, int *result_g, int *result_b, int *result_a) {
    QColor initial(initial_r, initial_g, initial_b, initial_a);
    QColor colour = QColorDialog::getColor(initial, static_cast<QWidget *>(parent),
                                           QString(), QColorDialog::ShowAlphaChannel);
    if (!colour.isValid()) return 0;
    *result_r = colour.red();
    *result_g = colour.green();
    *result_b = colour.blue();
    *result_a = colour.alpha();
    return 1;
}

/* ── QFontDialog ────────────────────────────────────────────────────── */

int qt_font_dialog_get_font(void *parent, char *family_buf, int family_buf_size,
                            int *point_size, int *weight, int *is_italic) {
    bool ok = false;
    QFont font = QFontDialog::getFont(&ok, static_cast<QWidget *>(parent));
    if (!ok) return 0;
    QByteArray family_utf8 = font.family().toUtf8();
    int copy_len = qMin(family_utf8.size(), family_buf_size - 1);
    memcpy(family_buf, family_utf8.constData(), copy_len);
    family_buf[copy_len] = '\0';
    *point_size = font.pointSize();
    *weight = font.weight();
    *is_italic = font.italic() ? 1 : 0;
    return 1;
}

/* ── QInputDialog ───────────────────────────────────────────────────── */

char *qt_input_dialog_get_text(void *parent, const char *title, const char *label,
                               const char *default_text, int *is_ok) {
    bool ok = false;
    QString result = QInputDialog::getText(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(label),
        QLineEdit::Normal,
        QString::fromUtf8(default_text),
        &ok
    );
    *is_ok = ok ? 1 : 0;
    return ok ? qstring_to_heap_utf8(result) : nullptr;
}

int qt_input_dialog_get_int(void *parent, const char *title, const char *label,
                            int value, int min_val, int max_val, int step, int *is_ok) {
    bool ok = false;
    int result = QInputDialog::getInt(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(label),
        value, min_val, max_val, step,
        &ok
    );
    *is_ok = ok ? 1 : 0;
    return result;
}

double qt_input_dialog_get_double(void *parent, const char *title, const char *label,
                                  double value, double min_val, double max_val, int decimals, int *is_ok) {
    bool ok = false;
    double result = QInputDialog::getDouble(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(label),
        value, min_val, max_val, decimals,
        &ok
    );
    *is_ok = ok ? 1 : 0;
    return result;
}

char *qt_input_dialog_get_item(void *parent, const char *title, const char *label,
                               const char **items, int items_count, int current,
                               int is_editable, int *is_ok) {
    QStringList item_list;
    for (int i = 0; i < items_count; ++i) {
        item_list.append(QString::fromUtf8(items[i]));
    }
    bool ok = false;
    QString result = QInputDialog::getItem(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(label),
        item_list,
        current,
        is_editable != 0,
        &ok
    );
    *is_ok = ok ? 1 : 0;
    return ok ? qstring_to_heap_utf8(result) : nullptr;
}

/* ── Signal connections ──────────────────────────────────────────────── */

void qt_push_button_connect_clicked(void *button, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QPushButton *>(button), &QPushButton::clicked, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_push_button_connect_pressed(void *button, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QPushButton *>(button), &QPushButton::pressed, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_push_button_connect_released(void *button, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QPushButton *>(button), &QPushButton::released, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_check_box_connect_toggled(void *check_box, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QCheckBox *>(check_box), &QCheckBox::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
}

void qt_radio_button_connect_toggled(void *radio_button, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QRadioButton *>(radio_button), &QRadioButton::toggled, [callback, user_data](bool checked) {
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

void qt_double_spin_box_connect_value_changed(void *spin_box, qt_double_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QDoubleSpinBox *>(spin_box), &QDoubleSpinBox::valueChanged, [callback, user_data](double value) {
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

void qt_line_edit_connect_editing_finished(void *line_edit, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QLineEdit *>(line_edit), &QLineEdit::editingFinished, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::textChanged, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_plain_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::textChanged, [callback, user_data]() {
        callback(user_data);
    });
}

void qt_combo_box_connect_index_changed(void *combo_box, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::currentIndexChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
}

void qt_list_widget_connect_current_row_changed(void *list, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QListWidget *>(list), &QListWidget::currentRowChanged, [callback, user_data](int row) {
        callback(row, user_data);
    });
}

void qt_tree_widget_connect_item_clicked(void *tree, qt_item_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemClicked, [callback, user_data](QTreeWidgetItem *item, int column) {
        callback(static_cast<void *>(item), column, user_data);
    });
}

void qt_table_widget_connect_cell_clicked(void *table, qt_cell_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::cellClicked, [callback, user_data](int row, int col) {
        callback(row, col, user_data);
    });
}

void qt_widget_connect_custom_context_menu_requested(void *widget, qt_point_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QWidget *>(widget), &QWidget::customContextMenuRequested, [callback, user_data](const QPoint &pos) {
        callback(pos.x(), pos.y(), user_data);
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

void qt_group_box_connect_toggled(void *group_box, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QGroupBox *>(group_box), &QGroupBox::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
}

void qt_stacked_widget_connect_current_changed(void *stacked, qt_int_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QStackedWidget *>(stacked), &QStackedWidget::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
}

void qt_timer_connect_timeout(void *timer, qt_callback_t callback, void *user_data) {
    QObject::connect(static_cast<QTimer *>(timer), &QTimer::timeout, [callback, user_data]() {
        callback(user_data);
    });
}

} /* extern "C" */
