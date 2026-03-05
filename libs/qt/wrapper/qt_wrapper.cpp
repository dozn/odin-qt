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
#include <QSettings>
#include <QDesktopServices>
#include <QStandardPaths>
#include <QScreen>
#include <QFontMetrics>
#include <QCompleter>
#include <QStringListModel>
#include <QIntValidator>
#include <QDoubleValidator>
#include <QRegularExpressionValidator>
#include <QRegularExpression>
#include <QToolTip>
#include <QStyle>
#include <QStyleFactory>
#include <QSpacerItem>
#include <QCloseEvent>
#include <QKeyEvent>
#include <QMouseEvent>
#include <QStandardItemModel>
#include <QStandardItem>
#include <QFileSystemModel>
#include <QSortFilterProxyModel>
#include <QTreeView>
#include <QTableView>
#include <QListView>
#include <QPersistentModelIndex>
#include <QPainter>
#include <QPen>
#include <QBrush>
#include <QDrag>
#include <QMimeData>
#include <QDragEnterEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QSyntaxHighlighter>
#include <QTextCharFormat>
#include <QPropertyAnimation>
#include <QParallelAnimationGroup>
#include <QSequentialAnimationGroup>
#include <QEasingCurve>
#include <QPolygon>
#include <QPaintEvent>
#include <QTabBar>
#include <QToolBox>
#include <QLCDNumber>
#include <QCommandLinkButton>
#include <QKeySequenceEdit>
#include <QFontComboBox>
#include <QSplashScreen>
#include <QStackedLayout>
#include <QWidgetAction>
#include <QActionGroup>
#include <QErrorMessage>
#include <QMdiArea>
#include <QMdiSubWindow>
#include <QWizard>
#include <QWizardPage>
#include <QColumnView>
#include <QUndoView>
#include <QRubberBand>
#include <QFocusFrame>
#include <QSizeGrip>
#include <QWhatsThis>
#include <QImage>
#include <QColor>
#include <QFont>
#include <QPalette>
#include <QPainterPath>
#include <QTransform>
#include <QRegion>
#include <QLinearGradient>
#include <QRadialGradient>
#include <QConicalGradient>
#include <QTextCursor>
#include <QTextDocument>
#include <QTextBlock>
#include <QFontDatabase>
#include <QMovie>
#include <QImageReader>
#include <QImageWriter>
#include <QBitmap>
#include <QStaticText>
#include <QPicture>
#include <QPageLayout>
#include <QPageSize>
#include <QFile>
#include <QFileInfo>
#include <QDir>
#include <QProcess>
#include <QThread>
#include <QMutex>
#include <QReadWriteLock>
#include <QSemaphore>
#include <QBuffer>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonValue>
#include <QXmlStreamReader>
#include <QXmlStreamWriter>
#include <QDateTime>
#include <QDate>
#include <QTime>
#include <QLocale>
#include <QUuid>
#include <QElapsedTimer>
#include <QCryptographicHash>
#include <QMimeDatabase>
#include <QMimeType>
#include <QStorageInfo>
#include <QVersionNumber>
#include <QTranslator>
#include <QCommandLineParser>
#include <QCommandLineOption>
#include <QTemporaryFile>
#include <QTemporaryDir>
#include <QSaveFile>
#include <QFileSystemWatcher>
#include <QItemSelectionModel>
#include <QUndoCommand>
#include <QUndoStack>
#include <QUndoGroup>
#include <QDataWidgetMapper>
#include <QStyledItemDelegate>
#include <QItemDelegate>
#include <QGraphicsScene>
#include <QGraphicsView>
#include <QGraphicsItem>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include <QGraphicsTextItem>
#include <QGraphicsLineItem>
#include <QGraphicsPixmapItem>
#include <QGraphicsPathItem>
#include <QGraphicsItemGroup>
#include <QGraphicsProxyWidget>
#include <QGraphicsBlurEffect>
#include <QGraphicsColorizeEffect>
#include <QGraphicsDropShadowEffect>
#include <QGraphicsOpacityEffect>
#include <QScroller>
#include <QScrollerProperties>
#include <QIdentityProxyModel>
#include <QTransposeProxyModel>
#include <QConcatenateTablesProxyModel>
#include <QSignalMapper>
#include <QLockFile>
#include <QTimeLine>
#include <QCalendar>
#include <QRandomGenerator>
#include <QEventLoop>
#include <QSysInfo>
#include <QLibrary>
#include <QSharedMemory>
#include <QSystemSemaphore>
#include <cstdlib>
#include <cstring>
#include <unordered_map>

Q_IMPORT_PLUGIN(QWindowsIntegrationPlugin)
Q_IMPORT_PLUGIN(QModernWindowsStylePlugin)

/* ── Event filter helper classes ───────────────────────────────────── */

class CGenericEventFilter : public QObject {
public:
    CGenericEventFilter(qt_event_filter_callback_t callback, void *user_data)
        : m_callback(callback), m_user_data(user_data) {}

    bool eventFilter(QObject *, QEvent *event) override {
        return m_callback(static_cast<int>(event->type()), m_user_data) != 0;
    }

private:
    qt_event_filter_callback_t m_callback;
    void *m_user_data;
};

class CCloseEventFilter : public QObject {
public:
    CCloseEventFilter(qt_close_event_callback_t callback, void *user_data)
        : m_callback(callback), m_user_data(user_data) {}

    bool eventFilter(QObject *, QEvent *event) override {
        if (event->type() == QEvent::Close) {
            int should_close = m_callback(m_user_data);
            if (!should_close) {
                event->ignore();
                return true;
            }
        }
        return false;
    }

private:
    qt_close_event_callback_t m_callback;
    void *m_user_data;
};

class CKeyEventFilter : public QObject {
public:
    CKeyEventFilter(qt_key_event_callback_t callback, void *user_data)
        : m_callback(callback), m_user_data(user_data) {}

    bool eventFilter(QObject *, QEvent *event) override {
        if (event->type() == QEvent::KeyPress || event->type() == QEvent::KeyRelease) {
            auto *ke = static_cast<QKeyEvent *>(event);
            QByteArray text_utf8 = ke->text().toUtf8();
            int is_handled = m_callback(
                static_cast<int>(event->type()),
                ke->key(),
                static_cast<int>(ke->modifiers()),
                ke->isAutoRepeat() ? 1 : 0,
                text_utf8.constData(),
                m_user_data
            );
            return is_handled != 0;
        }
        return false;
    }

private:
    qt_key_event_callback_t m_callback;
    void *m_user_data;
};

class CMouseEventFilter : public QObject {
public:
    CMouseEventFilter(qt_mouse_event_callback_t callback, void *user_data)
        : m_callback(callback), m_user_data(user_data) {}

    bool eventFilter(QObject *, QEvent *event) override {
        switch (event->type()) {
        case QEvent::MouseButtonPress:
        case QEvent::MouseButtonRelease:
        case QEvent::MouseButtonDblClick:
        case QEvent::MouseMove: {
            auto *me = static_cast<QMouseEvent *>(event);
            QPointF local = me->position();
            QPointF global = me->globalPosition();
            int is_handled = m_callback(
                static_cast<int>(event->type()),
                static_cast<int>(me->button()),
                static_cast<int>(local.x()),
                static_cast<int>(local.y()),
                static_cast<int>(global.x()),
                static_cast<int>(global.y()),
                static_cast<int>(me->modifiers()),
                m_user_data
            );
            return is_handled != 0;
        }
        default:
            return false;
        }
    }

private:
    qt_mouse_event_callback_t m_callback;
    void *m_user_data;
};

class CPaintableWidget : public QWidget {
public:
    CPaintableWidget(QWidget *parent, qt_paint_callback_t callback, void *user_data)
        : QWidget(parent), m_callback(callback), m_user_data(user_data) {}

protected:
    void paintEvent(QPaintEvent *) override {
        QPainter painter(this);
        m_callback(static_cast<void *>(&painter), width(), height(), m_user_data);
    }

private:
    qt_paint_callback_t m_callback;
    void *m_user_data;
};

class CSyntaxHighlighter : public QSyntaxHighlighter {
public:
    struct Rule {
        QRegularExpression pattern;
        QTextCharFormat format;
    };

    CSyntaxHighlighter(QTextDocument *document)
        : QSyntaxHighlighter(document) {}

    void addRule(const QRegularExpression &pattern, const QTextCharFormat &format) {
        Rule rule;
        rule.pattern = pattern;
        rule.format = format;
        m_rules.append(rule);
    }

    void clearRules() {
        m_rules.clear();
    }

protected:
    void highlightBlock(const QString &text) override {
        for (const auto &rule : m_rules) {
            auto it = rule.pattern.globalMatch(text);
            while (it.hasNext()) {
                auto match = it.next();
                setFormat(match.capturedStart(), match.capturedLength(), rule.format);
            }
        }
    }

private:
    QList<Rule> m_rules;
};

class CDragDropFilter : public QObject {
public:
    CDragDropFilter(qt_drag_enter_callback_t enter_cb, qt_drop_callback_t drop_cb, void *user_data)
        : m_enter_cb(enter_cb), m_drop_cb(drop_cb), m_user_data(user_data) {}

    bool eventFilter(QObject *, QEvent *event) override {
        switch (event->type()) {
        case QEvent::DragEnter: {
            auto *de = static_cast<QDragEnterEvent *>(event);
            if (de->mimeData()->hasText()) {
                QByteArray utf8 = de->mimeData()->text().toUtf8();
                int is_accepted = m_enter_cb(utf8.constData(), m_user_data);
                if (is_accepted) {
                    de->acceptProposedAction();
                    return true;
                }
            }
            return false;
        }
        case QEvent::DragMove: {
            auto *dm = static_cast<QDragMoveEvent *>(event);
            if (dm->mimeData()->hasText()) {
                dm->acceptProposedAction();
                return true;
            }
            return false;
        }
        case QEvent::Drop: {
            auto *drop = static_cast<QDropEvent *>(event);
            if (drop->mimeData()->hasText()) {
                QByteArray utf8 = drop->mimeData()->text().toUtf8();
                QPointF pos = drop->position();
                m_drop_cb(utf8.constData(), static_cast<int>(pos.x()), static_cast<int>(pos.y()), m_user_data);
                drop->acceptProposedAction();
                return true;
            }
            return false;
        }
        default:
            return false;
        }
    }

private:
    qt_drag_enter_callback_t m_enter_cb;
    qt_drop_callback_t m_drop_cb;
    void *m_user_data;
};

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

class ClampedPropertyAnimation : public QPropertyAnimation {
public:
    ClampedPropertyAnimation(QObject *target, const QByteArray &propertyName)
        : QPropertyAnimation(target, propertyName), m_has_clamp(false), m_min_val(0), m_max_val(0) {}

    void setClampRange(int min_val, int max_val) {
        m_has_clamp = true;
        m_min_val = min_val;
        m_max_val = max_val;
    }

protected:
    void updateCurrentValue(const QVariant &value) override {
        if (m_has_clamp) {
            int clamped = qBound(m_min_val, value.toInt(), m_max_val);
            QPropertyAnimation::updateCurrentValue(QVariant(clamped));
        } else {
            QPropertyAnimation::updateCurrentValue(value);
        }
    }

private:
    bool m_has_clamp;
    int m_min_val;
    int m_max_val;
};

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

void *qt_main_window_get_central_widget(void *window) {
    return static_cast<void *>(static_cast<QMainWindow *>(window)->centralWidget());
}

void qt_main_window_remove_dock_widget(void *window, void *dock_widget) {
    static_cast<QMainWindow *>(window)->removeDockWidget(
        static_cast<QDockWidget *>(dock_widget)
    );
}

void qt_main_window_tabify_dock_widget(void *window, void *first, void *second) {
    static_cast<QMainWindow *>(window)->tabifyDockWidget(
        static_cast<QDockWidget *>(first),
        static_cast<QDockWidget *>(second)
    );
}

void qt_main_window_set_dock_options(void *window, int options) {
    static_cast<QMainWindow *>(window)->setDockOptions(
        static_cast<QMainWindow::DockOptions>(options)
    );
}

void qt_main_window_set_tool_button_style(void *window, int style) {
    static_cast<QMainWindow *>(window)->setToolButtonStyle(
        static_cast<Qt::ToolButtonStyle>(style)
    );
}

void qt_main_window_set_animated(void *window, int is_animated) {
    static_cast<QMainWindow *>(window)->setAnimated(is_animated != 0);
}

void qt_main_window_set_corner(void *window, int corner, int area) {
    static_cast<QMainWindow *>(window)->setCorner(
        static_cast<Qt::Corner>(corner),
        static_cast<Qt::DockWidgetArea>(area)
    );
}

char *qt_main_window_save_state(void *window, int *out_len, int version) {
    QByteArray state = static_cast<QMainWindow *>(window)->saveState(version);
    *out_len = state.size();
    char *result = static_cast<char *>(malloc(state.size()));
    memcpy(result, state.constData(), state.size());
    return result;
}

