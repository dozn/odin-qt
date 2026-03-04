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
#include <QHeaderView>
#include <QScrollBar>
#include <QPixmap>
#include <QIcon>
#include <QShortcut>
#include <QDialogButtonBox>
#include <QToolButton>
#include <QButtonGroup>
#include <QCalendarWidget>
#include <QDateEdit>
#include <QTimeEdit>
#include <QDateTimeEdit>
#include <QDial>
#include <QProgressDialog>
#include <QTextBrowser>
#include <QSystemTrayIcon>
#include <QUrl>
#include <QAbstractButton>
#include <cstdlib>
#include <cstring>
#include <unordered_map>

Q_IMPORT_PLUGIN(QWindowsIntegrationPlugin)
Q_IMPORT_PLUGIN(QModernWindowsStylePlugin)

static char *qstring_to_heap_utf8(const QString &s) {
    if (s.isEmpty()) return nullptr;
    QByteArray utf8 = s.toUtf8();
    char *result = static_cast<char *>(malloc(utf8.size() + 1));
    memcpy(result, utf8.constData(), utf8.size() + 1);
    return result;
}

/* ── Connection tracking for signal disconnection ──────────────────── */

static std::unordered_map<int, QMetaObject::Connection> g_connections;
static int g_next_connection_id = 1;

static int store_connection(QMetaObject::Connection conn) {
    int id = g_next_connection_id++;
    g_connections[id] = std::move(conn);
    return id;
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

int qt_widget_is_visible(void *widget) {
    return static_cast<QWidget *>(widget)->isVisible() ? 1 : 0;
}

char *qt_widget_get_window_title(void *widget) {
    return qstring_to_heap_utf8(static_cast<QWidget *>(widget)->windowTitle());
}

char *qt_widget_get_tool_tip(void *widget) {
    return qstring_to_heap_utf8(static_cast<QWidget *>(widget)->toolTip());
}

char *qt_widget_get_style_sheet(void *widget) {
    return qstring_to_heap_utf8(static_cast<QWidget *>(widget)->styleSheet());
}

void qt_widget_set_fixed_width(void *widget, int width) {
    static_cast<QWidget *>(widget)->setFixedWidth(width);
}

void qt_widget_set_fixed_height(void *widget, int height) {
    static_cast<QWidget *>(widget)->setFixedHeight(height);
}

void qt_widget_set_object_name(void *widget, const char *name) {
    static_cast<QWidget *>(widget)->setObjectName(QString::fromUtf8(name));
}

char *qt_widget_get_object_name(void *widget) {
    return qstring_to_heap_utf8(static_cast<QWidget *>(widget)->objectName());
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

char *qt_push_button_get_text(void *button) {
    return qstring_to_heap_utf8(static_cast<QPushButton *>(button)->text());
}

void qt_push_button_set_flat(void *button, int is_flat) {
    static_cast<QPushButton *>(button)->setFlat(is_flat != 0);
}

int qt_push_button_is_flat(void *button) {
    return static_cast<QPushButton *>(button)->isFlat() ? 1 : 0;
}

void qt_push_button_set_checkable(void *button, int is_checkable) {
    static_cast<QPushButton *>(button)->setCheckable(is_checkable != 0);
}

int qt_push_button_is_checked(void *button) {
    return static_cast<QPushButton *>(button)->isChecked() ? 1 : 0;
}

void qt_push_button_set_checked(void *button, int is_checked) {
    static_cast<QPushButton *>(button)->setChecked(is_checked != 0);
}

/* ── QRadioButton ───────────────────────────────────────────────────── */

void *qt_radio_button_create(void *parent, const char *text) {
    return static_cast<void *>(new QRadioButton(QString::fromUtf8(text), static_cast<QWidget *>(parent)));
}

int qt_radio_button_is_checked(void *radio_button) {
    return static_cast<QRadioButton *>(radio_button)->isChecked() ? 1 : 0;
}

void qt_radio_button_set_text(void *radio_button, const char *text) {
    static_cast<QRadioButton *>(radio_button)->setText(QString::fromUtf8(text));
}

char *qt_radio_button_get_text(void *radio_button) {
    return qstring_to_heap_utf8(static_cast<QRadioButton *>(radio_button)->text());
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

int qt_line_edit_is_read_only(void *line_edit) {
    return static_cast<QLineEdit *>(line_edit)->isReadOnly() ? 1 : 0;
}

char *qt_line_edit_get_placeholder_text(void *line_edit) {
    return qstring_to_heap_utf8(static_cast<QLineEdit *>(line_edit)->placeholderText());
}

void qt_line_edit_select_all(void *line_edit) {
    static_cast<QLineEdit *>(line_edit)->selectAll();
}

void qt_line_edit_set_max_length(void *line_edit, int length) {
    static_cast<QLineEdit *>(line_edit)->setMaxLength(length);
}

int qt_line_edit_get_max_length(void *line_edit) {
    return static_cast<QLineEdit *>(line_edit)->maxLength();
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

int qt_text_edit_is_read_only(void *text_edit) {
    return static_cast<QTextEdit *>(text_edit)->isReadOnly() ? 1 : 0;
}

void qt_text_edit_clear(void *text_edit) {
    static_cast<QTextEdit *>(text_edit)->clear();
}

void qt_text_edit_set_html(void *text_edit, const char *html) {
    static_cast<QTextEdit *>(text_edit)->setHtml(QString::fromUtf8(html));
}

char *qt_text_edit_get_html(void *text_edit) {
    return qstring_to_heap_utf8(static_cast<QTextEdit *>(text_edit)->toHtml());
}

void qt_text_edit_append(void *text_edit, const char *text) {
    static_cast<QTextEdit *>(text_edit)->append(QString::fromUtf8(text));
}

void qt_text_edit_insert_plain_text(void *text_edit, const char *text) {
    static_cast<QTextEdit *>(text_edit)->insertPlainText(QString::fromUtf8(text));
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

int qt_plain_text_edit_is_read_only(void *text_edit) {
    return static_cast<QPlainTextEdit *>(text_edit)->isReadOnly() ? 1 : 0;
}

void qt_plain_text_edit_clear(void *text_edit) {
    static_cast<QPlainTextEdit *>(text_edit)->clear();
}

void qt_plain_text_edit_append_plain_text(void *text_edit, const char *text) {
    static_cast<QPlainTextEdit *>(text_edit)->appendPlainText(QString::fromUtf8(text));
}

void qt_plain_text_edit_insert_plain_text(void *text_edit, const char *text) {
    static_cast<QPlainTextEdit *>(text_edit)->insertPlainText(QString::fromUtf8(text));
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

char *qt_check_box_get_text(void *check_box) {
    return qstring_to_heap_utf8(static_cast<QCheckBox *>(check_box)->text());
}

void qt_check_box_set_tristate(void *check_box, int is_tristate) {
    static_cast<QCheckBox *>(check_box)->setTristate(is_tristate != 0);
}

int qt_check_box_is_tristate(void *check_box) {
    return static_cast<QCheckBox *>(check_box)->isTristate() ? 1 : 0;
}

int qt_check_box_get_check_state(void *check_box) {
    return static_cast<int>(static_cast<QCheckBox *>(check_box)->checkState());
}

void qt_check_box_set_check_state(void *check_box, int state) {
    static_cast<QCheckBox *>(check_box)->setCheckState(static_cast<Qt::CheckState>(state));
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

void qt_combo_box_insert_item(void *combo_box, int index, const char *text) {
    static_cast<QComboBox *>(combo_box)->insertItem(index, QString::fromUtf8(text));
}

void qt_combo_box_set_item_text(void *combo_box, int index, const char *text) {
    static_cast<QComboBox *>(combo_box)->setItemText(index, QString::fromUtf8(text));
}

char *qt_combo_box_get_item_text(void *combo_box, int index) {
    return qstring_to_heap_utf8(static_cast<QComboBox *>(combo_box)->itemText(index));
}

int qt_combo_box_find_text(void *combo_box, const char *text) {
    return static_cast<QComboBox *>(combo_box)->findText(QString::fromUtf8(text));
}

void qt_combo_box_set_current_text(void *combo_box, const char *text) {
    static_cast<QComboBox *>(combo_box)->setCurrentText(QString::fromUtf8(text));
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

void qt_slider_set_tick_position(void *slider, int position) {
    static_cast<QSlider *>(slider)->setTickPosition(static_cast<QSlider::TickPosition>(position));
}

void qt_slider_set_tick_interval(void *slider, int interval) {
    static_cast<QSlider *>(slider)->setTickInterval(interval);
}

void qt_slider_set_single_step(void *slider, int step) {
    static_cast<QSlider *>(slider)->setSingleStep(step);
}

void qt_slider_set_page_step(void *slider, int step) {
    static_cast<QSlider *>(slider)->setPageStep(step);
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

void qt_progress_bar_reset(void *progress_bar) {
    static_cast<QProgressBar *>(progress_bar)->reset();
}

void qt_progress_bar_set_orientation(void *progress_bar, int orientation) {
    static_cast<QProgressBar *>(progress_bar)->setOrientation(static_cast<Qt::Orientation>(orientation));
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

void qt_spin_box_set_read_only(void *spin_box, int is_read_only) {
    static_cast<QSpinBox *>(spin_box)->setReadOnly(is_read_only != 0);
}

int qt_spin_box_is_read_only(void *spin_box) {
    return static_cast<QSpinBox *>(spin_box)->isReadOnly() ? 1 : 0;
}

void qt_spin_box_set_wrapping(void *spin_box, int is_wrapping) {
    static_cast<QSpinBox *>(spin_box)->setWrapping(is_wrapping != 0);
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

void qt_double_spin_box_set_read_only(void *spin_box, int is_read_only) {
    static_cast<QDoubleSpinBox *>(spin_box)->setReadOnly(is_read_only != 0);
}

int qt_double_spin_box_is_read_only(void *spin_box) {
    return static_cast<QDoubleSpinBox *>(spin_box)->isReadOnly() ? 1 : 0;
}

void qt_double_spin_box_set_wrapping(void *spin_box, int is_wrapping) {
    static_cast<QDoubleSpinBox *>(spin_box)->setWrapping(is_wrapping != 0);
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

void qt_list_widget_insert_item(void *list, int row, const char *text) {
    static_cast<QListWidget *>(list)->insertItem(row, QString::fromUtf8(text));
}

void qt_list_widget_sort_items(void *list, int order) {
    static_cast<QListWidget *>(list)->sortItems(static_cast<Qt::SortOrder>(order));
}

void qt_list_widget_set_selection_mode(void *list, int mode) {
    static_cast<QListWidget *>(list)->setSelectionMode(
        static_cast<QAbstractItemView::SelectionMode>(mode)
    );
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

void qt_tree_widget_remove_top_level_item(void *tree, int index) {
    auto *tw = static_cast<QTreeWidget *>(tree);
    auto *item = tw->takeTopLevelItem(index);
    delete item;
}

void qt_tree_widget_set_current_item(void *tree, void *item) {
    static_cast<QTreeWidget *>(tree)->setCurrentItem(
        static_cast<QTreeWidgetItem *>(item)
    );
}

void qt_tree_widget_expand_all(void *tree) {
    static_cast<QTreeWidget *>(tree)->expandAll();
}

void qt_tree_widget_collapse_all(void *tree) {
    static_cast<QTreeWidget *>(tree)->collapseAll();
}

void qt_tree_widget_expand_item(void *tree, void *item) {
    static_cast<QTreeWidget *>(tree)->expandItem(
        static_cast<QTreeWidgetItem *>(item)
    );
}

void qt_tree_widget_collapse_item(void *tree, void *item) {
    static_cast<QTreeWidget *>(tree)->collapseItem(
        static_cast<QTreeWidgetItem *>(item)
    );
}

void qt_tree_widget_set_selection_mode(void *tree, int mode) {
    static_cast<QTreeWidget *>(tree)->setSelectionMode(
        static_cast<QAbstractItemView::SelectionMode>(mode)
    );
}

void qt_tree_widget_set_sorting_enabled(void *tree, int is_enabled) {
    static_cast<QTreeWidget *>(tree)->setSortingEnabled(is_enabled != 0);
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

int qt_tree_widget_item_child_count(void *item) {
    return static_cast<QTreeWidgetItem *>(item)->childCount();
}

void *qt_tree_widget_item_get_child(void *item, int index) {
    return static_cast<void *>(static_cast<QTreeWidgetItem *>(item)->child(index));
}

void *qt_tree_widget_item_get_parent(void *item) {
    return static_cast<void *>(static_cast<QTreeWidgetItem *>(item)->parent());
}

void qt_tree_widget_item_remove_child(void *item, void *child) {
    static_cast<QTreeWidgetItem *>(item)->removeChild(
        static_cast<QTreeWidgetItem *>(child)
    );
}

void qt_tree_widget_item_set_expanded(void *item, int is_expanded) {
    static_cast<QTreeWidgetItem *>(item)->setExpanded(is_expanded != 0);
}

int qt_tree_widget_item_is_expanded(void *item) {
    return static_cast<QTreeWidgetItem *>(item)->isExpanded() ? 1 : 0;
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

void qt_table_widget_insert_row(void *table, int row) {
    static_cast<QTableWidget *>(table)->insertRow(row);
}

void qt_table_widget_insert_column(void *table, int column) {
    static_cast<QTableWidget *>(table)->insertColumn(column);
}

void qt_table_widget_remove_row(void *table, int row) {
    static_cast<QTableWidget *>(table)->removeRow(row);
}

void qt_table_widget_remove_column(void *table, int column) {
    static_cast<QTableWidget *>(table)->removeColumn(column);
}

void qt_table_widget_set_selection_mode(void *table, int mode) {
    static_cast<QTableWidget *>(table)->setSelectionMode(
        static_cast<QAbstractItemView::SelectionMode>(mode)
    );
}

void qt_table_widget_set_selection_behaviour(void *table, int behaviour) {
    static_cast<QTableWidget *>(table)->setSelectionBehavior(
        static_cast<QAbstractItemView::SelectionBehavior>(behaviour)
    );
}

void qt_table_widget_set_alternating_row_colours(void *table, int is_alternating) {
    static_cast<QTableWidget *>(table)->setAlternatingRowColors(is_alternating != 0);
}

void qt_table_widget_set_sorting_enabled(void *table, int is_enabled) {
    static_cast<QTableWidget *>(table)->setSortingEnabled(is_enabled != 0);
}

void qt_table_widget_set_column_width(void *table, int column, int width) {
    static_cast<QTableWidget *>(table)->setColumnWidth(column, width);
}

void qt_table_widget_set_row_height(void *table, int row, int height) {
    static_cast<QTableWidget *>(table)->setRowHeight(row, height);
}

void qt_table_widget_resize_columns_to_contents(void *table) {
    static_cast<QTableWidget *>(table)->horizontalHeader()->resizeSections(QHeaderView::ResizeToContents);
}

void qt_table_widget_resize_rows_to_contents(void *table) {
    static_cast<QTableWidget *>(table)->verticalHeader()->resizeSections(QHeaderView::ResizeToContents);
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

void *qt_scroll_area_get_widget(void *scroll_area) {
    return static_cast<void *>(static_cast<QScrollArea *>(scroll_area)->widget());
}

void qt_scroll_area_set_horizontal_scroll_bar_policy(void *scroll_area, int policy) {
    static_cast<QScrollArea *>(scroll_area)->setHorizontalScrollBarPolicy(
        static_cast<Qt::ScrollBarPolicy>(policy)
    );
}

void qt_scroll_area_set_vertical_scroll_bar_policy(void *scroll_area, int policy) {
    static_cast<QScrollArea *>(scroll_area)->setVerticalScrollBarPolicy(
        static_cast<Qt::ScrollBarPolicy>(policy)
    );
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

void qt_splitter_set_sizes(void *splitter, const int *sizes, int count) {
    QList<int> size_list;
    for (int i = 0; i < count; ++i) {
        size_list.append(sizes[i]);
    }
    static_cast<QSplitter *>(splitter)->setSizes(size_list);
}

void qt_splitter_get_sizes(void *splitter, int *sizes_out, int count) {
    QList<int> size_list = static_cast<QSplitter *>(splitter)->sizes();
    int copy_count = qMin(count, size_list.size());
    for (int i = 0; i < copy_count; ++i) {
        sizes_out[i] = size_list[i];
    }
}

void qt_splitter_set_stretch_factor(void *splitter, int index, int stretch) {
    static_cast<QSplitter *>(splitter)->setStretchFactor(index, stretch);
}

int qt_splitter_get_count(void *splitter) {
    return static_cast<QSplitter *>(splitter)->count();
}

void qt_splitter_set_collapsible(void *splitter, int index, int is_collapsible) {
    static_cast<QSplitter *>(splitter)->setCollapsible(index, is_collapsible != 0);
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

void qt_stacked_widget_remove_widget(void *stacked, void *widget) {
    static_cast<QStackedWidget *>(stacked)->removeWidget(static_cast<QWidget *>(widget));
}

void *qt_stacked_widget_get_widget(void *stacked, int index) {
    return static_cast<void *>(static_cast<QStackedWidget *>(stacked)->widget(index));
}

int qt_stacked_widget_index_of(void *stacked, void *widget) {
    return static_cast<QStackedWidget *>(stacked)->indexOf(static_cast<QWidget *>(widget));
}

void qt_stacked_widget_set_current_widget(void *stacked, void *widget) {
    static_cast<QStackedWidget *>(stacked)->setCurrentWidget(static_cast<QWidget *>(widget));
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

int qt_frame_get_frame_shape(void *frame) {
    return static_cast<int>(static_cast<QFrame *>(frame)->frameShape());
}

int qt_frame_get_frame_shadow(void *frame) {
    return static_cast<int>(static_cast<QFrame *>(frame)->frameShadow());
}

int qt_frame_get_line_width(void *frame) {
    return static_cast<QFrame *>(frame)->lineWidth();
}

/* ── QMenuBar ───────────────────────────────────────────────────────── */

void *qt_menu_bar_add_menu(void *menu_bar, const char *title) {
    return static_cast<void *>(static_cast<QMenuBar *>(menu_bar)->addMenu(QString::fromUtf8(title)));
}

void qt_menu_bar_clear(void *menu_bar) {
    static_cast<QMenuBar *>(menu_bar)->clear();
}

/* ── QMenu ──────────────────────────────────────────────────────────── */

void *qt_menu_create(void *parent) {
    return static_cast<void *>(new QMenu(static_cast<QWidget *>(parent)));
}

void *qt_menu_add_action(void *menu, const char *text) {
    return static_cast<void *>(static_cast<QMenu *>(menu)->addAction(QString::fromUtf8(text)));
}

void qt_menu_add_separator(void *menu) {
    static_cast<QMenu *>(menu)->addSeparator();
}

void *qt_menu_add_menu(void *menu, const char *title) {
    return static_cast<void *>(static_cast<QMenu *>(menu)->addMenu(QString::fromUtf8(title)));
}

void qt_menu_popup(void *menu, int global_x, int global_y) {
    static_cast<QMenu *>(menu)->popup(QPoint(global_x, global_y));
}

void qt_menu_clear(void *menu) {
    static_cast<QMenu *>(menu)->clear();
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

void qt_action_set_text(void *action, const char *text) {
    static_cast<QAction *>(action)->setText(QString::fromUtf8(text));
}

char *qt_action_get_text(void *action) {
    return qstring_to_heap_utf8(static_cast<QAction *>(action)->text());
}

int qt_action_is_enabled(void *action) {
    return static_cast<QAction *>(action)->isEnabled() ? 1 : 0;
}

int qt_action_is_checkable(void *action) {
    return static_cast<QAction *>(action)->isCheckable() ? 1 : 0;
}

void qt_action_set_visible(void *action, int is_visible) {
    static_cast<QAction *>(action)->setVisible(is_visible != 0);
}

int qt_action_is_visible(void *action) {
    return static_cast<QAction *>(action)->isVisible() ? 1 : 0;
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

void qt_toolbar_set_movable(void *toolbar, int is_movable) {
    static_cast<QToolBar *>(toolbar)->setMovable(is_movable != 0);
}

int qt_toolbar_is_movable(void *toolbar) {
    return static_cast<QToolBar *>(toolbar)->isMovable() ? 1 : 0;
}

void qt_toolbar_set_icon_size(void *toolbar, int width, int height) {
    static_cast<QToolBar *>(toolbar)->setIconSize(QSize(width, height));
}

void qt_toolbar_set_tool_button_style(void *toolbar, int style) {
    static_cast<QToolBar *>(toolbar)->setToolButtonStyle(
        static_cast<Qt::ToolButtonStyle>(style)
    );
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

void qt_tab_widget_remove_tab(void *tab_widget, int index) {
    static_cast<QTabWidget *>(tab_widget)->removeTab(index);
}

int qt_tab_widget_insert_tab(void *tab_widget, int index, void *widget, const char *label) {
    return static_cast<QTabWidget *>(tab_widget)->insertTab(
        index, static_cast<QWidget *>(widget), QString::fromUtf8(label)
    );
}

void qt_tab_widget_set_tab_enabled(void *tab_widget, int index, int is_enabled) {
    static_cast<QTabWidget *>(tab_widget)->setTabEnabled(index, is_enabled != 0);
}

int qt_tab_widget_is_tab_enabled(void *tab_widget, int index) {
    return static_cast<QTabWidget *>(tab_widget)->isTabEnabled(index) ? 1 : 0;
}

void qt_tab_widget_set_tabs_closable(void *tab_widget, int is_closable) {
    static_cast<QTabWidget *>(tab_widget)->setTabsClosable(is_closable != 0);
}

void qt_tab_widget_set_movable(void *tab_widget, int is_movable) {
    static_cast<QTabWidget *>(tab_widget)->setMovable(is_movable != 0);
}

void *qt_tab_widget_get_widget(void *tab_widget, int index) {
    return static_cast<void *>(static_cast<QTabWidget *>(tab_widget)->widget(index));
}

int qt_tab_widget_index_of(void *tab_widget, void *widget) {
    return static_cast<QTabWidget *>(tab_widget)->indexOf(static_cast<QWidget *>(widget));
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

char *qt_group_box_get_title(void *group_box) {
    return qstring_to_heap_utf8(static_cast<QGroupBox *>(group_box)->title());
}

void qt_group_box_set_flat(void *group_box, int is_flat) {
    static_cast<QGroupBox *>(group_box)->setFlat(is_flat != 0);
}

int qt_group_box_is_flat(void *group_box) {
    return static_cast<QGroupBox *>(group_box)->isFlat() ? 1 : 0;
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

void qt_dock_widget_set_allowed_areas(void *dock, int areas) {
    static_cast<QDockWidget *>(dock)->setAllowedAreas(
        static_cast<Qt::DockWidgetAreas>(areas)
    );
}

void qt_dock_widget_set_features(void *dock, int features) {
    static_cast<QDockWidget *>(dock)->setFeatures(
        static_cast<QDockWidget::DockWidgetFeatures>(features)
    );
}

int qt_dock_widget_is_floating(void *dock) {
    return static_cast<QDockWidget *>(dock)->isFloating() ? 1 : 0;
}

void qt_dock_widget_set_floating(void *dock, int is_floating) {
    static_cast<QDockWidget *>(dock)->setFloating(is_floating != 0);
}

void *qt_dock_widget_toggle_view_action(void *dock) {
    return static_cast<void *>(static_cast<QDockWidget *>(dock)->toggleViewAction());
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

void qt_statusbar_add_widget(void *statusbar, void *widget) {
    static_cast<QStatusBar *>(statusbar)->addWidget(static_cast<QWidget *>(widget));
}

void qt_statusbar_remove_widget(void *statusbar, void *widget) {
    static_cast<QStatusBar *>(statusbar)->removeWidget(static_cast<QWidget *>(widget));
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

int qt_timer_get_interval(void *timer) {
    return static_cast<QTimer *>(timer)->interval();
}

int qt_timer_get_remaining_time(void *timer) {
    return static_cast<QTimer *>(timer)->remainingTime();
}

void qt_timer_single_shot(int interval_ms, qt_callback_t callback, void *user_data) {
    QTimer::singleShot(interval_ms, [callback, user_data]() {
        callback(user_data);
    });
}

/* ── Clipboard ──────────────────────────────────────────────────────── */

char *qt_clipboard_get_text(void) {
    return qstring_to_heap_utf8(QApplication::clipboard()->text());
}

void qt_clipboard_set_text(const char *text) {
    QApplication::clipboard()->setText(QString::fromUtf8(text));
}

/* ── QPixmap ────────────────────────────────────────────────────────── */

void *qt_pixmap_create_from_file(const char *file_path) {
    auto *pm = new QPixmap(QString::fromUtf8(file_path));
    return static_cast<void *>(pm);
}

void qt_pixmap_destroy(void *pixmap) {
    delete static_cast<QPixmap *>(pixmap);
}

int qt_pixmap_get_width(void *pixmap) {
    return static_cast<QPixmap *>(pixmap)->width();
}

int qt_pixmap_get_height(void *pixmap) {
    return static_cast<QPixmap *>(pixmap)->height();
}

int qt_pixmap_is_null(void *pixmap) {
    return static_cast<QPixmap *>(pixmap)->isNull() ? 1 : 0;
}

/* ── QIcon ──────────────────────────────────────────────────────────── */

void *qt_icon_create(void) {
    return static_cast<void *>(new QIcon());
}

void *qt_icon_create_from_file(const char *file_path) {
    return static_cast<void *>(new QIcon(QString::fromUtf8(file_path)));
}

void *qt_icon_create_from_pixmap(void *pixmap) {
    return static_cast<void *>(new QIcon(*static_cast<QPixmap *>(pixmap)));
}

void qt_icon_destroy(void *icon) {
    delete static_cast<QIcon *>(icon);
}

int qt_icon_is_null(void *icon) {
    return static_cast<QIcon *>(icon)->isNull() ? 1 : 0;
}

void qt_push_button_set_icon(void *button, void *icon) {
    static_cast<QPushButton *>(button)->setIcon(*static_cast<QIcon *>(icon));
}

void qt_action_set_icon(void *action, void *icon) {
    static_cast<QAction *>(action)->setIcon(*static_cast<QIcon *>(icon));
}

void qt_widget_set_window_icon(void *widget, void *icon) {
    static_cast<QWidget *>(widget)->setWindowIcon(*static_cast<QIcon *>(icon));
}

void qt_tab_widget_set_tab_icon(void *tab_widget, int index, void *icon) {
    static_cast<QTabWidget *>(tab_widget)->setTabIcon(index, *static_cast<QIcon *>(icon));
}

void qt_label_set_pixmap(void *label, void *pixmap) {
    static_cast<QLabel *>(label)->setPixmap(*static_cast<QPixmap *>(pixmap));
}

/* ── QShortcut ──────────────────────────────────────────────────────── */

void *qt_shortcut_create(void *parent, const char *key_sequence) {
    return static_cast<void *>(new QShortcut(
        QKeySequence(QString::fromUtf8(key_sequence)),
        static_cast<QWidget *>(parent)
    ));
}

void qt_shortcut_destroy(void *shortcut) {
    delete static_cast<QShortcut *>(shortcut);
}

void qt_shortcut_set_key(void *shortcut, const char *key_sequence) {
    static_cast<QShortcut *>(shortcut)->setKey(QKeySequence(QString::fromUtf8(key_sequence)));
}

void qt_shortcut_set_enabled(void *shortcut, int is_enabled) {
    static_cast<QShortcut *>(shortcut)->setEnabled(is_enabled != 0);
}

/* ── QDialogButtonBox ───────────────────────────────────────────────── */

void *qt_dialog_button_box_create(void *parent) {
    return static_cast<void *>(new QDialogButtonBox(static_cast<QWidget *>(parent)));
}

void *qt_dialog_button_box_create_with_buttons(int buttons, void *parent) {
    return static_cast<void *>(new QDialogButtonBox(
        static_cast<QDialogButtonBox::StandardButtons>(buttons),
        static_cast<QWidget *>(parent)
    ));
}

void *qt_dialog_button_box_add_button(void *button_box, int button) {
    return static_cast<void *>(
        static_cast<QDialogButtonBox *>(button_box)->addButton(
            static_cast<QDialogButtonBox::StandardButton>(button)
        )
    );
}

void qt_dialog_button_box_set_orientation(void *button_box, int orientation) {
    static_cast<QDialogButtonBox *>(button_box)->setOrientation(
        static_cast<Qt::Orientation>(orientation)
    );
}

/* ── QToolButton ────────────────────────────────────────────────────── */

void *qt_tool_button_create(void *parent) {
    return static_cast<void *>(new QToolButton(static_cast<QWidget *>(parent)));
}

void qt_tool_button_set_text(void *button, const char *text) {
    static_cast<QToolButton *>(button)->setText(QString::fromUtf8(text));
}

void qt_tool_button_set_icon(void *button, void *icon) {
    static_cast<QToolButton *>(button)->setIcon(*static_cast<QIcon *>(icon));
}

void qt_tool_button_set_popup_mode(void *button, int mode) {
    static_cast<QToolButton *>(button)->setPopupMode(
        static_cast<QToolButton::ToolButtonPopupMode>(mode)
    );
}

void qt_tool_button_set_menu(void *button, void *menu) {
    static_cast<QToolButton *>(button)->setMenu(static_cast<QMenu *>(menu));
}

void qt_tool_button_set_default_action(void *button, void *action) {
    static_cast<QToolButton *>(button)->setDefaultAction(static_cast<QAction *>(action));
}

void qt_tool_button_set_auto_raise(void *button, int is_auto_raise) {
    static_cast<QToolButton *>(button)->setAutoRaise(is_auto_raise != 0);
}

void qt_tool_button_set_tool_button_style(void *button, int style) {
    static_cast<QToolButton *>(button)->setToolButtonStyle(
        static_cast<Qt::ToolButtonStyle>(style)
    );
}

/* ── QButtonGroup ───────────────────────────────────────────────────── */

void *qt_button_group_create(void *parent) {
    return static_cast<void *>(new QButtonGroup(static_cast<QObject *>(parent)));
}

void qt_button_group_destroy(void *group) {
    delete static_cast<QButtonGroup *>(group);
}

void qt_button_group_add_button(void *group, void *button, int id) {
    static_cast<QButtonGroup *>(group)->addButton(
        static_cast<QAbstractButton *>(button), id
    );
}

void qt_button_group_remove_button(void *group, void *button) {
    static_cast<QButtonGroup *>(group)->removeButton(
        static_cast<QAbstractButton *>(button)
    );
}

void qt_button_group_set_exclusive(void *group, int is_exclusive) {
    static_cast<QButtonGroup *>(group)->setExclusive(is_exclusive != 0);
}

int qt_button_group_get_checked_id(void *group) {
    return static_cast<QButtonGroup *>(group)->checkedId();
}

/* ── QCalendarWidget ────────────────────────────────────────────────── */

void *qt_calendar_widget_create(void *parent) {
    return static_cast<void *>(new QCalendarWidget(static_cast<QWidget *>(parent)));
}

void qt_calendar_widget_get_selected_date(void *calendar, int *year, int *month, int *day) {
    QDate date = static_cast<QCalendarWidget *>(calendar)->selectedDate();
    *year = date.year();
    *month = date.month();
    *day = date.day();
}

void qt_calendar_widget_set_selected_date(void *calendar, int year, int month, int day) {
    static_cast<QCalendarWidget *>(calendar)->setSelectedDate(QDate(year, month, day));
}

void qt_calendar_widget_set_minimum_date(void *calendar, int year, int month, int day) {
    static_cast<QCalendarWidget *>(calendar)->setMinimumDate(QDate(year, month, day));
}

void qt_calendar_widget_set_maximum_date(void *calendar, int year, int month, int day) {
    static_cast<QCalendarWidget *>(calendar)->setMaximumDate(QDate(year, month, day));
}

void qt_calendar_widget_set_grid_visible(void *calendar, int is_visible) {
    static_cast<QCalendarWidget *>(calendar)->setGridVisible(is_visible != 0);
}

/* ── QDateEdit ──────────────────────────────────────────────────────── */

void *qt_date_edit_create(void *parent) {
    return static_cast<void *>(new QDateEdit(static_cast<QWidget *>(parent)));
}

void qt_date_edit_get_date(void *date_edit, int *year, int *month, int *day) {
    QDate date = static_cast<QDateEdit *>(date_edit)->date();
    *year = date.year();
    *month = date.month();
    *day = date.day();
}

void qt_date_edit_set_date(void *date_edit, int year, int month, int day) {
    static_cast<QDateEdit *>(date_edit)->setDate(QDate(year, month, day));
}

void qt_date_edit_set_minimum_date(void *date_edit, int year, int month, int day) {
    static_cast<QDateEdit *>(date_edit)->setMinimumDate(QDate(year, month, day));
}

void qt_date_edit_set_maximum_date(void *date_edit, int year, int month, int day) {
    static_cast<QDateEdit *>(date_edit)->setMaximumDate(QDate(year, month, day));
}

void qt_date_edit_set_display_format(void *date_edit, const char *format) {
    static_cast<QDateEdit *>(date_edit)->setDisplayFormat(QString::fromUtf8(format));
}

void qt_date_edit_set_calendar_popup(void *date_edit, int is_enabled) {
    static_cast<QDateEdit *>(date_edit)->setCalendarPopup(is_enabled != 0);
}

/* ── QTimeEdit ──────────────────────────────────────────────────────── */

void *qt_time_edit_create(void *parent) {
    return static_cast<void *>(new QTimeEdit(static_cast<QWidget *>(parent)));
}

void qt_time_edit_get_time(void *time_edit, int *hour, int *minute, int *second) {
    QTime time = static_cast<QTimeEdit *>(time_edit)->time();
    *hour = time.hour();
    *minute = time.minute();
    *second = time.second();
}

void qt_time_edit_set_time(void *time_edit, int hour, int minute, int second) {
    static_cast<QTimeEdit *>(time_edit)->setTime(QTime(hour, minute, second));
}

void qt_time_edit_set_display_format(void *time_edit, const char *format) {
    static_cast<QTimeEdit *>(time_edit)->setDisplayFormat(QString::fromUtf8(format));
}

/* ── QDateTimeEdit ──────────────────────────────────────────────────── */

void *qt_date_time_edit_create(void *parent) {
    return static_cast<void *>(new QDateTimeEdit(static_cast<QWidget *>(parent)));
}

void qt_date_time_edit_get_date_time(void *dt_edit, int *year, int *month, int *day,
                                     int *hour, int *minute, int *second) {
    QDateTime dt = static_cast<QDateTimeEdit *>(dt_edit)->dateTime();
    QDate date = dt.date();
    QTime time = dt.time();
    *year = date.year();
    *month = date.month();
    *day = date.day();
    *hour = time.hour();
    *minute = time.minute();
    *second = time.second();
}

void qt_date_time_edit_set_date_time(void *dt_edit, int year, int month, int day,
                                     int hour, int minute, int second) {
    static_cast<QDateTimeEdit *>(dt_edit)->setDateTime(
        QDateTime(QDate(year, month, day), QTime(hour, minute, second))
    );
}

void qt_date_time_edit_set_display_format(void *dt_edit, const char *format) {
    static_cast<QDateTimeEdit *>(dt_edit)->setDisplayFormat(QString::fromUtf8(format));
}

void qt_date_time_edit_set_calendar_popup(void *dt_edit, int is_enabled) {
    static_cast<QDateTimeEdit *>(dt_edit)->setCalendarPopup(is_enabled != 0);
}

/* ── QDial ──────────────────────────────────────────────────────────── */

void *qt_dial_create(void *parent) {
    return static_cast<void *>(new QDial(static_cast<QWidget *>(parent)));
}

void qt_dial_set_range(void *dial, int min_val, int max_val) {
    static_cast<QDial *>(dial)->setRange(min_val, max_val);
}

int qt_dial_get_value(void *dial) {
    return static_cast<QDial *>(dial)->value();
}

void qt_dial_set_value(void *dial, int value) {
    static_cast<QDial *>(dial)->setValue(value);
}

void qt_dial_set_notch_target(void *dial, double target) {
    static_cast<QDial *>(dial)->setNotchTarget(target);
}

void qt_dial_set_notches_visible(void *dial, int is_visible) {
    static_cast<QDial *>(dial)->setNotchesVisible(is_visible != 0);
}

void qt_dial_set_wrapping(void *dial, int is_wrapping) {
    static_cast<QDial *>(dial)->setWrapping(is_wrapping != 0);
}

void qt_dial_set_single_step(void *dial, int step) {
    static_cast<QDial *>(dial)->setSingleStep(step);
}

/* ── QProgressDialog ────────────────────────────────────────────────── */

void *qt_progress_dialog_create(void *parent, const char *label_text,
                                const char *cancel_button_text, int minimum, int maximum) {
    return static_cast<void *>(new QProgressDialog(
        QString::fromUtf8(label_text),
        QString::fromUtf8(cancel_button_text),
        minimum, maximum,
        static_cast<QWidget *>(parent)
    ));
}

void qt_progress_dialog_set_value(void *dialog, int progress) {
    static_cast<QProgressDialog *>(dialog)->setValue(progress);
}

int qt_progress_dialog_get_value(void *dialog) {
    return static_cast<QProgressDialog *>(dialog)->value();
}

void qt_progress_dialog_set_label_text(void *dialog, const char *text) {
    static_cast<QProgressDialog *>(dialog)->setLabelText(QString::fromUtf8(text));
}

void qt_progress_dialog_set_cancel_button_text(void *dialog, const char *text) {
    static_cast<QProgressDialog *>(dialog)->setCancelButtonText(QString::fromUtf8(text));
}

void qt_progress_dialog_set_range(void *dialog, int minimum, int maximum) {
    static_cast<QProgressDialog *>(dialog)->setRange(minimum, maximum);
}

void qt_progress_dialog_set_minimum_duration(void *dialog, int ms) {
    static_cast<QProgressDialog *>(dialog)->setMinimumDuration(ms);
}

void qt_progress_dialog_set_auto_close(void *dialog, int is_auto_close) {
    static_cast<QProgressDialog *>(dialog)->setAutoClose(is_auto_close != 0);
}

void qt_progress_dialog_set_auto_reset(void *dialog, int is_auto_reset) {
    static_cast<QProgressDialog *>(dialog)->setAutoReset(is_auto_reset != 0);
}

int qt_progress_dialog_was_canceled(void *dialog) {
    return static_cast<QProgressDialog *>(dialog)->wasCanceled() ? 1 : 0;
}

void qt_progress_dialog_reset(void *dialog) {
    static_cast<QProgressDialog *>(dialog)->reset();
}

/* ── QTextBrowser ───────────────────────────────────────────────────── */

void *qt_text_browser_create(void *parent) {
    return static_cast<void *>(new QTextBrowser(static_cast<QWidget *>(parent)));
}

void qt_text_browser_set_html(void *browser, const char *html) {
    static_cast<QTextBrowser *>(browser)->setHtml(QString::fromUtf8(html));
}

void qt_text_browser_set_source(void *browser, const char *url) {
    static_cast<QTextBrowser *>(browser)->setSource(QUrl(QString::fromUtf8(url)));
}

void qt_text_browser_set_open_external_links(void *browser, int is_open) {
    static_cast<QTextBrowser *>(browser)->setOpenExternalLinks(is_open != 0);
}

void qt_text_browser_backward(void *browser) {
    static_cast<QTextBrowser *>(browser)->backward();
}

void qt_text_browser_forward(void *browser) {
    static_cast<QTextBrowser *>(browser)->forward();
}

void qt_text_browser_home(void *browser) {
    static_cast<QTextBrowser *>(browser)->home();
}

/* ── QHeaderView ────────────────────────────────────────────────────── */

void qt_header_view_set_section_resize_mode(void *header, int mode) {
    static_cast<QHeaderView *>(header)->setSectionResizeMode(
        static_cast<QHeaderView::ResizeMode>(mode)
    );
}

void qt_header_view_set_section_resize_mode_for(void *header, int section, int mode) {
    static_cast<QHeaderView *>(header)->setSectionResizeMode(
        section, static_cast<QHeaderView::ResizeMode>(mode)
    );
}

void qt_header_view_set_stretch_last_section(void *header, int is_stretch) {
    static_cast<QHeaderView *>(header)->setStretchLastSection(is_stretch != 0);
}

void qt_header_view_set_visible(void *header, int is_visible) {
    static_cast<QHeaderView *>(header)->setVisible(is_visible != 0);
}

void qt_header_view_set_sort_indicator(void *header, int section, int order) {
    static_cast<QHeaderView *>(header)->setSortIndicator(
        section, static_cast<Qt::SortOrder>(order)
    );
}

void qt_header_view_set_sort_indicator_shown(void *header, int is_shown) {
    static_cast<QHeaderView *>(header)->setSortIndicatorShown(is_shown != 0);
}

void *qt_table_widget_get_horizontal_header(void *table) {
    return static_cast<void *>(static_cast<QTableWidget *>(table)->horizontalHeader());
}

void *qt_table_widget_get_vertical_header(void *table) {
    return static_cast<void *>(static_cast<QTableWidget *>(table)->verticalHeader());
}

void *qt_tree_widget_get_header(void *tree) {
    return static_cast<void *>(static_cast<QTreeWidget *>(tree)->header());
}

/* ── QSystemTrayIcon ────────────────────────────────────────────────── */

void *qt_system_tray_icon_create(void *parent) {
    return static_cast<void *>(new QSystemTrayIcon(static_cast<QObject *>(parent)));
}

void qt_system_tray_icon_destroy(void *tray_icon) {
    delete static_cast<QSystemTrayIcon *>(tray_icon);
}

void qt_system_tray_icon_set_icon(void *tray_icon, void *icon) {
    static_cast<QSystemTrayIcon *>(tray_icon)->setIcon(*static_cast<QIcon *>(icon));
}

void qt_system_tray_icon_set_tooltip(void *tray_icon, const char *tooltip) {
    static_cast<QSystemTrayIcon *>(tray_icon)->setToolTip(QString::fromUtf8(tooltip));
}

void qt_system_tray_icon_set_context_menu(void *tray_icon, void *menu) {
    static_cast<QSystemTrayIcon *>(tray_icon)->setContextMenu(static_cast<QMenu *>(menu));
}

void qt_system_tray_icon_show(void *tray_icon) {
    static_cast<QSystemTrayIcon *>(tray_icon)->show();
}

void qt_system_tray_icon_hide(void *tray_icon) {
    static_cast<QSystemTrayIcon *>(tray_icon)->hide();
}

void qt_system_tray_icon_show_message(void *tray_icon, const char *title, const char *message,
                                      int icon_type, int timeout_ms) {
    static_cast<QSystemTrayIcon *>(tray_icon)->showMessage(
        QString::fromUtf8(title),
        QString::fromUtf8(message),
        static_cast<QSystemTrayIcon::MessageIcon>(icon_type),
        timeout_ms
    );
}

int qt_system_tray_icon_is_available(void) {
    return QSystemTrayIcon::isSystemTrayAvailable() ? 1 : 0;
}

/* ── String management ──────────────────────────────────────────────── */

void qt_free_string(char *str) {
    free(str);
}

void qt_dialog_free_string(char *str) {
    free(str);
}

void qt_free_string_array(char **names, int count) {
    if (!names) return;
    for (int i = 0; i < count; ++i) {
        free(names[i]);
    }
    free(names);
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

int qt_file_dialog_get_open_file_names(void *parent, const char *caption, const char *dir, const char *filter,
                                       char ***out_names, int *out_count) {
    QStringList files = QFileDialog::getOpenFileNames(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(caption),
        QString::fromUtf8(dir),
        QString::fromUtf8(filter)
    );
    if (files.isEmpty()) {
        *out_names = nullptr;
        *out_count = 0;
        return 0;
    }
    int count = files.size();
    char **names = static_cast<char **>(malloc(sizeof(char *) * count));
    for (int i = 0; i < count; ++i) {
        names[i] = qstring_to_heap_utf8(files[i]);
    }
    *out_names = names;
    *out_count = count;
    return 1;
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

int qt_message_box_show_information_ex(void *parent, const char *title, const char *text, int buttons) {
    return static_cast<int>(QMessageBox::information(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text),
        static_cast<QMessageBox::StandardButtons>(buttons)
    ));
}

int qt_message_box_show_warning_ex(void *parent, const char *title, const char *text, int buttons) {
    return static_cast<int>(QMessageBox::warning(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text),
        static_cast<QMessageBox::StandardButtons>(buttons)
    ));
}

int qt_message_box_show_critical_ex(void *parent, const char *title, const char *text, int buttons) {
    return static_cast<int>(QMessageBox::critical(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text),
        static_cast<QMessageBox::StandardButtons>(buttons)
    ));
}

int qt_message_box_show_question_ex(void *parent, const char *title, const char *text, int buttons) {
    return static_cast<int>(QMessageBox::question(
        static_cast<QWidget *>(parent),
        QString::fromUtf8(title),
        QString::fromUtf8(text),
        static_cast<QMessageBox::StandardButtons>(buttons)
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

int qt_push_button_connect_clicked(void *button, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPushButton *>(button), &QPushButton::clicked, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_push_button_connect_pressed(void *button, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPushButton *>(button), &QPushButton::pressed, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_push_button_connect_released(void *button, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPushButton *>(button), &QPushButton::released, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_check_box_connect_toggled(void *check_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QCheckBox *>(check_box), &QCheckBox::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_radio_button_connect_toggled(void *radio_button, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QRadioButton *>(radio_button), &QRadioButton::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_slider_connect_value_changed(void *slider, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSlider *>(slider), &QSlider::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_spin_box_connect_value_changed(void *spin_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSpinBox *>(spin_box), &QSpinBox::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_double_spin_box_connect_value_changed(void *spin_box, qt_double_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDoubleSpinBox *>(spin_box), &QDoubleSpinBox::valueChanged, [callback, user_data](double value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_line_edit_connect_text_changed(void *line_edit, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QLineEdit *>(line_edit), &QLineEdit::textChanged, [callback, user_data](const QString &text) {
        QByteArray utf8 = text.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

int qt_line_edit_connect_return_pressed(void *line_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QLineEdit *>(line_edit), &QLineEdit::returnPressed, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_line_edit_connect_editing_finished(void *line_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QLineEdit *>(line_edit), &QLineEdit::editingFinished, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::textChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_text_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::textChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_combo_box_connect_index_changed(void *combo_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::currentIndexChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_list_widget_connect_current_row_changed(void *list, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QListWidget *>(list), &QListWidget::currentRowChanged, [callback, user_data](int row) {
        callback(row, user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_item_clicked(void *tree, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemClicked, [callback, user_data](QTreeWidgetItem *item, int column) {
        callback(static_cast<void *>(item), column, user_data);
    });
    return store_connection(conn);
}

int qt_table_widget_connect_cell_clicked(void *table, qt_cell_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::cellClicked, [callback, user_data](int row, int col) {
        callback(row, col, user_data);
    });
    return store_connection(conn);
}

int qt_widget_connect_custom_context_menu_requested(void *widget, qt_point_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QWidget *>(widget), &QWidget::customContextMenuRequested, [callback, user_data](const QPoint &pos) {
        callback(pos.x(), pos.y(), user_data);
    });
    return store_connection(conn);
}

int qt_action_connect_triggered(void *action, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QAction *>(action), &QAction::triggered, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_tab_widget_connect_current_changed(void *tab_widget, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTabWidget *>(tab_widget), &QTabWidget::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_group_box_connect_toggled(void *group_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGroupBox *>(group_box), &QGroupBox::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_stacked_widget_connect_current_changed(void *stacked, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QStackedWidget *>(stacked), &QStackedWidget::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_timer_connect_timeout(void *timer, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTimer *>(timer), &QTimer::timeout, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* New signals for section 3 */

int qt_tab_widget_connect_tab_close_requested(void *tab_widget, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTabWidget *>(tab_widget), &QTabWidget::tabCloseRequested, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_table_widget_connect_cell_double_clicked(void *table, qt_cell_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::cellDoubleClicked, [callback, user_data](int row, int col) {
        callback(row, col, user_data);
    });
    return store_connection(conn);
}

int qt_table_widget_connect_cell_changed(void *table, qt_cell_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::cellChanged, [callback, user_data](int row, int col) {
        callback(row, col, user_data);
    });
    return store_connection(conn);
}

int qt_table_widget_connect_item_selection_changed(void *table, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::itemSelectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_item_double_clicked(void *tree, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemDoubleClicked, [callback, user_data](QTreeWidgetItem *item, int column) {
        callback(static_cast<void *>(item), column, user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_item_expanded(void *tree, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemExpanded, [callback, user_data](QTreeWidgetItem *item) {
        callback(static_cast<void *>(item), 0, user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_item_collapsed(void *tree, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemCollapsed, [callback, user_data](QTreeWidgetItem *item) {
        callback(static_cast<void *>(item), 0, user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_current_item_changed(void *tree, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::currentItemChanged, [callback, user_data](QTreeWidgetItem *, QTreeWidgetItem *) {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_list_widget_connect_item_clicked(void *list, qt_int_callback_t callback, void *user_data) {
    auto *lw = static_cast<QListWidget *>(list);
    auto conn = QObject::connect(lw, &QListWidget::itemClicked, [lw, callback, user_data](QListWidgetItem *item) {
        callback(lw->row(item), user_data);
    });
    return store_connection(conn);
}

int qt_list_widget_connect_item_double_clicked(void *list, qt_int_callback_t callback, void *user_data) {
    auto *lw = static_cast<QListWidget *>(list);
    auto conn = QObject::connect(lw, &QListWidget::itemDoubleClicked, [lw, callback, user_data](QListWidgetItem *item) {
        callback(lw->row(item), user_data);
    });
    return store_connection(conn);
}

int qt_list_widget_connect_item_selection_changed(void *list, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QListWidget *>(list), &QListWidget::itemSelectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_combo_box_connect_current_text_changed(void *combo_box, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::currentTextChanged, [callback, user_data](const QString &text) {
        QByteArray utf8 = text.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

int qt_progress_bar_connect_value_changed(void *progress_bar, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QProgressBar *>(progress_bar), &QProgressBar::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_slider_connect_slider_pressed(void *slider, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSlider *>(slider), &QSlider::sliderPressed, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_slider_connect_slider_released(void *slider, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSlider *>(slider), &QSlider::sliderReleased, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_dock_widget_connect_visibility_changed(void *dock, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDockWidget *>(dock), &QDockWidget::visibilityChanged, [callback, user_data](bool visible) {
        callback(visible ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_dialog_connect_accepted(void *dialog, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDialog *>(dialog), &QDialog::accepted, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_dialog_connect_rejected(void *dialog, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDialog *>(dialog), &QDialog::rejected, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_dialog_connect_finished(void *dialog, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDialog *>(dialog), &QDialog::finished, [callback, user_data](int result) {
        callback(result, user_data);
    });
    return store_connection(conn);
}

/* New signals for section 4 */

int qt_shortcut_connect_activated(void *shortcut, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QShortcut *>(shortcut), &QShortcut::activated, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_dialog_button_box_connect_accepted(void *button_box, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDialogButtonBox *>(button_box), &QDialogButtonBox::accepted, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_dialog_button_box_connect_rejected(void *button_box, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDialogButtonBox *>(button_box), &QDialogButtonBox::rejected, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_tool_button_connect_clicked(void *button, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QToolButton *>(button), &QToolButton::clicked, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_button_group_connect_id_clicked(void *group, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QButtonGroup *>(group), &QButtonGroup::idClicked, [callback, user_data](int id) {
        callback(id, user_data);
    });
    return store_connection(conn);
}

int qt_button_group_connect_id_toggled(void *group, qt_cell_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QButtonGroup *>(group), &QButtonGroup::idToggled, [callback, user_data](int id, bool checked) {
        callback(id, checked ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_calendar_widget_connect_selection_changed(void *calendar, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QCalendarWidget *>(calendar), &QCalendarWidget::selectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_date_edit_connect_date_changed(void *date_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDateEdit *>(date_edit), &QDateEdit::dateChanged, [callback, user_data](const QDate &) {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_time_edit_connect_time_changed(void *time_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTimeEdit *>(time_edit), &QTimeEdit::timeChanged, [callback, user_data](const QTime &) {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_date_time_edit_connect_date_time_changed(void *dt_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDateTimeEdit *>(dt_edit), &QDateTimeEdit::dateTimeChanged, [callback, user_data](const QDateTime &) {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_dial_connect_value_changed(void *dial, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDial *>(dial), &QDial::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_progress_dialog_connect_canceled(void *dialog, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QProgressDialog *>(dialog), &QProgressDialog::canceled, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_text_browser_connect_anchor_clicked(void *browser, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextBrowser *>(browser), &QTextBrowser::anchorClicked, [callback, user_data](const QUrl &url) {
        QByteArray utf8 = url.toString().toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

int qt_system_tray_icon_connect_activated(void *tray_icon, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSystemTrayIcon *>(tray_icon), &QSystemTrayIcon::activated, [callback, user_data](QSystemTrayIcon::ActivationReason reason) {
        callback(static_cast<int>(reason), user_data);
    });
    return store_connection(conn);
}

/* ── Signal disconnection ───────────────────────────────────────────── */

void qt_disconnect(int connection_id) {
    auto it = g_connections.find(connection_id);
    if (it != g_connections.end()) {
        QObject::disconnect(it->second);
        g_connections.erase(it);
    }
}

} /* extern "C" */