int qt_main_window_restore_state(void *window, const char *data, int len, int version) {
    return static_cast<QMainWindow *>(window)->restoreState(
        QByteArray(data, len), version
    ) ? 1 : 0;
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

void qt_widget_set_window_flags(void *widget, int flags) {
    static_cast<QWidget *>(widget)->setWindowFlags(static_cast<Qt::WindowFlags>(flags));
}

int qt_widget_get_window_flags(void *widget) {
    return static_cast<int>(static_cast<QWidget *>(widget)->windowFlags());
}

void qt_widget_set_window_state(void *widget, int state) {
    static_cast<QWidget *>(widget)->setWindowState(static_cast<Qt::WindowStates>(state));
}

int qt_widget_get_window_state(void *widget) {
    return static_cast<int>(static_cast<QWidget *>(widget)->windowState());
}

void qt_widget_show_minimized(void *widget) {
    static_cast<QWidget *>(widget)->showMinimized();
}

void qt_widget_show_maximized(void *widget) {
    static_cast<QWidget *>(widget)->showMaximized();
}

void qt_widget_show_full_screen(void *widget) {
    static_cast<QWidget *>(widget)->showFullScreen();
}

void qt_widget_show_normal(void *widget) {
    static_cast<QWidget *>(widget)->showNormal();
}

int qt_widget_is_minimized(void *widget) {
    return static_cast<QWidget *>(widget)->isMinimized() ? 1 : 0;
}

int qt_widget_is_maximized(void *widget) {
    return static_cast<QWidget *>(widget)->isMaximized() ? 1 : 0;
}

int qt_widget_is_full_screen(void *widget) {
    return static_cast<QWidget *>(widget)->isFullScreen() ? 1 : 0;
}

void qt_widget_set_window_modality(void *widget, int modality) {
    static_cast<QWidget *>(widget)->setWindowModality(static_cast<Qt::WindowModality>(modality));
}

void qt_widget_set_window_opacity(void *widget, double opacity) {
    static_cast<QWidget *>(widget)->setWindowOpacity(opacity);
}

double qt_widget_get_window_opacity(void *widget) {
    return static_cast<QWidget *>(widget)->windowOpacity();
}

void qt_widget_set_geometry(void *widget, int x, int y, int w, int h) {
    static_cast<QWidget *>(widget)->setGeometry(x, y, w, h);
}

void qt_widget_get_geometry(void *widget, int *out_x, int *out_y, int *out_w, int *out_h) {
    QRect r = static_cast<QWidget *>(widget)->geometry();
    if (out_x) *out_x = r.x();
    if (out_y) *out_y = r.y();
    if (out_w) *out_w = r.width();
    if (out_h) *out_h = r.height();
}

void qt_widget_map_to_global(void *widget, int x, int y, int *out_x, int *out_y) {
    QPoint p = static_cast<QWidget *>(widget)->mapToGlobal(QPoint(x, y));
    if (out_x) *out_x = p.x();
    if (out_y) *out_y = p.y();
}

void qt_widget_map_from_global(void *widget, int x, int y, int *out_x, int *out_y) {
    QPoint p = static_cast<QWidget *>(widget)->mapFromGlobal(QPoint(x, y));
    if (out_x) *out_x = p.x();
    if (out_y) *out_y = p.y();
}

void qt_widget_map_to_parent(void *widget, int x, int y, int *out_x, int *out_y) {
    QPoint p = static_cast<QWidget *>(widget)->mapToParent(QPoint(x, y));
    if (out_x) *out_x = p.x();
    if (out_y) *out_y = p.y();
}

void qt_widget_map_from_parent(void *widget, int x, int y, int *out_x, int *out_y) {
    QPoint p = static_cast<QWidget *>(widget)->mapFromParent(QPoint(x, y));
    if (out_x) *out_x = p.x();
    if (out_y) *out_y = p.y();
}

void qt_widget_set_parent(void *widget, void *parent) {
    static_cast<QWidget *>(widget)->setParent(static_cast<QWidget *>(parent));
}

void *qt_widget_get_parent_widget(void *widget) {
    return static_cast<void *>(static_cast<QWidget *>(widget)->parentWidget());
}

void qt_widget_set_focus_policy(void *widget, int policy) {
    static_cast<QWidget *>(widget)->setFocusPolicy(static_cast<Qt::FocusPolicy>(policy));
}

void qt_widget_set_attribute(void *widget, int attribute, int on) {
    static_cast<QWidget *>(widget)->setAttribute(static_cast<Qt::WidgetAttribute>(attribute), on != 0);
}

int qt_widget_test_attribute(void *widget, int attribute) {
    return static_cast<QWidget *>(widget)->testAttribute(static_cast<Qt::WidgetAttribute>(attribute)) ? 1 : 0;
}

void qt_widget_adjust_size(void *widget) {
    static_cast<QWidget *>(widget)->adjustSize();
}

void qt_widget_set_contents_margins(void *widget, int left, int top, int right, int bottom) {
    static_cast<QWidget *>(widget)->setContentsMargins(left, top, right, bottom);
}

void qt_widget_get_contents_margins(void *widget, int *left, int *top, int *right, int *bottom) {
    QMargins m = static_cast<QWidget *>(widget)->contentsMargins();
    if (left) *left = m.left();
    if (top) *top = m.top();
    if (right) *right = m.right();
    if (bottom) *bottom = m.bottom();
}

void qt_widget_repaint(void *widget) {
    static_cast<QWidget *>(widget)->repaint();
}

void qt_widget_set_tab_order(void *first, void *second) {
    QWidget::setTabOrder(static_cast<QWidget *>(first), static_cast<QWidget *>(second));
}

void *qt_widget_grab(void *widget) {
    QPixmap *pm = new QPixmap(static_cast<QWidget *>(widget)->grab());
    return static_cast<void *>(pm);
}

void qt_widget_get_rect(void *widget, int *out_x, int *out_y, int *out_w, int *out_h) {
    QRect r = static_cast<QWidget *>(widget)->rect();
    if (out_x) *out_x = r.x();
    if (out_y) *out_y = r.y();
    if (out_w) *out_w = r.width();
    if (out_h) *out_h = r.height();
}

void qt_widget_get_size(void *widget, int *out_w, int *out_h) {
    QSize s = static_cast<QWidget *>(widget)->size();
    if (out_w) *out_w = s.width();
    if (out_h) *out_h = s.height();
}

void qt_widget_get_pos(void *widget, int *out_x, int *out_y) {
    QPoint p = static_cast<QWidget *>(widget)->pos();
    if (out_x) *out_x = p.x();
    if (out_y) *out_y = p.y();
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

void qt_label_clear(void *label) {
    static_cast<QLabel *>(label)->clear();
}

void qt_label_set_scaled_contents(void *label, int is_scaled) {
    static_cast<QLabel *>(label)->setScaledContents(is_scaled != 0);
}

void qt_label_set_text_format(void *label, int format) {
    static_cast<QLabel *>(label)->setTextFormat(static_cast<Qt::TextFormat>(format));
}

void qt_label_set_text_interaction_flags(void *label, int flags) {
    static_cast<QLabel *>(label)->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

void qt_label_set_open_external_links(void *label, int is_open) {
    static_cast<QLabel *>(label)->setOpenExternalLinks(is_open != 0);
}

void qt_label_set_buddy(void *label, void *buddy) {
    static_cast<QLabel *>(label)->setBuddy(static_cast<QWidget *>(buddy));
}

void qt_label_set_indent(void *label, int indent) {
    static_cast<QLabel *>(label)->setIndent(indent);
}

void qt_label_set_margin(void *label, int margin) {
    static_cast<QLabel *>(label)->setMargin(margin);
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

void qt_push_button_set_default(void *button, int is_default) {
    static_cast<QPushButton *>(button)->setDefault(is_default != 0);
}

int qt_push_button_is_default(void *button) {
    return static_cast<QPushButton *>(button)->isDefault() ? 1 : 0;
}

void qt_push_button_set_auto_default(void *button, int is_auto_default) {
    static_cast<QPushButton *>(button)->setAutoDefault(is_auto_default != 0);
}

int qt_push_button_is_auto_default(void *button) {
    return static_cast<QPushButton *>(button)->autoDefault() ? 1 : 0;
}

void qt_push_button_set_menu(void *button, void *menu) {
    static_cast<QPushButton *>(button)->setMenu(static_cast<QMenu *>(menu));
}

void qt_push_button_show_menu(void *button) {
    static_cast<QPushButton *>(button)->showMenu();
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

void qt_line_edit_set_alignment(void *line_edit, int alignment) {
    static_cast<QLineEdit *>(line_edit)->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void qt_line_edit_set_cursor_position(void *line_edit, int position) {
    static_cast<QLineEdit *>(line_edit)->setCursorPosition(position);
}

int qt_line_edit_get_cursor_position(void *line_edit) {
    return static_cast<QLineEdit *>(line_edit)->cursorPosition();
}

void qt_line_edit_set_input_mask(void *line_edit, const char *mask) {
    static_cast<QLineEdit *>(line_edit)->setInputMask(QString::fromUtf8(mask));
}

int qt_line_edit_has_selected_text(void *line_edit) {
    return static_cast<QLineEdit *>(line_edit)->hasSelectedText() ? 1 : 0;
}

char *qt_line_edit_get_selected_text(void *line_edit) {
    return qstring_to_heap_utf8(static_cast<QLineEdit *>(line_edit)->selectedText());
}

void qt_line_edit_set_selection(void *line_edit, int start, int length) {
    static_cast<QLineEdit *>(line_edit)->setSelection(start, length);
}

void qt_line_edit_undo(void *line_edit) {
    static_cast<QLineEdit *>(line_edit)->undo();
}

void qt_line_edit_redo(void *line_edit) {
    static_cast<QLineEdit *>(line_edit)->redo();
}

int qt_line_edit_is_modified(void *line_edit) {
    return static_cast<QLineEdit *>(line_edit)->isModified() ? 1 : 0;
}

void qt_line_edit_set_modified(void *line_edit, int is_modified) {
    static_cast<QLineEdit *>(line_edit)->setModified(is_modified != 0);
}

void qt_line_edit_set_drag_enabled(void *line_edit, int is_drag_enabled) {
    static_cast<QLineEdit *>(line_edit)->setDragEnabled(is_drag_enabled != 0);
}

void qt_line_edit_home(void *line_edit, int is_mark) {
    static_cast<QLineEdit *>(line_edit)->home(is_mark != 0);
}

void qt_line_edit_end(void *line_edit, int is_mark) {
    static_cast<QLineEdit *>(line_edit)->end(is_mark != 0);
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

void qt_text_edit_set_tab_stop_distance(void *text_edit, double distance) {
    static_cast<QTextEdit *>(text_edit)->setTabStopDistance(distance);
}

double qt_text_edit_get_tab_stop_distance(void *text_edit) {
    return static_cast<QTextEdit *>(text_edit)->tabStopDistance();
}

void qt_text_edit_set_line_wrap_mode(void *text_edit, int mode) {
    static_cast<QTextEdit *>(text_edit)->setLineWrapMode(static_cast<QTextEdit::LineWrapMode>(mode));
}

void qt_text_edit_set_word_wrap_mode(void *text_edit, int mode) {
    static_cast<QTextEdit *>(text_edit)->setWordWrapMode(static_cast<QTextOption::WrapMode>(mode));
}

void qt_text_edit_set_accept_rich_text(void *text_edit, int is_accept) {
    static_cast<QTextEdit *>(text_edit)->setAcceptRichText(is_accept != 0);
}

int qt_text_edit_find(void *text_edit, const char *text, int flags) {
    return static_cast<QTextEdit *>(text_edit)->find(QString::fromUtf8(text), static_cast<QTextDocument::FindFlags>(flags)) ? 1 : 0;
}

void qt_text_edit_undo(void *text_edit) {
    static_cast<QTextEdit *>(text_edit)->undo();
}

void qt_text_edit_redo(void *text_edit) {
    static_cast<QTextEdit *>(text_edit)->redo();
}

void qt_text_edit_zoom_in(void *text_edit, int range) {
    static_cast<QTextEdit *>(text_edit)->zoomIn(range);
}

void qt_text_edit_zoom_out(void *text_edit, int range) {
    static_cast<QTextEdit *>(text_edit)->zoomOut(range);
}

void *qt_text_edit_get_text_cursor(void *text_edit) {
    QTextCursor *cursor = new QTextCursor(static_cast<QTextEdit *>(text_edit)->textCursor());
    return static_cast<void *>(cursor);
}

void *qt_text_edit_get_document(void *text_edit) {
    return static_cast<void *>(static_cast<QTextEdit *>(text_edit)->document());
}

void qt_text_edit_set_current_font(void *text_edit, void *font) {
    static_cast<QTextEdit *>(text_edit)->setCurrentFont(*static_cast<QFont *>(font));
}

void qt_text_edit_set_font_weight(void *text_edit, int weight) {
    static_cast<QTextEdit *>(text_edit)->setFontWeight(weight);
}

void qt_text_edit_set_font_italic(void *text_edit, int is_italic) {
    static_cast<QTextEdit *>(text_edit)->setFontItalic(is_italic != 0);
}

void qt_text_edit_set_font_underline(void *text_edit, int is_underline) {
    static_cast<QTextEdit *>(text_edit)->setFontUnderline(is_underline != 0);
}

void qt_text_edit_set_font_point_size(void *text_edit, double size) {
    static_cast<QTextEdit *>(text_edit)->setFontPointSize(size);
}

void qt_text_edit_set_font_family(void *text_edit, const char *family) {
    static_cast<QTextEdit *>(text_edit)->setFontFamily(QString::fromUtf8(family));
}

void qt_text_edit_set_text_colour(void *text_edit, void *colour) {
    static_cast<QTextEdit *>(text_edit)->setTextColor(*static_cast<QColor *>(colour));
}

void qt_text_edit_set_text_background_colour(void *text_edit, void *colour) {
    static_cast<QTextEdit *>(text_edit)->setTextBackgroundColor(*static_cast<QColor *>(colour));
}

void qt_text_edit_set_alignment(void *text_edit, int alignment) {
    static_cast<QTextEdit *>(text_edit)->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void qt_text_edit_move_cursor(void *text_edit, int operation, int mode) {
    static_cast<QTextEdit *>(text_edit)->moveCursor(static_cast<QTextCursor::MoveOperation>(operation), static_cast<QTextCursor::MoveMode>(mode));
}

void qt_text_edit_ensure_cursor_visible(void *text_edit) {
    static_cast<QTextEdit *>(text_edit)->ensureCursorVisible();
}

void qt_text_edit_set_overwrite_mode(void *text_edit, int is_overwrite) {
    static_cast<QTextEdit *>(text_edit)->setOverwriteMode(is_overwrite != 0);
}

int qt_text_edit_can_paste(void *text_edit) {
    return static_cast<QTextEdit *>(text_edit)->canPaste() ? 1 : 0;
}

void *qt_text_edit_get_vertical_scroll_bar(void *text_edit) {
    return static_cast<void *>(static_cast<QTextEdit *>(text_edit)->verticalScrollBar());
}

void *qt_text_edit_get_horizontal_scroll_bar(void *text_edit) {
    return static_cast<void *>(static_cast<QTextEdit *>(text_edit)->horizontalScrollBar());
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

void qt_plain_text_edit_set_tab_stop_distance(void *text_edit, double distance) {
    static_cast<QPlainTextEdit *>(text_edit)->setTabStopDistance(distance);
}

double qt_plain_text_edit_get_tab_stop_distance(void *text_edit) {
    return static_cast<QPlainTextEdit *>(text_edit)->tabStopDistance();
}

void qt_plain_text_edit_set_line_wrap_mode(void *text_edit, int mode) {
    static_cast<QPlainTextEdit *>(text_edit)->setLineWrapMode(static_cast<QPlainTextEdit::LineWrapMode>(mode));
}

int qt_plain_text_edit_find(void *text_edit, const char *text, int flags) {
    return static_cast<QPlainTextEdit *>(text_edit)->find(QString::fromUtf8(text), static_cast<QTextDocument::FindFlags>(flags)) ? 1 : 0;
}

void qt_plain_text_edit_undo(void *text_edit) {
    static_cast<QPlainTextEdit *>(text_edit)->undo();
}

void qt_plain_text_edit_redo(void *text_edit) {
    static_cast<QPlainTextEdit *>(text_edit)->redo();
}

void qt_plain_text_edit_zoom_in(void *text_edit, int range) {
    static_cast<QPlainTextEdit *>(text_edit)->zoomIn(range);
}

void qt_plain_text_edit_zoom_out(void *text_edit, int range) {
    static_cast<QPlainTextEdit *>(text_edit)->zoomOut(range);
}

void *qt_plain_text_edit_get_text_cursor(void *text_edit) {
    QTextCursor *cursor = new QTextCursor(static_cast<QPlainTextEdit *>(text_edit)->textCursor());
    return static_cast<void *>(cursor);
}

void *qt_plain_text_edit_get_document(void *text_edit) {
    return static_cast<void *>(static_cast<QPlainTextEdit *>(text_edit)->document());
}

int qt_plain_text_edit_get_block_count(void *text_edit) {
    return static_cast<QPlainTextEdit *>(text_edit)->blockCount();
}

void qt_plain_text_edit_set_maximum_block_count(void *text_edit, int count) {
    static_cast<QPlainTextEdit *>(text_edit)->setMaximumBlockCount(count);
}

void qt_plain_text_edit_move_cursor(void *text_edit, int operation, int mode) {
    static_cast<QPlainTextEdit *>(text_edit)->moveCursor(static_cast<QTextCursor::MoveOperation>(operation), static_cast<QTextCursor::MoveMode>(mode));
}

void qt_plain_text_edit_ensure_cursor_visible(void *text_edit) {
    static_cast<QPlainTextEdit *>(text_edit)->ensureCursorVisible();
}

void qt_plain_text_edit_set_overwrite_mode(void *text_edit, int is_overwrite) {
    static_cast<QPlainTextEdit *>(text_edit)->setOverwriteMode(is_overwrite != 0);
}

void *qt_plain_text_edit_get_vertical_scroll_bar(void *text_edit) {
    return static_cast<void *>(static_cast<QPlainTextEdit *>(text_edit)->verticalScrollBar());
}

void *qt_plain_text_edit_get_horizontal_scroll_bar(void *text_edit) {
    return static_cast<void *>(static_cast<QPlainTextEdit *>(text_edit)->horizontalScrollBar());
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

void qt_combo_box_add_items(void *combo_box, const char **items, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(items[i]));
    }
    static_cast<QComboBox *>(combo_box)->addItems(sl);
}

void qt_combo_box_insert_items(void *combo_box, int index, const char **items, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(items[i]));
    }
    static_cast<QComboBox *>(combo_box)->insertItems(index, sl);
}

void qt_combo_box_set_max_visible_items(void *combo_box, int max_items) {
    static_cast<QComboBox *>(combo_box)->setMaxVisibleItems(max_items);
}

void qt_combo_box_set_max_count(void *combo_box, int max_count) {
    static_cast<QComboBox *>(combo_box)->setMaxCount(max_count);
}

void qt_combo_box_set_insert_policy(void *combo_box, int policy) {
    static_cast<QComboBox *>(combo_box)->setInsertPolicy(static_cast<QComboBox::InsertPolicy>(policy));
}

void qt_combo_box_set_duplicates_enabled(void *combo_box, int is_duplicates_enabled) {
    static_cast<QComboBox *>(combo_box)->setDuplicatesEnabled(is_duplicates_enabled != 0);
}

void *qt_combo_box_get_line_edit(void *combo_box) {
    return static_cast<void *>(static_cast<QComboBox *>(combo_box)->lineEdit());
}

void qt_combo_box_show_popup(void *combo_box) {
    static_cast<QComboBox *>(combo_box)->showPopup();
}

void qt_combo_box_hide_popup(void *combo_box) {
    static_cast<QComboBox *>(combo_box)->hidePopup();
}

void qt_combo_box_set_model(void *combo_box, void *model) {
    static_cast<QComboBox *>(combo_box)->setModel(static_cast<QAbstractItemModel *>(model));
}

void *qt_combo_box_get_model(void *combo_box) {
    return static_cast<void *>(static_cast<QComboBox *>(combo_box)->model());
}

void qt_combo_box_set_size_adjust_policy(void *combo_box, int policy) {
    static_cast<QComboBox *>(combo_box)->setSizeAdjustPolicy(static_cast<QComboBox::SizeAdjustPolicy>(policy));
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

void qt_slider_set_orientation(void *slider, int orientation) {
    static_cast<QSlider *>(slider)->setOrientation(static_cast<Qt::Orientation>(orientation));
}

void qt_slider_set_minimum(void *slider, int min_val) {
    static_cast<QSlider *>(slider)->setMinimum(min_val);
}

void qt_slider_set_maximum(void *slider, int max_val) {
    static_cast<QSlider *>(slider)->setMaximum(max_val);
}

int qt_slider_get_minimum(void *slider) {
    return static_cast<QSlider *>(slider)->minimum();
}

int qt_slider_get_maximum(void *slider) {
    return static_cast<QSlider *>(slider)->maximum();
}

void qt_slider_set_inverted_appearance(void *slider, int is_inverted) {
    static_cast<QSlider *>(slider)->setInvertedAppearance(is_inverted != 0);
}

void qt_slider_set_inverted_controls(void *slider, int is_inverted) {
    static_cast<QSlider *>(slider)->setInvertedControls(is_inverted != 0);
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

void qt_progress_bar_set_minimum(void *progress_bar, int min_val) {
    static_cast<QProgressBar *>(progress_bar)->setMinimum(min_val);
}

void qt_progress_bar_set_maximum(void *progress_bar, int max_val) {
    static_cast<QProgressBar *>(progress_bar)->setMaximum(max_val);
}

int qt_progress_bar_get_minimum(void *progress_bar) {
    return static_cast<QProgressBar *>(progress_bar)->minimum();
}

int qt_progress_bar_get_maximum(void *progress_bar) {
    return static_cast<QProgressBar *>(progress_bar)->maximum();
}

int qt_progress_bar_is_text_visible(void *progress_bar) {
    return static_cast<QProgressBar *>(progress_bar)->isTextVisible() ? 1 : 0;
}

char *qt_progress_bar_get_text(void *progress_bar) {
    return qstring_to_heap_utf8(static_cast<QProgressBar *>(progress_bar)->text());
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

void qt_grid_layout_add_layout(void *layout, void *child_layout, int row, int col, int row_span, int col_span) {
    static_cast<QGridLayout *>(layout)->addLayout(
        static_cast<QLayout *>(child_layout), row, col, row_span, col_span
    );
}

void qt_form_layout_add_row_widgets(void *layout, void *label_widget, void *field_widget) {
    static_cast<QFormLayout *>(layout)->addRow(
        static_cast<QWidget *>(label_widget),
        static_cast<QWidget *>(field_widget)
    );
}

int qt_layout_get_count(void *layout) {
    return static_cast<QLayout *>(layout)->count();
}

void *qt_layout_item_at(void *layout, int index) {
    return static_cast<void *>(static_cast<QLayout *>(layout)->itemAt(index));
}

void *qt_layout_take_at(void *layout, int index) {
    return static_cast<void *>(static_cast<QLayout *>(layout)->takeAt(index));
}

void *qt_layout_item_get_widget(void *item) {
    if (!item) return nullptr;
    return static_cast<void *>(static_cast<QLayoutItem *>(item)->widget());
}

void qt_layout_item_destroy(void *item) {
    delete static_cast<QLayoutItem *>(item);
}

void qt_box_layout_insert_widget(void *layout, int index, void *widget, int stretch, int alignment) {
    static_cast<QBoxLayout *>(layout)->insertWidget(
        index, static_cast<QWidget *>(widget), stretch, static_cast<Qt::Alignment>(alignment)
    );
}

void *qt_spacer_item_create(int width, int height, int horizontal_policy, int vertical_policy) {
    return static_cast<void *>(new QSpacerItem(
        width, height,
        static_cast<QSizePolicy::Policy>(horizontal_policy),
        static_cast<QSizePolicy::Policy>(vertical_policy)
    ));
}

void qt_box_layout_add_spacer_item(void *layout, void *spacer) {
    static_cast<QBoxLayout *>(layout)->addSpacerItem(
        static_cast<QSpacerItem *>(spacer)
    );
}

void qt_grid_layout_add_spacer_item(void *layout, void *spacer, int row, int col, int row_span, int col_span) {
    static_cast<QGridLayout *>(layout)->addItem(
        static_cast<QSpacerItem *>(spacer), row, col, row_span, col_span
    );
}

int qt_layout_set_widget_alignment(void *layout, void *widget, int alignment) {
    return static_cast<QLayout *>(layout)->setAlignment(
        static_cast<QWidget *>(widget), static_cast<Qt::Alignment>(alignment)
    ) ? 1 : 0;
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

void *qt_list_widget_get_item(void *list, int row) {
    return static_cast<void *>(static_cast<QListWidget *>(list)->item(row));
}

void *qt_list_widget_get_item_at(void *list, int x, int y) {
    return static_cast<void *>(static_cast<QListWidget *>(list)->itemAt(x, y));
}

void *qt_list_widget_get_current_item(void *list) {
    return static_cast<void *>(static_cast<QListWidget *>(list)->currentItem());
}

void qt_list_widget_set_current_item(void *list, void *item) {
    static_cast<QListWidget *>(list)->setCurrentItem(static_cast<QListWidgetItem *>(item));
}

void qt_list_widget_get_selected_items(void *list, void ***out_items, int *out_count) {
    auto selected = static_cast<QListWidget *>(list)->selectedItems();
    *out_count = selected.size();
    if (*out_count == 0) {
        *out_items = nullptr;
        return;
    }
    *out_items = static_cast<void **>(malloc(sizeof(void *) * *out_count));
    for (int i = 0; i < *out_count; i++) {
        (*out_items)[i] = static_cast<void *>(selected[i]);
    }
}

void qt_list_widget_add_items(void *list, const char **items, int count) {
    auto *lw = static_cast<QListWidget *>(list);
    for (int i = 0; i < count; i++) {
        lw->addItem(QString::fromUtf8(items[i]));
    }
}

void qt_list_widget_find_items(void *list, const char *text, int match_flags, void ***out_items, int *out_count) {
    auto found = static_cast<QListWidget *>(list)->findItems(
        QString::fromUtf8(text), static_cast<Qt::MatchFlags>(match_flags)
    );
    *out_count = found.size();
    if (*out_count == 0) {
        *out_items = nullptr;
        return;
    }
    *out_items = static_cast<void **>(malloc(sizeof(void *) * *out_count));
    for (int i = 0; i < *out_count; i++) {
        (*out_items)[i] = static_cast<void *>(found[i]);
    }
}

void qt_list_widget_scroll_to_item(void *list, void *item, int scroll_hint) {
    static_cast<QListWidget *>(list)->scrollToItem(
        static_cast<QListWidgetItem *>(item),
        static_cast<QAbstractItemView::ScrollHint>(scroll_hint)
    );
}

void qt_list_widget_set_view_mode(void *list, int mode) {
    static_cast<QListWidget *>(list)->setViewMode(static_cast<QListView::ViewMode>(mode));
}

void qt_list_widget_set_icon_size(void *list, int w, int h) {
    static_cast<QListWidget *>(list)->setIconSize(QSize(w, h));
}

void qt_list_widget_set_grid_size(void *list, int w, int h) {
    static_cast<QListWidget *>(list)->setGridSize(QSize(w, h));
}

void qt_list_widget_set_flow(void *list, int flow) {
    static_cast<QListWidget *>(list)->setFlow(static_cast<QListView::Flow>(flow));
}

void qt_list_widget_set_spacing(void *list, int spacing) {
    static_cast<QListWidget *>(list)->setSpacing(spacing);
}

void qt_list_widget_set_sorting_enabled(void *list, int is_enabled) {
    static_cast<QListWidget *>(list)->setSortingEnabled(is_enabled != 0);
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

void qt_tree_widget_insert_top_level_item(void *tree, int index, void *item) {
    static_cast<QTreeWidget *>(tree)->insertTopLevelItem(
        index, static_cast<QTreeWidgetItem *>(item)
    );
}

void *qt_tree_widget_get_top_level_item(void *tree, int index) {
    return static_cast<void *>(static_cast<QTreeWidget *>(tree)->topLevelItem(index));
}

int qt_tree_widget_index_of_top_level_item(void *tree, void *item) {
    return static_cast<QTreeWidget *>(tree)->indexOfTopLevelItem(
        static_cast<QTreeWidgetItem *>(item)
    );
}

void qt_tree_widget_get_selected_items(void *tree, void ***out_items, int *out_count) {
    auto *tw = static_cast<QTreeWidget *>(tree);
    QList<QTreeWidgetItem *> items = tw->selectedItems();
    *out_count = items.size();
    if (*out_count > 0) {
        *out_items = static_cast<void **>(malloc(sizeof(void *) * *out_count));
        for (int i = 0; i < *out_count; i++) {
            (*out_items)[i] = static_cast<void *>(items[i]);
        }
    } else {
        *out_items = nullptr;
    }
}

void qt_tree_widget_find_items(void *tree, const char *text, int flags, int column, void ***out_items, int *out_count) {
    auto *tw = static_cast<QTreeWidget *>(tree);
    QList<QTreeWidgetItem *> items = tw->findItems(QString::fromUtf8(text), static_cast<Qt::MatchFlags>(flags), column);
    *out_count = items.size();
    if (*out_count > 0) {
        *out_items = static_cast<void **>(malloc(sizeof(void *) * *out_count));
        for (int i = 0; i < *out_count; i++) {
            (*out_items)[i] = static_cast<void *>(items[i]);
        }
    } else {
        *out_items = nullptr;
    }
}

void qt_tree_widget_scroll_to_item(void *tree, void *item, int scroll_hint) {
    static_cast<QTreeWidget *>(tree)->scrollToItem(
        static_cast<QTreeWidgetItem *>(item),
        static_cast<QAbstractItemView::ScrollHint>(scroll_hint)
    );
}

void qt_tree_widget_sort_items(void *tree, int column, int order) {
    static_cast<QTreeWidget *>(tree)->sortItems(column, static_cast<Qt::SortOrder>(order));
}

void qt_tree_widget_set_indentation(void *tree, int indentation) {
    static_cast<QTreeWidget *>(tree)->setIndentation(indentation);
}

void qt_tree_widget_set_uniform_row_heights(void *tree, int is_uniform) {
    static_cast<QTreeWidget *>(tree)->setUniformRowHeights(is_uniform != 0);
}

void qt_tree_widget_set_animated(void *tree, int is_animated) {
    static_cast<QTreeWidget *>(tree)->setAnimated(is_animated != 0);
}

void qt_tree_widget_set_header_hidden(void *tree, int is_hidden) {
    static_cast<QTreeWidget *>(tree)->setHeaderHidden(is_hidden != 0);
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

void qt_tree_widget_item_set_icon(void *item, int column, void *icon) {
    static_cast<QTreeWidgetItem *>(item)->setIcon(column, *static_cast<QIcon *>(icon));
}

void qt_tree_widget_item_set_check_state(void *item, int column, int state) {
    static_cast<QTreeWidgetItem *>(item)->setCheckState(column, static_cast<Qt::CheckState>(state));
}

int qt_tree_widget_item_get_check_state(void *item, int column) {
    return static_cast<int>(static_cast<QTreeWidgetItem *>(item)->checkState(column));
}

void qt_tree_widget_item_set_flags(void *item, int flags) {
    static_cast<QTreeWidgetItem *>(item)->setFlags(static_cast<Qt::ItemFlags>(flags));
}

void qt_tree_widget_item_set_data(void *item, int column, int role, int value) {
    static_cast<QTreeWidgetItem *>(item)->setData(column, role, QVariant(value));
}

int qt_tree_widget_item_get_data(void *item, int column, int role) {
    return static_cast<QTreeWidgetItem *>(item)->data(column, role).toInt();
}

void qt_tree_widget_item_set_data_string(void *item, int column, int role, const char *value) {
    static_cast<QTreeWidgetItem *>(item)->setData(column, role, QVariant(QString::fromUtf8(value)));
}

char *qt_tree_widget_item_get_data_string(void *item, int column, int role) {
    return qstring_to_heap_utf8(static_cast<QTreeWidgetItem *>(item)->data(column, role).toString());
}

void qt_tree_widget_item_set_tool_tip(void *item, int column, const char *tooltip) {
    static_cast<QTreeWidgetItem *>(item)->setToolTip(column, QString::fromUtf8(tooltip));
}

void qt_tree_widget_item_set_hidden(void *item, int is_hidden) {
    static_cast<QTreeWidgetItem *>(item)->setHidden(is_hidden != 0);
}

int qt_tree_widget_item_is_hidden(void *item) {
    return static_cast<QTreeWidgetItem *>(item)->isHidden() ? 1 : 0;
}

void qt_tree_widget_item_set_disabled(void *item, int is_disabled) {
    static_cast<QTreeWidgetItem *>(item)->setDisabled(is_disabled != 0);
}

int qt_tree_widget_item_is_disabled(void *item) {
    return static_cast<QTreeWidgetItem *>(item)->isDisabled() ? 1 : 0;
}

void qt_tree_widget_item_set_selected(void *item, int is_selected) {
    static_cast<QTreeWidgetItem *>(item)->setSelected(is_selected != 0);
}

int qt_tree_widget_item_is_selected(void *item) {
    return static_cast<QTreeWidgetItem *>(item)->isSelected() ? 1 : 0;
}

void qt_tree_widget_item_set_first_column_spanned(void *item, int is_spanned) {
    static_cast<QTreeWidgetItem *>(item)->setFirstColumnSpanned(is_spanned != 0);
}

void *qt_tree_widget_item_get_tree_widget(void *item) {
    return static_cast<void *>(static_cast<QTreeWidgetItem *>(item)->treeWidget());
}

void *qt_tree_widget_item_take_child(void *item, int index) {
    return static_cast<void *>(static_cast<QTreeWidgetItem *>(item)->takeChild(index));
}

void qt_tree_widget_item_sort_children(void *item, int column, int order) {
    static_cast<QTreeWidgetItem *>(item)->sortChildren(column, static_cast<Qt::SortOrder>(order));
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

void qt_table_widget_set_cell_widget(void *table, int row, int col, void *widget) {
    static_cast<QTableWidget *>(table)->setCellWidget(row, col, static_cast<QWidget *>(widget));
}

void *qt_table_widget_get_cell_widget(void *table, int row, int col) {
    return static_cast<void *>(static_cast<QTableWidget *>(table)->cellWidget(row, col));
}

void *qt_table_widget_get_item(void *table, int row, int col) {
    return static_cast<void *>(static_cast<QTableWidget *>(table)->item(row, col));
}

void *qt_table_widget_get_current_item(void *table) {
    return static_cast<void *>(static_cast<QTableWidget *>(table)->currentItem());
}

void qt_table_widget_set_current_cell(void *table, int row, int col) {
    static_cast<QTableWidget *>(table)->setCurrentCell(row, col);
}

void qt_table_widget_get_selected_items(void *table, void ***out_items, int *out_count) {
    auto *t = static_cast<QTableWidget *>(table);
    QList<QTableWidgetItem *> items = t->selectedItems();
    *out_count = items.size();
    if (*out_count > 0) {
        *out_items = static_cast<void **>(malloc(sizeof(void *) * *out_count));
        for (int i = 0; i < *out_count; i++) {
            (*out_items)[i] = static_cast<void *>(items[i]);
        }
    } else {
        *out_items = nullptr;
    }
}

void qt_table_widget_set_show_grid(void *table, int is_show) {
    static_cast<QTableWidget *>(table)->setShowGrid(is_show != 0);
}

void qt_table_widget_set_span(void *table, int row, int col, int row_span, int col_span) {
    static_cast<QTableWidget *>(table)->setSpan(row, col, row_span, col_span);
}

int qt_table_widget_get_row_span(void *table, int row, int col) {
    return static_cast<QTableWidget *>(table)->rowSpan(row, col);
}

int qt_table_widget_get_column_span(void *table, int row, int col) {
    return static_cast<QTableWidget *>(table)->columnSpan(row, col);
}

void qt_table_widget_scroll_to_item(void *table, void *item, int scroll_hint) {
    static_cast<QTableWidget *>(table)->scrollToItem(
        static_cast<QTableWidgetItem *>(item),
        static_cast<QAbstractItemView::ScrollHint>(scroll_hint)
    );
}

void qt_table_widget_find_items(void *table, const char *text, int flags, void ***out_items, int *out_count) {
    auto *t = static_cast<QTableWidget *>(table);
    QList<QTableWidgetItem *> items = t->findItems(QString::fromUtf8(text), static_cast<Qt::MatchFlags>(flags));
    *out_count = items.size();
    if (*out_count > 0) {
        *out_items = static_cast<void **>(malloc(sizeof(void *) * *out_count));
        for (int i = 0; i < *out_count; i++) {
            (*out_items)[i] = static_cast<void *>(items[i]);
        }
    } else {
        *out_items = nullptr;
    }
}

void qt_table_widget_set_word_wrap(void *table, int is_word_wrap) {
    static_cast<QTableWidget *>(table)->setWordWrap(is_word_wrap != 0);
}

void qt_table_widget_set_corner_button_enabled(void *table, int is_enabled) {
    static_cast<QTableWidget *>(table)->setCornerButtonEnabled(is_enabled != 0);
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

void qt_scroll_area_ensure_visible(void *scroll_area, int x, int y, int x_margin, int y_margin) {
    static_cast<QScrollArea *>(scroll_area)->ensureVisible(x, y, x_margin, y_margin);
}

void qt_scroll_area_ensure_widget_visible(void *scroll_area, void *widget, int x_margin, int y_margin) {
    static_cast<QScrollArea *>(scroll_area)->ensureWidgetVisible(
        static_cast<QWidget *>(widget), x_margin, y_margin
    );
}

void *qt_scroll_area_take_widget(void *scroll_area) {
    return static_cast<void *>(static_cast<QScrollArea *>(scroll_area)->takeWidget());
}

void *qt_scroll_area_get_vertical_scroll_bar(void *scroll_area) {
    return static_cast<void *>(static_cast<QScrollArea *>(scroll_area)->verticalScrollBar());
}

void *qt_scroll_area_get_horizontal_scroll_bar(void *scroll_area) {
    return static_cast<void *>(static_cast<QScrollArea *>(scroll_area)->horizontalScrollBar());
}

void qt_scroll_area_set_alignment(void *scroll_area, int alignment) {
    static_cast<QScrollArea *>(scroll_area)->setAlignment(static_cast<Qt::Alignment>(alignment));
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

void *qt_splitter_get_widget(void *splitter, int index) {
    return static_cast<void *>(static_cast<QSplitter *>(splitter)->widget(index));
}

int qt_splitter_index_of(void *splitter, void *widget) {
    return static_cast<QSplitter *>(splitter)->indexOf(static_cast<QWidget *>(widget));
}

void qt_splitter_set_children_collapsible(void *splitter, int is_collapsible) {
    static_cast<QSplitter *>(splitter)->setChildrenCollapsible(is_collapsible != 0);
}

void qt_splitter_set_opaque_resize(void *splitter, int is_opaque) {
    static_cast<QSplitter *>(splitter)->setOpaqueResize(is_opaque != 0);
}

void qt_splitter_set_handle_width(void *splitter, int width) {
    static_cast<QSplitter *>(splitter)->setHandleWidth(width);
}

char *qt_splitter_save_state(void *splitter, int *out_len) {
    QByteArray state = static_cast<QSplitter *>(splitter)->saveState();
    *out_len = state.size();
    char *result = static_cast<char *>(malloc(state.size()));
    memcpy(result, state.constData(), state.size());
    return result;
}

int qt_splitter_restore_state(void *splitter, const char *data, int len) {
    return static_cast<QSplitter *>(splitter)->restoreState(
        QByteArray(data, len)
    ) ? 1 : 0;
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

void *qt_menu_add_section(void *menu, const char *text) {
    return static_cast<void *>(static_cast<QMenu *>(menu)->addSection(QString::fromUtf8(text)));
}

void qt_menu_insert_action(void *menu, void *before, void *action) {
    static_cast<QMenu *>(menu)->insertAction(
        static_cast<QAction *>(before), static_cast<QAction *>(action)
    );
}

void *qt_menu_insert_separator(void *menu, void *before) {
    return static_cast<void *>(
        static_cast<QMenu *>(menu)->insertSeparator(static_cast<QAction *>(before))
    );
}

void *qt_menu_insert_menu(void *menu, void *before, void *submenu) {
    return static_cast<void *>(
        static_cast<QMenu *>(menu)->insertMenu(
            static_cast<QAction *>(before), static_cast<QMenu *>(submenu)
        )
    );
}

void qt_menu_set_title(void *menu, const char *title) {
    static_cast<QMenu *>(menu)->setTitle(QString::fromUtf8(title));
}

char *qt_menu_get_title(void *menu) {
    return qstring_to_heap_utf8(static_cast<QMenu *>(menu)->title());
}

void qt_menu_set_icon(void *menu, void *icon) {
    static_cast<QMenu *>(menu)->setIcon(*static_cast<QIcon *>(icon));
}

void qt_menu_set_tear_off_enabled(void *menu, int is_enabled) {
    static_cast<QMenu *>(menu)->setTearOffEnabled(is_enabled != 0);
}

void qt_menu_set_default_action(void *menu, void *action) {
    static_cast<QMenu *>(menu)->setDefaultAction(static_cast<QAction *>(action));
}

void qt_menu_get_actions(void *menu, void ***out_actions, int *out_count) {
    auto actions = static_cast<QMenu *>(menu)->actions();
    *out_count = actions.size();
    if (*out_count == 0) {
        *out_actions = nullptr;
        return;
    }
    *out_actions = static_cast<void **>(malloc(sizeof(void *) * *out_count));
    for (int i = 0; i < *out_count; i++) {
        (*out_actions)[i] = static_cast<void *>(actions[i]);
    }
}

int qt_menu_is_empty(void *menu) {
    return static_cast<QMenu *>(menu)->isEmpty() ? 1 : 0;
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

void qt_action_set_shortcut_context(void *action, int context) {
    static_cast<QAction *>(action)->setShortcutContext(static_cast<Qt::ShortcutContext>(context));
}

void qt_action_set_status_tip(void *action, const char *tip) {
    static_cast<QAction *>(action)->setStatusTip(QString::fromUtf8(tip));
}

void qt_action_set_whats_this(void *action, const char *text) {
    static_cast<QAction *>(action)->setWhatsThis(QString::fromUtf8(text));
}

void qt_action_set_auto_repeat(void *action, int is_enabled) {
    static_cast<QAction *>(action)->setAutoRepeat(is_enabled != 0);
}

void qt_action_set_data(void *action, const char *data) {
    static_cast<QAction *>(action)->setData(QString::fromUtf8(data));
}

char *qt_action_get_data(void *action) {
    return qstring_to_heap_utf8(static_cast<QAction *>(action)->data().toString());
}

void qt_action_trigger(void *action) {
    static_cast<QAction *>(action)->trigger();
}

void qt_action_set_menu_role(void *action, int role) {
    static_cast<QAction *>(action)->setMenuRole(static_cast<QAction::MenuRole>(role));
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

void qt_toolbar_insert_action(void *toolbar, void *before, void *action) {
    static_cast<QToolBar *>(toolbar)->insertAction(
        static_cast<QAction *>(before), static_cast<QAction *>(action)
    );
}

void *qt_toolbar_insert_separator(void *toolbar, void *before) {
    return static_cast<void *>(
        static_cast<QToolBar *>(toolbar)->insertSeparator(static_cast<QAction *>(before))
    );
}

void *qt_toolbar_insert_widget(void *toolbar, void *before, void *widget) {
    return static_cast<void *>(
        static_cast<QToolBar *>(toolbar)->insertWidget(
            static_cast<QAction *>(before), static_cast<QWidget *>(widget)
        )
    );
}

void qt_toolbar_set_allowed_areas(void *toolbar, int areas) {
    static_cast<QToolBar *>(toolbar)->setAllowedAreas(static_cast<Qt::ToolBarAreas>(areas));
}

void qt_toolbar_set_floatable(void *toolbar, int is_floatable) {
    static_cast<QToolBar *>(toolbar)->setFloatable(is_floatable != 0);
}

void qt_toolbar_set_orientation(void *toolbar, int orientation) {
    static_cast<QToolBar *>(toolbar)->setOrientation(static_cast<Qt::Orientation>(orientation));
}

void *qt_toolbar_toggle_view_action(void *toolbar) {
    return static_cast<void *>(static_cast<QToolBar *>(toolbar)->toggleViewAction());
}

void *qt_toolbar_widget_for_action(void *toolbar, void *action) {
    return static_cast<void *>(
        static_cast<QToolBar *>(toolbar)->widgetForAction(static_cast<QAction *>(action))
    );
}

void qt_toolbar_clear(void *toolbar) {
    static_cast<QToolBar *>(toolbar)->clear();
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

void *qt_tab_widget_get_current_widget(void *tab_widget) {
    return static_cast<void *>(static_cast<QTabWidget *>(tab_widget)->currentWidget());
}

void qt_tab_widget_clear(void *tab_widget) {
    static_cast<QTabWidget *>(tab_widget)->clear();
}

void qt_tab_widget_set_document_mode(void *tab_widget, int is_document_mode) {
    static_cast<QTabWidget *>(tab_widget)->setDocumentMode(is_document_mode != 0);
}

void qt_tab_widget_set_elide_mode(void *tab_widget, int mode) {
    static_cast<QTabWidget *>(tab_widget)->setElideMode(static_cast<Qt::TextElideMode>(mode));
}

void qt_tab_widget_set_uses_scroll_buttons(void *tab_widget, int is_uses) {
    static_cast<QTabWidget *>(tab_widget)->setUsesScrollButtons(is_uses != 0);
}

void qt_tab_widget_set_tab_bar_auto_hide(void *tab_widget, int is_auto_hide) {
    static_cast<QTabWidget *>(tab_widget)->setTabBarAutoHide(is_auto_hide != 0);
}

void qt_tab_widget_set_corner_widget(void *tab_widget, void *widget, int corner) {
    static_cast<QTabWidget *>(tab_widget)->setCornerWidget(
        static_cast<QWidget *>(widget), static_cast<Qt::Corner>(corner)
    );
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

void qt_dialog_set_modal(void *dialog, int is_modal) {
    static_cast<QDialog *>(dialog)->setModal(is_modal != 0);
}

void qt_dialog_open(void *dialog) {
    static_cast<QDialog *>(dialog)->open();
}

void qt_dialog_done(void *dialog, int result) {
    static_cast<QDialog *>(dialog)->done(result);
}

void qt_dialog_set_result(void *dialog, int result) {
    static_cast<QDialog *>(dialog)->setResult(result);
}

int qt_dialog_get_result(void *dialog) {
    return static_cast<QDialog *>(dialog)->result();
}

void qt_dialog_set_size_grip_enabled(void *dialog, int is_enabled) {
    static_cast<QDialog *>(dialog)->setSizeGripEnabled(is_enabled != 0);
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

int qt_statusbar_insert_widget(void *statusbar, int index, void *widget, int stretch) {
    return static_cast<QStatusBar *>(statusbar)->insertWidget(
        index, static_cast<QWidget *>(widget), stretch
    );
}

int qt_statusbar_insert_permanent_widget(void *statusbar, int index, void *widget, int stretch) {
    return static_cast<QStatusBar *>(statusbar)->insertPermanentWidget(
        index, static_cast<QWidget *>(widget), stretch
    );
}

char *qt_statusbar_get_current_message(void *statusbar) {
    return qstring_to_heap_utf8(static_cast<QStatusBar *>(statusbar)->currentMessage());
}

void qt_statusbar_set_size_grip_enabled(void *statusbar, int is_enabled) {
    static_cast<QStatusBar *>(statusbar)->setSizeGripEnabled(is_enabled != 0);
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

void *qt_pixmap_scaled(void *pixmap, int w, int h, int aspect_ratio_mode, int transform_mode) {
    QPixmap result = static_cast<QPixmap *>(pixmap)->scaled(w, h, static_cast<Qt::AspectRatioMode>(aspect_ratio_mode), static_cast<Qt::TransformationMode>(transform_mode));
    return static_cast<void *>(new QPixmap(result));
}

void *qt_pixmap_scaled_to_width(void *pixmap, int width, int transform_mode) {
    QPixmap result = static_cast<QPixmap *>(pixmap)->scaledToWidth(width, static_cast<Qt::TransformationMode>(transform_mode));
    return static_cast<void *>(new QPixmap(result));
}

void *qt_pixmap_scaled_to_height(void *pixmap, int height, int transform_mode) {
    QPixmap result = static_cast<QPixmap *>(pixmap)->scaledToHeight(height, static_cast<Qt::TransformationMode>(transform_mode));
    return static_cast<void *>(new QPixmap(result));
}

void qt_pixmap_fill(void *pixmap, void *colour) {
    static_cast<QPixmap *>(pixmap)->fill(*static_cast<QColor *>(colour));
}

int qt_pixmap_save(void *pixmap, const char *file_path) {
    return static_cast<QPixmap *>(pixmap)->save(QString::fromUtf8(file_path)) ? 1 : 0;
}

int qt_pixmap_load(void *pixmap, const char *file_path) {
    return static_cast<QPixmap *>(pixmap)->load(QString::fromUtf8(file_path)) ? 1 : 0;
}

void *qt_pixmap_copy(void *pixmap, int x, int y, int w, int h) {
    QPixmap result = static_cast<QPixmap *>(pixmap)->copy(x, y, w, h);
    return static_cast<void *>(new QPixmap(result));
}

void qt_pixmap_get_size(void *pixmap, int *w, int *h) {
    QSize s = static_cast<QPixmap *>(pixmap)->size();
    if (w) *w = s.width();
    if (h) *h = s.height();
}

void qt_pixmap_get_rect(void *pixmap, int *x, int *y, int *w, int *h) {
    QRect r = static_cast<QPixmap *>(pixmap)->rect();
    if (x) *x = r.x();
    if (y) *y = r.y();
    if (w) *w = r.width();
    if (h) *h = r.height();
}

void *qt_pixmap_from_image(void *image) {
    return static_cast<void *>(new QPixmap(QPixmap::fromImage(*static_cast<QImage *>(image))));
}

void *qt_pixmap_create_mask_from_colour(void *pixmap, void *colour, int mode) {
    QBitmap result = static_cast<QPixmap *>(pixmap)->createMaskFromColor(*static_cast<QColor *>(colour), static_cast<Qt::MaskMode>(mode));
    return static_cast<void *>(new QBitmap(result));
}

void qt_pixmap_set_mask(void *pixmap, void *bitmap) {
    static_cast<QPixmap *>(pixmap)->setMask(*static_cast<QBitmap *>(bitmap));
}

void *qt_pixmap_get_mask(void *pixmap) {
    QBitmap result = static_cast<QPixmap *>(pixmap)->mask();
    return static_cast<void *>(new QBitmap(result));
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

void qt_icon_add_file(void *icon, const char *filename, int w, int h, int mode, int state) {
    static_cast<QIcon *>(icon)->addFile(QString::fromUtf8(filename), QSize(w, h), static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

void qt_icon_add_pixmap(void *icon, void *pixmap, int mode, int state) {
    static_cast<QIcon *>(icon)->addPixmap(*static_cast<QPixmap *>(pixmap), static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

void *qt_icon_get_pixmap(void *icon, int w, int h, int mode, int state) {
    return static_cast<void *>(new QPixmap(static_cast<QIcon *>(icon)->pixmap(QSize(w, h), static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state))));
}

void *qt_icon_from_theme(const char *name) {
    return static_cast<void *>(new QIcon(QIcon::fromTheme(QString::fromUtf8(name))));
}

int qt_icon_has_theme_icon(const char *name) {
    return QIcon::hasThemeIcon(QString::fromUtf8(name)) ? 1 : 0;
}

void qt_icon_set_theme_name(const char *name) {
    QIcon::setThemeName(QString::fromUtf8(name));
}

char *qt_icon_get_theme_name(void) {
    return qstring_to_heap_utf8(QIcon::themeName());
}

void qt_icon_get_available_sizes(void *icon, int mode, int state, int **out_sizes, int *out_count) {
    QList<QSize> sizes = static_cast<QIcon *>(icon)->availableSizes(static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
    *out_count = sizes.size();
    if (sizes.isEmpty()) {
        *out_sizes = nullptr;
        return;
    }
    *out_sizes = static_cast<int *>(malloc(sizeof(int) * 2 * sizes.size()));
    for (int i = 0; i < sizes.size(); ++i) {
        (*out_sizes)[i * 2] = sizes[i].width();
        (*out_sizes)[i * 2 + 1] = sizes[i].height();
    }
}

void qt_icon_free_available_sizes(int *sizes) {
    free(sizes);
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

void qt_free_item_array(void **items) {
    free(items);
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

/* ── QSettings ──────────────────────────────────────────────────────── */

void *qt_settings_create(void *parent) {
    (void)parent;
    return static_cast<void *>(new QSettings());
}

void qt_settings_destroy(void *settings) {
    delete static_cast<QSettings *>(settings);
}

void qt_settings_set_value_int(void *settings, const char *key, int value) {
    static_cast<QSettings *>(settings)->setValue(QString::fromUtf8(key), value);
}

int qt_settings_get_value_int(void *settings, const char *key, int default_value) {
    return static_cast<QSettings *>(settings)->value(QString::fromUtf8(key), default_value).toInt();
}

void qt_settings_set_value_string(void *settings, const char *key, const char *value) {
    static_cast<QSettings *>(settings)->setValue(QString::fromUtf8(key), QString::fromUtf8(value));
}

char *qt_settings_get_value_string(void *settings, const char *key, const char *default_value) {
    QString result = static_cast<QSettings *>(settings)->value(
        QString::fromUtf8(key), QString::fromUtf8(default_value)
    ).toString();
    return qstring_to_heap_utf8(result);
}

void qt_settings_set_value_bool(void *settings, const char *key, int value) {
    static_cast<QSettings *>(settings)->setValue(QString::fromUtf8(key), value != 0);
}

int qt_settings_get_value_bool(void *settings, const char *key, int default_value) {
    return static_cast<QSettings *>(settings)->value(
        QString::fromUtf8(key), default_value != 0
    ).toBool() ? 1 : 0;
}

void qt_settings_set_value_double(void *settings, const char *key, double value) {
    static_cast<QSettings *>(settings)->setValue(QString::fromUtf8(key), value);
}

double qt_settings_get_value_double(void *settings, const char *key, double default_value) {
    return static_cast<QSettings *>(settings)->value(QString::fromUtf8(key), default_value).toDouble();
}

void qt_settings_remove(void *settings, const char *key) {
    static_cast<QSettings *>(settings)->remove(QString::fromUtf8(key));
}

int qt_settings_contains(void *settings, const char *key) {
    return static_cast<QSettings *>(settings)->contains(QString::fromUtf8(key)) ? 1 : 0;
}

void qt_settings_sync(void *settings) {
    static_cast<QSettings *>(settings)->sync();
}

void qt_settings_begin_group(void *settings, const char *prefix) {
    static_cast<QSettings *>(settings)->beginGroup(QString::fromUtf8(prefix));
}

void qt_settings_end_group(void *settings) {
    static_cast<QSettings *>(settings)->endGroup();
}

/* ── QDesktopServices ───────────────────────────────────────────────── */

int qt_desktop_services_open_url(const char *url) {
    return QDesktopServices::openUrl(QUrl(QString::fromUtf8(url))) ? 1 : 0;
}

/* ── QStandardPaths ─────────────────────────────────────────────────── */

char *qt_standard_paths_writable_location(int type) {
    QString path = QStandardPaths::writableLocation(
        static_cast<QStandardPaths::StandardLocation>(type)
    );
    return qstring_to_heap_utf8(path);
}

char *qt_standard_paths_display_name(int type) {
    QString name = QStandardPaths::displayName(
        static_cast<QStandardPaths::StandardLocation>(type)
    );
    return qstring_to_heap_utf8(name);
}

/* ── QScreen ────────────────────────────────────────────────────────── */

void qt_screen_get_geometry(int *x, int *y, int *width, int *height) {
    QScreen *screen = QApplication::primaryScreen();
    if (!screen) {
        *x = 0; *y = 0; *width = 0; *height = 0;
        return;
    }
    QRect geom = screen->geometry();
    *x = geom.x();
    *y = geom.y();
    *width = geom.width();
    *height = geom.height();
}

double qt_screen_get_device_pixel_ratio(void) {
    QScreen *screen = QApplication::primaryScreen();
    if (!screen) return 1.0;
    return screen->devicePixelRatio();
}

double qt_screen_get_logical_dpi_x(void) {
    QScreen *screen = QApplication::primaryScreen();
    if (!screen) return 96.0;
    return screen->logicalDotsPerInchX();
}

double qt_screen_get_logical_dpi_y(void) {
    QScreen *screen = QApplication::primaryScreen();
    if (!screen) return 96.0;
    return screen->logicalDotsPerInchY();
}

char *qt_screen_get_name(void) {
    QScreen *screen = QApplication::primaryScreen();
    if (!screen) return nullptr;
    return qstring_to_heap_utf8(screen->name());
}

/* ── QFontMetrics ───────────────────────────────────────────────────── */

void *qt_font_metrics_create(const char *family, int point_size, int weight, int is_italic) {
    QFont font(QString::fromUtf8(family), point_size, weight, is_italic != 0);
    return static_cast<void *>(new QFontMetrics(font));
}

void qt_font_metrics_destroy(void *metrics) {
    delete static_cast<QFontMetrics *>(metrics);
}

int qt_font_metrics_get_horizontal_advance(void *metrics, const char *text) {
    return static_cast<QFontMetrics *>(metrics)->horizontalAdvance(QString::fromUtf8(text));
}

int qt_font_metrics_get_height(void *metrics) {
    return static_cast<QFontMetrics *>(metrics)->height();
}

int qt_font_metrics_get_ascent(void *metrics) {
    return static_cast<QFontMetrics *>(metrics)->ascent();
}

int qt_font_metrics_get_descent(void *metrics) {
    return static_cast<QFontMetrics *>(metrics)->descent();
}

int qt_font_metrics_get_leading(void *metrics) {
    return static_cast<QFontMetrics *>(metrics)->leading();
}

int qt_font_metrics_get_average_char_width(void *metrics) {
    return static_cast<QFontMetrics *>(metrics)->averageCharWidth();
}

void qt_font_metrics_get_bounding_rect(void *metrics, const char *text,
                                       int *x, int *y, int *width, int *height) {
    QRect rect = static_cast<QFontMetrics *>(metrics)->boundingRect(QString::fromUtf8(text));
    *x = rect.x();
    *y = rect.y();
    *width = rect.width();
    *height = rect.height();
}

/* ── QApplication extras ────────────────────────────────────────────── */

void qt_application_set_style(void *app, const char *style_name) {
    (void)app;
    QApplication::setStyle(QStyleFactory::create(QString::fromUtf8(style_name)));
}

void qt_application_set_style_sheet(void *app, const char *style_sheet) {
    static_cast<QApplication *>(app)->setStyleSheet(QString::fromUtf8(style_sheet));
}

void qt_application_set_font(void *app, const char *family, int point_size, int weight, int is_italic) {
    (void)app;
    QFont font(QString::fromUtf8(family), point_size, weight, is_italic != 0);
    QApplication::setFont(font);
}

void qt_application_set_window_icon(void *app, void *icon) {
    (void)app;
    QApplication::setWindowIcon(*static_cast<QIcon *>(icon));
}

void qt_application_set_application_version(void *app, const char *version) {
    (void)app;
    QApplication::setApplicationVersion(QString::fromUtf8(version));
}

/* ── QCompleter ─────────────────────────────────────────────────────── */

void *qt_completer_create(const char **items, int count, void *parent) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(items[i]));
    }
    auto *completer = new QCompleter(sl, static_cast<QObject *>(parent));
    return static_cast<void *>(completer);
}

void qt_completer_destroy(void *completer) {
    delete static_cast<QCompleter *>(completer);
}

void qt_completer_set_case_sensitivity(void *completer, int case_sensitivity) {
    static_cast<QCompleter *>(completer)->setCaseSensitivity(
        static_cast<Qt::CaseSensitivity>(case_sensitivity)
    );
}

void qt_completer_set_filter_mode(void *completer, int filter_mode) {
    static_cast<QCompleter *>(completer)->setFilterMode(
        static_cast<Qt::MatchFlags>(filter_mode)
    );
}

void qt_line_edit_set_completer(void *line_edit, void *completer) {
    static_cast<QLineEdit *>(line_edit)->setCompleter(
        static_cast<QCompleter *>(completer)
    );
}

void qt_combo_box_set_completer(void *combo_box, void *completer) {
    static_cast<QComboBox *>(combo_box)->setCompleter(
        static_cast<QCompleter *>(completer)
    );
}

/* ── QValidator ─────────────────────────────────────────────────────── */

void *qt_int_validator_create(int minimum, int maximum, void *parent) {
    return static_cast<void *>(
        new QIntValidator(minimum, maximum, static_cast<QObject *>(parent))
    );
}

void *qt_double_validator_create(double minimum, double maximum, int decimals, void *parent) {
    return static_cast<void *>(
        new QDoubleValidator(minimum, maximum, decimals, static_cast<QObject *>(parent))
    );
}

void *qt_regex_validator_create(const char *pattern, void *parent) {
    return static_cast<void *>(
        new QRegularExpressionValidator(
            QRegularExpression(QString::fromUtf8(pattern)),
            static_cast<QObject *>(parent)
        )
    );
}

void qt_validator_destroy(void *validator) {
    delete static_cast<QValidator *>(validator);
}

void qt_line_edit_set_validator(void *line_edit, void *validator) {
    static_cast<QLineEdit *>(line_edit)->setValidator(
        static_cast<const QValidator *>(validator)
    );
}

/* ── QToolTip ───────────────────────────────────────────────────────── */

void qt_tooltip_show_text(int global_x, int global_y, const char *text, void *widget) {
    QToolTip::showText(
        QPoint(global_x, global_y),
        QString::fromUtf8(text),
        static_cast<QWidget *>(widget)
    );
}

void qt_tooltip_hide_text(void) {
    QToolTip::hideText();
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

int qt_table_widget_connect_current_cell_changed(void *table, qt_four_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::currentCellChanged, [callback, user_data](int row, int col, int prev_row, int prev_col) {
        callback(row, col, prev_row, prev_col, user_data);
    });
    return store_connection(conn);
}

int qt_table_widget_connect_current_item_changed(void *table, qt_two_pointer_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTableWidget *>(table), &QTableWidget::currentItemChanged, [callback, user_data](QTableWidgetItem *current, QTableWidgetItem *previous) {
        callback(static_cast<void *>(current), static_cast<void *>(previous), user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_item_changed(void *tree, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemChanged, [callback, user_data](QTreeWidgetItem *item, int column) {
        callback(static_cast<void *>(item), column, user_data);
    });
    return store_connection(conn);
}

int qt_tree_widget_connect_item_selection_changed(void *tree, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTreeWidget *>(tree), &QTreeWidget::itemSelectionChanged, [callback, user_data]() {
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

int qt_combo_box_connect_activated(void *combo_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::activated, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_combo_box_connect_highlighted(void *combo_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::highlighted, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_combo_box_connect_edit_text_changed(void *combo_box, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QComboBox *>(combo_box), &QComboBox::editTextChanged, [callback, user_data](const QString &text) {
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

int qt_text_edit_connect_cursor_position_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::cursorPositionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_text_edit_connect_selection_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::selectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_text_edit_connect_copy_available(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::copyAvailable, [callback, user_data](bool available) {
        callback(available ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_text_edit_connect_undo_available(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::undoAvailable, [callback, user_data](bool available) {
        callback(available ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_text_edit_connect_redo_available(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTextEdit *>(text_edit), &QTextEdit::redoAvailable, [callback, user_data](bool available) {
        callback(available ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_cursor_position_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::cursorPositionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_selection_changed(void *text_edit, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::selectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_block_count_changed(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::blockCountChanged, [callback, user_data](int count) {
        callback(count, user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_copy_available(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::copyAvailable, [callback, user_data](bool available) {
        callback(available ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_undo_available(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::undoAvailable, [callback, user_data](bool available) {
        callback(available ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_plain_text_edit_connect_redo_available(void *text_edit, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPlainTextEdit *>(text_edit), &QPlainTextEdit::redoAvailable, [callback, user_data](bool available) {
        callback(available ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

/* New signals for QListWidget, QMenu, QAction */

int qt_list_widget_connect_item_changed(void *list, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QListWidget *>(list), &QListWidget::itemChanged, [callback, user_data](QListWidgetItem *item) {
        callback(static_cast<void *>(item), 0, user_data);
    });
    return store_connection(conn);
}

int qt_list_widget_connect_item_activated(void *list, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QListWidget *>(list), &QListWidget::itemActivated, [callback, user_data](QListWidgetItem *item) {
        callback(static_cast<void *>(item), 0, user_data);
    });
    return store_connection(conn);
}

int qt_menu_connect_about_to_show(void *menu, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QMenu *>(menu), &QMenu::aboutToShow, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_menu_connect_about_to_hide(void *menu, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QMenu *>(menu), &QMenu::aboutToHide, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_menu_connect_triggered(void *menu, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QMenu *>(menu), &QMenu::triggered, [callback, user_data](QAction *action) {
        callback(static_cast<void *>(action), 0, user_data);
    });
    return store_connection(conn);
}

int qt_action_connect_toggled(void *action, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QAction *>(action), &QAction::toggled, [callback, user_data](bool checked) {
        callback(checked ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_action_connect_hovered(void *action, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QAction *>(action), &QAction::hovered, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* New signals for QTabWidget, QSplitter, QToolBar, QSlider, QStatusBar */

int qt_tab_widget_connect_tab_bar_clicked(void *tab_widget, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTabWidget *>(tab_widget), &QTabWidget::tabBarClicked, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_tab_widget_connect_tab_bar_double_clicked(void *tab_widget, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTabWidget *>(tab_widget), &QTabWidget::tabBarDoubleClicked, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_splitter_connect_splitter_moved(void *splitter, qt_cell_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSplitter *>(splitter), &QSplitter::splitterMoved, [callback, user_data](int pos, int index) {
        callback(pos, index, user_data);
    });
    return store_connection(conn);
}

int qt_toolbar_connect_action_triggered(void *toolbar, qt_item_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QToolBar *>(toolbar), &QToolBar::actionTriggered, [callback, user_data](QAction *action) {
        callback(static_cast<void *>(action), 0, user_data);
    });
    return store_connection(conn);
}

int qt_toolbar_connect_visibility_changed(void *toolbar, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QToolBar *>(toolbar), &QToolBar::visibilityChanged, [callback, user_data](bool is_visible) {
        callback(is_visible ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_toolbar_connect_top_level_changed(void *toolbar, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QToolBar *>(toolbar), &QToolBar::topLevelChanged, [callback, user_data](bool is_top_level) {
        callback(is_top_level ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_slider_connect_slider_moved(void *slider, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSlider *>(slider), &QSlider::sliderMoved, [callback, user_data](int value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_slider_connect_range_changed(void *slider, qt_cell_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSlider *>(slider), &QSlider::rangeChanged, [callback, user_data](int min_val, int max_val) {
        callback(min_val, max_val, user_data);
    });
    return store_connection(conn);
}

int qt_statusbar_connect_message_changed(void *statusbar, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QStatusBar *>(statusbar), &QStatusBar::messageChanged, [callback, user_data](const QString &message) {
        QByteArray utf8 = message.toUtf8();
        callback(utf8.constData(), user_data);
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

/* ── Event system ───────────────────────────────────────────────────── */

void *qt_event_filter_create(qt_event_filter_callback_t callback, void *user_data) {
    return static_cast<void *>(new CGenericEventFilter(callback, user_data));
}

void qt_event_filter_destroy(void *filter) {
    delete static_cast<QObject *>(filter);
}

void qt_widget_install_event_filter(void *widget, void *filter) {
    static_cast<QWidget *>(widget)->installEventFilter(static_cast<QObject *>(filter));
}

void qt_widget_remove_event_filter(void *widget, void *filter) {
    static_cast<QWidget *>(widget)->removeEventFilter(static_cast<QObject *>(filter));
}

void *qt_close_event_filter_create(qt_close_event_callback_t callback, void *user_data) {
    return static_cast<void *>(new CCloseEventFilter(callback, user_data));
}

void *qt_key_event_filter_create(qt_key_event_callback_t callback, void *user_data) {
    return static_cast<void *>(new CKeyEventFilter(callback, user_data));
}

void *qt_mouse_event_filter_create(qt_mouse_event_callback_t callback, void *user_data) {
    return static_cast<void *>(new CMouseEventFilter(callback, user_data));
}

void qt_widget_set_mouse_tracking(void *widget, int is_enabled) {
    static_cast<QWidget *>(widget)->setMouseTracking(is_enabled != 0);
}

int qt_widget_has_mouse_tracking(void *widget) {
    return static_cast<QWidget *>(widget)->hasMouseTracking() ? 1 : 0;
}

/* ── Section 8: Lower Priority Features ────────────────────────────── */

/* ── QObject utilities ─────────────────────────────────────────────── */

void qt_object_delete_later(void *object) {
    static_cast<QObject *>(object)->deleteLater();
}

/* ── Dynamic properties ────────────────────────────────────────────── */

void qt_object_set_property_int(void *object, const char *name, int value) {
    static_cast<QObject *>(object)->setProperty(name, value);
}

int qt_object_get_property_int(void *object, const char *name, int default_value) {
    QVariant v = static_cast<QObject *>(object)->property(name);
    return v.isValid() ? v.toInt() : default_value;
}

void qt_object_set_property_string(void *object, const char *name, const char *value) {
    static_cast<QObject *>(object)->setProperty(name, QString::fromUtf8(value));
}

char *qt_object_get_property_string(void *object, const char *name, const char *default_value) {
    QVariant v = static_cast<QObject *>(object)->property(name);
    if (!v.isValid()) return qstring_to_heap_utf8(QString::fromUtf8(default_value));
    return qstring_to_heap_utf8(v.toString());
}

void qt_object_set_property_bool(void *object, const char *name, int value) {
    static_cast<QObject *>(object)->setProperty(name, value != 0);
}

int qt_object_get_property_bool(void *object, const char *name, int default_value) {
    QVariant v = static_cast<QObject *>(object)->property(name);
    return v.isValid() ? (v.toBool() ? 1 : 0) : default_value;
}

void qt_object_set_property_double(void *object, const char *name, double value) {
    static_cast<QObject *>(object)->setProperty(name, value);
}

double qt_object_get_property_double(void *object, const char *name, double default_value) {
    QVariant v = static_cast<QObject *>(object)->property(name);
    return v.isValid() ? v.toDouble() : default_value;
}

/* ── Model/View — QStandardItem ────────────────────────────────────── */

void *qt_standard_item_create(const char *text) {
    return static_cast<void *>(new QStandardItem(QString::fromUtf8(text)));
}

void qt_standard_item_set_text(void *item, const char *text) {
    static_cast<QStandardItem *>(item)->setText(QString::fromUtf8(text));
}

char *qt_standard_item_get_text(void *item) {
    return qstring_to_heap_utf8(static_cast<QStandardItem *>(item)->text());
}

void qt_standard_item_set_editable(void *item, int is_editable) {
    static_cast<QStandardItem *>(item)->setEditable(is_editable != 0);
}

int qt_standard_item_is_editable(void *item) {
    return static_cast<QStandardItem *>(item)->isEditable() ? 1 : 0;
}

void qt_standard_item_set_checkable(void *item, int is_checkable) {
    static_cast<QStandardItem *>(item)->setCheckable(is_checkable != 0);
}

int qt_standard_item_is_checkable(void *item) {
    return static_cast<QStandardItem *>(item)->isCheckable() ? 1 : 0;
}

void qt_standard_item_set_check_state(void *item, int state) {
    static_cast<QStandardItem *>(item)->setCheckState(static_cast<Qt::CheckState>(state));
}

int qt_standard_item_get_check_state(void *item) {
    return static_cast<int>(static_cast<QStandardItem *>(item)->checkState());
}

void qt_standard_item_set_icon(void *item, void *icon) {
    static_cast<QStandardItem *>(item)->setIcon(*static_cast<QIcon *>(icon));
}

void qt_standard_item_set_selectable(void *item, int is_selectable) {
    static_cast<QStandardItem *>(item)->setSelectable(is_selectable != 0);
}

void qt_standard_item_set_enabled(void *item, int is_enabled) {
    static_cast<QStandardItem *>(item)->setEnabled(is_enabled != 0);
}

void qt_standard_item_append_row(void *parent, void **items, int count) {
    QList<QStandardItem *> row;
    for (int i = 0; i < count; ++i) {
        row.append(static_cast<QStandardItem *>(items[i]));
    }
    static_cast<QStandardItem *>(parent)->appendRow(row);
}

void qt_standard_item_append_child(void *parent, void *child) {
    static_cast<QStandardItem *>(parent)->appendRow(static_cast<QStandardItem *>(child));
}

int qt_standard_item_row_count(void *item) {
    return static_cast<QStandardItem *>(item)->rowCount();
}

void *qt_standard_item_get_child(void *item, int row, int column) {
    return static_cast<void *>(static_cast<QStandardItem *>(item)->child(row, column));
}

/* ── Model/View — QStandardItemModel ───────────────────────────────── */

void *qt_standard_item_model_create(int rows, int columns, void *parent) {
    return static_cast<void *>(new QStandardItemModel(rows, columns, static_cast<QObject *>(parent)));
}

void qt_standard_item_model_destroy(void *model) {
    delete static_cast<QStandardItemModel *>(model);
}

void qt_standard_item_model_set_item(void *model, int row, int column, void *item) {
    static_cast<QStandardItemModel *>(model)->setItem(row, column, static_cast<QStandardItem *>(item));
}

void *qt_standard_item_model_get_item(void *model, int row, int column) {
    return static_cast<void *>(static_cast<QStandardItemModel *>(model)->item(row, column));
}

void qt_standard_item_model_set_horizontal_header_labels(void *model, const char **labels, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(labels[i]));
    }
    static_cast<QStandardItemModel *>(model)->setHorizontalHeaderLabels(sl);
}

void qt_standard_item_model_set_vertical_header_labels(void *model, const char **labels, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(labels[i]));
    }
    static_cast<QStandardItemModel *>(model)->setVerticalHeaderLabels(sl);
}

int qt_standard_item_model_get_row_count(void *model) {
    return static_cast<QStandardItemModel *>(model)->rowCount();
}

int qt_standard_item_model_get_column_count(void *model) {
    return static_cast<QStandardItemModel *>(model)->columnCount();
}

void qt_standard_item_model_clear(void *model) {
    static_cast<QStandardItemModel *>(model)->clear();
}

void qt_standard_item_model_append_row(void *model, void **items, int count) {
    QList<QStandardItem *> row;
    for (int i = 0; i < count; ++i) {
        row.append(static_cast<QStandardItem *>(items[i]));
    }
    static_cast<QStandardItemModel *>(model)->appendRow(row);
}

void qt_standard_item_model_insert_row(void *model, int row, void **items, int count) {
    QList<QStandardItem *> item_list;
    for (int i = 0; i < count; ++i) {
        item_list.append(static_cast<QStandardItem *>(items[i]));
    }
    static_cast<QStandardItemModel *>(model)->insertRow(row, item_list);
}

void qt_standard_item_model_remove_row(void *model, int row) {
    static_cast<QStandardItemModel *>(model)->removeRow(row);
}

void qt_standard_item_model_remove_column(void *model, int column) {
    static_cast<QStandardItemModel *>(model)->removeColumn(column);
}

void *qt_standard_item_model_get_invisible_root_item(void *model) {
    return static_cast<void *>(static_cast<QStandardItemModel *>(model)->invisibleRootItem());
}

/* ── Model/View — Model Index ──────────────────────────────────────── */

void qt_model_index_destroy(void *index) {
    delete static_cast<QPersistentModelIndex *>(index);
}

int qt_model_index_get_row(void *index) {
    return static_cast<QPersistentModelIndex *>(index)->row();
}

int qt_model_index_get_column(void *index) {
    return static_cast<QPersistentModelIndex *>(index)->column();
}

int qt_model_index_is_valid(void *index) {
    return static_cast<QPersistentModelIndex *>(index)->isValid() ? 1 : 0;
}

/* ── Model/View — QFileSystemModel ─────────────────────────────────── */

void *qt_file_system_model_create(void *parent) {
    return static_cast<void *>(new QFileSystemModel(static_cast<QObject *>(parent)));
}

void qt_file_system_model_destroy(void *model) {
    delete static_cast<QFileSystemModel *>(model);
}

void *qt_file_system_model_set_root_path(void *model, const char *path) {
    QModelIndex idx = static_cast<QFileSystemModel *>(model)->setRootPath(QString::fromUtf8(path));
    return static_cast<void *>(new QPersistentModelIndex(idx));
}

void qt_file_system_model_set_name_filters(void *model, const char **filters, int count) {
    QStringList sl;
    for (int i = 0; i < count; ++i) {
        sl.append(QString::fromUtf8(filters[i]));
    }
    static_cast<QFileSystemModel *>(model)->setNameFilters(sl);
}

void qt_file_system_model_set_name_filter_disables(void *model, int is_disables) {
    static_cast<QFileSystemModel *>(model)->setNameFilterDisables(is_disables != 0);
}

void qt_file_system_model_set_read_only(void *model, int is_read_only) {
    static_cast<QFileSystemModel *>(model)->setReadOnly(is_read_only != 0);
}

int qt_file_system_model_is_read_only(void *model) {
    return static_cast<QFileSystemModel *>(model)->isReadOnly() ? 1 : 0;
}

char *qt_file_system_model_get_file_path(void *model, void *index) {
    return qstring_to_heap_utf8(
        static_cast<QFileSystemModel *>(model)->filePath(
            *static_cast<QPersistentModelIndex *>(index)
        )
    );
}

/* ── Model/View — QSortFilterProxyModel ────────────────────────────── */

void *qt_sort_filter_proxy_model_create(void *parent) {
    return static_cast<void *>(new QSortFilterProxyModel(static_cast<QObject *>(parent)));
}

void qt_sort_filter_proxy_model_destroy(void *proxy) {
    delete static_cast<QSortFilterProxyModel *>(proxy);
}

void qt_sort_filter_proxy_model_set_source_model(void *proxy, void *source) {
    static_cast<QSortFilterProxyModel *>(proxy)->setSourceModel(
        static_cast<QAbstractItemModel *>(source)
    );
}

void qt_sort_filter_proxy_model_set_filter_key_column(void *proxy, int column) {
    static_cast<QSortFilterProxyModel *>(proxy)->setFilterKeyColumn(column);
}

void qt_sort_filter_proxy_model_set_filter_regular_expression(void *proxy, const char *pattern) {
    static_cast<QSortFilterProxyModel *>(proxy)->setFilterRegularExpression(
        QString::fromUtf8(pattern)
    );
}

void qt_sort_filter_proxy_model_set_filter_case_sensitivity(void *proxy, int case_sensitivity) {
    static_cast<QSortFilterProxyModel *>(proxy)->setFilterCaseSensitivity(
        static_cast<Qt::CaseSensitivity>(case_sensitivity)
    );
}

void qt_sort_filter_proxy_model_set_sort_case_sensitivity(void *proxy, int case_sensitivity) {
    static_cast<QSortFilterProxyModel *>(proxy)->setSortCaseSensitivity(
        static_cast<Qt::CaseSensitivity>(case_sensitivity)
    );
}

void qt_sort_filter_proxy_model_invalidate(void *proxy) {
    static_cast<QSortFilterProxyModel *>(proxy)->invalidate();
}

void qt_sort_filter_proxy_model_sort(void *proxy, int column, int order) {
    static_cast<QSortFilterProxyModel *>(proxy)->sort(
        column, static_cast<Qt::SortOrder>(order)
    );
}

/* ── Model/View — Views ────────────────────────────────────────────── */

void *qt_tree_view_create(void *parent) {
    return static_cast<void *>(new QTreeView(static_cast<QWidget *>(parent)));
}

void qt_tree_view_set_model(void *view, void *model) {
    static_cast<QTreeView *>(view)->setModel(static_cast<QAbstractItemModel *>(model));
}

void qt_tree_view_set_root_index(void *view, void *index) {
    static_cast<QTreeView *>(view)->setRootIndex(
        *static_cast<QPersistentModelIndex *>(index)
    );
}

void qt_tree_view_expand_all(void *view) {
    static_cast<QTreeView *>(view)->expandAll();
}

void qt_tree_view_collapse_all(void *view) {
    static_cast<QTreeView *>(view)->collapseAll();
}

void qt_tree_view_set_sorting_enabled(void *view, int is_enabled) {
    static_cast<QTreeView *>(view)->setSortingEnabled(is_enabled != 0);
}

void qt_tree_view_set_header_hidden(void *view, int is_hidden) {
    static_cast<QTreeView *>(view)->setHeaderHidden(is_hidden != 0);
}

void *qt_table_view_create(void *parent) {
    return static_cast<void *>(new QTableView(static_cast<QWidget *>(parent)));
}

void qt_table_view_set_model(void *view, void *model) {
    static_cast<QTableView *>(view)->setModel(static_cast<QAbstractItemModel *>(model));
}

void qt_table_view_set_sorting_enabled(void *view, int is_enabled) {
    static_cast<QTableView *>(view)->setSortingEnabled(is_enabled != 0);
}

void qt_table_view_resize_columns_to_contents(void *view) {
    static_cast<QTableView *>(view)->resizeColumnsToContents();
}

void qt_table_view_resize_rows_to_contents(void *view) {
    static_cast<QTableView *>(view)->resizeRowsToContents();
}

void qt_table_view_set_selection_behaviour(void *view, int behaviour) {
    static_cast<QTableView *>(view)->setSelectionBehavior(
        static_cast<QAbstractItemView::SelectionBehavior>(behaviour)
    );
}

void qt_table_view_set_selection_mode(void *view, int mode) {
    static_cast<QTableView *>(view)->setSelectionMode(
        static_cast<QAbstractItemView::SelectionMode>(mode)
    );
}

void qt_table_view_set_alternating_row_colours(void *view, int is_alternating) {
    static_cast<QTableView *>(view)->setAlternatingRowColors(is_alternating != 0);
}

void *qt_list_view_create(void *parent) {
    return static_cast<void *>(new QListView(static_cast<QWidget *>(parent)));
}

void qt_list_view_set_model(void *view, void *model) {
    static_cast<QListView *>(view)->setModel(static_cast<QAbstractItemModel *>(model));
}

void qt_list_view_set_selection_mode(void *view, int mode) {
    static_cast<QListView *>(view)->setSelectionMode(
        static_cast<QAbstractItemView::SelectionMode>(mode)
    );
}

/* ── QPainter / Custom drawing ─────────────────────────────────────── */

void *qt_paintable_widget_create(void *parent, qt_paint_callback_t callback, void *user_data) {
    return static_cast<void *>(new CPaintableWidget(static_cast<QWidget *>(parent), callback, user_data));
}

void qt_painter_set_pen_colour(void *painter, int r, int g, int b, int a) {
    static_cast<QPainter *>(painter)->setPen(QPen(QColor(r, g, b, a)));
}

void qt_painter_set_pen_width(void *painter, int width) {
    QPen pen = static_cast<QPainter *>(painter)->pen();
    pen.setWidth(width);
    static_cast<QPainter *>(painter)->setPen(pen);
}

void qt_painter_set_no_pen(void *painter) {
    static_cast<QPainter *>(painter)->setPen(Qt::NoPen);
}

void qt_painter_set_pen(void *painter, void *pen) {
    static_cast<QPainter *>(painter)->setPen(*static_cast<QPen *>(pen));
}

void qt_painter_set_brush_colour(void *painter, int r, int g, int b, int a) {
    static_cast<QPainter *>(painter)->setBrush(QBrush(QColor(r, g, b, a)));
}

void qt_painter_set_no_brush(void *painter) {
    static_cast<QPainter *>(painter)->setBrush(Qt::NoBrush);
}

void qt_painter_set_brush(void *painter, void *brush) {
    static_cast<QPainter *>(painter)->setBrush(*static_cast<QBrush *>(brush));
}

void qt_painter_set_font(void *painter, const char *family, int point_size, int weight, int is_italic) {
    static_cast<QPainter *>(painter)->setFont(
        QFont(QString::fromUtf8(family), point_size, weight, is_italic != 0)
    );
}

void qt_painter_set_antialiasing(void *painter, int is_enabled) {
    static_cast<QPainter *>(painter)->setRenderHint(QPainter::Antialiasing, is_enabled != 0);
}

void qt_painter_set_opacity(void *painter, double opacity) {
    static_cast<QPainter *>(painter)->setOpacity(opacity);
}

void qt_painter_set_render_hint(void *painter, int hint, int is_on) {
    static_cast<QPainter *>(painter)->setRenderHint(static_cast<QPainter::RenderHint>(hint), is_on != 0);
}

void qt_painter_set_render_hints(void *painter, int hints, int is_on) {
    static_cast<QPainter *>(painter)->setRenderHints(static_cast<QPainter::RenderHints>(hints), is_on != 0);
}

void qt_painter_set_composition_mode(void *painter, int mode) {
    static_cast<QPainter *>(painter)->setCompositionMode(static_cast<QPainter::CompositionMode>(mode));
}

int qt_painter_get_composition_mode(void *painter) {
    return static_cast<int>(static_cast<QPainter *>(painter)->compositionMode());
}

void qt_painter_set_clipping(void *painter, int is_enabled) {
    static_cast<QPainter *>(painter)->setClipping(is_enabled != 0);
}

int qt_painter_has_clipping(void *painter) {
    return static_cast<QPainter *>(painter)->hasClipping() ? 1 : 0;
}

void qt_painter_get_clip_bounding_rect(void *painter, int *x, int *y, int *w, int *h) {
    QRectF r = static_cast<QPainter *>(painter)->clipBoundingRect();
    if (x) *x = static_cast<int>(r.x());
    if (y) *y = static_cast<int>(r.y());
    if (w) *w = static_cast<int>(r.width());
    if (h) *h = static_cast<int>(r.height());
}

void qt_painter_draw_line(void *painter, int x1, int y1, int x2, int y2) {
    static_cast<QPainter *>(painter)->drawLine(x1, y1, x2, y2);
}

void qt_painter_draw_rect(void *painter, int x, int y, int width, int height) {
    static_cast<QPainter *>(painter)->drawRect(x, y, width, height);
}

void qt_painter_fill_rect(void *painter, int x, int y, int width, int height, int r, int g, int b, int a) {
    static_cast<QPainter *>(painter)->fillRect(x, y, width, height, QColor(r, g, b, a));
}

void qt_painter_erase_rect(void *painter, int x, int y, int width, int height) {
    static_cast<QPainter *>(painter)->eraseRect(x, y, width, height);
}

void qt_painter_draw_ellipse(void *painter, int x, int y, int width, int height) {
    static_cast<QPainter *>(painter)->drawEllipse(x, y, width, height);
}

void qt_painter_draw_arc(void *painter, int x, int y, int width, int height, int start_angle, int span_angle) {
    static_cast<QPainter *>(painter)->drawArc(x, y, width, height, start_angle, span_angle);
}

void qt_painter_draw_pie(void *painter, int x, int y, int width, int height, int start_angle, int span_angle) {
    static_cast<QPainter *>(painter)->drawPie(x, y, width, height, start_angle, span_angle);
}

void qt_painter_draw_chord(void *painter, int x, int y, int width, int height, int start_angle, int span_angle) {
    static_cast<QPainter *>(painter)->drawChord(x, y, width, height, start_angle, span_angle);
}

void qt_painter_draw_rounded_rect(void *painter, int x, int y, int width, int height, double x_radius, double y_radius) {
    static_cast<QPainter *>(painter)->drawRoundedRect(x, y, width, height, x_radius, y_radius);
}

void qt_painter_draw_text(void *painter, int x, int y, const char *text) {
    static_cast<QPainter *>(painter)->drawText(x, y, QString::fromUtf8(text));
}

void qt_painter_draw_text_in_rect(void *painter, int x, int y, int width, int height, int flags, const char *text) {
    static_cast<QPainter *>(painter)->drawText(QRect(x, y, width, height), flags, QString::fromUtf8(text));
}

void qt_painter_bounding_rect(void *painter, int x, int y, int w, int h, int flags, const char *text, int *out_x, int *out_y, int *out_w, int *out_h) {
    QRect result = static_cast<QPainter *>(painter)->boundingRect(QRect(x, y, w, h), flags, QString::fromUtf8(text));
    if (out_x) *out_x = result.x();
    if (out_y) *out_y = result.y();
    if (out_w) *out_w = result.width();
    if (out_h) *out_h = result.height();
}

void qt_painter_draw_pixmap(void *painter, int x, int y, void *pixmap) {
    static_cast<QPainter *>(painter)->drawPixmap(x, y, *static_cast<QPixmap *>(pixmap));
}

void qt_painter_draw_image(void *painter, int x, int y, void *image) {
    static_cast<QPainter *>(painter)->drawImage(x, y, *static_cast<QImage *>(image));
}

void qt_painter_draw_point(void *painter, int x, int y) {
    static_cast<QPainter *>(painter)->drawPoint(x, y);
}

void qt_painter_draw_points(void *painter, const int *points, int point_count) {
    QVector<QPoint> pts(point_count);
    for (int i = 0; i < point_count; ++i) {
        pts[i] = QPoint(points[i * 2], points[i * 2 + 1]);
    }
    static_cast<QPainter *>(painter)->drawPoints(pts.data(), point_count);
}

void qt_painter_draw_polygon(void *painter, const int *points, int point_count) {
    QPolygon polygon;
    for (int i = 0; i < point_count; ++i) {
        polygon.append(QPoint(points[i * 2], points[i * 2 + 1]));
    }
    static_cast<QPainter *>(painter)->drawPolygon(polygon);
}

void qt_painter_draw_polyline(void *painter, const int *points, int point_count) {
    QVector<QPoint> pts(point_count);
    for (int i = 0; i < point_count; ++i) {
        pts[i] = QPoint(points[i * 2], points[i * 2 + 1]);
    }
    static_cast<QPainter *>(painter)->drawPolyline(pts.data(), point_count);
}

void qt_painter_draw_convex_polygon(void *painter, const int *points, int point_count) {
    QVector<QPoint> pts(point_count);
    for (int i = 0; i < point_count; ++i) {
        pts[i] = QPoint(points[i * 2], points[i * 2 + 1]);
    }
    static_cast<QPainter *>(painter)->drawConvexPolygon(pts.data(), point_count);
}

void qt_painter_save(void *painter) {
    static_cast<QPainter *>(painter)->save();
}

void qt_painter_restore(void *painter) {
    static_cast<QPainter *>(painter)->restore();
}

void qt_painter_translate(void *painter, double dx, double dy) {
    static_cast<QPainter *>(painter)->translate(dx, dy);
}

void qt_painter_rotate(void *painter, double angle) {
    static_cast<QPainter *>(painter)->rotate(angle);
}

void qt_painter_scale(void *painter, double sx, double sy) {
    static_cast<QPainter *>(painter)->scale(sx, sy);
}

void *qt_painter_create(void) {
    return static_cast<void *>(new QPainter());
}

void qt_painter_destroy(void *painter) {
    delete static_cast<QPainter *>(painter);
}

int qt_painter_begin(void *painter, void *device) {
    return static_cast<QPainter *>(painter)->begin(static_cast<QPaintDevice *>(device)) ? 1 : 0;
}

int qt_painter_end(void *painter) {
    return static_cast<QPainter *>(painter)->end() ? 1 : 0;
}

int qt_painter_is_active(void *painter) {
    return static_cast<QPainter *>(painter)->isActive() ? 1 : 0;
}

/* ── Drag and Drop ─────────────────────────────────────────────────── */

void qt_widget_set_accept_drops(void *widget, int is_accept) {
    static_cast<QWidget *>(widget)->setAcceptDrops(is_accept != 0);
}

void *qt_drag_drop_filter_create(qt_drag_enter_callback_t enter_cb, qt_drop_callback_t drop_cb, void *user_data) {
    return static_cast<void *>(new CDragDropFilter(enter_cb, drop_cb, user_data));
}

void qt_widget_start_drag(void *widget, const char *mime_text) {
    auto *drag = new QDrag(static_cast<QWidget *>(widget));
    auto *mime = new QMimeData();
    mime->setText(QString::fromUtf8(mime_text));
    drag->setMimeData(mime);
    drag->exec(Qt::CopyAction);
}

/* ── QSyntaxHighlighter ────────────────────────────────────────────── */

void *qt_text_char_format_create(void) {
    return static_cast<void *>(new QTextCharFormat());
}

void qt_text_char_format_destroy(void *format) {
    delete static_cast<QTextCharFormat *>(format);
}

void qt_text_char_format_set_foreground(void *format, int r, int g, int b, int a) {
    static_cast<QTextCharFormat *>(format)->setForeground(QBrush(QColor(r, g, b, a)));
}

void qt_text_char_format_set_background(void *format, int r, int g, int b, int a) {
    static_cast<QTextCharFormat *>(format)->setBackground(QBrush(QColor(r, g, b, a)));
}

void qt_text_char_format_set_font_weight(void *format, int weight) {
    static_cast<QTextCharFormat *>(format)->setFontWeight(weight);
}

void qt_text_char_format_set_font_italic(void *format, int is_italic) {
    static_cast<QTextCharFormat *>(format)->setFontItalic(is_italic != 0);
}

void qt_text_char_format_set_font_underline(void *format, int is_underline) {
    static_cast<QTextCharFormat *>(format)->setFontUnderline(is_underline != 0);
}

void *qt_syntax_highlighter_create_for_text_edit(void *text_edit) {
    return static_cast<void *>(
        new CSyntaxHighlighter(static_cast<QTextEdit *>(text_edit)->document())
    );
}

void *qt_syntax_highlighter_create_for_plain_text_edit(void *plain_text_edit) {
    return static_cast<void *>(
        new CSyntaxHighlighter(static_cast<QPlainTextEdit *>(plain_text_edit)->document())
    );
}

void qt_syntax_highlighter_destroy(void *highlighter) {
    delete static_cast<CSyntaxHighlighter *>(highlighter);
}

void qt_syntax_highlighter_add_rule(void *highlighter, const char *pattern, void *format) {
    static_cast<CSyntaxHighlighter *>(highlighter)->addRule(
        QRegularExpression(QString::fromUtf8(pattern)),
        *static_cast<QTextCharFormat *>(format)
    );
}

void qt_syntax_highlighter_clear_rules(void *highlighter) {
    static_cast<CSyntaxHighlighter *>(highlighter)->clearRules();
}

void qt_syntax_highlighter_rehighlight(void *highlighter) {
    static_cast<CSyntaxHighlighter *>(highlighter)->rehighlight();
}

/* ── QPropertyAnimation / Animation groups ─────────────────────────── */

void *qt_property_animation_create(void *target, const char *property_name) {
    return static_cast<void *>(
        new ClampedPropertyAnimation(static_cast<QObject *>(target), QByteArray(property_name))
    );
}

void qt_property_animation_destroy(void *animation) {
    delete static_cast<QPropertyAnimation *>(animation);
}

void qt_property_animation_set_duration(void *animation, int ms) {
    static_cast<QPropertyAnimation *>(animation)->setDuration(ms);
}

void qt_property_animation_set_start_value_int(void *animation, int value) {
    static_cast<QPropertyAnimation *>(animation)->setStartValue(value);
}

void qt_property_animation_set_end_value_int(void *animation, int value) {
    static_cast<QPropertyAnimation *>(animation)->setEndValue(value);
}

void qt_property_animation_set_start_value_double(void *animation, double value) {
    static_cast<QPropertyAnimation *>(animation)->setStartValue(value);
}

void qt_property_animation_set_end_value_double(void *animation, double value) {
    static_cast<QPropertyAnimation *>(animation)->setEndValue(value);
}

void qt_property_animation_set_start_value_rect(void *animation, int x, int y, int w, int h) {
    static_cast<QPropertyAnimation *>(animation)->setStartValue(QRect(x, y, w, h));
}

void qt_property_animation_set_end_value_rect(void *animation, int x, int y, int w, int h) {
    static_cast<QPropertyAnimation *>(animation)->setEndValue(QRect(x, y, w, h));
}

void qt_property_animation_set_start_value_size(void *animation, int w, int h) {
    static_cast<QPropertyAnimation *>(animation)->setStartValue(QSize(w, h));
}

void qt_property_animation_set_end_value_size(void *animation, int w, int h) {
    static_cast<QPropertyAnimation *>(animation)->setEndValue(QSize(w, h));
}

void qt_property_animation_set_start_value_point(void *animation, int x, int y) {
    static_cast<QPropertyAnimation *>(animation)->setStartValue(QPoint(x, y));
}

void qt_property_animation_set_end_value_point(void *animation, int x, int y) {
    static_cast<QPropertyAnimation *>(animation)->setEndValue(QPoint(x, y));
}

void qt_property_animation_set_easing_curve(void *animation, int curve_type) {
    static_cast<QPropertyAnimation *>(animation)->setEasingCurve(
        static_cast<QEasingCurve::Type>(curve_type)
    );
}

void qt_property_animation_set_clamp_range(void *animation, int min_val, int max_val) {
    static_cast<ClampedPropertyAnimation *>(animation)->setClampRange(min_val, max_val);
}

void qt_property_animation_start(void *animation) {
    static_cast<QPropertyAnimation *>(animation)->start();
}

void qt_property_animation_stop(void *animation) {
    static_cast<QPropertyAnimation *>(animation)->stop();
}

void qt_property_animation_pause(void *animation) {
    static_cast<QPropertyAnimation *>(animation)->pause();
}

void qt_property_animation_resume(void *animation) {
    static_cast<QPropertyAnimation *>(animation)->resume();
}

void qt_property_animation_set_loop_count(void *animation, int count) {
    static_cast<QPropertyAnimation *>(animation)->setLoopCount(count);
}

int qt_property_animation_connect_finished(void *animation, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QPropertyAnimation *>(animation), &QPropertyAnimation::finished, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

void *qt_parallel_animation_group_create(void *parent) {
    return static_cast<void *>(new QParallelAnimationGroup(static_cast<QObject *>(parent)));
}

void qt_parallel_animation_group_destroy(void *group) {
    delete static_cast<QParallelAnimationGroup *>(group);
}

void qt_parallel_animation_group_add_animation(void *group, void *animation) {
    static_cast<QParallelAnimationGroup *>(group)->addAnimation(
        static_cast<QAbstractAnimation *>(animation)
    );
}

void qt_parallel_animation_group_start(void *group) {
    static_cast<QParallelAnimationGroup *>(group)->start();
}

void qt_parallel_animation_group_stop(void *group) {
    static_cast<QParallelAnimationGroup *>(group)->stop();
}

int qt_parallel_animation_group_connect_finished(void *group, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QParallelAnimationGroup *>(group), &QParallelAnimationGroup::finished, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

void *qt_sequential_animation_group_create(void *parent) {
    return static_cast<void *>(new QSequentialAnimationGroup(static_cast<QObject *>(parent)));
}

void qt_sequential_animation_group_destroy(void *group) {
    delete static_cast<QSequentialAnimationGroup *>(group);
}

void qt_sequential_animation_group_add_animation(void *group, void *animation) {
    static_cast<QSequentialAnimationGroup *>(group)->addAnimation(
        static_cast<QAbstractAnimation *>(animation)
    );
}

void qt_sequential_animation_group_start(void *group) {
    static_cast<QSequentialAnimationGroup *>(group)->start();
}

void qt_sequential_animation_group_stop(void *group) {
    static_cast<QSequentialAnimationGroup *>(group)->stop();
}

int qt_sequential_animation_group_connect_finished(void *group, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSequentialAnimationGroup *>(group), &QSequentialAnimationGroup::finished, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QTabBar ────────────────────────────────────────────────────────── */

void *qt_tab_bar_create(void *parent) {
    return static_cast<void *>(new QTabBar(static_cast<QWidget *>(parent)));
}

int qt_tab_bar_add_tab(void *tab_bar, const char *text) {
    return static_cast<QTabBar *>(tab_bar)->addTab(QString::fromUtf8(text));
}

int qt_tab_bar_insert_tab(void *tab_bar, int index, const char *text) {
    return static_cast<QTabBar *>(tab_bar)->insertTab(index, QString::fromUtf8(text));
}

void qt_tab_bar_remove_tab(void *tab_bar, int index) {
    static_cast<QTabBar *>(tab_bar)->removeTab(index);
}

int qt_tab_bar_get_current_index(void *tab_bar) {
    return static_cast<QTabBar *>(tab_bar)->currentIndex();
}

void qt_tab_bar_set_current_index(void *tab_bar, int index) {
    static_cast<QTabBar *>(tab_bar)->setCurrentIndex(index);
}

int qt_tab_bar_get_count(void *tab_bar) {
    return static_cast<QTabBar *>(tab_bar)->count();
}

void qt_tab_bar_set_tab_text(void *tab_bar, int index, const char *text) {
    static_cast<QTabBar *>(tab_bar)->setTabText(index, QString::fromUtf8(text));
}

char *qt_tab_bar_get_tab_text(void *tab_bar, int index) {
    return qstring_to_heap_utf8(static_cast<QTabBar *>(tab_bar)->tabText(index));
}

void qt_tab_bar_set_tab_enabled(void *tab_bar, int index, int is_enabled) {
    static_cast<QTabBar *>(tab_bar)->setTabEnabled(index, is_enabled != 0);
}

int qt_tab_bar_is_tab_enabled(void *tab_bar, int index) {
    return static_cast<QTabBar *>(tab_bar)->isTabEnabled(index) ? 1 : 0;
}

void qt_tab_bar_set_tab_visible(void *tab_bar, int index, int is_visible) {
    static_cast<QTabBar *>(tab_bar)->setTabVisible(index, is_visible != 0);
}

int qt_tab_bar_is_tab_visible(void *tab_bar, int index) {
    return static_cast<QTabBar *>(tab_bar)->isTabVisible(index) ? 1 : 0;
}

void qt_tab_bar_set_tabs_closable(void *tab_bar, int is_closable) {
    static_cast<QTabBar *>(tab_bar)->setTabsClosable(is_closable != 0);
}

void qt_tab_bar_set_movable(void *tab_bar, int is_movable) {
    static_cast<QTabBar *>(tab_bar)->setMovable(is_movable != 0);
}

void qt_tab_bar_set_expanding(void *tab_bar, int is_expanding) {
    static_cast<QTabBar *>(tab_bar)->setExpanding(is_expanding != 0);
}

void qt_tab_bar_set_shape(void *tab_bar, int shape) {
    static_cast<QTabBar *>(tab_bar)->setShape(static_cast<QTabBar::Shape>(shape));
}

void qt_tab_bar_set_icon_size(void *tab_bar, int width, int height) {
    static_cast<QTabBar *>(tab_bar)->setIconSize(QSize(width, height));
}

void qt_tab_bar_set_document_mode(void *tab_bar, int is_document_mode) {
    static_cast<QTabBar *>(tab_bar)->setDocumentMode(is_document_mode != 0);
}

void qt_tab_bar_set_draw_base(void *tab_bar, int is_draw_base) {
    static_cast<QTabBar *>(tab_bar)->setDrawBase(is_draw_base != 0);
}

void qt_tab_bar_set_tab_icon(void *tab_bar, int index, void *icon) {
    static_cast<QTabBar *>(tab_bar)->setTabIcon(index, *static_cast<QIcon *>(icon));
}

int qt_tab_bar_connect_current_changed(void *tab_bar, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTabBar *>(tab_bar), &QTabBar::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

int qt_tab_bar_connect_tab_close_requested(void *tab_bar, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTabBar *>(tab_bar), &QTabBar::tabCloseRequested, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

/* ── QToolBox ───────────────────────────────────────────────────────── */

void *qt_tool_box_create(void *parent) {
    return static_cast<void *>(new QToolBox(static_cast<QWidget *>(parent)));
}

int qt_tool_box_add_item(void *tool_box, void *widget, const char *text) {
    return static_cast<QToolBox *>(tool_box)->addItem(static_cast<QWidget *>(widget), QString::fromUtf8(text));
}

int qt_tool_box_insert_item(void *tool_box, int index, void *widget, const char *text) {
    return static_cast<QToolBox *>(tool_box)->insertItem(index, static_cast<QWidget *>(widget), QString::fromUtf8(text));
}

void qt_tool_box_remove_item(void *tool_box, int index) {
    static_cast<QToolBox *>(tool_box)->removeItem(index);
}

int qt_tool_box_get_current_index(void *tool_box) {
    return static_cast<QToolBox *>(tool_box)->currentIndex();
}

void qt_tool_box_set_current_index(void *tool_box, int index) {
    static_cast<QToolBox *>(tool_box)->setCurrentIndex(index);
}

int qt_tool_box_get_count(void *tool_box) {
    return static_cast<QToolBox *>(tool_box)->count();
}

void qt_tool_box_set_item_text(void *tool_box, int index, const char *text) {
    static_cast<QToolBox *>(tool_box)->setItemText(index, QString::fromUtf8(text));
}

char *qt_tool_box_get_item_text(void *tool_box, int index) {
    return qstring_to_heap_utf8(static_cast<QToolBox *>(tool_box)->itemText(index));
}

void qt_tool_box_set_item_enabled(void *tool_box, int index, int is_enabled) {
    static_cast<QToolBox *>(tool_box)->setItemEnabled(index, is_enabled != 0);
}

int qt_tool_box_is_item_enabled(void *tool_box, int index) {
    return static_cast<QToolBox *>(tool_box)->isItemEnabled(index) ? 1 : 0;
}

void qt_tool_box_set_item_icon(void *tool_box, int index, void *icon) {
    static_cast<QToolBox *>(tool_box)->setItemIcon(index, *static_cast<QIcon *>(icon));
}

void *qt_tool_box_get_widget(void *tool_box, int index) {
    return static_cast<void *>(static_cast<QToolBox *>(tool_box)->widget(index));
}

int qt_tool_box_connect_current_changed(void *tool_box, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QToolBox *>(tool_box), &QToolBox::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

/* ── QScrollBar ─────────────────────────────────────────────────────── */

void *qt_scroll_bar_create(int orientation, void *parent) {
    return static_cast<void *>(new QScrollBar(static_cast<Qt::Orientation>(orientation), static_cast<QWidget *>(parent)));
}

void qt_scroll_bar_set_range(void *scroll_bar, int min_val, int max_val) {
    static_cast<QScrollBar *>(scroll_bar)->setRange(min_val, max_val);
}

int qt_scroll_bar_get_value(void *scroll_bar) {
    return static_cast<QScrollBar *>(scroll_bar)->value();
}

void qt_scroll_bar_set_value(void *scroll_bar, int value) {
    static_cast<QScrollBar *>(scroll_bar)->setValue(value);
}

void qt_scroll_bar_set_single_step(void *scroll_bar, int step) {
    static_cast<QScrollBar *>(scroll_bar)->setSingleStep(step);
}

void qt_scroll_bar_set_page_step(void *scroll_bar, int step) {
    static_cast<QScrollBar *>(scroll_bar)->setPageStep(step);
}

void qt_scroll_bar_set_orientation(void *scroll_bar, int orientation) {
    static_cast<QScrollBar *>(scroll_bar)->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int qt_scroll_bar_connect_value_changed(void *scroll_bar, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QScrollBar *>(scroll_bar), &QScrollBar::valueChanged, [callback, user_data](int value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

/* ── QLCDNumber ─────────────────────────────────────────────────────── */

void *qt_lcd_number_create(void *parent) {
    return static_cast<void *>(new QLCDNumber(static_cast<QWidget *>(parent)));
}

void qt_lcd_number_display_int(void *lcd, int value) {
    static_cast<QLCDNumber *>(lcd)->display(value);
}

void qt_lcd_number_display_double(void *lcd, double value) {
    static_cast<QLCDNumber *>(lcd)->display(value);
}

void qt_lcd_number_display_string(void *lcd, const char *text) {
    static_cast<QLCDNumber *>(lcd)->display(QString::fromUtf8(text));
}

void qt_lcd_number_set_digit_count(void *lcd, int count) {
    static_cast<QLCDNumber *>(lcd)->setDigitCount(count);
}

int qt_lcd_number_get_digit_count(void *lcd) {
    return static_cast<QLCDNumber *>(lcd)->digitCount();
}

void qt_lcd_number_set_mode(void *lcd, int mode) {
    static_cast<QLCDNumber *>(lcd)->setMode(static_cast<QLCDNumber::Mode>(mode));
}

int qt_lcd_number_get_mode(void *lcd) {
    return static_cast<int>(static_cast<QLCDNumber *>(lcd)->mode());
}

void qt_lcd_number_set_segment_style(void *lcd, int style) {
    static_cast<QLCDNumber *>(lcd)->setSegmentStyle(static_cast<QLCDNumber::SegmentStyle>(style));
}

int qt_lcd_number_get_segment_style(void *lcd) {
    return static_cast<int>(static_cast<QLCDNumber *>(lcd)->segmentStyle());
}

void qt_lcd_number_set_small_decimal_point(void *lcd, int is_small) {
    static_cast<QLCDNumber *>(lcd)->setSmallDecimalPoint(is_small != 0);
}

/* ── QCommandLinkButton ─────────────────────────────────────────────── */

void *qt_command_link_button_create(void *parent, const char *text, const char *description) {
    return static_cast<void *>(new QCommandLinkButton(
        QString::fromUtf8(text), QString::fromUtf8(description), static_cast<QWidget *>(parent)));
}

void qt_command_link_button_set_description(void *button, const char *description) {
    static_cast<QCommandLinkButton *>(button)->setDescription(QString::fromUtf8(description));
}

char *qt_command_link_button_get_description(void *button) {
    return qstring_to_heap_utf8(static_cast<QCommandLinkButton *>(button)->description());
}

/* ── QKeySequenceEdit ───────────────────────────────────────────────── */

void *qt_key_sequence_edit_create(void *parent) {
    return static_cast<void *>(new QKeySequenceEdit(static_cast<QWidget *>(parent)));
}

char *qt_key_sequence_edit_get_key_sequence(void *edit) {
    return qstring_to_heap_utf8(static_cast<QKeySequenceEdit *>(edit)->keySequence().toString());
}

void qt_key_sequence_edit_set_key_sequence(void *edit, const char *key_sequence) {
    static_cast<QKeySequenceEdit *>(edit)->setKeySequence(QKeySequence::fromString(QString::fromUtf8(key_sequence)));
}

void qt_key_sequence_edit_clear(void *edit) {
    static_cast<QKeySequenceEdit *>(edit)->clear();
}

int qt_key_sequence_edit_connect_key_sequence_changed(void *edit, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QKeySequenceEdit *>(edit), &QKeySequenceEdit::keySequenceChanged, [callback, user_data](const QKeySequence &seq) {
        QByteArray utf8 = seq.toString().toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

/* ── QFontComboBox ──────────────────────────────────────────────────── */

void *qt_font_combo_box_create(void *parent) {
    return static_cast<void *>(new QFontComboBox(static_cast<QWidget *>(parent)));
}

char *qt_font_combo_box_get_current_font_family(void *combo) {
    return qstring_to_heap_utf8(static_cast<QFontComboBox *>(combo)->currentFont().family());
}

void qt_font_combo_box_set_current_font_family(void *combo, const char *family) {
    static_cast<QFontComboBox *>(combo)->setCurrentFont(QFont(QString::fromUtf8(family)));
}

void qt_font_combo_box_set_font_filters(void *combo, int filters) {
    static_cast<QFontComboBox *>(combo)->setFontFilters(static_cast<QFontComboBox::FontFilters>(filters));
}

int qt_font_combo_box_connect_current_font_changed(void *combo, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QFontComboBox *>(combo), &QFontComboBox::currentFontChanged, [callback, user_data](const QFont &font) {
        QByteArray utf8 = font.family().toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

/* ── QSplashScreen ──────────────────────────────────────────────────── */

void *qt_splash_screen_create(void) {
    return static_cast<void *>(new QSplashScreen());
}

void *qt_splash_screen_create_with_pixmap(void *pixmap) {
    return static_cast<void *>(new QSplashScreen(*static_cast<QPixmap *>(pixmap)));
}

void qt_splash_screen_show_message(void *splash, const char *message, int alignment, int colour_r, int colour_g, int colour_b) {
    static_cast<QSplashScreen *>(splash)->showMessage(
        QString::fromUtf8(message), static_cast<Qt::Alignment>(alignment), QColor(colour_r, colour_g, colour_b));
}

void qt_splash_screen_clear_message(void *splash) {
    static_cast<QSplashScreen *>(splash)->clearMessage();
}

void qt_splash_screen_finish(void *splash, void *main_window) {
    static_cast<QSplashScreen *>(splash)->finish(static_cast<QWidget *>(main_window));
}

/* ── QStackedLayout ─────────────────────────────────────────────────── */

void *qt_stacked_layout_create(void *parent) {
    return static_cast<void *>(new QStackedLayout(static_cast<QWidget *>(parent)));
}

int qt_stacked_layout_add_widget(void *layout, void *widget) {
    return static_cast<QStackedLayout *>(layout)->addWidget(static_cast<QWidget *>(widget));
}

int qt_stacked_layout_insert_widget(void *layout, int index, void *widget) {
    return static_cast<QStackedLayout *>(layout)->insertWidget(index, static_cast<QWidget *>(widget));
}

void qt_stacked_layout_set_current_index(void *layout, int index) {
    static_cast<QStackedLayout *>(layout)->setCurrentIndex(index);
}

int qt_stacked_layout_get_current_index(void *layout) {
    return static_cast<QStackedLayout *>(layout)->currentIndex();
}

int qt_stacked_layout_get_count(void *layout) {
    return static_cast<QStackedLayout *>(layout)->count();
}

void *qt_stacked_layout_get_widget(void *layout, int index) {
    return static_cast<void *>(static_cast<QStackedLayout *>(layout)->widget(index));
}

void qt_stacked_layout_set_current_widget(void *layout, void *widget) {
    static_cast<QStackedLayout *>(layout)->setCurrentWidget(static_cast<QWidget *>(widget));
}

void qt_stacked_layout_set_stacking_mode(void *layout, int mode) {
    static_cast<QStackedLayout *>(layout)->setStackingMode(static_cast<QStackedLayout::StackingMode>(mode));
}

int qt_stacked_layout_connect_current_changed(void *layout, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QStackedLayout *>(layout), &QStackedLayout::currentChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

/* ── QWidgetAction ──────────────────────────────────────────────────── */

void *qt_widget_action_create(void *parent) {
    return static_cast<void *>(new QWidgetAction(static_cast<QObject *>(parent)));
}

void qt_widget_action_set_default_widget(void *action, void *widget) {
    static_cast<QWidgetAction *>(action)->setDefaultWidget(static_cast<QWidget *>(widget));
}

void *qt_widget_action_get_default_widget(void *action) {
    return static_cast<void *>(static_cast<QWidgetAction *>(action)->defaultWidget());
}

/* ── QActionGroup ───────────────────────────────────────────────────── */

void *qt_action_group_create(void *parent) {
    return static_cast<void *>(new QActionGroup(static_cast<QObject *>(parent)));
}

void qt_action_group_destroy(void *group) {
    delete static_cast<QActionGroup *>(group);
}

void qt_action_group_add_action(void *group, void *action) {
    static_cast<QActionGroup *>(group)->addAction(static_cast<QAction *>(action));
}

void qt_action_group_remove_action(void *group, void *action) {
    static_cast<QActionGroup *>(group)->removeAction(static_cast<QAction *>(action));
}

void qt_action_group_set_exclusive(void *group, int is_exclusive) {
    static_cast<QActionGroup *>(group)->setExclusive(is_exclusive != 0);
}

int qt_action_group_is_exclusive(void *group) {
    return static_cast<QActionGroup *>(group)->isExclusive() ? 1 : 0;
}

void qt_action_group_set_enabled(void *group, int is_enabled) {
    static_cast<QActionGroup *>(group)->setEnabled(is_enabled != 0);
}

int qt_action_group_is_enabled(void *group) {
    return static_cast<QActionGroup *>(group)->isEnabled() ? 1 : 0;
}

void qt_action_group_set_visible(void *group, int is_visible) {
    static_cast<QActionGroup *>(group)->setVisible(is_visible != 0);
}

int qt_action_group_is_visible(void *group) {
    return static_cast<QActionGroup *>(group)->isVisible() ? 1 : 0;
}

void *qt_action_group_get_checked_action(void *group) {
    return static_cast<void *>(static_cast<QActionGroup *>(group)->checkedAction());
}

int qt_action_group_connect_triggered(void *group, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QActionGroup *>(group), &QActionGroup::triggered, [callback, user_data](QAction *) {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QErrorMessage ──────────────────────────────────────────────────── */

void *qt_error_message_create(void *parent) {
    return static_cast<void *>(new QErrorMessage(static_cast<QWidget *>(parent)));
}

void qt_error_message_show_message(void *dialog, const char *message) {
    static_cast<QErrorMessage *>(dialog)->showMessage(QString::fromUtf8(message));
}

void qt_error_message_show_message_type(void *dialog, const char *message, const char *type) {
    static_cast<QErrorMessage *>(dialog)->showMessage(QString::fromUtf8(message), QString::fromUtf8(type));
}

/* ── QMdiArea ───────────────────────────────────────────────────────── */

void *qt_mdi_area_create(void *parent) {
    return static_cast<void *>(new QMdiArea(static_cast<QWidget *>(parent)));
}

void *qt_mdi_area_add_sub_window(void *mdi_area, void *widget) {
    return static_cast<void *>(static_cast<QMdiArea *>(mdi_area)->addSubWindow(static_cast<QWidget *>(widget)));
}

void qt_mdi_area_remove_sub_window(void *mdi_area, void *widget) {
    static_cast<QMdiArea *>(mdi_area)->removeSubWindow(static_cast<QWidget *>(widget));
}

void qt_mdi_area_set_active_sub_window(void *mdi_area, void *sub_window) {
    static_cast<QMdiArea *>(mdi_area)->setActiveSubWindow(static_cast<QMdiSubWindow *>(sub_window));
}

void *qt_mdi_area_get_active_sub_window(void *mdi_area) {
    return static_cast<void *>(static_cast<QMdiArea *>(mdi_area)->activeSubWindow());
}

int qt_mdi_area_get_sub_window_count(void *mdi_area) {
    return static_cast<QMdiArea *>(mdi_area)->subWindowList().count();
}

void qt_mdi_area_cascade_sub_windows(void *mdi_area) {
    static_cast<QMdiArea *>(mdi_area)->cascadeSubWindows();
}

void qt_mdi_area_tile_sub_windows(void *mdi_area) {
    static_cast<QMdiArea *>(mdi_area)->tileSubWindows();
}

void qt_mdi_area_close_active_sub_window(void *mdi_area) {
    static_cast<QMdiArea *>(mdi_area)->closeActiveSubWindow();
}

void qt_mdi_area_close_all_sub_windows(void *mdi_area) {
    static_cast<QMdiArea *>(mdi_area)->closeAllSubWindows();
}

void qt_mdi_area_set_view_mode(void *mdi_area, int mode) {
    static_cast<QMdiArea *>(mdi_area)->setViewMode(static_cast<QMdiArea::ViewMode>(mode));
}

int qt_mdi_area_connect_sub_window_activated(void *mdi_area, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QMdiArea *>(mdi_area), &QMdiArea::subWindowActivated, [callback, user_data](QMdiSubWindow *) {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QMdiSubWindow ──────────────────────────────────────────────────── */

void *qt_mdi_sub_window_create(void *parent) {
    return static_cast<void *>(new QMdiSubWindow(static_cast<QWidget *>(parent)));
}

void qt_mdi_sub_window_set_widget(void *sub_window, void *widget) {
    static_cast<QMdiSubWindow *>(sub_window)->setWidget(static_cast<QWidget *>(widget));
}

void *qt_mdi_sub_window_get_widget(void *sub_window) {
    return static_cast<void *>(static_cast<QMdiSubWindow *>(sub_window)->widget());
}

void qt_mdi_sub_window_set_system_menu(void *sub_window, void *menu) {
    static_cast<QMdiSubWindow *>(sub_window)->setSystemMenu(static_cast<QMenu *>(menu));
}

int qt_mdi_sub_window_is_shaded(void *sub_window) {
    return static_cast<QMdiSubWindow *>(sub_window)->isShaded() ? 1 : 0;
}

void qt_mdi_sub_window_show_shaded(void *sub_window) {
    static_cast<QMdiSubWindow *>(sub_window)->showShaded();
}

void qt_mdi_sub_window_show_normal(void *sub_window) {
    static_cast<QMdiSubWindow *>(sub_window)->showNormal();
}

/* ── QWizard ────────────────────────────────────────────────────────── */

void *qt_wizard_create(void *parent) {
    return static_cast<void *>(new QWizard(static_cast<QWidget *>(parent)));
}

int qt_wizard_add_page(void *wizard, void *page) {
    return static_cast<QWizard *>(wizard)->addPage(static_cast<QWizardPage *>(page));
}

void qt_wizard_set_page(void *wizard, int id, void *page) {
    static_cast<QWizard *>(wizard)->setPage(id, static_cast<QWizardPage *>(page));
}

void qt_wizard_remove_page(void *wizard, int id) {
    static_cast<QWizard *>(wizard)->removePage(id);
}

int qt_wizard_get_current_id(void *wizard) {
    return static_cast<QWizard *>(wizard)->currentId();
}

void qt_wizard_set_start_id(void *wizard, int id) {
    static_cast<QWizard *>(wizard)->setStartId(id);
}

void qt_wizard_set_button_text(void *wizard, int which, const char *text) {
    static_cast<QWizard *>(wizard)->setButtonText(static_cast<QWizard::WizardButton>(which), QString::fromUtf8(text));
}

void qt_wizard_set_wizard_style(void *wizard, int style) {
    static_cast<QWizard *>(wizard)->setWizardStyle(static_cast<QWizard::WizardStyle>(style));
}

void qt_wizard_set_option(void *wizard, int option, int is_on) {
    static_cast<QWizard *>(wizard)->setOption(static_cast<QWizard::WizardOption>(option), is_on != 0);
}

void qt_wizard_restart(void *wizard) {
    static_cast<QWizard *>(wizard)->restart();
}

int qt_wizard_connect_current_id_changed(void *wizard, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QWizard *>(wizard), &QWizard::currentIdChanged, [callback, user_data](int id) {
        callback(id, user_data);
    });
    return store_connection(conn);
}

int qt_wizard_connect_page_added(void *wizard, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QWizard *>(wizard), &QWizard::pageAdded, [callback, user_data](int id) {
        callback(id, user_data);
    });
    return store_connection(conn);
}

int qt_wizard_connect_page_removed(void *wizard, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QWizard *>(wizard), &QWizard::pageRemoved, [callback, user_data](int id) {
        callback(id, user_data);
    });
    return store_connection(conn);
}

/* ── QWizardPage ────────────────────────────────────────────────────── */

void *qt_wizard_page_create(void *parent) {
    return static_cast<void *>(new QWizardPage(static_cast<QWidget *>(parent)));
}

void qt_wizard_page_set_title(void *page, const char *title) {
    static_cast<QWizardPage *>(page)->setTitle(QString::fromUtf8(title));
}

char *qt_wizard_page_get_title(void *page) {
    return qstring_to_heap_utf8(static_cast<QWizardPage *>(page)->title());
}

void qt_wizard_page_set_sub_title(void *page, const char *sub_title) {
    static_cast<QWizardPage *>(page)->setSubTitle(QString::fromUtf8(sub_title));
}

char *qt_wizard_page_get_sub_title(void *page) {
    return qstring_to_heap_utf8(static_cast<QWizardPage *>(page)->subTitle());
}

void qt_wizard_page_set_commit_page(void *page, int is_commit) {
    static_cast<QWizardPage *>(page)->setCommitPage(is_commit != 0);
}

int qt_wizard_page_is_commit_page(void *page) {
    return static_cast<QWizardPage *>(page)->isCommitPage() ? 1 : 0;
}

void qt_wizard_page_set_final_page(void *page, int is_final) {
    static_cast<QWizardPage *>(page)->setFinalPage(is_final != 0);
}

int qt_wizard_page_is_final_page(void *page) {
    return static_cast<QWizardPage *>(page)->isFinalPage() ? 1 : 0;
}

/* ── QColumnView ────────────────────────────────────────────────────── */

void *qt_column_view_create(void *parent) {
    return static_cast<void *>(new QColumnView(static_cast<QWidget *>(parent)));
}

void qt_column_view_set_model(void *view, void *model) {
    static_cast<QColumnView *>(view)->setModel(static_cast<QAbstractItemModel *>(model));
}

void qt_column_view_set_root_index(void *view, void *index) {
    static_cast<QColumnView *>(view)->setRootIndex(*static_cast<QModelIndex *>(index));
}

void qt_column_view_set_preview_widget(void *view, void *widget) {
    static_cast<QColumnView *>(view)->setPreviewWidget(static_cast<QWidget *>(widget));
}

void *qt_column_view_get_preview_widget(void *view) {
    return static_cast<void *>(static_cast<QColumnView *>(view)->previewWidget());
}

void qt_column_view_set_resizing_grips_visible(void *view, int is_visible) {
    static_cast<QColumnView *>(view)->setResizeGripsVisible(is_visible != 0);
}

/* ── QUndoView ──────────────────────────────────────────────────────── */

void *qt_undo_view_create(void *parent) {
    return static_cast<void *>(new QUndoView(static_cast<QWidget *>(parent)));
}

void qt_undo_view_set_stack(void *view, void *stack) {
    static_cast<QUndoView *>(view)->setStack(static_cast<QUndoStack *>(stack));
}

void qt_undo_view_set_group(void *view, void *group) {
    static_cast<QUndoView *>(view)->setGroup(static_cast<QUndoGroup *>(group));
}

void qt_undo_view_set_clean_icon(void *view, void *icon) {
    static_cast<QUndoView *>(view)->setCleanIcon(*static_cast<QIcon *>(icon));
}

void qt_undo_view_set_empty_label(void *view, const char *label) {
    static_cast<QUndoView *>(view)->setEmptyLabel(QString::fromUtf8(label));
}

/* ── QRubberBand ────────────────────────────────────────────────────── */

void *qt_rubber_band_create(int shape, void *parent) {
    return static_cast<void *>(new QRubberBand(static_cast<QRubberBand::Shape>(shape), static_cast<QWidget *>(parent)));
}

void qt_rubber_band_set_geometry(void *band, int x, int y, int width, int height) {
    static_cast<QRubberBand *>(band)->setGeometry(x, y, width, height);
}

void qt_rubber_band_move(void *band, int x, int y) {
    static_cast<QRubberBand *>(band)->move(x, y);
}

void qt_rubber_band_resize(void *band, int width, int height) {
    static_cast<QRubberBand *>(band)->resize(width, height);
}

/* ── QFocusFrame ────────────────────────────────────────────────────── */

void *qt_focus_frame_create(void *parent) {
    return static_cast<void *>(new QFocusFrame(static_cast<QWidget *>(parent)));
}

void qt_focus_frame_set_widget(void *frame, void *widget) {
    static_cast<QFocusFrame *>(frame)->setWidget(static_cast<QWidget *>(widget));
}

void *qt_focus_frame_get_widget(void *frame) {
    return static_cast<void *>(static_cast<QFocusFrame *>(frame)->widget());
}

/* ── QSizeGrip ──────────────────────────────────────────────────────── */

void *qt_size_grip_create(void *parent) {
    return static_cast<void *>(new QSizeGrip(static_cast<QWidget *>(parent)));
}

/* ── QWhatsThis ─────────────────────────────────────────────────────── */

void qt_whats_this_enter_mode(void) {
    QWhatsThis::enterWhatsThisMode();
}

void qt_whats_this_leave_mode(void) {
    QWhatsThis::leaveWhatsThisMode();
}

int qt_whats_this_is_in_mode(void) {
    return QWhatsThis::inWhatsThisMode() ? 1 : 0;
}

void qt_whats_this_show_text(int global_x, int global_y, const char *text, void *widget) {
    QWhatsThis::showText(QPoint(global_x, global_y), QString::fromUtf8(text), static_cast<QWidget *>(widget));
}

void qt_whats_this_hide_text(void) {
    QWhatsThis::hideText();
}

/* ── QImage ──────────────────────────────────────────────────────────── */

void *qt_image_create(int width, int height, int format) {
    return static_cast<void *>(new QImage(width, height, static_cast<QImage::Format>(format)));
}

void *qt_image_create_from_file(const char *file_path) {
    return static_cast<void *>(new QImage(QString::fromUtf8(file_path)));
}

void *qt_image_create_from_data(const unsigned char *data, int size) {
    return static_cast<void *>(new QImage(QImage::fromData(data, size)));
}

void qt_image_destroy(void *image) {
    delete static_cast<QImage *>(image);
}

int qt_image_get_width(void *image) {
    return static_cast<QImage *>(image)->width();
}

int qt_image_get_height(void *image) {
    return static_cast<QImage *>(image)->height();
}

int qt_image_get_format(void *image) {
    return static_cast<int>(static_cast<QImage *>(image)->format());
}

int qt_image_is_null(void *image) {
    return static_cast<QImage *>(image)->isNull() ? 1 : 0;
}

void qt_image_fill(void *image, int r, int g, int b, int a) {
    static_cast<QImage *>(image)->fill(QColor(r, g, b, a));
}

void qt_image_set_pixel(void *image, int x, int y, int r, int g, int b, int a) {
    static_cast<QImage *>(image)->setPixelColor(x, y, QColor(r, g, b, a));
}

void qt_image_get_pixel(void *image, int x, int y, int *r, int *g, int *b, int *a) {
    QColor c = static_cast<QImage *>(image)->pixelColor(x, y);
    *r = c.red(); *g = c.green(); *b = c.blue(); *a = c.alpha();
}

void *qt_image_scaled(void *image, int width, int height, int aspect_mode, int transform_mode) {
    return static_cast<void *>(new QImage(static_cast<QImage *>(image)->scaled(
        width, height, static_cast<Qt::AspectRatioMode>(aspect_mode), static_cast<Qt::TransformationMode>(transform_mode))));
}

void *qt_image_mirrored(void *image, int is_horizontal, int is_vertical) {
    return static_cast<void *>(new QImage(static_cast<QImage *>(image)->mirrored(is_horizontal != 0, is_vertical != 0)));
}

void *qt_image_copy(void *image, int x, int y, int width, int height) {
    return static_cast<void *>(new QImage(static_cast<QImage *>(image)->copy(x, y, width, height)));
}

int qt_image_save(void *image, const char *file_path, const char *format, int quality) {
    return static_cast<QImage *>(image)->save(QString::fromUtf8(file_path), format, quality) ? 1 : 0;
}

void *qt_image_to_pixmap(void *image) {
    return static_cast<void *>(new QPixmap(QPixmap::fromImage(*static_cast<QImage *>(image))));
}

void *qt_pixmap_to_image(void *pixmap) {
    return static_cast<void *>(new QImage(static_cast<QPixmap *>(pixmap)->toImage()));
}

int qt_image_get_depth(void *image) {
    return static_cast<QImage *>(image)->depth();
}

int qt_image_get_byte_count(void *image) {
    return static_cast<int>(static_cast<QImage *>(image)->sizeInBytes());
}

const unsigned char *qt_image_get_bits(void *image) {
    return static_cast<QImage *>(image)->constBits();
}

void *qt_image_convert_to_format(void *image, int format) {
    return static_cast<void *>(new QImage(static_cast<QImage *>(image)->convertToFormat(static_cast<QImage::Format>(format))));
}

void *qt_image_rgb_swapped(void *image) {
    return static_cast<void *>(new QImage(static_cast<QImage *>(image)->rgbSwapped()));
}

void *qt_image_transformed(void *image, void *transform) {
    return static_cast<void *>(new QImage(static_cast<QImage *>(image)->transformed(*static_cast<QTransform *>(transform))));
}

void qt_image_set_text(void *image, const char *key, const char *value) {
    static_cast<QImage *>(image)->setText(QString::fromUtf8(key), QString::fromUtf8(value));
}

char *qt_image_get_text(void *image, const char *key) {
    return qstring_to_heap_utf8(static_cast<QImage *>(image)->text(QString::fromUtf8(key)));
}

int qt_image_is_all_grey(void *image) {
    return static_cast<QImage *>(image)->allGray() ? 1 : 0;
}

int qt_image_is_greyscale(void *image) {
    return static_cast<QImage *>(image)->isGrayscale() ? 1 : 0;
}

/* ── QColor (standalone) ────────────────────────────────────────────── */

void *qt_colour_create(int r, int g, int b, int a) {
    return static_cast<void *>(new QColor(r, g, b, a));
}

void *qt_colour_create_from_name(const char *name) {
    return static_cast<void *>(new QColor(QString::fromUtf8(name)));
}

void *qt_colour_create_from_hsv(int h, int s, int v, int a) {
    return static_cast<void *>(new QColor(QColor::fromHsv(h, s, v, a)));
}

void *qt_colour_create_from_hsl(int h, int s, int l, int a) {
    return static_cast<void *>(new QColor(QColor::fromHsl(h, s, l, a)));
}

void qt_colour_destroy(void *colour) {
    delete static_cast<QColor *>(colour);
}

void qt_colour_get_rgb(void *colour, int *r, int *g, int *b, int *a) {
    QColor *c = static_cast<QColor *>(colour);
    *r = c->red(); *g = c->green(); *b = c->blue(); *a = c->alpha();
}

void qt_colour_get_hsv(void *colour, int *h, int *s, int *v, int *a) {
    QColor *c = static_cast<QColor *>(colour);
    *h = c->hsvHue(); *s = c->hsvSaturation(); *v = c->value(); *a = c->alpha();
}

void qt_colour_get_hsl(void *colour, int *h, int *s, int *l, int *a) {
    QColor *c = static_cast<QColor *>(colour);
    *h = c->hslHue(); *s = c->hslSaturation(); *l = c->lightness(); *a = c->alpha();
}

char *qt_colour_get_name(void *colour) {
    return qstring_to_heap_utf8(static_cast<QColor *>(colour)->name());
}

int qt_colour_is_valid(void *colour) {
    return static_cast<QColor *>(colour)->isValid() ? 1 : 0;
}

void *qt_colour_lighter(void *colour, int factor) {
    return static_cast<void *>(new QColor(static_cast<QColor *>(colour)->lighter(factor)));
}

void *qt_colour_darker(void *colour, int factor) {
    return static_cast<void *>(new QColor(static_cast<QColor *>(colour)->darker(factor)));
}

void qt_colour_set_alpha(void *colour, int alpha) {
    static_cast<QColor *>(colour)->setAlpha(alpha);
}

int qt_colour_get_alpha(void *colour) {
    return static_cast<QColor *>(colour)->alpha();
}

void qt_colour_set_red(void *colour, int red) {
    static_cast<QColor *>(colour)->setRed(red);
}

int qt_colour_get_red(void *colour) {
    return static_cast<QColor *>(colour)->red();
}

void qt_colour_set_green(void *colour, int green) {
    static_cast<QColor *>(colour)->setGreen(green);
}

int qt_colour_get_green(void *colour) {
    return static_cast<QColor *>(colour)->green();
}

void qt_colour_set_blue(void *colour, int blue) {
    static_cast<QColor *>(colour)->setBlue(blue);
}

int qt_colour_get_blue(void *colour) {
    return static_cast<QColor *>(colour)->blue();
}

void *qt_colour_to_rgb(void *colour) {
    return static_cast<void *>(new QColor(static_cast<QColor *>(colour)->toRgb()));
}

void *qt_colour_to_hsv(void *colour) {
    return static_cast<void *>(new QColor(static_cast<QColor *>(colour)->toHsv()));
}

void *qt_colour_to_hsl(void *colour) {
    return static_cast<void *>(new QColor(static_cast<QColor *>(colour)->toHsl()));
}

int qt_colour_get_spec(void *colour) {
    return static_cast<int>(static_cast<QColor *>(colour)->spec());
}

void qt_colour_set_named_colour(void *colour, const char *name) {
    static_cast<QColor *>(colour)->setNamedColor(QString::fromUtf8(name));
}

/* ── QFont (standalone) ─────────────────────────────────────────────── */

void *qt_font_create(const char *family, int point_size, int weight, int is_italic) {
    return static_cast<void *>(new QFont(QString::fromUtf8(family), point_size, weight, is_italic != 0));
}

void *qt_font_create_default(void) {
    return static_cast<void *>(new QFont());
}

void qt_font_destroy(void *font) {
    delete static_cast<QFont *>(font);
}

void qt_font_set_family(void *font, const char *family) {
    static_cast<QFont *>(font)->setFamily(QString::fromUtf8(family));
}

char *qt_font_get_family(void *font) {
    return qstring_to_heap_utf8(static_cast<QFont *>(font)->family());
}

void qt_font_set_point_size(void *font, int size) {
    static_cast<QFont *>(font)->setPointSize(size);
}

int qt_font_get_point_size(void *font) {
    return static_cast<QFont *>(font)->pointSize();
}

void qt_font_set_pixel_size(void *font, int size) {
    static_cast<QFont *>(font)->setPixelSize(size);
}

int qt_font_get_pixel_size(void *font) {
    return static_cast<QFont *>(font)->pixelSize();
}

void qt_font_set_weight(void *font, int weight) {
    static_cast<QFont *>(font)->setWeight(static_cast<QFont::Weight>(weight));
}

int qt_font_get_weight(void *font) {
    return static_cast<int>(static_cast<QFont *>(font)->weight());
}

void qt_font_set_bold(void *font, int is_bold) {
    static_cast<QFont *>(font)->setBold(is_bold != 0);
}

int qt_font_is_bold(void *font) {
    return static_cast<QFont *>(font)->bold() ? 1 : 0;
}

void qt_font_set_italic(void *font, int is_italic) {
    static_cast<QFont *>(font)->setItalic(is_italic != 0);
}

int qt_font_is_italic(void *font) {
    return static_cast<QFont *>(font)->italic() ? 1 : 0;
}

void qt_font_set_underline(void *font, int is_underline) {
    static_cast<QFont *>(font)->setUnderline(is_underline != 0);
}

int qt_font_is_underline(void *font) {
    return static_cast<QFont *>(font)->underline() ? 1 : 0;
}

void qt_font_set_strikeout(void *font, int is_strikeout) {
    static_cast<QFont *>(font)->setStrikeOut(is_strikeout != 0);
}

int qt_font_is_strikeout(void *font) {
    return static_cast<QFont *>(font)->strikeOut() ? 1 : 0;
}

void qt_font_set_kerning(void *font, int is_kerning) {
    static_cast<QFont *>(font)->setKerning(is_kerning != 0);
}

int qt_font_is_kerning(void *font) {
    return static_cast<QFont *>(font)->kerning() ? 1 : 0;
}

void qt_font_set_letter_spacing(void *font, int spacing_type, double spacing) {
    static_cast<QFont *>(font)->setLetterSpacing(static_cast<QFont::SpacingType>(spacing_type), spacing);
}

void qt_font_set_word_spacing(void *font, double spacing) {
    static_cast<QFont *>(font)->setWordSpacing(spacing);
}

void qt_font_set_stretch(void *font, int factor) {
    static_cast<QFont *>(font)->setStretch(factor);
}

void qt_font_set_style_hint(void *font, int hint) {
    static_cast<QFont *>(font)->setStyleHint(static_cast<QFont::StyleHint>(hint));
}

char *qt_font_to_string(void *font) {
    return qstring_to_heap_utf8(static_cast<QFont *>(font)->toString());
}

void qt_font_set_style_strategy(void *font, int strategy) {
    static_cast<QFont *>(font)->setStyleStrategy(static_cast<QFont::StyleStrategy>(strategy));
}

void *qt_font_from_string(const char *description) {
    QFont *f = new QFont();
    f->fromString(QString::fromUtf8(description));
    return static_cast<void *>(f);
}

int qt_font_is_exact_match(void *font) {
    return static_cast<QFont *>(font)->exactMatch() ? 1 : 0;
}

void qt_font_set_overline(void *font, int is_overline) {
    static_cast<QFont *>(font)->setOverline(is_overline != 0);
}

int qt_font_is_overline(void *font) {
    return static_cast<QFont *>(font)->overline() ? 1 : 0;
}

void qt_font_set_capitalization(void *font, int capitalization) {
    static_cast<QFont *>(font)->setCapitalization(static_cast<QFont::Capitalization>(capitalization));
}

void qt_font_set_hinting_preference(void *font, int preference) {
    static_cast<QFont *>(font)->setHintingPreference(static_cast<QFont::HintingPreference>(preference));
}

/* ── QPen (standalone) ──────────────────────────────────────────────── */

void *qt_pen_create(void) {
    return static_cast<void *>(new QPen());
}

void *qt_pen_create_with_colour(int r, int g, int b, int a) {
    return static_cast<void *>(new QPen(QColor(r, g, b, a)));
}

void qt_pen_destroy(void *pen) {
    delete static_cast<QPen *>(pen);
}

void qt_pen_set_colour(void *pen, int r, int g, int b, int a) {
    static_cast<QPen *>(pen)->setColor(QColor(r, g, b, a));
}

void qt_pen_get_colour(void *pen, int *r, int *g, int *b, int *a) {
    QColor c = static_cast<QPen *>(pen)->color();
    *r = c.red(); *g = c.green(); *b = c.blue(); *a = c.alpha();
}

void qt_pen_set_width(void *pen, int width) {
    static_cast<QPen *>(pen)->setWidth(width);
}

int qt_pen_get_width(void *pen) {
    return static_cast<QPen *>(pen)->width();
}

void qt_pen_set_width_f(void *pen, double width) {
    static_cast<QPen *>(pen)->setWidthF(width);
}

double qt_pen_get_width_f(void *pen) {
    return static_cast<QPen *>(pen)->widthF();
}

void qt_pen_set_style(void *pen, int style) {
    static_cast<QPen *>(pen)->setStyle(static_cast<Qt::PenStyle>(style));
}

int qt_pen_get_style(void *pen) {
    return static_cast<int>(static_cast<QPen *>(pen)->style());
}

void qt_pen_set_cap_style(void *pen, int style) {
    static_cast<QPen *>(pen)->setCapStyle(static_cast<Qt::PenCapStyle>(style));
}

int qt_pen_get_cap_style(void *pen) {
    return static_cast<int>(static_cast<QPen *>(pen)->capStyle());
}

void qt_pen_set_join_style(void *pen, int style) {
    static_cast<QPen *>(pen)->setJoinStyle(static_cast<Qt::PenJoinStyle>(style));
}

int qt_pen_get_join_style(void *pen) {
    return static_cast<int>(static_cast<QPen *>(pen)->joinStyle());
}

void qt_pen_set_dash_offset(void *pen, double offset) {
    static_cast<QPen *>(pen)->setDashOffset(offset);
}

double qt_pen_get_dash_offset(void *pen) {
    return static_cast<QPen *>(pen)->dashOffset();
}

void qt_pen_set_brush(void *pen, void *brush) {
    static_cast<QPen *>(pen)->setBrush(*static_cast<QBrush *>(brush));
}

void *qt_pen_get_brush(void *pen) {
    return static_cast<void *>(new QBrush(static_cast<QPen *>(pen)->brush()));
}

void qt_pen_set_dash_pattern(void *pen, const double *pattern, int count) {
    QList<qreal> dashes;
    dashes.reserve(count);
    for (int i = 0; i < count; ++i) {
        dashes.append(pattern[i]);
    }
    static_cast<QPen *>(pen)->setDashPattern(dashes);
}

void qt_pen_get_dash_pattern(void *pen, double **out_pattern, int *out_count) {
    QList<qreal> dashes = static_cast<QPen *>(pen)->dashPattern();
    *out_count = dashes.size();
    if (dashes.isEmpty()) {
        *out_pattern = nullptr;
        return;
    }
    *out_pattern = static_cast<double *>(malloc(sizeof(double) * dashes.size()));
    for (int i = 0; i < dashes.size(); ++i) {
        (*out_pattern)[i] = dashes[i];
    }
}

void qt_pen_free_dash_pattern(double *pattern) {
    free(pattern);
}

void qt_pen_set_cosmetic(void *pen, int is_cosmetic) {
    static_cast<QPen *>(pen)->setCosmetic(is_cosmetic != 0);
}

int qt_pen_is_cosmetic(void *pen) {
    return static_cast<QPen *>(pen)->isCosmetic() ? 1 : 0;
}

void qt_pen_set_miter_limit(void *pen, double limit) {
    static_cast<QPen *>(pen)->setMiterLimit(limit);
}

double qt_pen_get_miter_limit(void *pen) {
    return static_cast<QPen *>(pen)->miterLimit();
}

/* ── QBrush (standalone) ────────────────────────────────────────────── */

void *qt_brush_create(void) {
    return static_cast<void *>(new QBrush());
}

void *qt_brush_create_with_colour(int r, int g, int b, int a) {
    return static_cast<void *>(new QBrush(QColor(r, g, b, a)));
}

void qt_brush_destroy(void *brush) {
    delete static_cast<QBrush *>(brush);
}

void qt_brush_set_colour(void *brush, int r, int g, int b, int a) {
    static_cast<QBrush *>(brush)->setColor(QColor(r, g, b, a));
}

void qt_brush_get_colour(void *brush, int *r, int *g, int *b, int *a) {
    QColor c = static_cast<QBrush *>(brush)->color();
    *r = c.red(); *g = c.green(); *b = c.blue(); *a = c.alpha();
}

void qt_brush_set_style(void *brush, int style) {
    static_cast<QBrush *>(brush)->setStyle(static_cast<Qt::BrushStyle>(style));
}

int qt_brush_get_style(void *brush) {
    return static_cast<int>(static_cast<QBrush *>(brush)->style());
}

void qt_brush_set_texture(void *brush, void *pixmap) {
    static_cast<QBrush *>(brush)->setTexture(*static_cast<QPixmap *>(pixmap));
}

/* ── QPalette ───────────────────────────────────────────────────────── */

void *qt_palette_create(void) {
    return static_cast<void *>(new QPalette());
}

void *qt_palette_create_from_widget(void *widget) {
    return static_cast<void *>(new QPalette(static_cast<QWidget *>(widget)->palette()));
}

void qt_palette_destroy(void *palette) {
    delete static_cast<QPalette *>(palette);
}

void qt_palette_set_colour(void *palette, int group, int role, int r, int g, int b, int a) {
    static_cast<QPalette *>(palette)->setColor(static_cast<QPalette::ColorGroup>(group), static_cast<QPalette::ColorRole>(role), QColor(r, g, b, a));
}

void qt_palette_get_colour(void *palette, int group, int role, int *r, int *g, int *b, int *a) {
    QColor c = static_cast<QPalette *>(palette)->color(static_cast<QPalette::ColorGroup>(group), static_cast<QPalette::ColorRole>(role));
    *r = c.red(); *g = c.green(); *b = c.blue(); *a = c.alpha();
}

void qt_palette_set_brush(void *palette, int group, int role, void *brush) {
    static_cast<QPalette *>(palette)->setBrush(static_cast<QPalette::ColorGroup>(group), static_cast<QPalette::ColorRole>(role), *static_cast<QBrush *>(brush));
}

void qt_widget_set_palette(void *widget, void *palette) {
    static_cast<QWidget *>(widget)->setPalette(*static_cast<QPalette *>(palette));
}

/* ── QCursor (standalone) ───────────────────────────────────────────── */

void *qt_cursor_create(int shape) {
    return static_cast<void *>(new QCursor(static_cast<Qt::CursorShape>(shape)));
}

void *qt_cursor_create_from_pixmap(void *pixmap, int hot_x, int hot_y) {
    return static_cast<void *>(new QCursor(*static_cast<QPixmap *>(pixmap), hot_x, hot_y));
}

void qt_cursor_destroy(void *cursor) {
    delete static_cast<QCursor *>(cursor);
}

void qt_cursor_get_pos(int *x, int *y) {
    QPoint p = QCursor::pos();
    *x = p.x(); *y = p.y();
}

void qt_cursor_set_pos(int x, int y) {
    QCursor::setPos(x, y);
}

void qt_widget_set_cursor_object(void *widget, void *cursor) {
    static_cast<QWidget *>(widget)->setCursor(*static_cast<QCursor *>(cursor));
}

/* ── QPainterPath ───────────────────────────────────────────────────── */

void *qt_painter_path_create(void) {
    return static_cast<void *>(new QPainterPath());
}

void qt_painter_path_destroy(void *path) {
    delete static_cast<QPainterPath *>(path);
}

void qt_painter_path_move_to(void *path, double x, double y) {
    static_cast<QPainterPath *>(path)->moveTo(x, y);
}

void qt_painter_path_line_to(void *path, double x, double y) {
    static_cast<QPainterPath *>(path)->lineTo(x, y);
}

void qt_painter_path_cubic_to(void *path, double ctrl1_x, double ctrl1_y, double ctrl2_x, double ctrl2_y, double end_x, double end_y) {
    static_cast<QPainterPath *>(path)->cubicTo(ctrl1_x, ctrl1_y, ctrl2_x, ctrl2_y, end_x, end_y);
}

void qt_painter_path_quad_to(void *path, double ctrl_x, double ctrl_y, double end_x, double end_y) {
    static_cast<QPainterPath *>(path)->quadTo(ctrl_x, ctrl_y, end_x, end_y);
}

void qt_painter_path_arc_to(void *path, double x, double y, double width, double height, double start_angle, double sweep_length) {
    static_cast<QPainterPath *>(path)->arcTo(x, y, width, height, start_angle, sweep_length);
}

void qt_painter_path_add_rect(void *path, double x, double y, double width, double height) {
    static_cast<QPainterPath *>(path)->addRect(x, y, width, height);
}

void qt_painter_path_add_ellipse(void *path, double x, double y, double width, double height) {
    static_cast<QPainterPath *>(path)->addEllipse(x, y, width, height);
}

void qt_painter_path_add_text(void *path, double x, double y, void *font, const char *text) {
    static_cast<QPainterPath *>(path)->addText(x, y, *static_cast<QFont *>(font), QString::fromUtf8(text));
}

void qt_painter_path_add_rounded_rect(void *path, double x, double y, double w, double h, double x_radius, double y_radius) {
    static_cast<QPainterPath *>(path)->addRoundedRect(x, y, w, h, x_radius, y_radius);
}

void qt_painter_path_close_subpath(void *path) {
    static_cast<QPainterPath *>(path)->closeSubpath();
}

int qt_painter_path_is_empty(void *path) {
    return static_cast<QPainterPath *>(path)->isEmpty() ? 1 : 0;
}

int qt_painter_path_contains_point(void *path, double x, double y) {
    return static_cast<QPainterPath *>(path)->contains(QPointF(x, y)) ? 1 : 0;
}

void qt_painter_path_add_path(void *path, void *other) {
    static_cast<QPainterPath *>(path)->addPath(*static_cast<QPainterPath *>(other));
}

void qt_painter_path_add_polygon(void *path, const double *points, int point_count) {
    QPolygonF polygon;
    polygon.reserve(point_count);
    for (int i = 0; i < point_count; ++i) {
        polygon.append(QPointF(points[i * 2], points[i * 2 + 1]));
    }
    static_cast<QPainterPath *>(path)->addPolygon(polygon);
}

void qt_painter_path_get_bounding_rect(void *path, double *x, double *y, double *w, double *h) {
    QRectF r = static_cast<QPainterPath *>(path)->boundingRect();
    *x = r.x(); *y = r.y(); *w = r.width(); *h = r.height();
}

double qt_painter_path_get_length(void *path) {
    return static_cast<QPainterPath *>(path)->length();
}

double qt_painter_path_get_percent_at_length(void *path, double length) {
    return static_cast<QPainterPath *>(path)->percentAtLength(length);
}

void qt_painter_path_get_point_at_percent(void *path, double percent, double *x, double *y) {
    QPointF p = static_cast<QPainterPath *>(path)->pointAtPercent(percent);
    *x = p.x(); *y = p.y();
}

double qt_painter_path_get_angle_at_percent(void *path, double percent) {
    return static_cast<QPainterPath *>(path)->angleAtPercent(percent);
}

void *qt_painter_path_united(void *path, void *other) {
    return static_cast<void *>(new QPainterPath(static_cast<QPainterPath *>(path)->united(*static_cast<QPainterPath *>(other))));
}

void *qt_painter_path_intersected(void *path, void *other) {
    return static_cast<void *>(new QPainterPath(static_cast<QPainterPath *>(path)->intersected(*static_cast<QPainterPath *>(other))));
}

void *qt_painter_path_subtracted(void *path, void *other) {
    return static_cast<void *>(new QPainterPath(static_cast<QPainterPath *>(path)->subtracted(*static_cast<QPainterPath *>(other))));
}

void *qt_painter_path_simplified(void *path) {
    return static_cast<void *>(new QPainterPath(static_cast<QPainterPath *>(path)->simplified()));
}

void *qt_painter_path_translated(void *path, double dx, double dy) {
    return static_cast<void *>(new QPainterPath(static_cast<QPainterPath *>(path)->translated(dx, dy)));
}

void *qt_painter_path_to_reversed(void *path) {
    return static_cast<void *>(new QPainterPath(static_cast<QPainterPath *>(path)->toReversed()));
}

int qt_painter_path_intersects_rect(void *path, double x, double y, double w, double h) {
    return static_cast<QPainterPath *>(path)->intersects(QRectF(x, y, w, h)) ? 1 : 0;
}

int qt_painter_path_intersects_path(void *path, void *other) {
    return static_cast<QPainterPath *>(path)->intersects(*static_cast<QPainterPath *>(other)) ? 1 : 0;
}

void qt_painter_path_set_fill_rule(void *path, int rule) {
    static_cast<QPainterPath *>(path)->setFillRule(static_cast<Qt::FillRule>(rule));
}

int qt_painter_path_get_fill_rule(void *path) {
    return static_cast<int>(static_cast<QPainterPath *>(path)->fillRule());
}

int qt_painter_path_get_element_count(void *path) {
    return static_cast<QPainterPath *>(path)->elementCount();
}

void qt_painter_draw_path(void *painter, void *path) {
    static_cast<QPainter *>(painter)->drawPath(*static_cast<QPainterPath *>(path));
}

void qt_painter_set_clip_path(void *painter, void *path) {
    static_cast<QPainter *>(painter)->setClipPath(*static_cast<QPainterPath *>(path));
}

void qt_painter_fill_path(void *painter, void *path, int r, int g, int b, int a) {
    static_cast<QPainter *>(painter)->fillPath(*static_cast<QPainterPath *>(path), QColor(r, g, b, a));
}

void qt_painter_stroke_path(void *painter, void *path, void *pen) {
    static_cast<QPainter *>(painter)->strokePath(*static_cast<QPainterPath *>(path), *static_cast<QPen *>(pen));
}

/* ── QTransform ─────────────────────────────────────────────────────── */

void *qt_transform_create(void) {
    return static_cast<void *>(new QTransform());
}

void *qt_transform_create_values(double m11, double m12, double m13, double m21, double m22, double m23, double m31, double m32, double m33) {
    return static_cast<void *>(new QTransform(m11, m12, m13, m21, m22, m23, m31, m32, m33));
}

void qt_transform_destroy(void *transform) {
    delete static_cast<QTransform *>(transform);
}

void *qt_transform_inverted(void *transform) {
    return static_cast<void *>(new QTransform(static_cast<QTransform *>(transform)->inverted()));
}

void *qt_transform_transposed(void *transform) {
    return static_cast<void *>(new QTransform(static_cast<QTransform *>(transform)->transposed()));
}

void qt_transform_translate(void *transform, double dx, double dy) {
    static_cast<QTransform *>(transform)->translate(dx, dy);
}

void qt_transform_scale(void *transform, double sx, double sy) {
    static_cast<QTransform *>(transform)->scale(sx, sy);
}

void qt_transform_rotate(void *transform, double angle) {
    static_cast<QTransform *>(transform)->rotate(angle);
}

void qt_transform_shear(void *transform, double sh, double sv) {
    static_cast<QTransform *>(transform)->shear(sh, sv);
}

void qt_transform_reset(void *transform) {
    static_cast<QTransform *>(transform)->reset();
}

int qt_transform_is_identity(void *transform) {
    return static_cast<QTransform *>(transform)->isIdentity() ? 1 : 0;
}

double qt_transform_determinant(void *transform) {
    return static_cast<QTransform *>(transform)->determinant();
}

void qt_painter_set_transform(void *painter, void *transform, int is_combine) {
    static_cast<QPainter *>(painter)->setTransform(*static_cast<QTransform *>(transform), is_combine != 0);
}

void qt_painter_reset_transform(void *painter) {
    static_cast<QPainter *>(painter)->resetTransform();
}

/* ── QRegion ────────────────────────────────────────────────────────── */

void *qt_region_create(void) {
    return static_cast<void *>(new QRegion());
}

void *qt_region_create_rect(int x, int y, int width, int height) {
    return static_cast<void *>(new QRegion(x, y, width, height, QRegion::Rectangle));
}

void *qt_region_create_ellipse(int x, int y, int width, int height) {
    return static_cast<void *>(new QRegion(x, y, width, height, QRegion::Ellipse));
}

void qt_region_destroy(void *region) {
    delete static_cast<QRegion *>(region);
}

int qt_region_is_empty(void *region) {
    return static_cast<QRegion *>(region)->isEmpty() ? 1 : 0;
}

int qt_region_contains_point(void *region, int x, int y) {
    return static_cast<QRegion *>(region)->contains(QPoint(x, y)) ? 1 : 0;
}

int qt_region_contains_rect(void *region, int x, int y, int width, int height) {
    return static_cast<QRegion *>(region)->contains(QRect(x, y, width, height)) ? 1 : 0;
}

void *qt_region_united(void *region, void *other) {
    return static_cast<void *>(new QRegion(static_cast<QRegion *>(region)->united(*static_cast<QRegion *>(other))));
}

void *qt_region_intersected(void *region, void *other) {
    return static_cast<void *>(new QRegion(static_cast<QRegion *>(region)->intersected(*static_cast<QRegion *>(other))));
}

void *qt_region_subtracted(void *region, void *other) {
    return static_cast<void *>(new QRegion(static_cast<QRegion *>(region)->subtracted(*static_cast<QRegion *>(other))));
}

void *qt_region_xored(void *region, void *other) {
    return static_cast<void *>(new QRegion(static_cast<QRegion *>(region)->xored(*static_cast<QRegion *>(other))));
}

void qt_region_get_bounding_rect(void *region, int *x, int *y, int *width, int *height) {
    QRect r = static_cast<QRegion *>(region)->boundingRect();
    *x = r.x(); *y = r.y(); *width = r.width(); *height = r.height();
}

void qt_painter_set_clip_region(void *painter, void *region) {
    static_cast<QPainter *>(painter)->setClipRegion(*static_cast<QRegion *>(region));
}

/* ── QGradient / QLinearGradient / QRadialGradient / QConicalGradient ── */

void *qt_linear_gradient_create(double x1, double y1, double x2, double y2) {
    return static_cast<void *>(new QLinearGradient(x1, y1, x2, y2));
}

void *qt_radial_gradient_create(double cx, double cy, double radius) {
    return static_cast<void *>(new QRadialGradient(cx, cy, radius));
}

void *qt_radial_gradient_create_focal(double cx, double cy, double radius, double fx, double fy) {
    return static_cast<void *>(new QRadialGradient(cx, cy, radius, fx, fy));
}

void *qt_conical_gradient_create(double cx, double cy, double angle) {
    return static_cast<void *>(new QConicalGradient(cx, cy, angle));
}

void qt_gradient_destroy(void *gradient) {
    delete static_cast<QGradient *>(gradient);
}

void qt_gradient_set_colour_at(void *gradient, double position, int r, int g, int b, int a) {
    static_cast<QGradient *>(gradient)->setColorAt(position, QColor(r, g, b, a));
}

void qt_gradient_set_spread(void *gradient, int spread) {
    static_cast<QGradient *>(gradient)->setSpread(static_cast<QGradient::Spread>(spread));
}

void qt_brush_set_gradient(void *brush, void *gradient) {
    *static_cast<QBrush *>(brush) = QBrush(*static_cast<QGradient *>(gradient));
}

/* ── QTextCursor ────────────────────────────────────────────────────── */

void *qt_text_cursor_create(void *document) {
    return static_cast<void *>(new QTextCursor(static_cast<QTextDocument *>(document)));
}

void *qt_text_cursor_create_from_text_edit(void *text_edit) {
    return static_cast<void *>(new QTextCursor(static_cast<QTextEdit *>(text_edit)->textCursor()));
}

void *qt_text_cursor_create_from_plain_text_edit(void *plain_text_edit) {
    return static_cast<void *>(new QTextCursor(static_cast<QPlainTextEdit *>(plain_text_edit)->textCursor()));
}

void qt_text_cursor_destroy(void *cursor) {
    delete static_cast<QTextCursor *>(cursor);
}

int qt_text_cursor_get_position(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->position();
}

void qt_text_cursor_set_position(void *cursor, int position, int move_mode) {
    static_cast<QTextCursor *>(cursor)->setPosition(position, static_cast<QTextCursor::MoveMode>(move_mode));
}

int qt_text_cursor_get_anchor(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->anchor();
}

int qt_text_cursor_has_selection(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->hasSelection() ? 1 : 0;
}

char *qt_text_cursor_get_selected_text(void *cursor) {
    return qstring_to_heap_utf8(static_cast<QTextCursor *>(cursor)->selectedText());
}

void qt_text_cursor_remove_selected_text(void *cursor) {
    static_cast<QTextCursor *>(cursor)->removeSelectedText();
}

void qt_text_cursor_insert_text(void *cursor, const char *text) {
    static_cast<QTextCursor *>(cursor)->insertText(QString::fromUtf8(text));
}

void qt_text_cursor_insert_html(void *cursor, const char *html) {
    static_cast<QTextCursor *>(cursor)->insertHtml(QString::fromUtf8(html));
}

void qt_text_cursor_select(void *cursor, int selection_type) {
    static_cast<QTextCursor *>(cursor)->select(static_cast<QTextCursor::SelectionType>(selection_type));
}

void qt_text_cursor_move_position(void *cursor, int operation, int move_mode, int n) {
    static_cast<QTextCursor *>(cursor)->movePosition(static_cast<QTextCursor::MoveOperation>(operation), static_cast<QTextCursor::MoveMode>(move_mode), n);
}

void qt_text_cursor_begin_edit_block(void *cursor) {
    static_cast<QTextCursor *>(cursor)->beginEditBlock();
}

void qt_text_cursor_end_edit_block(void *cursor) {
    static_cast<QTextCursor *>(cursor)->endEditBlock();
}

int qt_text_cursor_at_start(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->atStart() ? 1 : 0;
}

int qt_text_cursor_at_end(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->atEnd() ? 1 : 0;
}

int qt_text_cursor_get_block_number(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->blockNumber();
}

int qt_text_cursor_get_column_number(void *cursor) {
    return static_cast<QTextCursor *>(cursor)->columnNumber();
}

void qt_text_edit_set_text_cursor(void *text_edit, void *cursor) {
    static_cast<QTextEdit *>(text_edit)->setTextCursor(*static_cast<QTextCursor *>(cursor));
}

void qt_plain_text_edit_set_text_cursor(void *text_edit, void *cursor) {
    static_cast<QPlainTextEdit *>(text_edit)->setTextCursor(*static_cast<QTextCursor *>(cursor));
}

/* ── QTextDocument ──────────────────────────────────────────────────── */

void *qt_text_document_create(void *parent) {
    return static_cast<void *>(new QTextDocument(static_cast<QObject *>(parent)));
}

void *qt_text_document_create_from_text_edit(void *text_edit) {
    return static_cast<void *>(static_cast<QTextEdit *>(text_edit)->document());
}

void *qt_text_document_create_from_plain_text_edit(void *plain_text_edit) {
    return static_cast<void *>(static_cast<QPlainTextEdit *>(plain_text_edit)->document());
}

void qt_text_document_destroy(void *document) {
    delete static_cast<QTextDocument *>(document);
}

char *qt_text_document_get_plain_text(void *document) {
    return qstring_to_heap_utf8(static_cast<QTextDocument *>(document)->toPlainText());
}

char *qt_text_document_get_html(void *document) {
    return qstring_to_heap_utf8(static_cast<QTextDocument *>(document)->toHtml());
}

void qt_text_document_set_plain_text(void *document, const char *text) {
    static_cast<QTextDocument *>(document)->setPlainText(QString::fromUtf8(text));
}

void qt_text_document_set_html(void *document, const char *html) {
    static_cast<QTextDocument *>(document)->setHtml(QString::fromUtf8(html));
}

int qt_text_document_is_modified(void *document) {
    return static_cast<QTextDocument *>(document)->isModified() ? 1 : 0;
}

void qt_text_document_set_modified(void *document, int is_modified) {
    static_cast<QTextDocument *>(document)->setModified(is_modified != 0);
}

int qt_text_document_is_empty(void *document) {
    return static_cast<QTextDocument *>(document)->isEmpty() ? 1 : 0;
}

int qt_text_document_get_block_count(void *document) {
    return static_cast<QTextDocument *>(document)->blockCount();
}

int qt_text_document_get_character_count(void *document) {
    return static_cast<QTextDocument *>(document)->characterCount();
}

void qt_text_document_set_default_font(void *document, void *font) {
    static_cast<QTextDocument *>(document)->setDefaultFont(*static_cast<QFont *>(font));
}

void qt_text_document_undo(void *document) {
    static_cast<QTextDocument *>(document)->undo();
}

void qt_text_document_redo(void *document) {
    static_cast<QTextDocument *>(document)->redo();
}

int qt_text_document_is_undo_available(void *document) {
    return static_cast<QTextDocument *>(document)->isUndoAvailable() ? 1 : 0;
}

int qt_text_document_is_redo_available(void *document) {
    return static_cast<QTextDocument *>(document)->isRedoAvailable() ? 1 : 0;
}

void qt_text_document_clear_undo_redo_stacks(void *document) {
    static_cast<QTextDocument *>(document)->clearUndoRedoStacks();
}

void qt_text_document_set_maximum_block_count(void *document, int maximum) {
    static_cast<QTextDocument *>(document)->setMaximumBlockCount(maximum);
}

/* ── QFontDatabase ──────────────────────────────────────────────────── */

int qt_font_database_get_families(char ***families_out) {
    QStringList families = QFontDatabase::families();
    int count = families.size();
    char **arr = static_cast<char **>(malloc(sizeof(char *) * count));
    for (int i = 0; i < count; i++) {
        arr[i] = qstring_to_heap_utf8(families[i]);
    }
    *families_out = arr;
    return count;
}

void qt_font_database_free_families(char **families, int count) {
    for (int i = 0; i < count; i++) {
        free(families[i]);
    }
    free(families);
}

int qt_font_database_has_family(const char *family) {
    return QFontDatabase::families().contains(QString::fromUtf8(family), Qt::CaseInsensitive) ? 1 : 0;
}

int qt_font_database_is_fixed_pitch(const char *family) {
    return QFontDatabase::isFixedPitch(QString::fromUtf8(family)) ? 1 : 0;
}

int qt_font_database_is_scalable(const char *family) {
    return QFontDatabase::isScalable(QString::fromUtf8(family)) ? 1 : 0;
}

int qt_font_database_add_application_font(const char *file_path) {
    return QFontDatabase::addApplicationFont(QString::fromUtf8(file_path));
}

int qt_font_database_add_application_font_from_data(const unsigned char *data, int size) {
    return QFontDatabase::addApplicationFontFromData(QByteArray(reinterpret_cast<const char *>(data), size));
}

void qt_font_database_remove_application_font(int id) {
    QFontDatabase::removeApplicationFont(id);
}

/* ── QKeySequence (standalone) ──────────────────────────────────────── */

void *qt_key_sequence_create(const char *key) {
    return static_cast<void *>(new QKeySequence(QString::fromUtf8(key)));
}

void *qt_key_sequence_create_standard(int standard_key) {
    return static_cast<void *>(new QKeySequence(static_cast<QKeySequence::StandardKey>(standard_key)));
}

void qt_key_sequence_destroy(void *key_sequence) {
    delete static_cast<QKeySequence *>(key_sequence);
}

char *qt_key_sequence_to_string(void *key_sequence) {
    return qstring_to_heap_utf8(static_cast<QKeySequence *>(key_sequence)->toString());
}

int qt_key_sequence_get_count(void *key_sequence) {
    return static_cast<QKeySequence *>(key_sequence)->count();
}

int qt_key_sequence_matches(void *key_sequence, void *other) {
    return static_cast<int>(static_cast<QKeySequence *>(key_sequence)->matches(*static_cast<QKeySequence *>(other)));
}

/* ── QMovie ─────────────────────────────────────────────────────────── */

void *qt_movie_create(const char *file_path, void *parent) {
    return static_cast<void *>(new QMovie(QString::fromUtf8(file_path), QByteArray(), static_cast<QObject *>(parent)));
}

void qt_movie_destroy(void *movie) {
    delete static_cast<QMovie *>(movie);
}

void qt_movie_start(void *movie) {
    static_cast<QMovie *>(movie)->start();
}

void qt_movie_stop(void *movie) {
    static_cast<QMovie *>(movie)->stop();
}

void qt_movie_set_paused(void *movie, int is_paused) {
    static_cast<QMovie *>(movie)->setPaused(is_paused != 0);
}

int qt_movie_is_valid(void *movie) {
    return static_cast<QMovie *>(movie)->isValid() ? 1 : 0;
}

int qt_movie_get_frame_count(void *movie) {
    return static_cast<QMovie *>(movie)->frameCount();
}

int qt_movie_get_current_frame_number(void *movie) {
    return static_cast<QMovie *>(movie)->currentFrameNumber();
}

void qt_movie_set_speed(void *movie, int percent) {
    static_cast<QMovie *>(movie)->setSpeed(percent);
}

void qt_movie_set_scaled_size(void *movie, int width, int height) {
    static_cast<QMovie *>(movie)->setScaledSize(QSize(width, height));
}

int qt_movie_get_state(void *movie) {
    return static_cast<int>(static_cast<QMovie *>(movie)->state());
}

void qt_label_set_movie(void *label, void *movie) {
    static_cast<QLabel *>(label)->setMovie(static_cast<QMovie *>(movie));
}

int qt_movie_connect_frame_changed(void *movie, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QMovie *>(movie), &QMovie::frameChanged, [callback, user_data](int frame) {
        callback(frame, user_data);
    });
    return store_connection(conn);
}

int qt_movie_connect_state_changed(void *movie, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QMovie *>(movie), &QMovie::stateChanged, [callback, user_data](QMovie::MovieState state) {
        callback(static_cast<int>(state), user_data);
    });
    return store_connection(conn);
}

/* ── QImageReader ───────────────────────────────────────────────────── */

void *qt_image_reader_create(const char *file_path) {
    return static_cast<void *>(new QImageReader(QString::fromUtf8(file_path)));
}

void qt_image_reader_destroy(void *reader) {
    delete static_cast<QImageReader *>(reader);
}

int qt_image_reader_can_read(void *reader) {
    return static_cast<QImageReader *>(reader)->canRead() ? 1 : 0;
}

void *qt_image_reader_read(void *reader) {
    QImage img = static_cast<QImageReader *>(reader)->read();
    if (img.isNull()) return nullptr;
    return static_cast<void *>(new QImage(img));
}

int qt_image_reader_get_image_count(void *reader) {
    return static_cast<QImageReader *>(reader)->imageCount();
}

void qt_image_reader_get_size(void *reader, int *width, int *height) {
    QSize s = static_cast<QImageReader *>(reader)->size();
    *width = s.width(); *height = s.height();
}

char *qt_image_reader_get_format(void *reader) {
    QByteArray fmt = static_cast<QImageReader *>(reader)->format();
    return qstring_to_heap_utf8(QString::fromUtf8(fmt));
}

char *qt_image_reader_get_error_string(void *reader) {
    return qstring_to_heap_utf8(static_cast<QImageReader *>(reader)->errorString());
}

void qt_image_reader_set_scaled_size(void *reader, int width, int height) {
    static_cast<QImageReader *>(reader)->setScaledSize(QSize(width, height));
}

/* ── QImageWriter ───────────────────────────────────────────────────── */

void *qt_image_writer_create(const char *file_path) {
    return static_cast<void *>(new QImageWriter(QString::fromUtf8(file_path)));
}

void qt_image_writer_destroy(void *writer) {
    delete static_cast<QImageWriter *>(writer);
}

void qt_image_writer_set_format(void *writer, const char *format) {
    static_cast<QImageWriter *>(writer)->setFormat(QByteArray(format));
}

void qt_image_writer_set_quality(void *writer, int quality) {
    static_cast<QImageWriter *>(writer)->setQuality(quality);
}

int qt_image_writer_write(void *writer, void *image) {
    return static_cast<QImageWriter *>(writer)->write(*static_cast<QImage *>(image)) ? 1 : 0;
}

char *qt_image_writer_get_error_string(void *writer) {
    return qstring_to_heap_utf8(static_cast<QImageWriter *>(writer)->errorString());
}

/* ── QBitmap ────────────────────────────────────────────────────────── */

void *qt_bitmap_create(int width, int height) {
    return static_cast<void *>(new QBitmap(width, height));
}

void *qt_bitmap_create_from_file(const char *file_path) {
    return static_cast<void *>(new QBitmap(QString::fromUtf8(file_path)));
}

void qt_bitmap_destroy(void *bitmap) {
    delete static_cast<QBitmap *>(bitmap);
}

void *qt_bitmap_from_image(void *image) {
    return static_cast<void *>(new QBitmap(QBitmap::fromImage(*static_cast<QImage *>(image))));
}

void qt_bitmap_clear(void *bitmap) {
    static_cast<QBitmap *>(bitmap)->clear();
}

/* ── QStaticText ────────────────────────────────────────────────────── */

void *qt_static_text_create(const char *text) {
    return static_cast<void *>(new QStaticText(QString::fromUtf8(text)));
}

void qt_static_text_destroy(void *static_text) {
    delete static_cast<QStaticText *>(static_text);
}

void qt_static_text_set_text(void *static_text, const char *text) {
    static_cast<QStaticText *>(static_text)->setText(QString::fromUtf8(text));
}

char *qt_static_text_get_text(void *static_text) {
    return qstring_to_heap_utf8(static_cast<QStaticText *>(static_text)->text());
}

void qt_static_text_set_text_format(void *static_text, int format) {
    static_cast<QStaticText *>(static_text)->setTextFormat(static_cast<Qt::TextFormat>(format));
}

void qt_static_text_set_text_width(void *static_text, double width) {
    static_cast<QStaticText *>(static_text)->setTextWidth(width);
}

void qt_static_text_prepare(void *static_text, void *font) {
    QTransform identity;
    static_cast<QStaticText *>(static_text)->prepare(identity, *static_cast<QFont *>(font));
}

void qt_painter_draw_static_text(void *painter, int x, int y, void *static_text) {
    static_cast<QPainter *>(painter)->drawStaticText(x, y, *static_cast<QStaticText *>(static_text));
}

/* ── QPicture ───────────────────────────────────────────────────────── */

void *qt_picture_create(void) {
    return static_cast<void *>(new QPicture());
}

void qt_picture_destroy(void *picture) {
    delete static_cast<QPicture *>(picture);
}

int qt_picture_is_null(void *picture) {
    return static_cast<QPicture *>(picture)->isNull() ? 1 : 0;
}

int qt_picture_save(void *picture, const char *file_path) {
    return static_cast<QPicture *>(picture)->save(QString::fromUtf8(file_path)) ? 1 : 0;
}

int qt_picture_load(void *picture, const char *file_path) {
    return static_cast<QPicture *>(picture)->load(QString::fromUtf8(file_path)) ? 1 : 0;
}

void qt_picture_get_bounding_rect(void *picture, int *x, int *y, int *width, int *height) {
    QRect r = static_cast<QPicture *>(picture)->boundingRect();
    *x = r.x(); *y = r.y(); *width = r.width(); *height = r.height();
}

void qt_painter_draw_picture(void *painter, int x, int y, void *picture) {
    static_cast<QPainter *>(painter)->drawPicture(x, y, *static_cast<QPicture *>(picture));
}

/* ── QPageLayout / QPageSize ────────────────────────────────────────── */

void *qt_page_size_create(int page_size_id) {
    return static_cast<void *>(new QPageSize(static_cast<QPageSize::PageSizeId>(page_size_id)));
}

void *qt_page_size_create_custom(double width, double height, int unit) {
    return static_cast<void *>(new QPageSize(QSizeF(width, height), static_cast<QPageSize::Unit>(unit)));
}

void qt_page_size_destroy(void *page_size) {
    delete static_cast<QPageSize *>(page_size);
}

char *qt_page_size_get_name(void *page_size) {
    return qstring_to_heap_utf8(static_cast<QPageSize *>(page_size)->name());
}

int qt_page_size_get_id(void *page_size) {
    return static_cast<int>(static_cast<QPageSize *>(page_size)->id());
}

int qt_page_size_is_valid(void *page_size) {
    return static_cast<QPageSize *>(page_size)->isValid() ? 1 : 0;
}

void *qt_page_layout_create(void *page_size, int orientation, double left, double top, double right, double bottom, int unit) {
    QMarginsF margins(left, top, right, bottom);
    return static_cast<void *>(new QPageLayout(
        *static_cast<QPageSize *>(page_size),
        static_cast<QPageLayout::Orientation>(orientation),
        margins,
        static_cast<QPageLayout::Unit>(unit)));
}

void qt_page_layout_destroy(void *page_layout) {
    delete static_cast<QPageLayout *>(page_layout);
}

int qt_page_layout_get_orientation(void *page_layout) {
    return static_cast<int>(static_cast<QPageLayout *>(page_layout)->orientation());
}

void qt_page_layout_set_orientation(void *page_layout, int orientation) {
    static_cast<QPageLayout *>(page_layout)->setOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

int qt_page_layout_is_valid(void *page_layout) {
    return static_cast<QPageLayout *>(page_layout)->isValid() ? 1 : 0;
}

/* ── QFile ───────────────────────────────────────────────────────────── */

void *qt_file_create(const char *file_path) {
    return static_cast<void *>(new QFile(QString::fromUtf8(file_path)));
}

void qt_file_destroy(void *file) {
    delete static_cast<QFile *>(file);
}

int qt_file_open(void *file, int mode) {
    return static_cast<QFile *>(file)->open(static_cast<QIODevice::OpenMode>(mode)) ? 1 : 0;
}

void qt_file_close(void *file) {
    static_cast<QFile *>(file)->close();
}

int qt_file_is_open(void *file) {
    return static_cast<QFile *>(file)->isOpen() ? 1 : 0;
}

long long qt_file_size(void *file) {
    return static_cast<QFile *>(file)->size();
}

long long qt_file_pos(void *file) {
    return static_cast<QFile *>(file)->pos();
}

int qt_file_seek(void *file, long long pos) {
    return static_cast<QFile *>(file)->seek(pos) ? 1 : 0;
}

int qt_file_at_end(void *file) {
    return static_cast<QFile *>(file)->atEnd() ? 1 : 0;
}

long long qt_file_read(void *file, char *data, long long max_size) {
    return static_cast<QFile *>(file)->read(data, max_size);
}

long long qt_file_write(void *file, const char *data, long long size) {
    return static_cast<QFile *>(file)->write(data, size);
}

char *qt_file_read_all(void *file) {
    QByteArray data = static_cast<QFile *>(file)->readAll();
    return qstring_to_heap_utf8(QString::fromUtf8(data));
}

int qt_file_exists(const char *file_path) {
    return QFile::exists(QString::fromUtf8(file_path)) ? 1 : 0;
}

int qt_file_remove(const char *file_path) {
    return QFile::remove(QString::fromUtf8(file_path)) ? 1 : 0;
}

int qt_file_copy(const char *source, const char *destination) {
    return QFile::copy(QString::fromUtf8(source), QString::fromUtf8(destination)) ? 1 : 0;
}

int qt_file_rename(const char *old_name, const char *new_name) {
    return QFile::rename(QString::fromUtf8(old_name), QString::fromUtf8(new_name)) ? 1 : 0;
}

char *qt_file_get_error_string(void *file) {
    return qstring_to_heap_utf8(static_cast<QFile *>(file)->errorString());
}

/* ── QFileInfo ──────────────────────────────────────────────────────── */

void *qt_file_info_create(const char *file_path) {
    return static_cast<void *>(new QFileInfo(QString::fromUtf8(file_path)));
}

void qt_file_info_destroy(void *info) {
    delete static_cast<QFileInfo *>(info);
}

int qt_file_info_exists(void *info) {
    return static_cast<QFileInfo *>(info)->exists() ? 1 : 0;
}

char *qt_file_info_get_file_name(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->fileName());
}

char *qt_file_info_get_file_path(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->filePath());
}

char *qt_file_info_get_absolute_file_path(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->absoluteFilePath());
}

char *qt_file_info_get_absolute_path(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->absolutePath());
}

char *qt_file_info_get_suffix(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->suffix());
}

char *qt_file_info_get_complete_suffix(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->completeSuffix());
}

char *qt_file_info_get_base_name(void *info) {
    return qstring_to_heap_utf8(static_cast<QFileInfo *>(info)->baseName());
}

long long qt_file_info_get_size(void *info) {
    return static_cast<QFileInfo *>(info)->size();
}

int qt_file_info_is_file(void *info) {
    return static_cast<QFileInfo *>(info)->isFile() ? 1 : 0;
}

int qt_file_info_is_dir(void *info) {
    return static_cast<QFileInfo *>(info)->isDir() ? 1 : 0;
}

int qt_file_info_is_symlink(void *info) {
    return static_cast<QFileInfo *>(info)->isSymLink() ? 1 : 0;
}

int qt_file_info_is_readable(void *info) {
    return static_cast<QFileInfo *>(info)->isReadable() ? 1 : 0;
}

int qt_file_info_is_writable(void *info) {
    return static_cast<QFileInfo *>(info)->isWritable() ? 1 : 0;
}

int qt_file_info_is_executable(void *info) {
    return static_cast<QFileInfo *>(info)->isExecutable() ? 1 : 0;
}

int qt_file_info_is_hidden(void *info) {
    return static_cast<QFileInfo *>(info)->isHidden() ? 1 : 0;
}

/* ── QDir ───────────────────────────────────────────────────────────── */

void *qt_dir_create(const char *path) {
    return static_cast<void *>(new QDir(QString::fromUtf8(path)));
}

void qt_dir_destroy(void *dir) {
    delete static_cast<QDir *>(dir);
}

char *qt_dir_get_path(void *dir) {
    return qstring_to_heap_utf8(static_cast<QDir *>(dir)->path());
}

char *qt_dir_get_absolute_path(void *dir) {
    return qstring_to_heap_utf8(static_cast<QDir *>(dir)->absolutePath());
}

int qt_dir_exists(void *dir) {
    return static_cast<QDir *>(dir)->exists() ? 1 : 0;
}

int qt_dir_mkdir(void *dir, const char *name) {
    return static_cast<QDir *>(dir)->mkdir(QString::fromUtf8(name)) ? 1 : 0;
}

int qt_dir_mkpath(void *dir, const char *path) {
    return static_cast<QDir *>(dir)->mkpath(QString::fromUtf8(path)) ? 1 : 0;
}

int qt_dir_rmdir(void *dir, const char *name) {
    return static_cast<QDir *>(dir)->rmdir(QString::fromUtf8(name)) ? 1 : 0;
}

int qt_dir_rmpath(void *dir, const char *path) {
    return static_cast<QDir *>(dir)->rmpath(QString::fromUtf8(path)) ? 1 : 0;
}

int qt_dir_remove(void *dir, const char *file_name) {
    return static_cast<QDir *>(dir)->remove(QString::fromUtf8(file_name)) ? 1 : 0;
}

int qt_dir_rename(void *dir, const char *old_name, const char *new_name) {
    return static_cast<QDir *>(dir)->rename(QString::fromUtf8(old_name), QString::fromUtf8(new_name)) ? 1 : 0;
}

int qt_dir_cd(void *dir, const char *dir_name) {
    return static_cast<QDir *>(dir)->cd(QString::fromUtf8(dir_name)) ? 1 : 0;
}

int qt_dir_cd_up(void *dir) {
    return static_cast<QDir *>(dir)->cdUp() ? 1 : 0;
}

int qt_dir_get_entry_count(void *dir, int filters) {
    return static_cast<QDir *>(dir)->entryList(static_cast<QDir::Filters>(filters)).count();
}

int qt_dir_get_entry_list(void *dir, int filters, char ***entries_out) {
    QStringList entries = static_cast<QDir *>(dir)->entryList(static_cast<QDir::Filters>(filters));
    int count = entries.size();
    char **arr = static_cast<char **>(malloc(sizeof(char *) * count));
    for (int i = 0; i < count; i++) {
        arr[i] = qstring_to_heap_utf8(entries[i]);
    }
    *entries_out = arr;
    return count;
}

void qt_dir_free_entry_list(char **entries, int count) {
    for (int i = 0; i < count; i++) {
        free(entries[i]);
    }
    free(entries);
}

char *qt_dir_home_path(void) {
    return qstring_to_heap_utf8(QDir::homePath());
}

char *qt_dir_temp_path(void) {
    return qstring_to_heap_utf8(QDir::tempPath());
}

char *qt_dir_root_path(void) {
    return qstring_to_heap_utf8(QDir::rootPath());
}

char *qt_dir_current_path(void) {
    return qstring_to_heap_utf8(QDir::currentPath());
}

/* ── QProcess ───────────────────────────────────────────────────────── */

void *qt_process_create(void *parent) {
    return static_cast<void *>(new QProcess(static_cast<QObject *>(parent)));
}

void qt_process_destroy(void *process) {
    delete static_cast<QProcess *>(process);
}

void qt_process_start(void *process, const char *program, const char **arguments, int arg_count) {
    QStringList args;
    for (int i = 0; i < arg_count; i++) {
        args.append(QString::fromUtf8(arguments[i]));
    }
    static_cast<QProcess *>(process)->start(QString::fromUtf8(program), args);
}

void qt_process_start_command(void *process, const char *command) {
    static_cast<QProcess *>(process)->startCommand(QString::fromUtf8(command));
}

int qt_process_wait_for_started(void *process, int timeout_ms) {
    return static_cast<QProcess *>(process)->waitForStarted(timeout_ms) ? 1 : 0;
}

int qt_process_wait_for_finished(void *process, int timeout_ms) {
    return static_cast<QProcess *>(process)->waitForFinished(timeout_ms) ? 1 : 0;
}

void qt_process_kill(void *process) {
    static_cast<QProcess *>(process)->kill();
}

void qt_process_terminate(void *process) {
    static_cast<QProcess *>(process)->terminate();
}

int qt_process_get_state(void *process) {
    return static_cast<int>(static_cast<QProcess *>(process)->state());
}

int qt_process_get_exit_code(void *process) {
    return static_cast<QProcess *>(process)->exitCode();
}

int qt_process_get_exit_status(void *process) {
    return static_cast<int>(static_cast<QProcess *>(process)->exitStatus());
}

char *qt_process_read_all_standard_output(void *process) {
    QByteArray data = static_cast<QProcess *>(process)->readAllStandardOutput();
    return qstring_to_heap_utf8(QString::fromUtf8(data));
}

char *qt_process_read_all_standard_error(void *process) {
    QByteArray data = static_cast<QProcess *>(process)->readAllStandardError();
    return qstring_to_heap_utf8(QString::fromUtf8(data));
}

void qt_process_write(void *process, const char *data, int size) {
    static_cast<QProcess *>(process)->write(data, size);
}

void qt_process_close_write_channel(void *process) {
    static_cast<QProcess *>(process)->closeWriteChannel();
}

void qt_process_set_working_directory(void *process, const char *dir) {
    static_cast<QProcess *>(process)->setWorkingDirectory(QString::fromUtf8(dir));
}

int qt_process_connect_finished(void *process, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QProcess *>(process), &QProcess::finished, [callback, user_data](int exit_code) {
        callback(exit_code, user_data);
    });
    return store_connection(conn);
}

int qt_process_connect_error_occurred(void *process, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QProcess *>(process), &QProcess::errorOccurred, [callback, user_data](QProcess::ProcessError error) {
        callback(static_cast<int>(error), user_data);
    });
    return store_connection(conn);
}

int qt_process_connect_started(void *process, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QProcess *>(process), &QProcess::started, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QThread ────────────────────────────────────────────────────────── */

void qt_thread_sleep(unsigned long ms) {
    QThread::sleep(ms);
}

void qt_thread_msleep(unsigned long ms) {
    QThread::msleep(ms);
}

void qt_thread_usleep(unsigned long us) {
    QThread::usleep(us);
}

/* ── QMutex ─────────────────────────────────────────────────────────── */

void *qt_mutex_create(void) {
    return static_cast<void *>(new QMutex());
}

void qt_mutex_destroy(void *mutex) {
    delete static_cast<QMutex *>(mutex);
}

void qt_mutex_lock(void *mutex) {
    static_cast<QMutex *>(mutex)->lock();
}

void qt_mutex_unlock(void *mutex) {
    static_cast<QMutex *>(mutex)->unlock();
}

int qt_mutex_try_lock(void *mutex) {
    return static_cast<QMutex *>(mutex)->tryLock() ? 1 : 0;
}

/* ── QReadWriteLock ─────────────────────────────────────────────────── */

void *qt_read_write_lock_create(void) {
    return static_cast<void *>(new QReadWriteLock());
}

void qt_read_write_lock_destroy(void *lock) {
    delete static_cast<QReadWriteLock *>(lock);
}

void qt_read_write_lock_lock_for_read(void *lock) {
    static_cast<QReadWriteLock *>(lock)->lockForRead();
}

void qt_read_write_lock_lock_for_write(void *lock) {
    static_cast<QReadWriteLock *>(lock)->lockForWrite();
}

void qt_read_write_lock_unlock(void *lock) {
    static_cast<QReadWriteLock *>(lock)->unlock();
}

int qt_read_write_lock_try_lock_for_read(void *lock) {
    return static_cast<QReadWriteLock *>(lock)->tryLockForRead() ? 1 : 0;
}

int qt_read_write_lock_try_lock_for_write(void *lock) {
    return static_cast<QReadWriteLock *>(lock)->tryLockForWrite() ? 1 : 0;
}

/* ── QSemaphore ─────────────────────────────────────────────────────── */

void *qt_semaphore_create(int n) {
    return static_cast<void *>(new QSemaphore(n));
}

void qt_semaphore_destroy(void *semaphore) {
    delete static_cast<QSemaphore *>(semaphore);
}

void qt_semaphore_acquire(void *semaphore, int n) {
    static_cast<QSemaphore *>(semaphore)->acquire(n);
}

void qt_semaphore_release(void *semaphore, int n) {
    static_cast<QSemaphore *>(semaphore)->release(n);
}

int qt_semaphore_available(void *semaphore) {
    return static_cast<QSemaphore *>(semaphore)->available();
}

int qt_semaphore_try_acquire(void *semaphore, int n) {
    return static_cast<QSemaphore *>(semaphore)->tryAcquire(n) ? 1 : 0;
}

/* ── QBuffer ────────────────────────────────────────────────────────── */

void *qt_buffer_create(void) {
    return static_cast<void *>(new QBuffer());
}

void qt_buffer_destroy(void *buffer) {
    delete static_cast<QBuffer *>(buffer);
}

int qt_buffer_open(void *buffer, int mode) {
    return static_cast<QBuffer *>(buffer)->open(static_cast<QIODevice::OpenMode>(mode)) ? 1 : 0;
}

void qt_buffer_close(void *buffer) {
    static_cast<QBuffer *>(buffer)->close();
}

void qt_buffer_set_data(void *buffer, const char *data, int size) {
    static_cast<QBuffer *>(buffer)->setData(data, size);
}

char *qt_buffer_get_data(void *buffer, int *size) {
    const QByteArray &data = static_cast<QBuffer *>(buffer)->data();
    *size = data.size();
    char *result = static_cast<char *>(malloc(data.size()));
    memcpy(result, data.constData(), data.size());
    return result;
}

long long qt_buffer_size(void *buffer) {
    return static_cast<QBuffer *>(buffer)->size();
}

/* ── QJsonDocument / QJsonObject / QJsonArray ───────────────────────── */

void *qt_json_document_from_json(const char *json, int size, char **error_out) {
    QJsonParseError error;
    QJsonDocument *doc = new QJsonDocument(QJsonDocument::fromJson(QByteArray(json, size), &error));
    if (error.error != QJsonParseError::NoError) {
        if (error_out) *error_out = qstring_to_heap_utf8(error.errorString());
        delete doc;
        return nullptr;
    }
    if (error_out) *error_out = nullptr;
    return static_cast<void *>(doc);
}

void *qt_json_document_from_object(void *object) {
    return static_cast<void *>(new QJsonDocument(*static_cast<QJsonObject *>(object)));
}

void *qt_json_document_from_array(void *array) {
    return static_cast<void *>(new QJsonDocument(*static_cast<QJsonArray *>(array)));
}

void qt_json_document_destroy(void *doc) {
    delete static_cast<QJsonDocument *>(doc);
}

char *qt_json_document_to_json(void *doc, int is_compact) {
    QByteArray data = static_cast<QJsonDocument *>(doc)->toJson(
        is_compact ? QJsonDocument::Compact : QJsonDocument::Indented);
    return qstring_to_heap_utf8(QString::fromUtf8(data));
}

int qt_json_document_is_object(void *doc) {
    return static_cast<QJsonDocument *>(doc)->isObject() ? 1 : 0;
}

int qt_json_document_is_array(void *doc) {
    return static_cast<QJsonDocument *>(doc)->isArray() ? 1 : 0;
}

void *qt_json_document_get_object(void *doc) {
    return static_cast<void *>(new QJsonObject(static_cast<QJsonDocument *>(doc)->object()));
}

void *qt_json_document_get_array(void *doc) {
    return static_cast<void *>(new QJsonArray(static_cast<QJsonDocument *>(doc)->array()));
}

void *qt_json_object_create(void) {
    return static_cast<void *>(new QJsonObject());
}

void qt_json_object_destroy(void *obj) {
    delete static_cast<QJsonObject *>(obj);
}

int qt_json_object_get_count(void *obj) {
    return static_cast<QJsonObject *>(obj)->count();
}

int qt_json_object_contains(void *obj, const char *key) {
    return static_cast<QJsonObject *>(obj)->contains(QString::fromUtf8(key)) ? 1 : 0;
}

void qt_json_object_set_string(void *obj, const char *key, const char *value) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), QString::fromUtf8(value));
}

void qt_json_object_set_int(void *obj, const char *key, int value) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), value);
}

void qt_json_object_set_double(void *obj, const char *key, double value) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), value);
}

void qt_json_object_set_bool(void *obj, const char *key, int value) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), value != 0);
}

void qt_json_object_set_object(void *obj, const char *key, void *child) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), *static_cast<QJsonObject *>(child));
}

void qt_json_object_set_array(void *obj, const char *key, void *array) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), *static_cast<QJsonArray *>(array));
}

void qt_json_object_set_null(void *obj, const char *key) {
    static_cast<QJsonObject *>(obj)->insert(QString::fromUtf8(key), QJsonValue::Null);
}

char *qt_json_object_get_string(void *obj, const char *key) {
    QJsonValue v = static_cast<QJsonObject *>(obj)->value(QString::fromUtf8(key));
    if (!v.isString()) return nullptr;
    return qstring_to_heap_utf8(v.toString());
}

int qt_json_object_get_int(void *obj, const char *key, int default_val) {
    return static_cast<QJsonObject *>(obj)->value(QString::fromUtf8(key)).toInt(default_val);
}

double qt_json_object_get_double(void *obj, const char *key, double default_val) {
    return static_cast<QJsonObject *>(obj)->value(QString::fromUtf8(key)).toDouble(default_val);
}

int qt_json_object_get_bool(void *obj, const char *key, int default_val) {
    QJsonValue v = static_cast<QJsonObject *>(obj)->value(QString::fromUtf8(key));
    if (!v.isBool()) return default_val;
    return v.toBool() ? 1 : 0;
}

void *qt_json_object_get_object(void *obj, const char *key) {
    QJsonValue v = static_cast<QJsonObject *>(obj)->value(QString::fromUtf8(key));
    if (!v.isObject()) return nullptr;
    return static_cast<void *>(new QJsonObject(v.toObject()));
}

void *qt_json_object_get_array(void *obj, const char *key) {
    QJsonValue v = static_cast<QJsonObject *>(obj)->value(QString::fromUtf8(key));
    if (!v.isArray()) return nullptr;
    return static_cast<void *>(new QJsonArray(v.toArray()));
}

void qt_json_object_remove(void *obj, const char *key) {
    static_cast<QJsonObject *>(obj)->remove(QString::fromUtf8(key));
}

int qt_json_object_get_keys(void *obj, char ***keys_out) {
    QStringList keys = static_cast<QJsonObject *>(obj)->keys();
    int count = keys.size();
    char **arr = static_cast<char **>(malloc(sizeof(char *) * count));
    for (int i = 0; i < count; i++) {
        arr[i] = qstring_to_heap_utf8(keys[i]);
    }
    *keys_out = arr;
    return count;
}

void qt_json_object_free_keys(char **keys, int count) {
    for (int i = 0; i < count; i++) {
        free(keys[i]);
    }
    free(keys);
}

void *qt_json_array_create(void) {
    return static_cast<void *>(new QJsonArray());
}

void qt_json_array_destroy(void *arr) {
    delete static_cast<QJsonArray *>(arr);
}

int qt_json_array_get_count(void *arr) {
    return static_cast<QJsonArray *>(arr)->count();
}

void qt_json_array_append_string(void *arr, const char *value) {
    static_cast<QJsonArray *>(arr)->append(QString::fromUtf8(value));
}

void qt_json_array_append_int(void *arr, int value) {
    static_cast<QJsonArray *>(arr)->append(value);
}

void qt_json_array_append_double(void *arr, double value) {
    static_cast<QJsonArray *>(arr)->append(value);
}

void qt_json_array_append_bool(void *arr, int value) {
    static_cast<QJsonArray *>(arr)->append(value != 0);
}

void qt_json_array_append_object(void *arr, void *object) {
    static_cast<QJsonArray *>(arr)->append(*static_cast<QJsonObject *>(object));
}

void qt_json_array_append_array(void *arr, void *other) {
    static_cast<QJsonArray *>(arr)->append(*static_cast<QJsonArray *>(other));
}

void qt_json_array_append_null(void *arr) {
    static_cast<QJsonArray *>(arr)->append(QJsonValue::Null);
}

char *qt_json_array_get_string(void *arr, int index) {
    QJsonValue v = static_cast<QJsonArray *>(arr)->at(index);
    if (!v.isString()) return nullptr;
    return qstring_to_heap_utf8(v.toString());
}

int qt_json_array_get_int(void *arr, int index, int default_val) {
    return static_cast<QJsonArray *>(arr)->at(index).toInt(default_val);
}

double qt_json_array_get_double(void *arr, int index, double default_val) {
    return static_cast<QJsonArray *>(arr)->at(index).toDouble(default_val);
}

int qt_json_array_get_bool(void *arr, int index, int default_val) {
    QJsonValue v = static_cast<QJsonArray *>(arr)->at(index);
    if (!v.isBool()) return default_val;
    return v.toBool() ? 1 : 0;
}

void *qt_json_array_get_object(void *arr, int index) {
    QJsonValue v = static_cast<QJsonArray *>(arr)->at(index);
    if (!v.isObject()) return nullptr;
    return static_cast<void *>(new QJsonObject(v.toObject()));
}

void *qt_json_array_get_array(void *arr, int index) {
    QJsonValue v = static_cast<QJsonArray *>(arr)->at(index);
    if (!v.isArray()) return nullptr;
    return static_cast<void *>(new QJsonArray(v.toArray()));
}

void qt_json_array_remove_at(void *arr, int index) {
    static_cast<QJsonArray *>(arr)->removeAt(index);
}

/* ── QXmlStreamReader / QXmlStreamWriter ────────────────────────────── */

void *qt_xml_stream_reader_create(const char *data, int size) {
    return static_cast<void *>(new QXmlStreamReader(QByteArray(data, size)));
}

void qt_xml_stream_reader_destroy(void *reader) {
    delete static_cast<QXmlStreamReader *>(reader);
}

int qt_xml_stream_reader_read_next(void *reader) {
    return static_cast<int>(static_cast<QXmlStreamReader *>(reader)->readNext());
}

int qt_xml_stream_reader_get_token_type(void *reader) {
    return static_cast<int>(static_cast<QXmlStreamReader *>(reader)->tokenType());
}

char *qt_xml_stream_reader_get_name(void *reader) {
    return qstring_to_heap_utf8(static_cast<QXmlStreamReader *>(reader)->name().toString());
}

char *qt_xml_stream_reader_get_text(void *reader) {
    return qstring_to_heap_utf8(static_cast<QXmlStreamReader *>(reader)->text().toString());
}

int qt_xml_stream_reader_at_end(void *reader) {
    return static_cast<QXmlStreamReader *>(reader)->atEnd() ? 1 : 0;
}

int qt_xml_stream_reader_has_error(void *reader) {
    return static_cast<QXmlStreamReader *>(reader)->hasError() ? 1 : 0;
}

char *qt_xml_stream_reader_get_error_string(void *reader) {
    return qstring_to_heap_utf8(static_cast<QXmlStreamReader *>(reader)->errorString());
}

char *qt_xml_stream_reader_get_attribute(void *reader, const char *name) {
    QStringView val = static_cast<QXmlStreamReader *>(reader)->attributes().value(QString::fromUtf8(name));
    if (val.isNull()) return nullptr;
    return qstring_to_heap_utf8(val.toString());
}

int qt_xml_stream_reader_is_start_element(void *reader) {
    return static_cast<QXmlStreamReader *>(reader)->isStartElement() ? 1 : 0;
}

int qt_xml_stream_reader_is_end_element(void *reader) {
    return static_cast<QXmlStreamReader *>(reader)->isEndElement() ? 1 : 0;
}

static QByteArray s_xml_writer_output;

void *qt_xml_stream_writer_create(void) {
    s_xml_writer_output.clear();
    return static_cast<void *>(new QXmlStreamWriter(&s_xml_writer_output));
}

void qt_xml_stream_writer_destroy(void *writer) {
    delete static_cast<QXmlStreamWriter *>(writer);
}

void qt_xml_stream_writer_set_auto_formatting(void *writer, int is_enabled) {
    static_cast<QXmlStreamWriter *>(writer)->setAutoFormatting(is_enabled != 0);
}

void qt_xml_stream_writer_write_start_document(void *writer) {
    static_cast<QXmlStreamWriter *>(writer)->writeStartDocument();
}

void qt_xml_stream_writer_write_end_document(void *writer) {
    static_cast<QXmlStreamWriter *>(writer)->writeEndDocument();
}

void qt_xml_stream_writer_write_start_element(void *writer, const char *name) {
    static_cast<QXmlStreamWriter *>(writer)->writeStartElement(QString::fromUtf8(name));
}

void qt_xml_stream_writer_write_end_element(void *writer) {
    static_cast<QXmlStreamWriter *>(writer)->writeEndElement();
}

void qt_xml_stream_writer_write_attribute(void *writer, const char *name, const char *value) {
    static_cast<QXmlStreamWriter *>(writer)->writeAttribute(QString::fromUtf8(name), QString::fromUtf8(value));
}

void qt_xml_stream_writer_write_text_element(void *writer, const char *name, const char *text) {
    static_cast<QXmlStreamWriter *>(writer)->writeTextElement(QString::fromUtf8(name), QString::fromUtf8(text));
}

void qt_xml_stream_writer_write_characters(void *writer, const char *text) {
    static_cast<QXmlStreamWriter *>(writer)->writeCharacters(QString::fromUtf8(text));
}

char *qt_xml_stream_writer_get_output(void *) {
    return qstring_to_heap_utf8(QString::fromUtf8(s_xml_writer_output));
}

/* ── QDateTime / QDate / QTime (standalone) ─────────────────────────── */

void *qt_date_time_create(void) {
    return static_cast<void *>(new QDateTime());
}

void *qt_date_time_create_from_components(int year, int month, int day, int hour, int minute, int second) {
    return static_cast<void *>(new QDateTime(QDate(year, month, day), QTime(hour, minute, second)));
}

void *qt_date_time_current(void) {
    return static_cast<void *>(new QDateTime(QDateTime::currentDateTime()));
}

void *qt_date_time_current_utc(void) {
    return static_cast<void *>(new QDateTime(QDateTime::currentDateTimeUtc()));
}

void qt_date_time_destroy(void *dt) {
    delete static_cast<QDateTime *>(dt);
}

char *qt_date_time_to_string(void *dt, const char *format) {
    return qstring_to_heap_utf8(static_cast<QDateTime *>(dt)->toString(QString::fromUtf8(format)));
}

long long qt_date_time_to_msecs_since_epoch(void *dt) {
    return static_cast<QDateTime *>(dt)->toMSecsSinceEpoch();
}

void *qt_date_time_from_msecs_since_epoch(long long msecs) {
    return static_cast<void *>(new QDateTime(QDateTime::fromMSecsSinceEpoch(msecs)));
}

int qt_date_time_is_valid(void *dt) {
    return static_cast<QDateTime *>(dt)->isValid() ? 1 : 0;
}

void qt_date_time_get_date(void *dt, int *year, int *month, int *day) {
    QDate d = static_cast<QDateTime *>(dt)->date();
    *year = d.year(); *month = d.month(); *day = d.day();
}

void qt_date_time_get_time(void *dt, int *hour, int *minute, int *second) {
    QTime t = static_cast<QDateTime *>(dt)->time();
    *hour = t.hour(); *minute = t.minute(); *second = t.second();
}

long long qt_date_time_secs_to(void *dt, void *other) {
    return static_cast<QDateTime *>(dt)->secsTo(*static_cast<QDateTime *>(other));
}

long long qt_date_time_days_to(void *dt, void *other) {
    return static_cast<QDateTime *>(dt)->daysTo(*static_cast<QDateTime *>(other));
}

void *qt_date_time_add_days(void *dt, long long days) {
    return static_cast<void *>(new QDateTime(static_cast<QDateTime *>(dt)->addDays(days)));
}

void *qt_date_time_add_secs(void *dt, long long seconds) {
    return static_cast<void *>(new QDateTime(static_cast<QDateTime *>(dt)->addSecs(seconds)));
}

void *qt_date_create(int year, int month, int day) {
    return static_cast<void *>(new QDate(year, month, day));
}

void *qt_date_current(void) {
    return static_cast<void *>(new QDate(QDate::currentDate()));
}

void qt_date_destroy(void *date) {
    delete static_cast<QDate *>(date);
}

char *qt_date_to_string(void *date, const char *format) {
    return qstring_to_heap_utf8(static_cast<QDate *>(date)->toString(QString::fromUtf8(format)));
}

int qt_date_is_valid(void *date) {
    return static_cast<QDate *>(date)->isValid() ? 1 : 0;
}

int qt_date_get_year(void *date) { return static_cast<QDate *>(date)->year(); }
int qt_date_get_month(void *date) { return static_cast<QDate *>(date)->month(); }
int qt_date_get_day(void *date) { return static_cast<QDate *>(date)->day(); }
int qt_date_get_day_of_week(void *date) { return static_cast<QDate *>(date)->dayOfWeek(); }
int qt_date_get_day_of_year(void *date) { return static_cast<QDate *>(date)->dayOfYear(); }
int qt_date_get_days_in_month(void *date) { return static_cast<QDate *>(date)->daysInMonth(); }
int qt_date_get_days_in_year(void *date) { return static_cast<QDate *>(date)->daysInYear(); }

void *qt_time_create(int hour, int minute, int second, int ms) {
    return static_cast<void *>(new QTime(hour, minute, second, ms));
}

void *qt_time_current(void) {
    return static_cast<void *>(new QTime(QTime::currentTime()));
}

void qt_time_destroy(void *time_obj) {
    delete static_cast<QTime *>(time_obj);
}

char *qt_time_to_string(void *time_obj, const char *format) {
    return qstring_to_heap_utf8(static_cast<QTime *>(time_obj)->toString(QString::fromUtf8(format)));
}

int qt_time_is_valid(void *time_obj) { return static_cast<QTime *>(time_obj)->isValid() ? 1 : 0; }
int qt_time_get_hour(void *time_obj) { return static_cast<QTime *>(time_obj)->hour(); }
int qt_time_get_minute(void *time_obj) { return static_cast<QTime *>(time_obj)->minute(); }
int qt_time_get_second(void *time_obj) { return static_cast<QTime *>(time_obj)->second(); }
int qt_time_get_msec(void *time_obj) { return static_cast<QTime *>(time_obj)->msec(); }
int qt_time_msecs_since_start_of_day(void *time_obj) { return static_cast<QTime *>(time_obj)->msecsSinceStartOfDay(); }

/* ── QLocale ────────────────────────────────────────────────────────── */

void *qt_locale_create(void) {
    return static_cast<void *>(new QLocale());
}

void *qt_locale_create_from_name(const char *name) {
    return static_cast<void *>(new QLocale(QString::fromUtf8(name)));
}

void qt_locale_destroy(void *locale) {
    delete static_cast<QLocale *>(locale);
}

char *qt_locale_get_name(void *locale) {
    return qstring_to_heap_utf8(static_cast<QLocale *>(locale)->name());
}

char *qt_locale_get_language_name(void *locale) {
    return qstring_to_heap_utf8(QLocale::languageToString(static_cast<QLocale *>(locale)->language()));
}

char *qt_locale_get_country_name(void *locale) {
    return qstring_to_heap_utf8(QLocale::territoryToString(static_cast<QLocale *>(locale)->territory()));
}

char *qt_locale_get_decimal_point(void *locale) {
    return qstring_to_heap_utf8(static_cast<QLocale *>(locale)->decimalPoint());
}

char *qt_locale_to_string_int(void *locale, int value) {
    return qstring_to_heap_utf8(static_cast<QLocale *>(locale)->toString(value));
}

char *qt_locale_to_string_double(void *locale, double value, int precision) {
    return qstring_to_heap_utf8(static_cast<QLocale *>(locale)->toString(value, 'g', precision));
}

char *qt_locale_format_date_time(void *locale, void *dt, const char *format) {
    return qstring_to_heap_utf8(static_cast<QLocale *>(locale)->toString(
        *static_cast<QDateTime *>(dt), QString::fromUtf8(format)));
}

/* ── QRegularExpression (standalone) ────────────────────────────────── */

void *qt_regex_create(const char *pattern) {
    return static_cast<void *>(new QRegularExpression(QString::fromUtf8(pattern)));
}

void *qt_regex_create_with_options(const char *pattern, int options) {
    return static_cast<void *>(new QRegularExpression(
        QString::fromUtf8(pattern), static_cast<QRegularExpression::PatternOptions>(options)));
}

void qt_regex_destroy(void *regex) {
    delete static_cast<QRegularExpression *>(regex);
}

char *qt_regex_get_pattern(void *regex) {
    return qstring_to_heap_utf8(static_cast<QRegularExpression *>(regex)->pattern());
}

int qt_regex_is_valid(void *regex) {
    return static_cast<QRegularExpression *>(regex)->isValid() ? 1 : 0;
}

char *qt_regex_get_error_string(void *regex) {
    return qstring_to_heap_utf8(static_cast<QRegularExpression *>(regex)->errorString());
}

int qt_regex_has_match(void *regex, const char *subject) {
    return static_cast<QRegularExpression *>(regex)->match(QString::fromUtf8(subject)).hasMatch() ? 1 : 0;
}

char *qt_regex_get_match(void *regex, const char *subject, int capture_group) {
    QRegularExpressionMatch m = static_cast<QRegularExpression *>(regex)->match(QString::fromUtf8(subject));
    if (!m.hasMatch()) return nullptr;
    return qstring_to_heap_utf8(m.captured(capture_group));
}

int qt_regex_get_match_start(void *regex, const char *subject, int capture_group) {
    QRegularExpressionMatch m = static_cast<QRegularExpression *>(regex)->match(QString::fromUtf8(subject));
    if (!m.hasMatch()) return -1;
    return static_cast<int>(m.capturedStart(capture_group));
}

int qt_regex_get_match_end(void *regex, const char *subject, int capture_group) {
    QRegularExpressionMatch m = static_cast<QRegularExpression *>(regex)->match(QString::fromUtf8(subject));
    if (!m.hasMatch()) return -1;
    return static_cast<int>(m.capturedEnd(capture_group));
}

/* ── QUrl ───────────────────────────────────────────────────────────── */

void *qt_url_create(const char *url) {
    return static_cast<void *>(new QUrl(QString::fromUtf8(url)));
}

void *qt_url_create_from_local_file(const char *file_path) {
    return static_cast<void *>(new QUrl(QUrl::fromLocalFile(QString::fromUtf8(file_path))));
}

void qt_url_destroy(void *url) {
    delete static_cast<QUrl *>(url);
}

char *qt_url_to_string(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->toString());
}

char *qt_url_to_local_file(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->toLocalFile());
}

char *qt_url_get_scheme(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->scheme());
}

char *qt_url_get_host(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->host());
}

int qt_url_get_port(void *url) {
    return static_cast<QUrl *>(url)->port();
}

char *qt_url_get_path(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->path());
}

char *qt_url_get_query(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->query());
}

char *qt_url_get_fragment(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->fragment());
}

int qt_url_is_valid(void *url) {
    return static_cast<QUrl *>(url)->isValid() ? 1 : 0;
}

int qt_url_is_local_file(void *url) {
    return static_cast<QUrl *>(url)->isLocalFile() ? 1 : 0;
}

char *qt_url_get_file_name(void *url) {
    return qstring_to_heap_utf8(static_cast<QUrl *>(url)->fileName());
}

/* ── QUuid ──────────────────────────────────────────────────────────── */

void *qt_uuid_create(void) {
    return static_cast<void *>(new QUuid(QUuid::createUuid()));
}

void *qt_uuid_create_from_string(const char *text) {
    return static_cast<void *>(new QUuid(QUuid::fromString(QString::fromUtf8(text))));
}

void qt_uuid_destroy(void *uuid) {
    delete static_cast<QUuid *>(uuid);
}

char *qt_uuid_to_string(void *uuid) {
    return qstring_to_heap_utf8(static_cast<QUuid *>(uuid)->toString());
}

int qt_uuid_is_null(void *uuid) {
    return static_cast<QUuid *>(uuid)->isNull() ? 1 : 0;
}

/* ── QElapsedTimer ──────────────────────────────────────────────────── */

void *qt_elapsed_timer_create(void) {
    return static_cast<void *>(new QElapsedTimer());
}

void qt_elapsed_timer_destroy(void *timer) {
    delete static_cast<QElapsedTimer *>(timer);
}

void qt_elapsed_timer_start(void *timer) {
    static_cast<QElapsedTimer *>(timer)->start();
}

long long qt_elapsed_timer_elapsed(void *timer) {
    return static_cast<QElapsedTimer *>(timer)->elapsed();
}

long long qt_elapsed_timer_restart(void *timer) {
    return static_cast<QElapsedTimer *>(timer)->restart();
}

int qt_elapsed_timer_is_valid(void *timer) {
    return static_cast<QElapsedTimer *>(timer)->isValid() ? 1 : 0;
}

int qt_elapsed_timer_has_expired(void *timer, long long timeout) {
    return static_cast<QElapsedTimer *>(timer)->hasExpired(timeout) ? 1 : 0;
}

/* ── QCryptographicHash ─────────────────────────────────────────────── */

void *qt_crypto_hash_create(int algorithm) {
    return static_cast<void *>(new QCryptographicHash(static_cast<QCryptographicHash::Algorithm>(algorithm)));
}

void qt_crypto_hash_destroy(void *hash) {
    delete static_cast<QCryptographicHash *>(hash);
}

void qt_crypto_hash_add_data(void *hash, const unsigned char *data, int size) {
    static_cast<QCryptographicHash *>(hash)->addData(reinterpret_cast<const char *>(data), size);
}

void qt_crypto_hash_reset(void *hash) {
    static_cast<QCryptographicHash *>(hash)->reset();
}

int qt_crypto_hash_get_result(void *hash, unsigned char *out, int max_size) {
    QByteArray result = static_cast<QCryptographicHash *>(hash)->result();
    int copy_size = qMin(result.size(), max_size);
    memcpy(out, result.constData(), copy_size);
    return copy_size;
}

int qt_crypto_hash_static(int algorithm, const unsigned char *data, int size, unsigned char *out, int max_size) {
    QByteArray result = QCryptographicHash::hash(QByteArray(reinterpret_cast<const char *>(data), size),
        static_cast<QCryptographicHash::Algorithm>(algorithm));
    int copy_size = qMin(result.size(), max_size);
    memcpy(out, result.constData(), copy_size);
    return copy_size;
}

/* ── QMimeType / QMimeDatabase ──────────────────────────────────────── */

void *qt_mime_database_create(void) {
    return static_cast<void *>(new QMimeDatabase());
}

void qt_mime_database_destroy(void *db) {
    delete static_cast<QMimeDatabase *>(db);
}

char *qt_mime_database_mime_type_for_file(void *db, const char *file_path) {
    QMimeType mt = static_cast<QMimeDatabase *>(db)->mimeTypeForFile(QString::fromUtf8(file_path));
    return qstring_to_heap_utf8(mt.name());
}

char *qt_mime_database_mime_type_for_data(void *db, const unsigned char *data, int size) {
    QMimeType mt = static_cast<QMimeDatabase *>(db)->mimeTypeForData(QByteArray(reinterpret_cast<const char *>(data), size));
    return qstring_to_heap_utf8(mt.name());
}

char *qt_mime_database_suffix_for_mime_type(void *db, const char *mime_type) {
    QMimeType mt = static_cast<QMimeDatabase *>(db)->mimeTypeForName(QString::fromUtf8(mime_type));
    return qstring_to_heap_utf8(mt.preferredSuffix());
}

/* ── QStorageInfo ───────────────────────────────────────────────────── */

void *qt_storage_info_create(const char *path) {
    return static_cast<void *>(new QStorageInfo(QString::fromUtf8(path)));
}

void qt_storage_info_destroy(void *info) {
    delete static_cast<QStorageInfo *>(info);
}

char *qt_storage_info_get_root_path(void *info) {
    return qstring_to_heap_utf8(static_cast<QStorageInfo *>(info)->rootPath());
}

char *qt_storage_info_get_device(void *info) {
    return qstring_to_heap_utf8(QString::fromUtf8(static_cast<QStorageInfo *>(info)->device()));
}

char *qt_storage_info_get_display_name(void *info) {
    return qstring_to_heap_utf8(static_cast<QStorageInfo *>(info)->displayName());
}

char *qt_storage_info_get_file_system_type(void *info) {
    return qstring_to_heap_utf8(QString::fromUtf8(static_cast<QStorageInfo *>(info)->fileSystemType()));
}

long long qt_storage_info_get_bytes_total(void *info) {
    return static_cast<QStorageInfo *>(info)->bytesTotal();
}

long long qt_storage_info_get_bytes_free(void *info) {
    return static_cast<QStorageInfo *>(info)->bytesFree();
}

long long qt_storage_info_get_bytes_available(void *info) {
    return static_cast<QStorageInfo *>(info)->bytesAvailable();
}

int qt_storage_info_is_valid(void *info) {
    return static_cast<QStorageInfo *>(info)->isValid() ? 1 : 0;
}

int qt_storage_info_is_ready(void *info) {
    return static_cast<QStorageInfo *>(info)->isReady() ? 1 : 0;
}

int qt_storage_info_is_read_only(void *info) {
    return static_cast<QStorageInfo *>(info)->isReadOnly() ? 1 : 0;
}

/* ── QVersionNumber ─────────────────────────────────────────────────── */

void *qt_version_number_create(int major, int minor, int micro) {
    return static_cast<void *>(new QVersionNumber(major, minor, micro));
}

void qt_version_number_destroy(void *version) {
    delete static_cast<QVersionNumber *>(version);
}

int qt_version_number_get_major(void *version) {
    return static_cast<QVersionNumber *>(version)->majorVersion();
}

int qt_version_number_get_minor(void *version) {
    return static_cast<QVersionNumber *>(version)->minorVersion();
}

int qt_version_number_get_micro(void *version) {
    return static_cast<QVersionNumber *>(version)->microVersion();
}

char *qt_version_number_to_string(void *version) {
    return qstring_to_heap_utf8(static_cast<QVersionNumber *>(version)->toString());
}

int qt_version_number_compare(void *v1, void *v2) {
    return QVersionNumber::compare(*static_cast<QVersionNumber *>(v1), *static_cast<QVersionNumber *>(v2));
}

int qt_version_number_is_null(void *version) {
    return static_cast<QVersionNumber *>(version)->isNull() ? 1 : 0;
}

/* ── QTranslator ────────────────────────────────────────────────────── */

void *qt_translator_create(void *parent) {
    return static_cast<void *>(new QTranslator(static_cast<QObject *>(parent)));
}

void qt_translator_destroy(void *translator) {
    delete static_cast<QTranslator *>(translator);
}

int qt_translator_load(void *translator, const char *filename, const char *directory) {
    return static_cast<QTranslator *>(translator)->load(
        QString::fromUtf8(filename), QString::fromUtf8(directory)) ? 1 : 0;
}

int qt_translator_is_empty(void *translator) {
    return static_cast<QTranslator *>(translator)->isEmpty() ? 1 : 0;
}

void qt_application_install_translator(void *app, void *translator) {
    (void)app;
    QCoreApplication::installTranslator(static_cast<QTranslator *>(translator));
}

void qt_application_remove_translator(void *app, void *translator) {
    (void)app;
    QCoreApplication::removeTranslator(static_cast<QTranslator *>(translator));
}

/* ── QCommandLineParser / QCommandLineOption ────────────────────────── */

void *qt_command_line_parser_create(void) {
    return static_cast<void *>(new QCommandLineParser());
}

void qt_command_line_parser_destroy(void *parser) {
    delete static_cast<QCommandLineParser *>(parser);
}

void qt_command_line_parser_set_application_description(void *parser, const char *description) {
    static_cast<QCommandLineParser *>(parser)->setApplicationDescription(QString::fromUtf8(description));
}

void qt_command_line_parser_add_help_option(void *parser) {
    static_cast<QCommandLineParser *>(parser)->addHelpOption();
}

void qt_command_line_parser_add_version_option(void *parser) {
    static_cast<QCommandLineParser *>(parser)->addVersionOption();
}

void qt_command_line_parser_add_option(void *parser, const char *name, const char *description, const char *value_name, const char *default_value) {
    QCommandLineOption opt(QString::fromUtf8(name), QString::fromUtf8(description),
        value_name ? QString::fromUtf8(value_name) : QString(),
        default_value ? QString::fromUtf8(default_value) : QString());
    static_cast<QCommandLineParser *>(parser)->addOption(opt);
}

void qt_command_line_parser_add_positional_argument(void *parser, const char *name, const char *description, const char *syntax) {
    static_cast<QCommandLineParser *>(parser)->addPositionalArgument(
        QString::fromUtf8(name), QString::fromUtf8(description),
        syntax ? QString::fromUtf8(syntax) : QString());
}

void qt_command_line_parser_process(void *parser, void *app) {
    static_cast<QCommandLineParser *>(parser)->process(*static_cast<QCoreApplication *>(app));
}

int qt_command_line_parser_is_set(void *parser, const char *name) {
    return static_cast<QCommandLineParser *>(parser)->isSet(QString::fromUtf8(name)) ? 1 : 0;
}

char *qt_command_line_parser_get_value(void *parser, const char *name) {
    return qstring_to_heap_utf8(static_cast<QCommandLineParser *>(parser)->value(QString::fromUtf8(name)));
}

/* ── QTemporaryFile ─────────────────────────────────────────────────── */

void *qt_temporary_file_create(void) {
    return static_cast<void *>(new QTemporaryFile());
}

void *qt_temporary_file_create_with_template(const char *template_name) {
    return static_cast<void *>(new QTemporaryFile(QString::fromUtf8(template_name)));
}

void qt_temporary_file_destroy(void *file) {
    delete static_cast<QTemporaryFile *>(file);
}

int qt_temporary_file_open(void *file) {
    return static_cast<QTemporaryFile *>(file)->open() ? 1 : 0;
}

char *qt_temporary_file_get_file_name(void *file) {
    return qstring_to_heap_utf8(static_cast<QTemporaryFile *>(file)->fileName());
}

int qt_temporary_file_auto_remove(void *file) {
    return static_cast<QTemporaryFile *>(file)->autoRemove() ? 1 : 0;
}

void qt_temporary_file_set_auto_remove(void *file, int is_auto_remove) {
    static_cast<QTemporaryFile *>(file)->setAutoRemove(is_auto_remove != 0);
}

/* ── QTemporaryDir ──────────────────────────────────────────────────── */

void *qt_temporary_dir_create(void) {
    return static_cast<void *>(new QTemporaryDir());
}

void *qt_temporary_dir_create_with_template(const char *template_name) {
    return static_cast<void *>(new QTemporaryDir(QString::fromUtf8(template_name)));
}

void qt_temporary_dir_destroy(void *dir) {
    delete static_cast<QTemporaryDir *>(dir);
}

int qt_temporary_dir_is_valid(void *dir) {
    return static_cast<QTemporaryDir *>(dir)->isValid() ? 1 : 0;
}

char *qt_temporary_dir_get_path(void *dir) {
    return qstring_to_heap_utf8(static_cast<QTemporaryDir *>(dir)->path());
}

int qt_temporary_dir_auto_remove(void *dir) {
    return static_cast<QTemporaryDir *>(dir)->autoRemove() ? 1 : 0;
}

void qt_temporary_dir_set_auto_remove(void *dir, int is_auto_remove) {
    static_cast<QTemporaryDir *>(dir)->setAutoRemove(is_auto_remove != 0);
}

int qt_temporary_dir_remove(void *dir) {
    return static_cast<QTemporaryDir *>(dir)->remove() ? 1 : 0;
}

/* ── QSaveFile ──────────────────────────────────────────────────────── */

void *qt_save_file_create(const char *file_path) {
    return static_cast<void *>(new QSaveFile(QString::fromUtf8(file_path)));
}

void qt_save_file_destroy(void *file) {
    delete static_cast<QSaveFile *>(file);
}

int qt_save_file_open(void *file, int mode) {
    return static_cast<QSaveFile *>(file)->open(static_cast<QIODevice::OpenMode>(mode)) ? 1 : 0;
}

long long qt_save_file_write(void *file, const char *data, long long size) {
    return static_cast<QSaveFile *>(file)->write(data, size);
}

int qt_save_file_commit(void *file) {
    return static_cast<QSaveFile *>(file)->commit() ? 1 : 0;
}

void qt_save_file_cancel_writing(void *file) {
    static_cast<QSaveFile *>(file)->cancelWriting();
}

char *qt_save_file_get_error_string(void *file) {
    return qstring_to_heap_utf8(static_cast<QSaveFile *>(file)->errorString());
}

/* ── QFileSystemWatcher ─────────────────────────────────────────────── */

void *qt_file_system_watcher_create(void *parent) {
    return static_cast<void *>(new QFileSystemWatcher(static_cast<QObject *>(parent)));
}

void qt_file_system_watcher_destroy(void *watcher) {
    delete static_cast<QFileSystemWatcher *>(watcher);
}

int qt_file_system_watcher_add_path(void *watcher, const char *path) {
    return static_cast<QFileSystemWatcher *>(watcher)->addPath(QString::fromUtf8(path)) ? 1 : 0;
}

int qt_file_system_watcher_remove_path(void *watcher, const char *path) {
    return static_cast<QFileSystemWatcher *>(watcher)->removePath(QString::fromUtf8(path)) ? 1 : 0;
}

int qt_file_system_watcher_connect_file_changed(void *watcher, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QFileSystemWatcher *>(watcher), &QFileSystemWatcher::fileChanged, [callback, user_data](const QString &path) {
        QByteArray utf8 = path.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

int qt_file_system_watcher_connect_directory_changed(void *watcher, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QFileSystemWatcher *>(watcher), &QFileSystemWatcher::directoryChanged, [callback, user_data](const QString &path) {
        QByteArray utf8 = path.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

/* ── QStringListModel ───────────────────────────────────────────────── */

void *qt_string_list_model_create(void *parent) {
    return static_cast<void *>(new QStringListModel(static_cast<QObject *>(parent)));
}

void qt_string_list_model_destroy(void *model) {
    delete static_cast<QStringListModel *>(model);
}

void qt_string_list_model_set_string_list(void *model, const char **strings, int count) {
    QStringList list;
    for (int i = 0; i < count; i++) {
        list.append(QString::fromUtf8(strings[i]));
    }
    static_cast<QStringListModel *>(model)->setStringList(list);
}

int qt_string_list_model_get_string_list(void *model, char ***strings_out) {
    QStringList list = static_cast<QStringListModel *>(model)->stringList();
    int count = list.size();
    char **arr = static_cast<char **>(malloc(sizeof(char *) * count));
    for (int i = 0; i < count; i++) {
        arr[i] = qstring_to_heap_utf8(list[i]);
    }
    *strings_out = arr;
    return count;
}

void qt_string_list_model_free_string_list(char **strings, int count) {
    for (int i = 0; i < count; i++) {
        free(strings[i]);
    }
    free(strings);
}

/* ── QItemSelectionModel ────────────────────────────────────────────── */

void *qt_item_selection_model_create(void *model, void *parent) {
    return static_cast<void *>(new QItemSelectionModel(
        static_cast<QAbstractItemModel *>(model), static_cast<QObject *>(parent)));
}

void qt_item_selection_model_destroy(void *selection_model) {
    delete static_cast<QItemSelectionModel *>(selection_model);
}

void qt_item_selection_model_select_index(void *selection_model, void *index, int flags) {
    static_cast<QItemSelectionModel *>(selection_model)->select(
        *static_cast<QModelIndex *>(index), static_cast<QItemSelectionModel::SelectionFlags>(flags));
}

void qt_item_selection_model_clear(void *selection_model) {
    static_cast<QItemSelectionModel *>(selection_model)->clear();
}

void qt_item_selection_model_clear_selection(void *selection_model) {
    static_cast<QItemSelectionModel *>(selection_model)->clearSelection();
}

int qt_item_selection_model_is_selected(void *selection_model, void *index) {
    return static_cast<QItemSelectionModel *>(selection_model)->isSelected(
        *static_cast<QModelIndex *>(index)) ? 1 : 0;
}

int qt_item_selection_model_has_selection(void *selection_model) {
    return static_cast<QItemSelectionModel *>(selection_model)->hasSelection() ? 1 : 0;
}

void *qt_item_selection_model_get_current_index(void *selection_model) {
    QModelIndex idx = static_cast<QItemSelectionModel *>(selection_model)->currentIndex();
    return static_cast<void *>(new QPersistentModelIndex(idx));
}

void qt_item_selection_model_set_current_index(void *selection_model, void *index, int flags) {
    static_cast<QItemSelectionModel *>(selection_model)->setCurrentIndex(
        *static_cast<QModelIndex *>(index), static_cast<QItemSelectionModel::SelectionFlags>(flags));
}

int qt_item_selection_model_connect_selection_changed(void *selection_model, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QItemSelectionModel *>(selection_model), &QItemSelectionModel::selectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_item_selection_model_connect_current_changed(void *selection_model, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QItemSelectionModel *>(selection_model), &QItemSelectionModel::currentChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QUndoCommand ───────────────────────────────────────────────────── */

void *qt_undo_command_create(const char *text, void *parent) {
    return static_cast<void *>(new QUndoCommand(
        QString::fromUtf8(text), static_cast<QUndoCommand *>(parent)));
}

void qt_undo_command_destroy(void *command) {
    delete static_cast<QUndoCommand *>(command);
}

char *qt_undo_command_get_text(void *command) {
    return qstring_to_heap_utf8(static_cast<QUndoCommand *>(command)->text());
}

char *qt_undo_command_get_action_text(void *command) {
    return qstring_to_heap_utf8(static_cast<QUndoCommand *>(command)->actionText());
}

void qt_undo_command_set_obsolete(void *command, int is_obsolete) {
    static_cast<QUndoCommand *>(command)->setObsolete(is_obsolete != 0);
}

int qt_undo_command_is_obsolete(void *command) {
    return static_cast<QUndoCommand *>(command)->isObsolete() ? 1 : 0;
}

int qt_undo_command_get_child_count(void *command) {
    return static_cast<QUndoCommand *>(command)->childCount();
}

void *qt_undo_command_get_child(void *command, int index) {
    return const_cast<QUndoCommand *>(static_cast<QUndoCommand *>(command)->child(index));
}

/* ── QUndoStack ────────────────────────────────────────────────────── */

void *qt_undo_stack_create(void *parent) {
    return static_cast<void *>(new QUndoStack(static_cast<QObject *>(parent)));
}

void qt_undo_stack_destroy(void *stack) {
    delete static_cast<QUndoStack *>(stack);
}

void qt_undo_stack_push(void *stack, void *command) {
    static_cast<QUndoStack *>(stack)->push(static_cast<QUndoCommand *>(command));
}

void qt_undo_stack_clear(void *stack) {
    static_cast<QUndoStack *>(stack)->clear();
}

void qt_undo_stack_undo(void *stack) {
    static_cast<QUndoStack *>(stack)->undo();
}

void qt_undo_stack_redo(void *stack) {
    static_cast<QUndoStack *>(stack)->redo();
}

int qt_undo_stack_can_undo(void *stack) {
    return static_cast<QUndoStack *>(stack)->canUndo() ? 1 : 0;
}

int qt_undo_stack_can_redo(void *stack) {
    return static_cast<QUndoStack *>(stack)->canRedo() ? 1 : 0;
}

char *qt_undo_stack_get_undo_text(void *stack) {
    return qstring_to_heap_utf8(static_cast<QUndoStack *>(stack)->undoText());
}

char *qt_undo_stack_get_redo_text(void *stack) {
    return qstring_to_heap_utf8(static_cast<QUndoStack *>(stack)->redoText());
}

int qt_undo_stack_is_clean(void *stack) {
    return static_cast<QUndoStack *>(stack)->isClean() ? 1 : 0;
}

int qt_undo_stack_get_clean_index(void *stack) {
    return static_cast<QUndoStack *>(stack)->cleanIndex();
}

void qt_undo_stack_set_clean(void *stack) {
    static_cast<QUndoStack *>(stack)->setClean();
}

int qt_undo_stack_get_index(void *stack) {
    return static_cast<QUndoStack *>(stack)->index();
}

int qt_undo_stack_get_count(void *stack) {
    return static_cast<QUndoStack *>(stack)->count();
}

void qt_undo_stack_set_index(void *stack, int index) {
    static_cast<QUndoStack *>(stack)->setIndex(index);
}

void qt_undo_stack_set_undo_limit(void *stack, int limit) {
    static_cast<QUndoStack *>(stack)->setUndoLimit(limit);
}

int qt_undo_stack_get_undo_limit(void *stack) {
    return static_cast<QUndoStack *>(stack)->undoLimit();
}

void qt_undo_stack_begin_macro(void *stack, const char *text) {
    static_cast<QUndoStack *>(stack)->beginMacro(QString::fromUtf8(text));
}

void qt_undo_stack_end_macro(void *stack) {
    static_cast<QUndoStack *>(stack)->endMacro();
}

void qt_undo_stack_set_active(void *stack, int is_active) {
    static_cast<QUndoStack *>(stack)->setActive(is_active != 0);
}

int qt_undo_stack_is_active(void *stack) {
    return static_cast<QUndoStack *>(stack)->isActive() ? 1 : 0;
}

int qt_undo_stack_connect_can_undo_changed(void *stack, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoStack *>(stack), &QUndoStack::canUndoChanged, [callback, user_data](bool can_undo) {
        callback(can_undo ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_undo_stack_connect_can_redo_changed(void *stack, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoStack *>(stack), &QUndoStack::canRedoChanged, [callback, user_data](bool can_redo) {
        callback(can_redo ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_undo_stack_connect_clean_changed(void *stack, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoStack *>(stack), &QUndoStack::cleanChanged, [callback, user_data](bool is_clean) {
        callback(is_clean ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_undo_stack_connect_index_changed(void *stack, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoStack *>(stack), &QUndoStack::indexChanged, [callback, user_data](int idx) {
        callback(idx, user_data);
    });
    return store_connection(conn);
}

int qt_undo_stack_connect_undo_text_changed(void *stack, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoStack *>(stack), &QUndoStack::undoTextChanged, [callback, user_data](const QString &text) {
        QByteArray utf8 = text.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

int qt_undo_stack_connect_redo_text_changed(void *stack, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoStack *>(stack), &QUndoStack::redoTextChanged, [callback, user_data](const QString &text) {
        QByteArray utf8 = text.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

/* ── QUndoGroup ────────────────────────────────────────────────────── */

void *qt_undo_group_create(void *parent) {
    return static_cast<void *>(new QUndoGroup(static_cast<QObject *>(parent)));
}

void qt_undo_group_destroy(void *group) {
    delete static_cast<QUndoGroup *>(group);
}

void qt_undo_group_add_stack(void *group, void *stack) {
    static_cast<QUndoGroup *>(group)->addStack(static_cast<QUndoStack *>(stack));
}

void qt_undo_group_remove_stack(void *group, void *stack) {
    static_cast<QUndoGroup *>(group)->removeStack(static_cast<QUndoStack *>(stack));
}

void qt_undo_group_set_active_stack(void *group, void *stack) {
    static_cast<QUndoGroup *>(group)->setActiveStack(static_cast<QUndoStack *>(stack));
}

void *qt_undo_group_get_active_stack(void *group) {
    return static_cast<void *>(static_cast<QUndoGroup *>(group)->activeStack());
}

void qt_undo_group_undo(void *group) {
    static_cast<QUndoGroup *>(group)->undo();
}

void qt_undo_group_redo(void *group) {
    static_cast<QUndoGroup *>(group)->redo();
}

int qt_undo_group_can_undo(void *group) {
    return static_cast<QUndoGroup *>(group)->canUndo() ? 1 : 0;
}

int qt_undo_group_can_redo(void *group) {
    return static_cast<QUndoGroup *>(group)->canRedo() ? 1 : 0;
}

char *qt_undo_group_get_undo_text(void *group) {
    return qstring_to_heap_utf8(static_cast<QUndoGroup *>(group)->undoText());
}

char *qt_undo_group_get_redo_text(void *group) {
    return qstring_to_heap_utf8(static_cast<QUndoGroup *>(group)->redoText());
}

int qt_undo_group_is_clean(void *group) {
    return static_cast<QUndoGroup *>(group)->isClean() ? 1 : 0;
}

int qt_undo_group_connect_active_stack_changed(void *group, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoGroup *>(group), &QUndoGroup::activeStackChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_undo_group_connect_can_undo_changed(void *group, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoGroup *>(group), &QUndoGroup::canUndoChanged, [callback, user_data](bool can_undo) {
        callback(can_undo ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_undo_group_connect_can_redo_changed(void *group, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoGroup *>(group), &QUndoGroup::canRedoChanged, [callback, user_data](bool can_redo) {
        callback(can_redo ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

int qt_undo_group_connect_clean_changed(void *group, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QUndoGroup *>(group), &QUndoGroup::cleanChanged, [callback, user_data](bool is_clean) {
        callback(is_clean ? 1 : 0, user_data);
    });
    return store_connection(conn);
}

/* ── QDataWidgetMapper ─────────────────────────────────────────────── */

void *qt_data_widget_mapper_create(void *parent) {
    return static_cast<void *>(new QDataWidgetMapper(static_cast<QObject *>(parent)));
}

void qt_data_widget_mapper_destroy(void *mapper) {
    delete static_cast<QDataWidgetMapper *>(mapper);
}

void qt_data_widget_mapper_set_model(void *mapper, void *model) {
    static_cast<QDataWidgetMapper *>(mapper)->setModel(static_cast<QAbstractItemModel *>(model));
}

void *qt_data_widget_mapper_get_model(void *mapper) {
    return static_cast<void *>(static_cast<QDataWidgetMapper *>(mapper)->model());
}

void qt_data_widget_mapper_add_mapping(void *mapper, void *widget, int section) {
    static_cast<QDataWidgetMapper *>(mapper)->addMapping(static_cast<QWidget *>(widget), section);
}

void qt_data_widget_mapper_add_mapping_with_property(void *mapper, void *widget, int section, const char *property_name) {
    static_cast<QDataWidgetMapper *>(mapper)->addMapping(
        static_cast<QWidget *>(widget), section, QByteArray(property_name));
}

void qt_data_widget_mapper_remove_mapping(void *mapper, void *widget) {
    static_cast<QDataWidgetMapper *>(mapper)->removeMapping(static_cast<QWidget *>(widget));
}

void qt_data_widget_mapper_set_current_index(void *mapper, int index) {
    static_cast<QDataWidgetMapper *>(mapper)->setCurrentIndex(index);
}

int qt_data_widget_mapper_get_current_index(void *mapper) {
    return static_cast<QDataWidgetMapper *>(mapper)->currentIndex();
}

void qt_data_widget_mapper_set_root_index(void *mapper, void *index) {
    static_cast<QDataWidgetMapper *>(mapper)->setRootIndex(*static_cast<QModelIndex *>(index));
}

void qt_data_widget_mapper_to_first(void *mapper) {
    static_cast<QDataWidgetMapper *>(mapper)->toFirst();
}

void qt_data_widget_mapper_to_last(void *mapper) {
    static_cast<QDataWidgetMapper *>(mapper)->toLast();
}

void qt_data_widget_mapper_to_next(void *mapper) {
    static_cast<QDataWidgetMapper *>(mapper)->toNext();
}

void qt_data_widget_mapper_to_previous(void *mapper) {
    static_cast<QDataWidgetMapper *>(mapper)->toPrevious();
}

int qt_data_widget_mapper_submit(void *mapper) {
    return static_cast<QDataWidgetMapper *>(mapper)->submit() ? 1 : 0;
}

void qt_data_widget_mapper_revert(void *mapper) {
    static_cast<QDataWidgetMapper *>(mapper)->revert();
}

void qt_data_widget_mapper_set_submit_policy(void *mapper, int policy) {
    static_cast<QDataWidgetMapper *>(mapper)->setSubmitPolicy(
        static_cast<QDataWidgetMapper::SubmitPolicy>(policy));
}

int qt_data_widget_mapper_get_submit_policy(void *mapper) {
    return static_cast<int>(static_cast<QDataWidgetMapper *>(mapper)->submitPolicy());
}

void qt_data_widget_mapper_set_orientation(void *mapper, int orientation) {
    static_cast<QDataWidgetMapper *>(mapper)->setOrientation(
        static_cast<Qt::Orientation>(orientation));
}

int qt_data_widget_mapper_get_orientation(void *mapper) {
    return static_cast<int>(static_cast<QDataWidgetMapper *>(mapper)->orientation());
}

int qt_data_widget_mapper_connect_current_index_changed(void *mapper, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QDataWidgetMapper *>(mapper), &QDataWidgetMapper::currentIndexChanged, [callback, user_data](int index) {
        callback(index, user_data);
    });
    return store_connection(conn);
}

/* ── QStyledItemDelegate ───────────────────────────────────────────── */

void *qt_styled_item_delegate_create(void *parent) {
    return static_cast<void *>(new QStyledItemDelegate(static_cast<QObject *>(parent)));
}

void qt_styled_item_delegate_destroy(void *delegate) {
    delete static_cast<QStyledItemDelegate *>(delegate);
}

/* ── QItemDelegate ─────────────────────────────────────────────────── */

void *qt_item_delegate_create(void *parent) {
    return static_cast<void *>(new QItemDelegate(static_cast<QObject *>(parent)));
}

void qt_item_delegate_destroy(void *delegate) {
    delete static_cast<QItemDelegate *>(delegate);
}

/* ── QGraphicsScene ────────────────────────────────────────────────── */

void *qt_graphics_scene_create(void *parent) {
    return static_cast<void *>(new QGraphicsScene(static_cast<QObject *>(parent)));
}

void *qt_graphics_scene_create_with_rect(double x, double y, double width, double height, void *parent) {
    return static_cast<void *>(new QGraphicsScene(x, y, width, height, static_cast<QObject *>(parent)));
}

void qt_graphics_scene_destroy(void *scene) {
    delete static_cast<QGraphicsScene *>(scene);
}

void qt_graphics_scene_set_scene_rect(void *scene, double x, double y, double width, double height) {
    static_cast<QGraphicsScene *>(scene)->setSceneRect(x, y, width, height);
}

void qt_graphics_scene_get_scene_rect(void *scene, double *x, double *y, double *width, double *height) {
    QRectF r = static_cast<QGraphicsScene *>(scene)->sceneRect();
    if (x) *x = r.x();
    if (y) *y = r.y();
    if (width) *width = r.width();
    if (height) *height = r.height();
}

void qt_graphics_scene_set_background_brush(void *scene, void *brush) {
    static_cast<QGraphicsScene *>(scene)->setBackgroundBrush(*static_cast<QBrush *>(brush));
}

void qt_graphics_scene_set_foreground_brush(void *scene, void *brush) {
    static_cast<QGraphicsScene *>(scene)->setForegroundBrush(*static_cast<QBrush *>(brush));
}

void qt_graphics_scene_add_item(void *scene, void *item) {
    static_cast<QGraphicsScene *>(scene)->addItem(static_cast<QGraphicsItem *>(item));
}

void qt_graphics_scene_remove_item(void *scene, void *item) {
    static_cast<QGraphicsScene *>(scene)->removeItem(static_cast<QGraphicsItem *>(item));
}

void qt_graphics_scene_clear(void *scene) {
    static_cast<QGraphicsScene *>(scene)->clear();
}

void *qt_graphics_scene_add_rect(void *scene, double x, double y, double w, double h, void *pen, void *brush) {
    QPen p = pen ? *static_cast<QPen *>(pen) : QPen();
    QBrush b = brush ? *static_cast<QBrush *>(brush) : QBrush();
    return static_cast<void *>(static_cast<QGraphicsScene *>(scene)->addRect(x, y, w, h, p, b));
}

void *qt_graphics_scene_add_ellipse(void *scene, double x, double y, double w, double h, void *pen, void *brush) {
    QPen p = pen ? *static_cast<QPen *>(pen) : QPen();
    QBrush b = brush ? *static_cast<QBrush *>(brush) : QBrush();
    return static_cast<void *>(static_cast<QGraphicsScene *>(scene)->addEllipse(x, y, w, h, p, b));
}

void *qt_graphics_scene_add_text(void *scene, const char *text, void *font) {
    QFont f = font ? *static_cast<QFont *>(font) : QFont();
    QGraphicsTextItem *item = static_cast<QGraphicsScene *>(scene)->addText(QString::fromUtf8(text), f);
    return static_cast<void *>(static_cast<QGraphicsItem *>(item));
}

void *qt_graphics_scene_add_line(void *scene, double x1, double y1, double x2, double y2, void *pen) {
    QPen p = pen ? *static_cast<QPen *>(pen) : QPen();
    return static_cast<void *>(static_cast<QGraphicsScene *>(scene)->addLine(x1, y1, x2, y2, p));
}

void *qt_graphics_scene_add_pixmap(void *scene, void *pixmap) {
    return static_cast<void *>(static_cast<QGraphicsScene *>(scene)->addPixmap(*static_cast<QPixmap *>(pixmap)));
}

void *qt_graphics_scene_add_path(void *scene, void *path, void *pen, void *brush) {
    QPen p = pen ? *static_cast<QPen *>(pen) : QPen();
    QBrush b = brush ? *static_cast<QBrush *>(brush) : QBrush();
    return static_cast<void *>(static_cast<QGraphicsScene *>(scene)->addPath(*static_cast<QPainterPath *>(path), p, b));
}

void *qt_graphics_scene_add_widget(void *scene, void *widget) {
    QGraphicsProxyWidget *proxy = static_cast<QGraphicsScene *>(scene)->addWidget(static_cast<QWidget *>(widget));
    return static_cast<void *>(static_cast<QGraphicsItem *>(proxy));
}

void *qt_graphics_scene_create_item_group(void *scene, void **items, int count) {
    QList<QGraphicsItem *> item_list;
    for (int i = 0; i < count; ++i) {
        item_list.append(static_cast<QGraphicsItem *>(items[i]));
    }
    return static_cast<void *>(static_cast<QGraphicsScene *>(scene)->createItemGroup(item_list));
}

void qt_graphics_scene_destroy_item_group(void *scene, void *group) {
    static_cast<QGraphicsScene *>(scene)->destroyItemGroup(static_cast<QGraphicsItemGroup *>(group));
}

int qt_graphics_scene_get_item_count(void *scene) {
    return static_cast<QGraphicsScene *>(scene)->items().count();
}

void qt_graphics_scene_set_selection_area(void *scene, void *path) {
    static_cast<QGraphicsScene *>(scene)->setSelectionArea(*static_cast<QPainterPath *>(path));
}

void qt_graphics_scene_clear_selection(void *scene) {
    static_cast<QGraphicsScene *>(scene)->clearSelection();
}

int qt_graphics_scene_connect_selection_changed(void *scene, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsScene *>(scene), &QGraphicsScene::selectionChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QGraphicsView ─────────────────────────────────────────────────── */

void *qt_graphics_view_create(void *parent) {
    return static_cast<void *>(new QGraphicsView(static_cast<QWidget *>(parent)));
}

void *qt_graphics_view_create_with_scene(void *scene, void *parent) {
    return static_cast<void *>(new QGraphicsView(
        static_cast<QGraphicsScene *>(scene), static_cast<QWidget *>(parent)));
}

void qt_graphics_view_destroy(void *view) {
    delete static_cast<QGraphicsView *>(view);
}

void qt_graphics_view_set_scene(void *view, void *scene) {
    static_cast<QGraphicsView *>(view)->setScene(static_cast<QGraphicsScene *>(scene));
}

void *qt_graphics_view_get_scene(void *view) {
    return static_cast<void *>(static_cast<QGraphicsView *>(view)->scene());
}

void qt_graphics_view_set_render_hint(void *view, int hint, int is_enabled) {
    static_cast<QGraphicsView *>(view)->setRenderHint(
        static_cast<QPainter::RenderHint>(hint), is_enabled != 0);
}

void qt_graphics_view_set_drag_mode(void *view, int mode) {
    static_cast<QGraphicsView *>(view)->setDragMode(
        static_cast<QGraphicsView::DragMode>(mode));
}

int qt_graphics_view_get_drag_mode(void *view) {
    return static_cast<int>(static_cast<QGraphicsView *>(view)->dragMode());
}

void qt_graphics_view_set_interactive(void *view, int is_interactive) {
    static_cast<QGraphicsView *>(view)->setInteractive(is_interactive != 0);
}

int qt_graphics_view_is_interactive(void *view) {
    return static_cast<QGraphicsView *>(view)->isInteractive() ? 1 : 0;
}

void qt_graphics_view_set_alignment(void *view, int alignment) {
    static_cast<QGraphicsView *>(view)->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void qt_graphics_view_set_viewport_update_mode(void *view, int mode) {
    static_cast<QGraphicsView *>(view)->setViewportUpdateMode(
        static_cast<QGraphicsView::ViewportUpdateMode>(mode));
}

void qt_graphics_view_fit_in_view(void *view, double x, double y, double w, double h, int aspect_ratio_mode) {
    static_cast<QGraphicsView *>(view)->fitInView(
        x, y, w, h, static_cast<Qt::AspectRatioMode>(aspect_ratio_mode));
}

void qt_graphics_view_center_on(void *view, double x, double y) {
    static_cast<QGraphicsView *>(view)->centerOn(x, y);
}

void qt_graphics_view_scale(void *view, double sx, double sy) {
    static_cast<QGraphicsView *>(view)->scale(sx, sy);
}

void qt_graphics_view_rotate(void *view, double angle) {
    static_cast<QGraphicsView *>(view)->rotate(angle);
}

void qt_graphics_view_reset_transform(void *view) {
    static_cast<QGraphicsView *>(view)->resetTransform();
}

void qt_graphics_view_set_scene_rect(void *view, double x, double y, double w, double h) {
    static_cast<QGraphicsView *>(view)->setSceneRect(x, y, w, h);
}

void qt_graphics_view_ensure_visible(void *view, double x, double y, double w, double h, int x_margin, int y_margin) {
    static_cast<QGraphicsView *>(view)->ensureVisible(x, y, w, h, x_margin, y_margin);
}

void qt_graphics_view_set_transformation_anchor(void *view, int anchor) {
    static_cast<QGraphicsView *>(view)->setTransformationAnchor(
        static_cast<QGraphicsView::ViewportAnchor>(anchor));
}

void qt_graphics_view_set_resize_anchor(void *view, int anchor) {
    static_cast<QGraphicsView *>(view)->setResizeAnchor(
        static_cast<QGraphicsView::ViewportAnchor>(anchor));
}

/* ── QGraphicsItem (base operations) ───────────────────────────────── */

void qt_graphics_item_set_pos(void *item, double x, double y) {
    static_cast<QGraphicsItem *>(item)->setPos(x, y);
}

void qt_graphics_item_get_pos(void *item, double *x, double *y) {
    QPointF p = static_cast<QGraphicsItem *>(item)->pos();
    if (x) *x = p.x();
    if (y) *y = p.y();
}

void qt_graphics_item_set_z_value(void *item, double z) {
    static_cast<QGraphicsItem *>(item)->setZValue(z);
}

double qt_graphics_item_get_z_value(void *item) {
    return static_cast<QGraphicsItem *>(item)->zValue();
}

void qt_graphics_item_set_rotation(void *item, double angle) {
    static_cast<QGraphicsItem *>(item)->setRotation(angle);
}

double qt_graphics_item_get_rotation(void *item) {
    return static_cast<QGraphicsItem *>(item)->rotation();
}

void qt_graphics_item_set_scale(void *item, double scale) {
    static_cast<QGraphicsItem *>(item)->setScale(scale);
}

double qt_graphics_item_get_scale(void *item) {
    return static_cast<QGraphicsItem *>(item)->scale();
}

void qt_graphics_item_set_opacity(void *item, double opacity) {
    static_cast<QGraphicsItem *>(item)->setOpacity(opacity);
}

double qt_graphics_item_get_opacity(void *item) {
    return static_cast<QGraphicsItem *>(item)->opacity();
}

void qt_graphics_item_set_visible(void *item, int is_visible) {
    static_cast<QGraphicsItem *>(item)->setVisible(is_visible != 0);
}

int qt_graphics_item_is_visible(void *item) {
    return static_cast<QGraphicsItem *>(item)->isVisible() ? 1 : 0;
}

void qt_graphics_item_set_enabled(void *item, int is_enabled) {
    static_cast<QGraphicsItem *>(item)->setEnabled(is_enabled != 0);
}

int qt_graphics_item_is_enabled(void *item) {
    return static_cast<QGraphicsItem *>(item)->isEnabled() ? 1 : 0;
}

void qt_graphics_item_set_selected(void *item, int is_selected) {
    static_cast<QGraphicsItem *>(item)->setSelected(is_selected != 0);
}

int qt_graphics_item_is_selected(void *item) {
    return static_cast<QGraphicsItem *>(item)->isSelected() ? 1 : 0;
}

void qt_graphics_item_set_flag(void *item, int flag, int is_enabled) {
    static_cast<QGraphicsItem *>(item)->setFlag(
        static_cast<QGraphicsItem::GraphicsItemFlag>(flag), is_enabled != 0);
}

void qt_graphics_item_set_flags(void *item, int flags) {
    static_cast<QGraphicsItem *>(item)->setFlags(
        static_cast<QGraphicsItem::GraphicsItemFlags>(flags));
}

int qt_graphics_item_get_flags(void *item) {
    return static_cast<int>(static_cast<QGraphicsItem *>(item)->flags());
}

void qt_graphics_item_set_tool_tip(void *item, const char *tooltip) {
    static_cast<QGraphicsItem *>(item)->setToolTip(QString::fromUtf8(tooltip));
}

void *qt_graphics_item_get_parent_item(void *item) {
    return static_cast<void *>(static_cast<QGraphicsItem *>(item)->parentItem());
}

void qt_graphics_item_set_parent_item(void *item, void *parent) {
    static_cast<QGraphicsItem *>(item)->setParentItem(static_cast<QGraphicsItem *>(parent));
}

void qt_graphics_item_destroy(void *item) {
    delete static_cast<QGraphicsItem *>(item);
}

void qt_graphics_item_move_by(void *item, double dx, double dy) {
    static_cast<QGraphicsItem *>(item)->moveBy(dx, dy);
}

void qt_graphics_item_get_bounding_rect(void *item, double *x, double *y, double *w, double *h) {
    QRectF r = static_cast<QGraphicsItem *>(item)->boundingRect();
    if (x) *x = r.x();
    if (y) *y = r.y();
    if (w) *w = r.width();
    if (h) *h = r.height();
}

int qt_graphics_item_collides_with_item(void *item, void *other) {
    return static_cast<QGraphicsItem *>(item)->collidesWithItem(
        static_cast<QGraphicsItem *>(other)) ? 1 : 0;
}

void qt_graphics_item_set_cursor(void *item, int shape) {
    static_cast<QGraphicsItem *>(item)->setCursor(static_cast<Qt::CursorShape>(shape));
}

void qt_graphics_item_unset_cursor(void *item) {
    static_cast<QGraphicsItem *>(item)->unsetCursor();
}

/* ── QGraphicsRectItem ─────────────────────────────────────────────── */

void *qt_graphics_rect_item_create(double x, double y, double w, double h, void *parent) {
    return static_cast<void *>(new QGraphicsRectItem(x, y, w, h, static_cast<QGraphicsItem *>(parent)));
}

void qt_graphics_rect_item_set_rect(void *item, double x, double y, double w, double h) {
    static_cast<QGraphicsRectItem *>(item)->setRect(x, y, w, h);
}

void qt_graphics_rect_item_get_rect(void *item, double *x, double *y, double *w, double *h) {
    QRectF r = static_cast<QGraphicsRectItem *>(item)->rect();
    if (x) *x = r.x();
    if (y) *y = r.y();
    if (w) *w = r.width();
    if (h) *h = r.height();
}

void qt_graphics_rect_item_set_pen(void *item, void *pen) {
    static_cast<QGraphicsRectItem *>(item)->setPen(*static_cast<QPen *>(pen));
}

void qt_graphics_rect_item_set_brush(void *item, void *brush) {
    static_cast<QGraphicsRectItem *>(item)->setBrush(*static_cast<QBrush *>(brush));
}

/* ── QGraphicsEllipseItem ──────────────────────────────────────────── */

void *qt_graphics_ellipse_item_create(double x, double y, double w, double h, void *parent) {
    return static_cast<void *>(new QGraphicsEllipseItem(x, y, w, h, static_cast<QGraphicsItem *>(parent)));
}

void qt_graphics_ellipse_item_set_rect(void *item, double x, double y, double w, double h) {
    static_cast<QGraphicsEllipseItem *>(item)->setRect(x, y, w, h);
}

void qt_graphics_ellipse_item_get_rect(void *item, double *x, double *y, double *w, double *h) {
    QRectF r = static_cast<QGraphicsEllipseItem *>(item)->rect();
    if (x) *x = r.x();
    if (y) *y = r.y();
    if (w) *w = r.width();
    if (h) *h = r.height();
}

void qt_graphics_ellipse_item_set_pen(void *item, void *pen) {
    static_cast<QGraphicsEllipseItem *>(item)->setPen(*static_cast<QPen *>(pen));
}

void qt_graphics_ellipse_item_set_brush(void *item, void *brush) {
    static_cast<QGraphicsEllipseItem *>(item)->setBrush(*static_cast<QBrush *>(brush));
}

void qt_graphics_ellipse_item_set_start_angle(void *item, int angle) {
    static_cast<QGraphicsEllipseItem *>(item)->setStartAngle(angle);
}

void qt_graphics_ellipse_item_set_span_angle(void *item, int angle) {
    static_cast<QGraphicsEllipseItem *>(item)->setSpanAngle(angle);
}

/* ── QGraphicsTextItem ─────────────────────────────────────────────── */

void *qt_graphics_text_item_create(const char *text, void *parent) {
    auto item = new QGraphicsTextItem(QString::fromUtf8(text), static_cast<QGraphicsItem *>(parent));
    return static_cast<void *>(static_cast<QGraphicsItem *>(item));
}

// Note: QGraphicsTextItem inherits from QGraphicsObject (QObject + QGraphicsItem).
// All pointers are stored as QGraphicsItem* (via void*) to avoid multiple-inheritance
// pointer adjustment issues. We cast back through QGraphicsItem* to reach the subclass.

void qt_graphics_text_item_set_text(void *item, const char *text) {
    static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->setPlainText(QString::fromUtf8(text));
}

void qt_graphics_text_item_set_html(void *item, const char *html) {
    static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->setHtml(QString::fromUtf8(html));
}

char *qt_graphics_text_item_get_text(void *item) {
    return qstring_to_heap_utf8(static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->toPlainText());
}

void qt_graphics_text_item_set_font(void *item, void *font) {
    static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->setFont(*static_cast<QFont *>(font));
}

void qt_graphics_text_item_set_default_text_colour(void *item, int r, int g, int b, int a) {
    static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->setDefaultTextColor(QColor(r, g, b, a));
}

void qt_graphics_text_item_set_text_width(void *item, double width) {
    static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->setTextWidth(width);
}

double qt_graphics_text_item_get_text_width(void *item) {
    return static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->textWidth();
}

void qt_graphics_text_item_set_text_interaction_flags(void *item, int flags) {
    static_cast<QGraphicsTextItem *>(static_cast<QGraphicsItem *>(item))->setTextInteractionFlags(
        static_cast<Qt::TextInteractionFlags>(flags));
}

/* ── QGraphicsLineItem ─────────────────────────────────────────────── */

void *qt_graphics_line_item_create(double x1, double y1, double x2, double y2, void *parent) {
    return static_cast<void *>(new QGraphicsLineItem(x1, y1, x2, y2, static_cast<QGraphicsItem *>(parent)));
}

void qt_graphics_line_item_set_line(void *item, double x1, double y1, double x2, double y2) {
    static_cast<QGraphicsLineItem *>(item)->setLine(x1, y1, x2, y2);
}

void qt_graphics_line_item_set_pen(void *item, void *pen) {
    static_cast<QGraphicsLineItem *>(item)->setPen(*static_cast<QPen *>(pen));
}

/* ── QGraphicsPixmapItem ───────────────────────────────────────────── */

void *qt_graphics_pixmap_item_create(void *pixmap, void *parent) {
    QPixmap pm = pixmap ? *static_cast<QPixmap *>(pixmap) : QPixmap();
    return static_cast<void *>(new QGraphicsPixmapItem(pm, static_cast<QGraphicsItem *>(parent)));
}

void qt_graphics_pixmap_item_set_pixmap(void *item, void *pixmap) {
    static_cast<QGraphicsPixmapItem *>(item)->setPixmap(*static_cast<QPixmap *>(pixmap));
}

void qt_graphics_pixmap_item_set_offset(void *item, double x, double y) {
    static_cast<QGraphicsPixmapItem *>(item)->setOffset(x, y);
}

void qt_graphics_pixmap_item_set_transformation_mode(void *item, int mode) {
    static_cast<QGraphicsPixmapItem *>(item)->setTransformationMode(
        static_cast<Qt::TransformationMode>(mode));
}

void qt_graphics_pixmap_item_set_shape_mode(void *item, int mode) {
    static_cast<QGraphicsPixmapItem *>(item)->setShapeMode(
        static_cast<QGraphicsPixmapItem::ShapeMode>(mode));
}

/* ── QGraphicsPathItem ─────────────────────────────────────────────── */

void *qt_graphics_path_item_create(void *path, void *parent) {
    QPainterPath pp = path ? *static_cast<QPainterPath *>(path) : QPainterPath();
    return static_cast<void *>(new QGraphicsPathItem(pp, static_cast<QGraphicsItem *>(parent)));
}

void qt_graphics_path_item_set_path(void *item, void *path) {
    static_cast<QGraphicsPathItem *>(item)->setPath(*static_cast<QPainterPath *>(path));
}

void qt_graphics_path_item_set_pen(void *item, void *pen) {
    static_cast<QGraphicsPathItem *>(item)->setPen(*static_cast<QPen *>(pen));
}

void qt_graphics_path_item_set_brush(void *item, void *brush) {
    static_cast<QGraphicsPathItem *>(item)->setBrush(*static_cast<QBrush *>(brush));
}

/* ── QGraphicsItemGroup ────────────────────────────────────────────── */

void *qt_graphics_item_group_create(void *parent) {
    auto group = new QGraphicsItemGroup(static_cast<QGraphicsItem *>(parent));
    return static_cast<void *>(group);
}

void qt_graphics_item_group_add_to_group(void *group, void *item) {
    static_cast<QGraphicsItemGroup *>(group)->addToGroup(static_cast<QGraphicsItem *>(item));
}

void qt_graphics_item_group_remove_from_group(void *group, void *item) {
    static_cast<QGraphicsItemGroup *>(group)->removeFromGroup(static_cast<QGraphicsItem *>(item));
}

/* ── QGraphicsProxyWidget ──────────────────────────────────────────── */

void *qt_graphics_proxy_widget_create(void *parent) {
    QGraphicsProxyWidget *proxy = new QGraphicsProxyWidget(static_cast<QGraphicsItem *>(parent));
    return static_cast<void *>(static_cast<QGraphicsItem *>(proxy));
}

// Note: QGraphicsProxyWidget inherits via QGraphicsObject (multiple inheritance).
// Pointers are stored as QGraphicsItem* — cast through QGraphicsItem* to reach subclass.

void qt_graphics_proxy_widget_set_widget(void *proxy, void *widget) {
    static_cast<QGraphicsProxyWidget *>(static_cast<QGraphicsItem *>(proxy))->setWidget(static_cast<QWidget *>(widget));
}

void *qt_graphics_proxy_widget_get_widget(void *proxy) {
    return static_cast<void *>(static_cast<QGraphicsProxyWidget *>(static_cast<QGraphicsItem *>(proxy))->widget());
}

/* ── QGraphicsEffect (base + subclasses) ───────────────────────────── */

void qt_graphics_effect_set_enabled(void *effect, int is_enabled) {
    static_cast<QGraphicsEffect *>(effect)->setEnabled(is_enabled != 0);
}

int qt_graphics_effect_is_enabled(void *effect) {
    return static_cast<QGraphicsEffect *>(effect)->isEnabled() ? 1 : 0;
}

void *qt_graphics_blur_effect_create(void *parent) {
    return static_cast<void *>(new QGraphicsBlurEffect(static_cast<QObject *>(parent)));
}

void qt_graphics_blur_effect_destroy(void *effect) {
    delete static_cast<QGraphicsBlurEffect *>(effect);
}

void qt_graphics_blur_effect_set_blur_radius(void *effect, double radius) {
    static_cast<QGraphicsBlurEffect *>(effect)->setBlurRadius(radius);
}

double qt_graphics_blur_effect_get_blur_radius(void *effect) {
    return static_cast<QGraphicsBlurEffect *>(effect)->blurRadius();
}

void qt_graphics_blur_effect_set_blur_hints(void *effect, int hints) {
    static_cast<QGraphicsBlurEffect *>(effect)->setBlurHints(
        static_cast<QGraphicsBlurEffect::BlurHints>(hints));
}

int qt_graphics_blur_effect_connect_blur_radius_changed(void *effect, qt_double_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsBlurEffect *>(effect), &QGraphicsBlurEffect::blurRadiusChanged, [callback, user_data](qreal radius) {
        callback(radius, user_data);
    });
    return store_connection(conn);
}

void *qt_graphics_colourize_effect_create(void *parent) {
    return static_cast<void *>(new QGraphicsColorizeEffect(static_cast<QObject *>(parent)));
}

void qt_graphics_colourize_effect_destroy(void *effect) {
    delete static_cast<QGraphicsColorizeEffect *>(effect);
}

void qt_graphics_colourize_effect_set_colour(void *effect, int r, int g, int b, int a) {
    static_cast<QGraphicsColorizeEffect *>(effect)->setColor(QColor(r, g, b, a));
}

void qt_graphics_colourize_effect_get_colour(void *effect, int *r, int *g, int *b, int *a) {
    QColor c = static_cast<QGraphicsColorizeEffect *>(effect)->color();
    if (r) *r = c.red();
    if (g) *g = c.green();
    if (b) *b = c.blue();
    if (a) *a = c.alpha();
}

void qt_graphics_colourize_effect_set_strength(void *effect, double strength) {
    static_cast<QGraphicsColorizeEffect *>(effect)->setStrength(strength);
}

double qt_graphics_colourize_effect_get_strength(void *effect) {
    return static_cast<QGraphicsColorizeEffect *>(effect)->strength();
}

int qt_graphics_colourize_effect_connect_colour_changed(void *effect, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsColorizeEffect *>(effect), &QGraphicsColorizeEffect::colorChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_graphics_colourize_effect_connect_strength_changed(void *effect, qt_double_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsColorizeEffect *>(effect), &QGraphicsColorizeEffect::strengthChanged, [callback, user_data](qreal strength) {
        callback(strength, user_data);
    });
    return store_connection(conn);
}

void *qt_graphics_drop_shadow_effect_create(void *parent) {
    return static_cast<void *>(new QGraphicsDropShadowEffect(static_cast<QObject *>(parent)));
}

void qt_graphics_drop_shadow_effect_destroy(void *effect) {
    delete static_cast<QGraphicsDropShadowEffect *>(effect);
}

void qt_graphics_drop_shadow_effect_set_blur_radius(void *effect, double radius) {
    static_cast<QGraphicsDropShadowEffect *>(effect)->setBlurRadius(radius);
}

double qt_graphics_drop_shadow_effect_get_blur_radius(void *effect) {
    return static_cast<QGraphicsDropShadowEffect *>(effect)->blurRadius();
}

void qt_graphics_drop_shadow_effect_set_colour(void *effect, int r, int g, int b, int a) {
    static_cast<QGraphicsDropShadowEffect *>(effect)->setColor(QColor(r, g, b, a));
}

void qt_graphics_drop_shadow_effect_get_colour(void *effect, int *r, int *g, int *b, int *a) {
    QColor c = static_cast<QGraphicsDropShadowEffect *>(effect)->color();
    if (r) *r = c.red();
    if (g) *g = c.green();
    if (b) *b = c.blue();
    if (a) *a = c.alpha();
}

void qt_graphics_drop_shadow_effect_set_offset(void *effect, double dx, double dy) {
    static_cast<QGraphicsDropShadowEffect *>(effect)->setOffset(dx, dy);
}

void qt_graphics_drop_shadow_effect_get_offset(void *effect, double *dx, double *dy) {
    QPointF o = static_cast<QGraphicsDropShadowEffect *>(effect)->offset();
    if (dx) *dx = o.x();
    if (dy) *dy = o.y();
}

int qt_graphics_drop_shadow_effect_connect_blur_radius_changed(void *effect, qt_double_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsDropShadowEffect *>(effect), &QGraphicsDropShadowEffect::blurRadiusChanged, [callback, user_data](qreal radius) {
        callback(radius, user_data);
    });
    return store_connection(conn);
}

int qt_graphics_drop_shadow_effect_connect_colour_changed(void *effect, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsDropShadowEffect *>(effect), &QGraphicsDropShadowEffect::colorChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

int qt_graphics_drop_shadow_effect_connect_offset_changed(void *effect, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsDropShadowEffect *>(effect), &QGraphicsDropShadowEffect::offsetChanged, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

void *qt_graphics_opacity_effect_create(void *parent) {
    return static_cast<void *>(new QGraphicsOpacityEffect(static_cast<QObject *>(parent)));
}

void qt_graphics_opacity_effect_destroy(void *effect) {
    delete static_cast<QGraphicsOpacityEffect *>(effect);
}

void qt_graphics_opacity_effect_set_opacity(void *effect, double opacity) {
    static_cast<QGraphicsOpacityEffect *>(effect)->setOpacity(opacity);
}

double qt_graphics_opacity_effect_get_opacity(void *effect) {
    return static_cast<QGraphicsOpacityEffect *>(effect)->opacity();
}

void qt_graphics_opacity_effect_set_opacity_mask(void *effect, void *brush) {
    static_cast<QGraphicsOpacityEffect *>(effect)->setOpacityMask(*static_cast<QBrush *>(brush));
}

int qt_graphics_opacity_effect_connect_opacity_changed(void *effect, qt_double_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QGraphicsOpacityEffect *>(effect), &QGraphicsOpacityEffect::opacityChanged, [callback, user_data](qreal opacity) {
        callback(opacity, user_data);
    });
    return store_connection(conn);
}

/* ── QStyle / QStyleFactory ────────────────────────────────────────── */

int qt_style_get_keys(char ***keys_out) {
    QStringList keys = QStyleFactory::keys();
    int count = keys.size();
    char **arr = static_cast<char **>(malloc(sizeof(char *) * count));
    for (int i = 0; i < count; ++i) {
        arr[i] = qstring_to_heap_utf8(keys[i]);
    }
    *keys_out = arr;
    return count;
}

void qt_style_free_keys(char **keys, int count) {
    for (int i = 0; i < count; ++i) {
        free(keys[i]);
    }
    free(keys);
}

void *qt_application_get_style(void *app) {
    (void)app;
    return static_cast<void *>(QApplication::style());
}

int qt_style_get_pixel_metric(void *style, int metric, void *widget) {
    return static_cast<QStyle *>(style)->pixelMetric(
        static_cast<QStyle::PixelMetric>(metric), nullptr, static_cast<QWidget *>(widget));
}

char *qt_style_get_name(void *style) {
    return qstring_to_heap_utf8(static_cast<QStyle *>(style)->name());
}

/* ── QScroller / QScrollerProperties ───────────────────────────────── */

void *qt_scroller_grab(void *target, int gesture_type) {
    return static_cast<void *>(QScroller::scroller(static_cast<QObject *>(target)));
}

void *qt_scroller_get_scroller(void *target) {
    return static_cast<void *>(QScroller::scroller(static_cast<QObject *>(target)));
}

void qt_scroller_set_snap_positions_x(void *scroller, double first, double interval) {
    static_cast<QScroller *>(scroller)->setSnapPositionsX(first, interval);
}

void qt_scroller_set_snap_positions_y(void *scroller, double first, double interval) {
    static_cast<QScroller *>(scroller)->setSnapPositionsY(first, interval);
}

int qt_scroller_get_state(void *scroller) {
    return static_cast<int>(static_cast<QScroller *>(scroller)->state());
}

void qt_scroller_stop(void *scroller) {
    static_cast<QScroller *>(scroller)->stop();
}

void *qt_scroller_properties_create(void *scroller) {
    auto props = new QScrollerProperties(static_cast<QScroller *>(scroller)->scrollerProperties());
    return static_cast<void *>(props);
}

void qt_scroller_properties_destroy(void *props) {
    delete static_cast<QScrollerProperties *>(props);
}

void qt_scroller_properties_set_metric(void *props, int metric, double value) {
    static_cast<QScrollerProperties *>(props)->setScrollMetric(
        static_cast<QScrollerProperties::ScrollMetric>(metric), QVariant(value));
}

double qt_scroller_properties_get_metric(void *props, int metric) {
    return static_cast<QScrollerProperties *>(props)->scrollMetric(
        static_cast<QScrollerProperties::ScrollMetric>(metric)).toDouble();
}

void qt_scroller_properties_apply(void *props, void *scroller) {
    static_cast<QScroller *>(scroller)->setScrollerProperties(*static_cast<QScrollerProperties *>(props));
}

/* ── QIdentityProxyModel ───────────────────────────────────────────── */

void *qt_identity_proxy_model_create(void *parent) {
    return static_cast<void *>(new QIdentityProxyModel(static_cast<QObject *>(parent)));
}

void qt_identity_proxy_model_destroy(void *model) {
    delete static_cast<QIdentityProxyModel *>(model);
}

void qt_identity_proxy_model_set_source_model(void *model, void *source) {
    static_cast<QIdentityProxyModel *>(model)->setSourceModel(
        static_cast<QAbstractItemModel *>(source));
}

void *qt_identity_proxy_model_get_source_model(void *model) {
    return static_cast<void *>(static_cast<QIdentityProxyModel *>(model)->sourceModel());
}

void *qt_identity_proxy_model_map_to_source(void *model, void *proxy_index) {
    QModelIndex src = static_cast<QIdentityProxyModel *>(model)->mapToSource(
        *static_cast<QModelIndex *>(proxy_index));
    return static_cast<void *>(new QPersistentModelIndex(src));
}

void *qt_identity_proxy_model_map_from_source(void *model, void *source_index) {
    QModelIndex proxy = static_cast<QIdentityProxyModel *>(model)->mapFromSource(
        *static_cast<QModelIndex *>(source_index));
    return static_cast<void *>(new QPersistentModelIndex(proxy));
}

/* ── QTransposeProxyModel ──────────────────────────────────────────── */

void *qt_transpose_proxy_model_create(void *parent) {
    return static_cast<void *>(new QTransposeProxyModel(static_cast<QObject *>(parent)));
}

void qt_transpose_proxy_model_destroy(void *model) {
    delete static_cast<QTransposeProxyModel *>(model);
}

void qt_transpose_proxy_model_set_source_model(void *model, void *source) {
    static_cast<QTransposeProxyModel *>(model)->setSourceModel(
        static_cast<QAbstractItemModel *>(source));
}

void *qt_transpose_proxy_model_get_source_model(void *model) {
    return static_cast<void *>(static_cast<QTransposeProxyModel *>(model)->sourceModel());
}

/* ── QConcatenateTablesProxyModel ──────────────────────────────────── */

void *qt_concatenate_tables_proxy_model_create(void *parent) {
    return static_cast<void *>(new QConcatenateTablesProxyModel(static_cast<QObject *>(parent)));
}

void qt_concatenate_tables_proxy_model_destroy(void *model) {
    delete static_cast<QConcatenateTablesProxyModel *>(model);
}

void qt_concatenate_tables_proxy_model_add_source_model(void *model, void *source) {
    static_cast<QConcatenateTablesProxyModel *>(model)->addSourceModel(
        static_cast<QAbstractItemModel *>(source));
}

void qt_concatenate_tables_proxy_model_remove_source_model(void *model, void *source) {
    static_cast<QConcatenateTablesProxyModel *>(model)->removeSourceModel(
        static_cast<QAbstractItemModel *>(source));
}

void *qt_concatenate_tables_proxy_model_map_to_source(void *model, void *proxy_index) {
    QModelIndex src = static_cast<QConcatenateTablesProxyModel *>(model)->mapToSource(
        *static_cast<QModelIndex *>(proxy_index));
    return static_cast<void *>(new QPersistentModelIndex(src));
}

void *qt_concatenate_tables_proxy_model_map_from_source(void *model, void *source_index, void *source_model) {
    QModelIndex proxy = static_cast<QConcatenateTablesProxyModel *>(model)->mapFromSource(
        *static_cast<QModelIndex *>(source_index));
    return static_cast<void *>(new QPersistentModelIndex(proxy));
}

/* ── QSignalMapper ─────────────────────────────────────────────────── */

void *qt_signal_mapper_create(void *parent) {
    return static_cast<void *>(new QSignalMapper(static_cast<QObject *>(parent)));
}

void qt_signal_mapper_destroy(void *mapper) {
    delete static_cast<QSignalMapper *>(mapper);
}

void qt_signal_mapper_set_mapping_int(void *mapper, void *sender, int id) {
    static_cast<QSignalMapper *>(mapper)->setMapping(static_cast<QObject *>(sender), id);
}

void qt_signal_mapper_set_mapping_string(void *mapper, void *sender, const char *text) {
    static_cast<QSignalMapper *>(mapper)->setMapping(
        static_cast<QObject *>(sender), QString::fromUtf8(text));
}

void qt_signal_mapper_set_mapping_widget(void *mapper, void *sender, void *widget) {
    static_cast<QSignalMapper *>(mapper)->setMapping(
        static_cast<QObject *>(sender), static_cast<QObject *>(widget));
}

void qt_signal_mapper_remove_mappings(void *mapper, void *sender) {
    static_cast<QSignalMapper *>(mapper)->removeMappings(static_cast<QObject *>(sender));
}

void qt_signal_mapper_map(void *mapper, void *sender) {
    static_cast<QSignalMapper *>(mapper)->map(static_cast<QObject *>(sender));
}

int qt_signal_mapper_connect_mapped_int(void *mapper, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSignalMapper *>(mapper), &QSignalMapper::mappedInt, [callback, user_data](int id) {
        callback(id, user_data);
    });
    return store_connection(conn);
}

int qt_signal_mapper_connect_mapped_string(void *mapper, qt_string_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QSignalMapper *>(mapper), &QSignalMapper::mappedString, [callback, user_data](const QString &text) {
        QByteArray utf8 = text.toUtf8();
        callback(utf8.constData(), user_data);
    });
    return store_connection(conn);
}

/* ── QLockFile ─────────────────────────────────────────────────────── */

void *qt_lock_file_create(const char *file_path) {
    return static_cast<void *>(new QLockFile(QString::fromUtf8(file_path)));
}

void qt_lock_file_destroy(void *lock) {
    delete static_cast<QLockFile *>(lock);
}

int qt_lock_file_lock(void *lock) {
    return static_cast<QLockFile *>(lock)->lock() ? 1 : 0;
}

int qt_lock_file_try_lock(void *lock, int timeout_ms) {
    return static_cast<QLockFile *>(lock)->tryLock(timeout_ms) ? 1 : 0;
}

void qt_lock_file_unlock(void *lock) {
    static_cast<QLockFile *>(lock)->unlock();
}

int qt_lock_file_is_locked(void *lock) {
    return static_cast<QLockFile *>(lock)->isLocked() ? 1 : 0;
}

int qt_lock_file_get_error(void *lock) {
    return static_cast<int>(static_cast<QLockFile *>(lock)->error());
}

void qt_lock_file_set_stale_lock_time(void *lock, int msecs) {
    static_cast<QLockFile *>(lock)->setStaleLockTime(msecs);
}

int qt_lock_file_get_stale_lock_time(void *lock) {
    return static_cast<int>(static_cast<QLockFile *>(lock)->staleLockTime());
}

int qt_lock_file_remove_stale_lock_file(void *lock) {
    return static_cast<QLockFile *>(lock)->removeStaleLockFile() ? 1 : 0;
}

/* ── QTimeLine ─────────────────────────────────────────────────────── */

void *qt_time_line_create(int duration_ms, void *parent) {
    return static_cast<void *>(new QTimeLine(duration_ms, static_cast<QObject *>(parent)));
}

void qt_time_line_destroy(void *timeline) {
    delete static_cast<QTimeLine *>(timeline);
}

void qt_time_line_start(void *timeline) {
    static_cast<QTimeLine *>(timeline)->start();
}

void qt_time_line_stop(void *timeline) {
    static_cast<QTimeLine *>(timeline)->stop();
}

void qt_time_line_resume(void *timeline) {
    static_cast<QTimeLine *>(timeline)->resume();
}

void qt_time_line_set_paused(void *timeline, int is_paused) {
    static_cast<QTimeLine *>(timeline)->setPaused(is_paused != 0);
}

int qt_time_line_get_state(void *timeline) {
    return static_cast<int>(static_cast<QTimeLine *>(timeline)->state());
}

void qt_time_line_set_duration(void *timeline, int duration_ms) {
    static_cast<QTimeLine *>(timeline)->setDuration(duration_ms);
}

int qt_time_line_get_duration(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->duration();
}

void qt_time_line_set_frame_range(void *timeline, int start, int end) {
    static_cast<QTimeLine *>(timeline)->setFrameRange(start, end);
}

int qt_time_line_get_start_frame(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->startFrame();
}

int qt_time_line_get_end_frame(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->endFrame();
}

int qt_time_line_get_current_frame(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->currentFrame();
}

double qt_time_line_get_current_value(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->currentValue();
}

void qt_time_line_set_current_time(void *timeline, int msec) {
    static_cast<QTimeLine *>(timeline)->setCurrentTime(msec);
}

int qt_time_line_get_current_time(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->currentTime();
}

void qt_time_line_set_loop_count(void *timeline, int count) {
    static_cast<QTimeLine *>(timeline)->setLoopCount(count);
}

int qt_time_line_get_loop_count(void *timeline) {
    return static_cast<QTimeLine *>(timeline)->loopCount();
}

void qt_time_line_set_direction(void *timeline, int direction) {
    static_cast<QTimeLine *>(timeline)->setDirection(
        static_cast<QTimeLine::Direction>(direction));
}

int qt_time_line_get_direction(void *timeline) {
    return static_cast<int>(static_cast<QTimeLine *>(timeline)->direction());
}

void qt_time_line_set_easing_curve(void *timeline, int curve_type) {
    static_cast<QTimeLine *>(timeline)->setEasingCurve(
        static_cast<QEasingCurve::Type>(curve_type));
}

void qt_time_line_set_update_interval(void *timeline, int interval_ms) {
    static_cast<QTimeLine *>(timeline)->setUpdateInterval(interval_ms);
}

int qt_time_line_connect_value_changed(void *timeline, qt_double_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTimeLine *>(timeline), &QTimeLine::valueChanged, [callback, user_data](qreal value) {
        callback(value, user_data);
    });
    return store_connection(conn);
}

int qt_time_line_connect_frame_changed(void *timeline, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTimeLine *>(timeline), &QTimeLine::frameChanged, [callback, user_data](int frame) {
        callback(frame, user_data);
    });
    return store_connection(conn);
}

int qt_time_line_connect_state_changed(void *timeline, qt_int_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTimeLine *>(timeline), &QTimeLine::stateChanged, [callback, user_data](QTimeLine::State state) {
        callback(static_cast<int>(state), user_data);
    });
    return store_connection(conn);
}

int qt_time_line_connect_finished(void *timeline, qt_callback_t callback, void *user_data) {
    auto conn = QObject::connect(static_cast<QTimeLine *>(timeline), &QTimeLine::finished, [callback, user_data]() {
        callback(user_data);
    });
    return store_connection(conn);
}

/* ── QCalendar ─────────────────────────────────────────────────────── */

void *qt_calendar_create(void) {
    return static_cast<void *>(new QCalendar());
}

void *qt_calendar_create_with_system(int system) {
    return static_cast<void *>(new QCalendar(static_cast<QCalendar::System>(system)));
}

void qt_calendar_destroy(void *calendar) {
    delete static_cast<QCalendar *>(calendar);
}

int qt_calendar_is_valid(void *calendar) {
    return static_cast<QCalendar *>(calendar)->isValid() ? 1 : 0;
}

int qt_calendar_get_days_in_month(void *calendar, int month, int year) {
    return static_cast<QCalendar *>(calendar)->daysInMonth(month, year);
}

int qt_calendar_get_days_in_year(void *calendar, int year) {
    return static_cast<QCalendar *>(calendar)->daysInYear(year);
}

int qt_calendar_get_months_in_year(void *calendar, int year) {
    return static_cast<QCalendar *>(calendar)->monthsInYear(year);
}

int qt_calendar_is_date_valid(void *calendar, int year, int month, int day) {
    return static_cast<QCalendar *>(calendar)->isDateValid(year, month, day) ? 1 : 0;
}

int qt_calendar_is_gregorian(void *calendar) {
    return static_cast<QCalendar *>(calendar)->isGregorian() ? 1 : 0;
}

int qt_calendar_is_leap_year(void *calendar, int year) {
    return static_cast<QCalendar *>(calendar)->isLeapYear(year) ? 1 : 0;
}

int qt_calendar_get_maximum_days_in_month(void *calendar) {
    return static_cast<QCalendar *>(calendar)->maximumDaysInMonth();
}

int qt_calendar_get_maximum_months_in_year(void *calendar) {
    return static_cast<QCalendar *>(calendar)->maximumMonthsInYear();
}

/* ── QRandomGenerator ──────────────────────────────────────────────── */

unsigned int qt_random_generator_generate(void) {
    return QRandomGenerator::global()->generate();
}

unsigned int qt_random_generator_generate_bounded_int(int highest) {
    return QRandomGenerator::global()->bounded(highest);
}

unsigned int qt_random_generator_generate_bounded_range(int lowest, int highest) {
    return QRandomGenerator::global()->bounded(lowest, highest);
}

double qt_random_generator_generate_double(void) {
    return QRandomGenerator::global()->generateDouble();
}

/* ── QEventLoop ────────────────────────────────────────────────────── */

void *qt_event_loop_create(void *parent) {
    return static_cast<void *>(new QEventLoop(static_cast<QObject *>(parent)));
}

void qt_event_loop_destroy(void *loop) {
    delete static_cast<QEventLoop *>(loop);
}

int qt_event_loop_exec(void *loop, int flags) {
    return static_cast<QEventLoop *>(loop)->exec(
        static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

void qt_event_loop_exit(void *loop, int return_code) {
    static_cast<QEventLoop *>(loop)->exit(return_code);
}

void qt_event_loop_quit(void *loop) {
    static_cast<QEventLoop *>(loop)->quit();
}

int qt_event_loop_is_running(void *loop) {
    return static_cast<QEventLoop *>(loop)->isRunning() ? 1 : 0;
}

void qt_event_loop_process_events(void *loop, int flags) {
    static_cast<QEventLoop *>(loop)->processEvents(
        static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

void qt_event_loop_wake_up(void *loop) {
    static_cast<QEventLoop *>(loop)->wakeUp();
}

/* ── QSysInfo ──────────────────────────────────────────────────────── */

char *qt_sys_info_get_product_type(void) {
    return qstring_to_heap_utf8(QSysInfo::productType());
}

char *qt_sys_info_get_product_version(void) {
    return qstring_to_heap_utf8(QSysInfo::productVersion());
}

char *qt_sys_info_get_pretty_product_name(void) {
    return qstring_to_heap_utf8(QSysInfo::prettyProductName());
}

char *qt_sys_info_get_kernel_type(void) {
    return qstring_to_heap_utf8(QSysInfo::kernelType());
}

char *qt_sys_info_get_kernel_version(void) {
    return qstring_to_heap_utf8(QSysInfo::kernelVersion());
}

char *qt_sys_info_get_cpu_architecture(void) {
    return qstring_to_heap_utf8(QSysInfo::currentCpuArchitecture());
}

char *qt_sys_info_get_build_abi(void) {
    return qstring_to_heap_utf8(QSysInfo::buildAbi());
}

char *qt_sys_info_get_build_cpu_architecture(void) {
    return qstring_to_heap_utf8(QSysInfo::buildCpuArchitecture());
}

char *qt_sys_info_get_machine_host_name(void) {
    return qstring_to_heap_utf8(QSysInfo::machineHostName());
}

char *qt_sys_info_get_machine_unique_id(void) {
    QByteArray id = QSysInfo::machineUniqueId();
    char *result = static_cast<char *>(malloc(id.size() + 1));
    memcpy(result, id.constData(), id.size());
    result[id.size()] = '\0';
    return result;
}

char *qt_sys_info_get_boot_unique_id(void) {
    QByteArray id = QSysInfo::bootUniqueId();
    char *result = static_cast<char *>(malloc(id.size() + 1));
    memcpy(result, id.constData(), id.size());
    result[id.size()] = '\0';
    return result;
}

/* ── QLibrary ──────────────────────────────────────────────────────── */

void *qt_library_create(const char *file_path, void *parent) {
    return static_cast<void *>(new QLibrary(QString::fromUtf8(file_path), static_cast<QObject *>(parent)));
}

void qt_library_destroy(void *library) {
    delete static_cast<QLibrary *>(library);
}

int qt_library_load(void *library) {
    return static_cast<QLibrary *>(library)->load() ? 1 : 0;
}

int qt_library_unload(void *library) {
    return static_cast<QLibrary *>(library)->unload() ? 1 : 0;
}

int qt_library_is_loaded(void *library) {
    return static_cast<QLibrary *>(library)->isLoaded() ? 1 : 0;
}

void *qt_library_resolve(void *library, const char *symbol) {
    return reinterpret_cast<void *>(static_cast<QLibrary *>(library)->resolve(symbol));
}

char *qt_library_get_error_string(void *library) {
    return qstring_to_heap_utf8(static_cast<QLibrary *>(library)->errorString());
}

void qt_library_set_file_name(void *library, const char *file_path) {
    static_cast<QLibrary *>(library)->setFileName(QString::fromUtf8(file_path));
}

char *qt_library_get_file_name(void *library) {
    return qstring_to_heap_utf8(static_cast<QLibrary *>(library)->fileName());
}

void qt_library_set_load_hints(void *library, int hints) {
    static_cast<QLibrary *>(library)->setLoadHints(
        static_cast<QLibrary::LoadHints>(hints));
}

int qt_library_get_load_hints(void *library) {
    return static_cast<int>(static_cast<QLibrary *>(library)->loadHints());
}

int qt_library_is_library(const char *file_path) {
    return QLibrary::isLibrary(QString::fromUtf8(file_path)) ? 1 : 0;
}

/* ── QSharedMemory ─────────────────────────────────────────────────── */

void *qt_shared_memory_create(const char *key, void *parent) {
    return static_cast<void *>(new QSharedMemory(QString::fromUtf8(key), static_cast<QObject *>(parent)));
}

void qt_shared_memory_destroy(void *shm) {
    delete static_cast<QSharedMemory *>(shm);
}

int qt_shared_memory_create_segment(void *shm, int size, int mode) {
    return static_cast<QSharedMemory *>(shm)->create(size,
        static_cast<QSharedMemory::AccessMode>(mode)) ? 1 : 0;
}

int qt_shared_memory_attach(void *shm, int mode) {
    return static_cast<QSharedMemory *>(shm)->attach(
        static_cast<QSharedMemory::AccessMode>(mode)) ? 1 : 0;
}

int qt_shared_memory_detach(void *shm) {
    return static_cast<QSharedMemory *>(shm)->detach() ? 1 : 0;
}

int qt_shared_memory_is_attached(void *shm) {
    return static_cast<QSharedMemory *>(shm)->isAttached() ? 1 : 0;
}

void *qt_shared_memory_get_data(void *shm) {
    return static_cast<QSharedMemory *>(shm)->data();
}

int qt_shared_memory_get_size(void *shm) {
    return static_cast<QSharedMemory *>(shm)->size();
}

int qt_shared_memory_lock(void *shm) {
    return static_cast<QSharedMemory *>(shm)->lock() ? 1 : 0;
}

int qt_shared_memory_unlock(void *shm) {
    return static_cast<QSharedMemory *>(shm)->unlock() ? 1 : 0;
}

char *qt_shared_memory_get_error_string(void *shm) {
    return qstring_to_heap_utf8(static_cast<QSharedMemory *>(shm)->errorString());
}

int qt_shared_memory_get_error(void *shm) {
    return static_cast<int>(static_cast<QSharedMemory *>(shm)->error());
}

void qt_shared_memory_set_key(void *shm, const char *key) {
    static_cast<QSharedMemory *>(shm)->setKey(QString::fromUtf8(key));
}

void qt_shared_memory_set_native_key(void *shm, const char *key) {
    static_cast<QSharedMemory *>(shm)->setNativeKey(QString::fromUtf8(key));
}

char *qt_shared_memory_get_native_key(void *shm) {
    return qstring_to_heap_utf8(static_cast<QSharedMemory *>(shm)->nativeKey());
}

/* ── QSystemSemaphore ──────────────────────────────────────────────── */

void *qt_system_semaphore_create(const char *key, int initial_value, int mode) {
    return static_cast<void *>(new QSystemSemaphore(
        QString::fromUtf8(key), initial_value,
        static_cast<QSystemSemaphore::AccessMode>(mode)));
}

void qt_system_semaphore_destroy(void *sem) {
    delete static_cast<QSystemSemaphore *>(sem);
}

int qt_system_semaphore_acquire(void *sem) {
    return static_cast<QSystemSemaphore *>(sem)->acquire() ? 1 : 0;
}

int qt_system_semaphore_release(void *sem, int count) {
    return static_cast<QSystemSemaphore *>(sem)->release(count) ? 1 : 0;
}

char *qt_system_semaphore_get_error_string(void *sem) {
    return qstring_to_heap_utf8(static_cast<QSystemSemaphore *>(sem)->errorString());
}

int qt_system_semaphore_get_error(void *sem) {
    return static_cast<int>(static_cast<QSystemSemaphore *>(sem)->error());
}

void qt_system_semaphore_set_key(void *sem, const char *key, int initial_value, int mode) {
    static_cast<QSystemSemaphore *>(sem)->setKey(
        QString::fromUtf8(key), initial_value,
        static_cast<QSystemSemaphore::AccessMode>(mode));
}

} /* extern "C" */
