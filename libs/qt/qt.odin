#+vet explicit-allocators
package qt

import "core:c"

foreign import qt_lib {
	"wrapper/qt_wrapper.lib",
	"../qt6-static/lib/Qt6Widgets.lib",
	"../qt6-static/lib/Qt6Gui.lib",
	"../qt6-static/lib/Qt6Core.lib",
	"../qt6-static/lib/Qt6PrintSupport.lib",
	"../qt6-static/lib/Qt6OpenGL.lib",
	"../qt6-static/lib/Qt6BundledHarfbuzz.lib",
	"../qt6-static/lib/Qt6BundledFreetype.lib",
	"../qt6-static/lib/Qt6BundledLibpng.lib",
	"../qt6-static/lib/Qt6BundledPcre2.lib",
	"../qt6-static/lib/Qt6BundledZLIB.lib",
	"../qt6-static/plugins/platforms/qwindows.lib",
	"../qt6-static/plugins/styles/qmodernwindowsstyle.lib",
	"system:user32.lib",
	"system:gdi32.lib",
	"system:shell32.lib",
	"system:ole32.lib",
	"system:advapi32.lib",
	"system:ws2_32.lib",
	"system:dwmapi.lib",
	"system:uxtheme.lib",
	"system:imm32.lib",
	"system:winmm.lib",
	"system:version.lib",
	"system:setupapi.lib",
	"system:shlwapi.lib",
	"system:opengl32.lib",
	"system:uuid.lib",
	"system:oleaut32.lib",
	"system:winspool.lib",
	"system:comdlg32.lib",
	"system:wtsapi32.lib",
	"system:userenv.lib",
	"system:netapi32.lib",
	"system:mpr.lib",
	"system:authz.lib",
	"system:synchronization.lib",
	"system:shcore.lib",
	"system:d3d9.lib",
	"system:d3d11.lib",
	"system:d3d12.lib",
	"system:dxgi.lib",
	"system:dxguid.lib",
	"system:d2d1.lib",
	"system:dwrite.lib",
	"system:runtimeobject.lib",
	"system:uiautomationcore.lib",
	"system:msvcrt.lib",
	"system:ucrt.lib",
	"system:vcruntime.lib",
}

/* ── Opaque handle types ───────────────────────────────────────────── */

Application :: distinct rawptr // https://doc.qt.io/qt-6.8/qapplication.html
Main_Window :: distinct rawptr // https://doc.qt.io/qt-6.8/qmainwindow.html
Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qwidget.html
Label :: distinct rawptr // https://doc.qt.io/qt-6.8/qlabel.html
Push_Button :: distinct rawptr // https://doc.qt.io/qt-6.8/qpushbutton.html
Radio_Button :: distinct rawptr // https://doc.qt.io/qt-6.8/qradiobutton.html
Line_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qlineedit.html
Text_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextedit.html
Plain_Text_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qplaintextedit.html
Check_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qcheckbox.html
Combo_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qcombobox.html
Slider :: distinct rawptr // https://doc.qt.io/qt-6.8/qslider.html
Progress_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qprogressbar.html
Spin_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qspinbox.html
Double_Spin_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qdoublespinbox.html
Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qlayout.html
Menu_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qmenubar.html
Menu :: distinct rawptr // https://doc.qt.io/qt-6.8/qmenu.html
Action :: distinct rawptr // https://doc.qt.io/qt-6.8/qaction.html
Tool_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qtoolbar.html
Tab_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qtabwidget.html
Group_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qgroupbox.html
List_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qlistwidget.html
List_Widget_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qlistwidgetitem.html
Tree_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qtreewidget.html
Tree_Widget_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qtreewidgetitem.html
Table_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qtablewidget.html
Table_Widget_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qtablewidgetitem.html
Scroll_Area :: distinct rawptr // https://doc.qt.io/qt-6.8/qscrollarea.html
Splitter :: distinct rawptr // https://doc.qt.io/qt-6.8/qsplitter.html
Stacked_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qstackedwidget.html
Frame :: distinct rawptr // https://doc.qt.io/qt-6.8/qframe.html
Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qdialog.html
Dock_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qdockwidget.html
Status_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qstatusbar.html
Timer :: distinct rawptr // https://doc.qt.io/qt-6.8/qtimer.html
Pixmap :: distinct rawptr // https://doc.qt.io/qt-6.8/qpixmap.html
Icon :: distinct rawptr // https://doc.qt.io/qt-6.8/qicon.html
Shortcut :: distinct rawptr // https://doc.qt.io/qt-6.8/qshortcut.html
Dialog_Button_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html
Tool_Button :: distinct rawptr // https://doc.qt.io/qt-6.8/qtoolbutton.html
Button_Group :: distinct rawptr // https://doc.qt.io/qt-6.8/qbuttongroup.html
Calendar_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qcalendarwidget.html
Date_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qdateedit.html
Time_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qtimeedit.html
Date_Time_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qdatetimeedit.html
Dial :: distinct rawptr // https://doc.qt.io/qt-6.8/qdial.html
Progress_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qprogressdialog.html
Text_Browser :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextbrowser.html
Header_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qheaderview.html
System_Tray_Icon :: distinct rawptr // https://doc.qt.io/qt-6.8/qsystemtrayicon.html
Settings :: distinct rawptr // https://doc.qt.io/qt-6.8/qsettings.html
Font_Metrics :: distinct rawptr // https://doc.qt.io/qt-6.8/qfontmetrics.html
Completer :: distinct rawptr // https://doc.qt.io/qt-6.8/qcompleter.html
Validator :: distinct rawptr // https://doc.qt.io/qt-6.8/qvalidator.html
Event_Filter :: distinct rawptr
Layout_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qlayoutitem.html
Spacer_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qspaceritem.html
Connection_Id :: distinct c.int
Standard_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qstandarditem.html
Standard_Item_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qstandarditemmodel.html
Abstract_Item_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qabstractitemmodel.html
Model_Index :: distinct rawptr // https://doc.qt.io/qt-6.8/qmodelindex.html
File_System_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qfilesystemmodel.html
Sort_Filter_Proxy_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html
Tree_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qtreeview.html
Table_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qtableview.html
List_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qlistview.html
Paintable_Widget :: distinct rawptr
Painter :: distinct rawptr // https://doc.qt.io/qt-6.8/qpainter.html
Text_Char_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextcharformat.html
Syntax_Highlighter :: distinct rawptr // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html
Property_Animation :: distinct rawptr // https://doc.qt.io/qt-6.8/qpropertyanimation.html
Parallel_Animation_Group :: distinct rawptr // https://doc.qt.io/qt-6.8/qparallelanimationgroup.html
Sequential_Animation_Group :: distinct rawptr // https://doc.qt.io/qt-6.8/qsequentialanimationgroup.html
Pause_Animation :: distinct rawptr // https://doc.qt.io/qt-6.8/qpauseanimation.html
Drag :: distinct rawptr // https://doc.qt.io/qt-6.8/qdrag.html
Polygon :: distinct rawptr // https://doc.qt.io/qt-6.8/qpolygon.html
Polygon_F :: distinct rawptr // https://doc.qt.io/qt-6.8/qpolygonf.html
Drag_Drop_Filter :: distinct rawptr
Tab_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qtabbar.html
Tool_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qtoolbox.html
Scroll_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qscrollbar.html
LCD_Number :: distinct rawptr // https://doc.qt.io/qt-6.8/qlcdnumber.html
Command_Link_Button :: distinct rawptr // https://doc.qt.io/qt-6.8/qcommandlinkbutton.html
Key_Sequence_Edit :: distinct rawptr // https://doc.qt.io/qt-6.8/qkeysequenceedit.html
Font_Combo_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qfontcombobox.html
Splash_Screen :: distinct rawptr // https://doc.qt.io/qt-6.8/qsplashscreen.html
Stacked_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qstackedlayout.html
Widget_Action :: distinct rawptr // https://doc.qt.io/qt-6.8/qwidgetaction.html
Action_Group :: distinct rawptr // https://doc.qt.io/qt-6.8/qactiongroup.html
Error_Message :: distinct rawptr // https://doc.qt.io/qt-6.8/qerrormessage.html
Mdi_Area :: distinct rawptr // https://doc.qt.io/qt-6.8/qmdiarea.html
Mdi_Sub_Window :: distinct rawptr // https://doc.qt.io/qt-6.8/qmdisubwindow.html
Wizard :: distinct rawptr // https://doc.qt.io/qt-6.8/qwizard.html
Wizard_Page :: distinct rawptr // https://doc.qt.io/qt-6.8/qwizardpage.html
Column_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qcolumnview.html
Undo_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qundoview.html
Undo_Stack :: distinct rawptr // https://doc.qt.io/qt-6.8/qundostack.html
Undo_Group :: distinct rawptr // https://doc.qt.io/qt-6.8/qundogroup.html
Rubber_Band :: distinct rawptr // https://doc.qt.io/qt-6.8/qrubberband.html
Focus_Frame :: distinct rawptr // https://doc.qt.io/qt-6.8/qfocusframe.html
Size_Grip :: distinct rawptr // https://doc.qt.io/qt-6.8/qsizegrip.html
Image :: distinct rawptr // https://doc.qt.io/qt-6.8/qimage.html
Colour_Handle :: distinct rawptr // https://doc.qt.io/qt-6.8/qcolor.html
Font_Handle :: distinct rawptr // https://doc.qt.io/qt-6.8/qfont.html
Pen :: distinct rawptr // https://doc.qt.io/qt-6.8/qpen.html
Brush :: distinct rawptr // https://doc.qt.io/qt-6.8/qbrush.html
Palette :: distinct rawptr // https://doc.qt.io/qt-6.8/qpalette.html
Cursor_Handle :: distinct rawptr // https://doc.qt.io/qt-6.8/qcursor.html
Painter_Path :: distinct rawptr // https://doc.qt.io/qt-6.8/qpainterpath.html
Transform :: distinct rawptr // https://doc.qt.io/qt-6.8/qtransform.html
Region :: distinct rawptr // https://doc.qt.io/qt-6.8/qregion.html
Gradient :: distinct rawptr // https://doc.qt.io/qt-6.8/qgradient.html
Text_Cursor :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextcursor.html
Text_Document :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextdocument.html
Text_Block :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextblock.html
Text_Option :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextoption.html
Key_Sequence :: distinct rawptr // https://doc.qt.io/qt-6.8/qkeysequence.html
Movie :: distinct rawptr // https://doc.qt.io/qt-6.8/qmovie.html
Image_Reader :: distinct rawptr // https://doc.qt.io/qt-6.8/qimagereader.html
Image_Writer :: distinct rawptr // https://doc.qt.io/qt-6.8/qimagewriter.html
Bitmap :: distinct rawptr // https://doc.qt.io/qt-6.8/qbitmap.html
Static_Text :: distinct rawptr // https://doc.qt.io/qt-6.8/qstatictext.html
Picture :: distinct rawptr // https://doc.qt.io/qt-6.8/qpicture.html
Page_Size :: distinct rawptr // https://doc.qt.io/qt-6.8/qpagesize.html
Page_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qpagelayout.html
File :: distinct rawptr // https://doc.qt.io/qt-6.8/qfile.html
File_Info :: distinct rawptr // https://doc.qt.io/qt-6.8/qfileinfo.html
Dir :: distinct rawptr // https://doc.qt.io/qt-6.8/qdir.html
Process :: distinct rawptr // https://doc.qt.io/qt-6.8/qprocess.html
Mutex :: distinct rawptr // https://doc.qt.io/qt-6.8/qmutex.html
Read_Write_Lock :: distinct rawptr // https://doc.qt.io/qt-6.8/qreadwritelock.html
Semaphore :: distinct rawptr // https://doc.qt.io/qt-6.8/qsemaphore.html
Buffer :: distinct rawptr // https://doc.qt.io/qt-6.8/qbuffer.html
Json_Document :: distinct rawptr // https://doc.qt.io/qt-6.8/qjsondocument.html
Json_Object :: distinct rawptr // https://doc.qt.io/qt-6.8/qjsonobject.html
Json_Array :: distinct rawptr // https://doc.qt.io/qt-6.8/qjsonarray.html
Xml_Stream_Reader :: distinct rawptr // https://doc.qt.io/qt-6.8/qxmlstreamreader.html
Xml_Stream_Writer :: distinct rawptr // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html
Date_Time :: distinct rawptr // https://doc.qt.io/qt-6.8/qdatetime.html
Date :: distinct rawptr // https://doc.qt.io/qt-6.8/qdate.html
Time_Handle :: distinct rawptr // https://doc.qt.io/qt-6.8/qtime.html
Locale :: distinct rawptr // https://doc.qt.io/qt-6.8/qlocale.html
Regex :: distinct rawptr // https://doc.qt.io/qt-6.8/qregularexpression.html
Regex_Match :: distinct rawptr // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html
Url :: distinct rawptr // https://doc.qt.io/qt-6.8/qurl.html
Uuid :: distinct rawptr // https://doc.qt.io/qt-6.8/quuid.html
Elapsed_Timer :: distinct rawptr // https://doc.qt.io/qt-6.8/qelapsedtimer.html
Crypto_Hash :: distinct rawptr // https://doc.qt.io/qt-6.8/qcryptographichash.html
Mime_Database :: distinct rawptr // https://doc.qt.io/qt-6.8/qmimedatabase.html
Storage_Info :: distinct rawptr // https://doc.qt.io/qt-6.8/qstorageinfo.html
Version_Number :: distinct rawptr // https://doc.qt.io/qt-6.8/qversionnumber.html
Translator :: distinct rawptr // https://doc.qt.io/qt-6.8/qtranslator.html
Command_Line_Parser :: distinct rawptr // https://doc.qt.io/qt-6.8/qcommandlineparser.html
Temporary_File :: distinct rawptr // https://doc.qt.io/qt-6.8/qtemporaryfile.html
Temporary_Dir :: distinct rawptr // https://doc.qt.io/qt-6.8/qtemporarydir.html
Save_File :: distinct rawptr // https://doc.qt.io/qt-6.8/qsavefile.html
File_System_Watcher :: distinct rawptr // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html
String_List_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qstringlistmodel.html
Item_Selection_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qitemselectionmodel.html
Undo_Command :: distinct rawptr // https://doc.qt.io/qt-6.8/qundocommand.html
Data_Widget_Mapper :: distinct rawptr // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html
Styled_Item_Delegate :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleditemdelegate.html
Item_Delegate :: distinct rawptr // https://doc.qt.io/qt-6.8/qitemdelegate.html
Graphics_Scene :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsscene.html
Graphics_View :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsview.html
Graphics_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsitem.html
Graphics_Rect_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsrectitem.html
Graphics_Ellipse_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsellipseitem.html
Graphics_Text_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicstextitem.html
Graphics_Line_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicslineitem.html
Graphics_Pixmap_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html
Graphics_Path_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicspathitem.html
Graphics_Polygon_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicspolygonitem.html
Graphics_Simple_Text_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicssimpletextitem.html
Graphics_Item_Group :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsitemgroup.html
Graphics_Proxy_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsproxywidget.html
Graphics_Effect :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicseffect.html
Graphics_Blur_Effect :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html
Graphics_Colourize_Effect :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html
Graphics_Drop_Shadow_Effect :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html
Graphics_Opacity_Effect :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html
Style :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyle.html
Scroller :: distinct rawptr // https://doc.qt.io/qt-6.8/qscroller.html
Scroller_Properties :: distinct rawptr // https://doc.qt.io/qt-6.8/qscrollerproperties.html
Identity_Proxy_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qidentityproxymodel.html
Transpose_Proxy_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qtransposeproxymodel.html
Concatenate_Tables_Proxy_Model :: distinct rawptr // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html
Signal_Mapper :: distinct rawptr // https://doc.qt.io/qt-6.8/qsignalmapper.html
Lock_File :: distinct rawptr // https://doc.qt.io/qt-6.8/qlockfile.html
Time_Line :: distinct rawptr // https://doc.qt.io/qt-6.8/qtimeline.html
Calendar :: distinct rawptr // https://doc.qt.io/qt-6.8/qcalendar.html
Event_Loop :: distinct rawptr // https://doc.qt.io/qt-6.8/qeventloop.html
Library :: distinct rawptr // https://doc.qt.io/qt-6.8/qlibrary.html
Shared_Memory :: distinct rawptr // https://doc.qt.io/qt-6.8/qsharedmemory.html
System_Semaphore :: distinct rawptr // https://doc.qt.io/qt-6.8/qsystemsemaphore.html
Deadline_Timer :: distinct rawptr // https://doc.qt.io/qt-6.8/qdeadlinetimer.html
Collator :: distinct rawptr // https://doc.qt.io/qt-6.8/qcollator.html
Pdf_Writer :: distinct rawptr // https://doc.qt.io/qt-6.8/qpdfwriter.html
Printer :: distinct rawptr // https://doc.qt.io/qt-6.8/qprinter.html
Printer_Info :: distinct rawptr // https://doc.qt.io/qt-6.8/qprinterinfo.html
Print_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qprintdialog.html
Page_Setup_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qpagesetupdialog.html
Print_Preview_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qprintpreviewdialog.html
Print_Preview_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html
Text_Stream :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextstream.html
Data_Stream :: distinct rawptr // https://doc.qt.io/qt-6.8/qdatastream.html
Text_Table :: distinct rawptr // https://doc.qt.io/qt-6.8/qtexttable.html
Text_List :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextlist.html
Text_Frame :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextframe.html
Custom_Item_Model :: distinct rawptr
Mime_Data :: distinct rawptr // https://doc.qt.io/qt-6.8/qmimedata.html
Painter_Path_Stroker :: distinct rawptr // https://doc.qt.io/qt-6.8/qpainterpathstroker.html
Text_Block_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextblockformat.html
Text_List_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextlistformat.html
Text_Image_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextimageformat.html
Text_Frame_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextframeformat.html
Text_Table_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtexttableformat.html
Text_Table_Cell_Format :: distinct rawptr // https://doc.qt.io/qt-6.8/qtexttablecellformat.html
Text_Document_Fragment :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html
Text_Document_Writer :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextdocumentwriter.html
Proxy_Style :: distinct rawptr // https://doc.qt.io/qt-6.8/qproxystyle.html
Dir_Iterator :: distinct rawptr // https://doc.qt.io/qt-6.8/qdiriterator.html
Time_Zone :: distinct rawptr // https://doc.qt.io/qt-6.8/qtimezone.html
Graphics_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicswidget.html
Graphics_Linear_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html
Graphics_Grid_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html
Tree_Widget_Item_Iterator :: distinct rawptr // https://doc.qt.io/qt-6.8/qtreewidgetitemiterator.html
File_Icon_Provider :: distinct rawptr // https://doc.qt.io/qt-6.8/qfileiconprovider.html
Font_Info :: distinct rawptr // https://doc.qt.io/qt-6.8/qfontinfo.html
Font_Metrics_F :: distinct rawptr // https://doc.qt.io/qt-6.8/qfontmetricsf.html
Url_Query :: distinct rawptr // https://doc.qt.io/qt-6.8/qurlquery.html
Colour_Space :: distinct rawptr // https://doc.qt.io/qt-6.8/qcolorspace.html
Colour_Transform :: distinct rawptr // https://doc.qt.io/qt-6.8/qcolortransform.html
Text_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextlayout.html
Text_Line :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextline.html
Graphics_Object :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsobject.html
Graphics_Anchor_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html
Graphics_Anchor :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsanchor.html
Graphics_Item_Animation :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html
Graphics_Scene_Mouse_Event :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html
Graphics_Scene_Hover_Event :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html
Graphics_Scene_Wheel_Event :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html
Graphics_Scene_Context_Menu_Event :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsscenecontextmenuevent.html
Graphics_Scene_Drag_Drop_Event :: distinct rawptr // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html
Gesture :: distinct rawptr // https://doc.qt.io/qt-6.8/qgesture.html
Pan_Gesture :: distinct rawptr // https://doc.qt.io/qt-6.8/qpangesture.html
Pinch_Gesture :: distinct rawptr // https://doc.qt.io/qt-6.8/qpinchgesture.html
Swipe_Gesture :: distinct rawptr // https://doc.qt.io/qt-6.8/qswipegesture.html
Tap_Gesture :: distinct rawptr // https://doc.qt.io/qt-6.8/qtapgesture.html
Tap_And_Hold_Gesture :: distinct rawptr // https://doc.qt.io/qt-6.8/qtapandholdgesture.html
Gesture_Event :: distinct rawptr // https://doc.qt.io/qt-6.8/qgestureevent.html
Basic_Timer :: distinct rawptr // https://doc.qt.io/qt-6.8/qbasictimer.html
Bit_Array :: distinct rawptr // https://doc.qt.io/qt-6.8/qbitarray.html
Text_Boundary_Finder :: distinct rawptr // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html
Wait_Condition :: distinct rawptr // https://doc.qt.io/qt-6.8/qwaitcondition.html
Thread_Pool :: distinct rawptr // https://doc.qt.io/qt-6.8/qthreadpool.html
Page_Ranges :: distinct rawptr // https://doc.qt.io/qt-6.8/qpageranges.html
File_Selector :: distinct rawptr // https://doc.qt.io/qt-6.8/qfileselector.html
Plugin_Loader :: distinct rawptr // https://doc.qt.io/qt-6.8/qpluginloader.html
Logging_Category :: distinct rawptr // https://doc.qt.io/qt-6.8/qloggingcategory.html
Cbor_Value :: distinct rawptr // https://doc.qt.io/qt-6.8/qcborvalue.html
Cbor_Map :: distinct rawptr // https://doc.qt.io/qt-6.8/qcbormap.html
Cbor_Array :: distinct rawptr // https://doc.qt.io/qt-6.8/qcborarray.html
Plain_Text_Document_Layout :: distinct rawptr // https://doc.qt.io/qt-6.8/qplaintextdocumentlayout.html
Splitter_Handle :: distinct rawptr // https://doc.qt.io/qt-6.8/qsplitterhandle.html
Style_Painter :: distinct rawptr // https://doc.qt.io/qt-6.8/qstylepainter.html
Window_Handle :: distinct rawptr // https://doc.qt.io/qt-6.8/qwindow.html
Backing_Store :: distinct rawptr // https://doc.qt.io/qt-6.8/qbackingstore.html
Raw_Font :: distinct rawptr // https://doc.qt.io/qt-6.8/qrawfont.html
Glyph_Run :: distinct rawptr // https://doc.qt.io/qt-6.8/qglyphrun.html
Offscreen_Surface :: distinct rawptr // https://doc.qt.io/qt-6.8/qoffscreensurface.html
Style_Option :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoption.html
Style_Option_Complex :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html
Style_Option_Button :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html
Style_Option_Frame :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionframe.html
Style_Option_Progress_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html
Style_Option_Slider :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionslider.html
Style_Option_Combo_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html
Style_Option_Menu_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html
Style_Option_Tab :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiontab.html
Style_Option_Header :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionheader.html
Style_Option_Tool_Button :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html
Style_Option_Spin_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html
Style_Option_View_Item :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html
Style_Option_Focus_Rect :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionfocusrect.html
Style_Option_Dock_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html
Style_Option_Group_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html
Style_Option_Title_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html
Style_Option_Tab_Widget_Frame :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html
Style_Option_Tab_Bar_Base :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html
Style_Option_Tool_Bar :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html
Style_Option_Rubber_Band :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html
Style_Option_Size_Grip :: distinct rawptr // https://doc.qt.io/qt-6.8/qstyleoptionsizegrip.html
Common_Style :: distinct rawptr // https://doc.qt.io/qt-6.8/qcommonstyle.html
Rhi_Widget :: distinct rawptr // https://doc.qt.io/qt-6.8/qrhiwidget.html
Opengl_Window :: distinct rawptr // https://doc.qt.io/qt-6.8/qopenglwindow.html
Opengl_Shader_Program :: distinct rawptr // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html
Opengl_Buffer :: distinct rawptr // https://doc.qt.io/qt-6.8/qopenglbuffer.html
Opengl_Vao :: distinct rawptr // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html
Opengl_Fbo :: distinct rawptr // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html
Opengl_Texture :: distinct rawptr // https://doc.qt.io/qt-6.8/qopengltexture.html
File_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qfiledialog.html
Message_Box :: distinct rawptr // https://doc.qt.io/qt-6.8/qmessagebox.html
Colour_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qcolordialog.html
Font_Dialog :: distinct rawptr // https://doc.qt.io/qt-6.8/qfontdialog.html

/* ── Colour struct ─────────────────────────────────────────────────── */

Colour :: struct {
	r: c.int,
	g: c.int,
	b: c.int,
	a: c.int,
}

/* ── Callback types ────────────────────────────────────────────────── */

Callback :: #type proc"c"(user_data: rawptr)
Int_Callback :: #type proc"c"(value: c.int, user_data: rawptr)
Double_Callback :: #type proc"c"(value: c.double, user_data: rawptr)
String_Callback :: #type proc"c"(text: cstring, user_data: rawptr)
Cell_Callback :: #type proc"c"(value_a: c.int, value_b: c.int, user_data: rawptr)
Item_Callback :: #type proc"c"(item: rawptr, column: c.int, user_data: rawptr)
Point_Callback :: #type proc"c"(x: c.int, y: c.int, user_data: rawptr)
Event_Filter_Callback :: #type proc"c"(event_type: c.int, user_data: rawptr) -> c.int
Close_Event_Callback :: #type proc"c"(user_data: rawptr) -> c.int
Key_Event_Callback :: #type proc"c"(event_type: c.int, key: c.int, modifiers: c.int, is_auto_repeat: c.int, text: cstring, user_data: rawptr) -> c.int
Mouse_Event_Callback :: #type proc"c"(event_type: c.int, button: c.int, x: c.int, y: c.int, global_x: c.int, global_y: c.int, modifiers: c.int, user_data: rawptr) -> c.int
Paint_Callback :: #type proc"c"(painter: Painter, width: c.int, height: c.int, user_data: rawptr)
Drag_Enter_Callback :: #type proc"c"(mime_text: cstring, user_data: rawptr) -> c.int
Drop_Callback :: #type proc"c"(mime_text: cstring, x: c.int, y: c.int, user_data: rawptr)
Four_Int_Callback :: #type proc"c"(a: c.int, b: c.int, c_val: c.int, d: c.int, user_data: rawptr)
Two_Pointer_Callback :: #type proc"c"(first: rawptr, second: rawptr, user_data: rawptr)
Model_Row_Count_Callback :: #type proc"c"(parent_index: rawptr, user_data: rawptr) -> c.int
Model_Column_Count_Callback :: #type proc"c"(parent_index: rawptr, user_data: rawptr) -> c.int
Model_Data_Callback :: #type proc"c"(index: rawptr, role: c.int, user_data: rawptr) -> cstring
Model_Flags_Callback :: #type proc"c"(index: rawptr, user_data: rawptr) -> c.int
Model_Header_Data_Callback :: #type proc"c"(section: c.int, orientation: c.int, role: c.int, user_data: rawptr) -> cstring
Wheel_Event_Callback :: #type proc"c"(x: c.int, y: c.int, global_x: c.int, global_y: c.int, angle_delta_x: c.int, angle_delta_y: c.int, modifiers: c.int, is_inverted: c.int, user_data: rawptr) -> c.int
Resize_Event_Callback :: #type proc"c"(old_width: c.int, old_height: c.int, new_width: c.int, new_height: c.int, user_data: rawptr) -> c.int
Focus_Event_Callback :: #type proc"c"(event_type: c.int, reason: c.int, user_data: rawptr) -> c.int
Hover_Event_Callback :: #type proc"c"(event_type: c.int, x: c.int, y: c.int, old_x: c.int, old_y: c.int, user_data: rawptr) -> c.int
Model_Data_Changed_Callback :: #type proc"c"(top_left: Model_Index, bottom_right: Model_Index, user_data: rawptr)
Model_Rows_Callback :: #type proc"c"(parent: Model_Index, first: c.int, last: c.int, user_data: rawptr)

/* ── Enums ─────────────────────────────────────────────────────────── */

Orientation :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#Orientation-enum
	Horizontal = 1,
	Vertical = 2,
}

Alignment :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#AlignmentFlag-enum
	Left = 0x0001,
	Right = 0x0002,
	H_Centre = 0x0004,
	Top = 0x0020,
	Bottom = 0x0040,
	V_Centre = 0x0080,
	Centre = 0x0084,
}

Tool_Bar_Area :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ToolBarArea-enum
	Left = 0x1,
	Right = 0x2,
	Top = 0x4,
	Bottom = 0x8,
}

Dock_Widget_Area :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#DockWidgetArea-enum
	Left = 0x1,
	Right = 0x2,
	Top = 0x4,
	Bottom = 0x8,
}

Standard_Button :: enum c.int { // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#StandardButton-enum
	None = 0x00000000,
	Ok = 0x00000400,
	Save = 0x00000800,
	Open = 0x00002000,
	Yes = 0x00004000,
	Yes_To_All = 0x00008000,
	No = 0x00010000,
	No_To_All = 0x00020000,
	Abort = 0x00040000,
	Retry = 0x00080000,
	Ignore = 0x00100000,
	Close = 0x00200000,
	Cancel = 0x00400000,
	Discard = 0x00800000,
	Help = 0x01000000,
	Apply = 0x02000000,
	Reset = 0x04000000,
}

Font_Weight :: enum c.int { // https://doc.qt.io/qt-6.8/qfont.html#Weight-enum
	Thin = 100,
	Extra_Light = 200,
	Light = 300,
	Normal = 400,
	Medium = 500,
	Demi_Bold = 600,
	Bold = 700,
	Extra_Bold = 800,
	Black = 900,
}

Echo_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qlineedit.html#EchoMode-enum
	Normal = 0,
	No_Echo = 1,
	Password = 2,
	Password_Echo_On_Edit = 3,
}

Cursor_Shape :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#CursorShape-enum
	Arrow = 0,
	Up_Arrow = 1,
	Cross = 2,
	Wait = 3,
	I_Beam = 4,
	Size_Vertical = 5,
	Size_Horizontal = 6,
	Size_B_Diagonal = 7,
	Size_F_Diagonal = 8,
	Size_All = 9,
	Blank = 10,
	Split_Vertical = 11,
	Split_Horizontal = 12,
	Pointing_Hand = 13,
	Forbidden = 14,
	Whats_This = 15,
	Busy = 16,
	Open_Hand = 17,
	Closed_Hand = 18,
}

Frame_Shape :: enum c.int { // https://doc.qt.io/qt-6.8/qframe.html#Shape-enum
	No_Frame = 0,
	Box = 0x0001,
	Panel = 0x0002,
	Win_Panel = 0x0003,
	H_Line = 0x0004,
	V_Line = 0x0005,
	Styled_Panel = 0x0006,
}

Frame_Shadow :: enum c.int { // https://doc.qt.io/qt-6.8/qframe.html#Shadow-enum
	Plain = 0x0010,
	Raised = 0x0020,
	Sunken = 0x0030,
}

Size_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qsizepolicy.html#Policy-enum
	Fixed = 0,
	Minimum = 1,
	Minimum_Expanding = 3,
	Maximum = 4,
	Preferred = 5,
	Expanding = 7,
	Ignored = 13,
}

Context_Menu_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ContextMenuPolicy-enum
	No_Context_Menu = 0,
	Default_Context_Menu = 1,
	Actions_Context_Menu = 2,
	Custom_Context_Menu = 3,
	Prevent_Context_Menu = 4,
}

Check_State :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#CheckState-enum
	Unchecked = 0,
	Partially_Checked = 1,
	Checked = 2,
}

Selection_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qabstractitemview.html#SelectionMode-enum
	No_Selection = 0,
	Single_Selection = 1,
	Multi_Selection = 2,
	Extended_Selection = 3,
	Contiguous_Selection = 4,
}

Selection_Behaviour :: enum c.int { // https://doc.qt.io/qt-6.8/qabstractitemview.html#SelectionBehavior-enum
	Select_Items = 0,
	Select_Rows = 1,
	Select_Columns = 2,
}

Sort_Order :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#SortOrder-enum
	Ascending = 0,
	Descending = 1,
}

Tick_Position :: enum c.int { // https://doc.qt.io/qt-6.8/qslider.html#TickPosition-enum
	No_Ticks = 0,
	Ticks_Above = 1,
	Ticks_Below = 2,
	Ticks_Both_Sides = 3,
}

Scroll_Bar_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ScrollBarPolicy-enum
	As_Needed = 0,
	Always_Off = 1,
	Always_On = 2,
}

Tool_Button_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ToolButtonStyle-enum
	Icon_Only = 0,
	Text_Only = 1,
	Text_Beside_Icon = 2,
	Text_Under_Icon = 3,
	Follow_Style = 4,
}

Elide_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#TextElideMode-enum
	Left = 0,
	Right = 1,
	Middle = 2,
	None = 3,
}

Dock_Widget_Feature :: enum c.int { // https://doc.qt.io/qt-6.8/qdockwidget.html#DockWidgetFeature-enum
	Closable = 0x01,
	Movable = 0x02,
	Floatable = 0x04,
	Vertical_Title_Bar = 0x08,
	No_Features = 0x00,
	All_Features = 0x07,
}

Tool_Button_Popup_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qtoolbutton.html#ToolButtonPopupMode-enum
	Delayed_Popup = 0,
	Menu_Button_Popup = 1,
	Instant_Popup = 2,
}

Header_Resize_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qheaderview.html#ResizeMode-enum
	Interactive = 0,
	Stretch = 1,
	Fixed = 2,
	Resize_To_Contents = 3,
}

System_Tray_Message_Icon :: enum c.int { // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#MessageIcon-enum
	No_Icon = 0,
	Information = 1,
	Warning = 2,
	Critical = 3,
}

System_Tray_Activation_Reason :: enum c.int { // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#ActivationReason-enum
	Unknown = 0,
	Context = 1,
	Double_Click = 2,
	Trigger = 3,
	Middle_Click = 4,
}

Standard_Location :: enum c.int { // https://doc.qt.io/qt-6.8/qstandardpaths.html#StandardLocation-enum
	Desktop = 0,
	Documents = 1,
	Fonts = 2,
	Applications = 3,
	Music = 4,
	Movies = 5,
	Pictures = 6,
	Temp = 7,
	Home = 8,
	App_Local_Data = 9,
	Cache = 10,
	Generic_Data = 11,
	Runtime = 12,
	Config = 13,
	Download = 14,
	Generic_Cache = 15,
	Generic_Config = 16,
	App_Data = 17,
	App_Config = 18,
	Public_Share = 19,
	Templates = 20,
}

Case_Sensitivity :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#CaseSensitivity-enum
	Insensitive = 0,
	Sensitive = 1,
}

Match_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#MatchFlag-enum
	Contains = 1,
	Starts_With = 2,
	Ends_With = 3,
}

Scroll_Hint :: enum c.int { // https://doc.qt.io/qt-6.8/qabstractitemview.html#ScrollHint-enum
	Ensure_Visible = 0,
	Position_At_Top = 1,
	Position_At_Bottom = 2,
	Position_At_Centre = 3,
}

List_Widget_View_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qlistview.html#ViewMode-enum
	List_Mode = 0,
	Icon_Mode = 1,
}

List_View_Flow :: enum c.int { // https://doc.qt.io/qt-6.8/qlistview.html#Flow-enum
	Left_To_Right = 0,
	Top_To_Bottom = 1,
}

Shortcut_Context :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ShortcutContext-enum
	Widget_Shortcut = 0,
	Window_Shortcut = 1,
	Application_Shortcut = 2,
	Widget_With_Children_Shortcut = 3,
}

Menu_Role :: enum c.int { // https://doc.qt.io/qt-6.8/qaction.html#MenuRole-enum
	No_Role = 0,
	Text_Heuristic_Role = 1,
	Application_Specific_Role = 2,
	About_Qt_Role = 3,
	About_Role = 4,
	Preferences_Role = 5,
	Quit_Role = 6,
}

Item_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ItemFlag-enum
	No_Flags = 0x0000,
	Is_Selectable = 0x0001,
	Is_Editable = 0x0002,
	Is_Drag_Enabled = 0x0004,
	Is_Drop_Enabled = 0x0008,
	Is_User_Checkable = 0x0010,
	Is_Enabled = 0x0020,
	Is_Auto_Tristate = 0x0040,
	Is_User_Tristate = 0x0080,
}

Item_Data_Role :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#ItemDataRole-enum
	Display = 0,
	Decoration = 1,
	Edit = 2,
	Tool_Tip = 3,
	Status_Tip = 4,
	Whats_This = 5,
	Font = 6,
	Text_Alignment = 7,
	Background = 8,
	Foreground = 9,
	Check_State = 10,
	Size_Hint = 13,
	User = 0x0100,
}

Event_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qevent.html#Type-enum
	Mouse_Button_Press = 2,
	Mouse_Button_Release = 3,
	Mouse_Button_Double_Click = 4,
	Mouse_Move = 5,
	Key_Press = 6,
	Key_Release = 7,
	Focus_In = 8,
	Focus_Out = 9,
	Enter = 10,
	Leave = 11,
	Paint = 12,
	Move = 13,
	Resize = 14,
	Show = 17,
	Hide = 18,
	Close = 19,
	Wheel = 31,
	Context_Menu = 82,
	Tool_Tip = 110,
}

Mouse_Button :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#MouseButton-enum
	None = 0,
	Left = 1,
	Right = 2,
	Middle = 4,
	Back = 8,
	Forward = 16,
}

Easing_Curve :: enum c.int { // https://doc.qt.io/qt-6.8/qeasingcurve.html#Type-enum
	Linear = 0,
	In_Quad = 1,
	Out_Quad = 2,
	In_Out_Quad = 3,
	Out_In_Quad = 4,
	In_Cubic = 5,
	Out_Cubic = 6,
	In_Out_Cubic = 7,
	Out_In_Cubic = 8,
	In_Quart = 9,
	Out_Quart = 10,
	In_Out_Quart = 11,
	Out_In_Quart = 12,
	In_Quint = 13,
	Out_Quint = 14,
	In_Out_Quint = 15,
	Out_In_Quint = 16,
	In_Sine = 17,
	Out_Sine = 18,
	In_Out_Sine = 19,
	Out_In_Sine = 20,
	In_Expo = 21,
	Out_Expo = 22,
	In_Out_Expo = 23,
	Out_In_Expo = 24,
	In_Circ = 25,
	Out_Circ = 26,
	In_Out_Circ = 27,
	Out_In_Circ = 28,
	In_Elastic = 29,
	Out_Elastic = 30,
	In_Out_Elastic = 31,
	Out_In_Elastic = 32,
	In_Back = 33,
	Out_Back = 34,
	In_Out_Back = 35,
	Out_In_Back = 36,
	In_Bounce = 37,
	Out_Bounce = 38,
	In_Out_Bounce = 39,
}

Keyboard_Modifier :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#KeyboardModifier-enum
	None = 0x00000000,
	Shift = 0x02000000,
	Control = 0x04000000,
	Alt = 0x08000000,
	Meta = 0x10000000,
	Keypad = 0x20000000,
}

Key :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#Key-enum
	Escape = 0x01000000,
	Tab = 0x01000001,
	Backtab = 0x01000002,
	Backspace = 0x01000003,
	Return = 0x01000004,
	Enter = 0x01000005,
	Insert = 0x01000006,
	Delete = 0x01000007,
	Pause = 0x01000008,
	Print = 0x01000009,
	Home = 0x01000010,
	End = 0x01000011,
	Left = 0x01000012,
	Up = 0x01000013,
	Right = 0x01000014,
	Down = 0x01000015,
	Page_Up = 0x01000016,
	Page_Down = 0x01000017,
	Shift = 0x01000020,
	Control = 0x01000021,
	Meta = 0x01000022,
	Alt = 0x01000023,
	Caps_Lock = 0x01000024,
	Num_Lock = 0x01000025,
	Scroll_Lock = 0x01000026,
	F1 = 0x01000030,
	F2 = 0x01000031,
	F3 = 0x01000032,
	F4 = 0x01000033,
	F5 = 0x01000034,
	F6 = 0x01000035,
	F7 = 0x01000036,
	F8 = 0x01000037,
	F9 = 0x01000038,
	F10 = 0x01000039,
	F11 = 0x0100003a,
	F12 = 0x0100003b,
	Space = 0x20,
	Exclam = 0x21,
	Apostrophe = 0x27,
	Comma = 0x2c,
	Minus = 0x2d,
	Period = 0x2e,
	Slash = 0x2f,
	Num_0 = 0x30,
	Num_1 = 0x31,
	Num_2 = 0x32,
	Num_3 = 0x33,
	Num_4 = 0x34,
	Num_5 = 0x35,
	Num_6 = 0x36,
	Num_7 = 0x37,
	Num_8 = 0x38,
	Num_9 = 0x39,
	Semicolon = 0x3b,
	Equal = 0x3d,
	A = 0x41,
	B = 0x42,
	C = 0x43,
	D = 0x44,
	E = 0x45,
	F = 0x46,
	G = 0x47,
	H = 0x48,
	I = 0x49,
	J = 0x4a,
	K = 0x4b,
	L = 0x4c,
	M = 0x4d,
	N = 0x4e,
	O = 0x4f,
	P = 0x50,
	Q = 0x51,
	R = 0x52,
	S = 0x53,
	T = 0x54,
	U = 0x55,
	V = 0x56,
	W = 0x57,
	X = 0x58,
	Y = 0x59,
	Z = 0x5a,
	Bracket_Left = 0x5b,
	Backslash = 0x5c,
	Bracket_Right = 0x5d,
	Grave_Accent = 0x60,
}

Tab_Bar_Shape :: enum c.int { // https://doc.qt.io/qt-6.8/qtabbar.html#Shape-enum
	Rounded_North = 0,
	Rounded_South = 1,
	Rounded_West = 2,
	Rounded_East = 3,
	Triangular_North = 4,
	Triangular_South = 5,
	Triangular_West = 6,
	Triangular_East = 7,
}

LCD_Number_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qlcdnumber.html#Mode-enum
	Hex = 0,
	Dec = 1,
	Oct = 2,
	Bin = 3,
}

LCD_Number_Segment_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qlcdnumber.html#SegmentStyle-enum
	Outline = 0,
	Filled = 1,
	Flat = 2,
}

Font_Combo_Box_Font_Filter :: enum c.int { // https://doc.qt.io/qt-6.8/qfontcombobox.html#FontFilter-enum
	All = 0,
	Scalable = 0x1,
	Non_Scalable = 0x2,
	Monospaced = 0x4,
	Proportional = 0x8,
}

Stacked_Layout_Stacking_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qstackedlayout.html#StackingMode-enum
	Stack_One = 0,
	Stack_All = 1,
}

Mdi_Area_View_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qmdiarea.html#ViewMode-enum
	Sub_Window = 0,
	Tabbed = 1,
}

Wizard_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qwizard.html#WizardStyle-enum
	Classic = 0,
	Modern = 1,
	Mac = 2,
	Aero = 3,
}

Wizard_Option :: enum c.int { // https://doc.qt.io/qt-6.8/qwizard.html#WizardOption-enum
	Independent_Pages = 0x00000001,
	Ignore_Sub_Titles = 0x00000002,
	Extended_Watermark_Pixmap = 0x00000004,
	No_Default_Button = 0x00000008,
	No_Back_Button_On_Start_Page = 0x00000010,
	No_Back_Button_On_Last_Page = 0x00000020,
	Disabled_Back_Button_On_Last_Page = 0x00000040,
	Have_Next_Button_On_Last_Page = 0x00000080,
	Have_Finish_Button_On_Early_Pages = 0x00000100,
	No_Cancel_Button = 0x00000200,
	Cancel_Button_On_Left = 0x00000400,
	Have_Help_Button = 0x00000800,
	Help_Button_On_Right = 0x00001000,
	Have_Custom_Button_1 = 0x00002000,
	Have_Custom_Button_2 = 0x00004000,
	Have_Custom_Button_3 = 0x00008000,
	No_Cancel_Button_On_Last_Page = 0x00010000,
}

Wizard_Button :: enum c.int { // https://doc.qt.io/qt-6.8/qwizard.html#WizardButton-enum
	Back = 0,
	Next = 1,
	Commit = 2,
	Finish = 3,
	Cancel = 4,
	Help = 5,
	Custom_1 = 6,
	Custom_2 = 7,
	Custom_3 = 8,
}

Rubber_Band_Shape :: enum c.int { // https://doc.qt.io/qt-6.8/qrubberband.html#Shape-enum
	Line = 0,
	Rectangle = 1,
}

Image_Format :: enum c.int { // https://doc.qt.io/qt-6.8/qimage.html#Format-enum
	Invalid = 0,
	Mono = 1,
	Mono_LSB = 2,
	Indexed_8 = 3,
	RGB_32 = 4,
	ARGB_32 = 5,
	ARGB_32_Premultiplied = 6,
	RGB_16 = 7,
	ARGB_8565_Premultiplied = 8,
	RGB_666 = 9,
	ARGB_6666_Premultiplied = 10,
	RGB_555 = 11,
	ARGB_8555_Premultiplied = 12,
	RGB_888 = 13,
	RGB_444 = 14,
	ARGB_4444_Premultiplied = 15,
	RGBX_8888 = 16,
	RGBA_8888 = 17,
	RGBA_8888_Premultiplied = 18,
	Grayscale_8 = 24,
	Grayscale_16 = 28,
	RGBA_16FPx4 = 31,
	RGBA_16FPx4_Premultiplied = 32,
	RGBA_32FPx4 = 33,
	RGBA_32FPx4_Premultiplied = 34,
}

Aspect_Ratio_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#AspectRatioMode-enum
	Ignore = 0,
	Keep = 1,
	Keep_By_Expanding = 2,
}

Transformation_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#TransformationMode-enum
	Fast = 0,
	Smooth = 1,
}

Pen_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#PenStyle-enum
	No_Pen = 0,
	Solid = 1,
	Dash = 2,
	Dot = 3,
	Dash_Dot = 4,
	Dash_Dot_Dot = 5,
	Custom_Dash = 6,
}

Pen_Cap_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#PenCapStyle-enum
	Flat = 0x00,
	Square = 0x10,
	Round = 0x20,
}

Pen_Join_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#PenJoinStyle-enum
	Miter = 0x00,
	Bevel = 0x40,
	Round = 0x80,
	Svg_Miter = 0x100,
}

Brush_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#BrushStyle-enum
	No_Brush = 0,
	Solid = 1,
	Dense_1 = 2,
	Dense_2 = 3,
	Dense_3 = 4,
	Dense_4 = 5,
	Dense_5 = 6,
	Dense_6 = 7,
	Dense_7 = 8,
	Horizontal = 9,
	Vertical = 10,
	Cross = 11,
	B_Diagonal = 12,
	F_Diagonal = 13,
	Diagonal_Cross = 14,
	Linear_Gradient = 15,
	Radial_Gradient = 16,
	Conical_Gradient = 17,
	Texture = 24,
}

Palette_Colour_Group :: enum c.int { // https://doc.qt.io/qt-6.8/qpalette.html#ColorGroup-enum
	Active = 0,
	Disabled = 1,
	Inactive = 2,
	All = 3,
}

Palette_Colour_Role :: enum c.int { // https://doc.qt.io/qt-6.8/qpalette.html#ColorRole-enum
	Window = 10,
	Window_Text = 0,
	Base = 9,
	Alternate_Base = 16,
	Text = 6,
	Button = 1,
	Button_Text = 8,
	Bright_Text = 7,
	Light = 2,
	Midlight = 3,
	Dark = 4,
	Mid = 5,
	Shadow = 11,
	Highlight = 12,
	Highlighted_Text = 13,
	Link = 14,
	Link_Visited = 15,
	Tool_Tip_Base = 18,
	Tool_Tip_Text = 19,
	Placeholder_Text = 20,
	Accent = 21,
}

Gradient_Spread :: enum c.int { // https://doc.qt.io/qt-6.8/qgradient.html#Spread-enum
	Pad = 0,
	Reflect = 1,
	Repeat = 2,
}

Text_Cursor_Move_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qtextcursor.html#MoveMode-enum
	Move_Anchor = 0,
	Keep_Anchor = 1,
}

Text_Cursor_Move_Operation :: enum c.int { // https://doc.qt.io/qt-6.8/qtextcursor.html#MoveOperation-enum
	No_Move = 0,
	Start = 1,
	Up = 2,
	Start_Of_Line = 3,
	Start_Of_Block = 4,
	Start_Of_Word = 5,
	Previous_Block = 6,
	Previous_Character = 7,
	Previous_Word = 8,
	Left = 9,
	Word_Left = 10,
	End = 11,
	Down = 12,
	End_Of_Line = 13,
	End_Of_Word = 14,
	End_Of_Block = 15,
	Next_Block = 16,
	Next_Character = 17,
	Next_Word = 18,
	Right = 19,
	Word_Right = 20,
}

Text_Cursor_Selection_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qtextcursor.html#SelectionType-enum
	Word_Under_Cursor = 0,
	Line_Under_Cursor = 1,
	Block_Under_Cursor = 2,
	Document = 3,
}

Find_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qtextdocument.html#FindFlag-enum
	Backward = 1,
	Case_Sensitively = 2,
	Whole_Words = 4,
}

Text_Edit_Line_Wrap_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qtextedit.html#LineWrapMode-enum
	No_Wrap = 0,
	Widget_Width = 1,
	Fixed_Pixel_Width = 2,
	Fixed_Column_Width = 3,
}

Plain_Text_Edit_Line_Wrap_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qplaintextedit.html#LineWrapMode-enum
	No_Wrap = 0,
	Widget_Width = 1,
}

Word_Wrap_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qtextoption.html#WrapMode-enum
	No_Wrap = 0,
	Word_Wrap = 1,
	Manual_Wrap = 2,
	Wrap_Anywhere = 3,
	Wrap_At_Word_Boundary_Or_Anywhere = 4,
}

Text_List_Style :: enum c.int { // https://doc.qt.io/qt-6.8/qtextlistformat.html#Style-enum
	Disc = -1,
	Circle = -2,
	Square = -3,
	Decimal = -4,
	Lower_Alpha = -5,
	Upper_Alpha = -6,
	Lower_Roman = -7,
	Upper_Roman = -8,
}

Key_Sequence_Standard_Key :: enum c.int { // https://doc.qt.io/qt-6.8/qkeysequence.html#StandardKey-enum
	Unknown_Key = 0,
	Help_Contents = 1,
	Whats_This = 2,
	Open = 3,
	Close = 4,
	Save = 5,
	New = 6,
	Delete = 7,
	Cut = 8,
	Copy = 9,
	Paste = 10,
	Undo = 11,
	Redo = 12,
	Back = 13,
	Forward = 14,
	Refresh = 15,
	Zoom_In = 16,
	Zoom_Out = 17,
	Print = 18,
	Add_Tab = 19,
	Next_Child = 20,
	Previous_Child = 21,
	Find = 22,
	Find_Next = 23,
	Find_Previous = 24,
	Replace = 25,
	Select_All = 26,
	Bold = 27,
	Italic = 28,
	Underline = 29,
	Move_To_Next_Char = 30,
	Move_To_Previous_Char = 31,
	Move_To_Next_Word = 32,
	Move_To_Previous_Word = 33,
	Move_To_Next_Line = 34,
	Move_To_Previous_Line = 35,
	Move_To_Next_Page = 36,
	Move_To_Previous_Page = 37,
	Move_To_Start_Of_Line = 38,
	Move_To_End_Of_Line = 39,
	Move_To_Start_Of_Block = 40,
	Move_To_End_Of_Block = 41,
	Move_To_Start_Of_Document = 42,
	Move_To_End_Of_Document = 43,
	Select_Next_Char = 44,
	Select_Previous_Char = 45,
	Select_Next_Word = 46,
	Select_Previous_Word = 47,
	Select_Next_Line = 48,
	Select_Previous_Line = 49,
	Select_Next_Page = 50,
	Select_Previous_Page = 51,
	Select_Start_Of_Line = 52,
	Select_End_Of_Line = 53,
	Select_Start_Of_Block = 54,
	Select_End_Of_Block = 55,
	Select_Start_Of_Document = 56,
	Select_End_Of_Document = 57,
	Delete_Start_Of_Word = 58,
	Delete_End_Of_Word = 59,
	Delete_End_Of_Line = 60,
	Deselect = 67,
	Backspace = 69,
	Cancel = 70,
	Full_Screen = 71,
	Preferences = 64,
	Quit = 65,
}

Key_Sequence_Match :: enum c.int { // https://doc.qt.io/qt-6.8/qkeysequence.html#SequenceMatch-enum
	No_Match = 0,
	Partial_Match = 1,
	Exact_Match = 2,
}

Movie_State :: enum c.int { // https://doc.qt.io/qt-6.8/qmovie.html#MovieState-enum
	Not_Running = 0,
	Paused = 1,
	Running = 2,
}

Text_Format :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#TextFormat-enum
	Plain_Text = 0,
	Rich_Text = 1,
	Auto_Text = 2,
	Markdown = 3,
}

Font_Style_Hint :: enum c.int { // https://doc.qt.io/qt-6.8/qfont.html#StyleHint-enum
	Any_Style = 5,
	Serif = 0,
	Sans_Serif = 1,
	Type_Writer = 2,
	Decorative = 3,
	Monospace = 7,
	Fantasy = 8,
	Cursive = 6,
	System = 4,
}

Font_Spacing_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qfont.html#SpacingType-enum
	Percentage = 0,
	Absolute = 1,
}

Page_Size_Id :: enum c.int { // https://doc.qt.io/qt-6.8/qpagesize.html#PageSizeId-enum
	A4 = 0,
	B5 = 1,
	Letter = 2,
	Legal = 3,
	Executive = 4,
	A0 = 5,
	A1 = 6,
	A2 = 7,
	A3 = 8,
	A5 = 9,
	A6 = 10,
	A7 = 11,
	A8 = 12,
	A9 = 13,
	B0 = 14,
	B1 = 15,
	B10 = 16,
	B2 = 17,
	B3 = 18,
	B4 = 19,
	B6 = 20,
	B7 = 21,
	B8 = 22,
	B9 = 23,
	Custom = 30,
}

Page_Size_Unit :: enum c.int { // https://doc.qt.io/qt-6.8/qpagesize.html#Unit-enum
	Millimeter = 0,
	Point = 1,
	Inch = 2,
	Pica = 3,
	Didot = 4,
	Cicero = 5,
}

Page_Layout_Orientation :: enum c.int { // https://doc.qt.io/qt-6.8/qpagelayout.html#Orientation-enum
	Portrait = 0,
	Landscape = 1,
}

File_Open_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qiodevicebase.html
	Not_Open = 0x0000,
	Read_Only = 0x0001,
	Write_Only = 0x0002,
	Read_Write = 0x0003,
	Append = 0x0004,
	Truncate = 0x0008,
	Text = 0x0010,
	Unbuffered = 0x0020,
	New_Only = 0x0040,
	Existing_Only = 0x0080,
}

Dir_Filter :: enum c.int { // https://doc.qt.io/qt-6.8/qdir.html#Filter-enum
	Dirs = 0x001,
	Files = 0x002,
	Drives = 0x004,
	No_Sym_Links = 0x008,
	All_Entries = 0x007,
	No_Dot_And_Dot_Dot = 0x1000,
	No_Dot = 0x2000,
	No_Dot_Dot = 0x4000,
	Hidden = 0x100,
	System = 0x200,
}

Process_State :: enum c.int { // https://doc.qt.io/qt-6.8/qprocess.html#ProcessState-enum
	Not_Running = 0,
	Starting = 1,
	Running = 2,
}

Process_Exit_Status :: enum c.int { // https://doc.qt.io/qt-6.8/qprocess.html#ExitStatus-enum
	Normal_Exit = 0,
	Crash_Exit = 1,
}

Process_Error :: enum c.int { // https://doc.qt.io/qt-6.8/qprocess.html#ProcessError-enum
	Failed_To_Start = 0,
	Crashed = 1,
	Timed_Out = 2,
	Read_Error = 3,
	Write_Error = 4,
	Unknown_Error = 5,
}

Crypto_Hash_Algorithm :: enum c.int { // https://doc.qt.io/qt-6.8/qcryptographichash.html#Algorithm-enum
	Md4 = 0,
	Md5 = 1,
	Sha1 = 2,
	Sha224 = 3,
	Sha256 = 4,
	Sha384 = 5,
	Sha512 = 6,
	Sha3_224 = 7,
	Sha3_256 = 8,
	Sha3_384 = 9,
	Sha3_512 = 10,
	Blake2b_160 = 15,
	Blake2b_256 = 16,
	Blake2b_384 = 17,
	Blake2b_512 = 18,
	Blake2s_128 = 19,
	Blake2s_160 = 20,
	Blake2s_224 = 21,
	Blake2s_256 = 22,
}

Regex_Pattern_Option :: enum c.int { // https://doc.qt.io/qt-6.8/qregularexpression.html#PatternOption-enum
	No_Pattern_Option = 0x0000,
	Case_Insensitive = 0x0001,
	Dot_Matches_Everything = 0x0002,
	Multiline = 0x0004,
	Extended_Pattern_Syntax = 0x0008,
	Inverted_Greediness = 0x0010,
	Dont_Capture = 0x0020,
	Use_Unicode_Properties = 0x0040,
}

Xml_Token_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#TokenType-enum
	No_Token = 0,
	Invalid = 1,
	Start_Document = 2,
	End_Document = 3,
	Start_Element = 4,
	End_Element = 5,
	Characters = 6,
	Comment = 7,
	DTD = 8,
	Entity_Reference = 9,
	Processing_Instruction = 10,
}

Item_Selection_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#SelectionFlag-enum
	No_Update = 0x0000,
	Clear = 0x0001,
	Select = 0x0002,
	Deselect = 0x0004,
	Toggle = 0x0008,
	Current = 0x0010,
	Rows = 0x0020,
	Columns = 0x0040,
	Select_Current = 0x0012,
	Toggle_Current = 0x0018,
	Clear_And_Select = 0x0003,
}

Data_Widget_Mapper_Submit_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#SubmitPolicy-enum
	Auto_Submit = 0,
	Manual_Submit = 1,
}

Graphics_View_Drag_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qgraphicsview.html#DragMode-enum
	No_Drag = 0,
	Scroll_Hand_Drag = 1,
	Rubber_Band_Drag = 2,
}

Graphics_View_Viewport_Update_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qgraphicsview.html#ViewportUpdateMode-enum
	Full_Viewport_Update = 0,
	Minimal_Viewport_Update = 1,
	Smart_Viewport_Update = 2,
	No_Viewport_Update = 3,
	Bounding_Rect_Viewport_Update = 4,
}

Graphics_View_Viewport_Anchor :: enum c.int { // https://doc.qt.io/qt-6.8/qgraphicsview.html#ViewportAnchor-enum
	No_Anchor = 0,
	Anchor_View_Centre = 1,
	Anchor_Under_Mouse = 2,
}

Graphics_Item_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qgraphicsitem.html#GraphicsItemFlag-enum
	Is_Movable = 0x1,
	Is_Selectable = 0x2,
	Is_Focusable = 0x4,
	Clips_To_Shape = 0x8,
	Clips_Children_To_Shape = 0x10,
	Ignores_Transformations = 0x20,
	Ignores_Parent_Opacity = 0x40,
	Does_Not_Propagate_Opacity_To_Children = 0x80,
	Stacks_Behind_Parent = 0x100,
	Sends_Geometry_Changes = 0x800,
	Accepts_Input_Method = 0x1000,
	Is_Panel = 0x4000,
	Sends_Scene_Position_Changes = 0x10000,
	Contains_Children_In_Shape = 0x80000,
}

Graphics_Pixmap_Item_Shape_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html#ShapeMode-enum
	Mask_Shape = 0,
	Bounding_Rect_Shape = 1,
	Heuristic_Mask_Shape = 2,
}

Text_Interaction_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#TextInteractionFlag-enum
	No_Text_Interaction = 0,
	Text_Selectable_By_Mouse = 1,
	Text_Selectable_By_Keyboard = 2,
	Links_Accessible_By_Mouse = 4,
	Links_Accessible_By_Keyboard = 8,
	Text_Editable = 16,
	Text_Editor_Interaction = 19,
	Text_Browser_Interaction = 13,
}

Graphics_Blur_Hint :: enum c.int { // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#BlurHint-enum
	Performance_Hint = 0x00,
	Quality_Hint = 0x01,
	Animation_Hint = 0x02,
}

Render_Hint :: enum c.int { // https://doc.qt.io/qt-6.8/qpainter.html#RenderHint-enum
	Antialiasing = 0x01,
	Text_Antialiasing = 0x02,
	Smooth_Pixmap_Transform = 0x04,
	Vertical_Subpixel_Positioning = 0x08,
	Lossless_Image_Rendering = 0x40,
	Non_Cosmetic_Brush_Patterns = 0x80,
}

Composition_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qpainter.html#CompositionMode-enum
	Source_Over = 0,
	Destination_Over = 1,
	Clear = 2,
	Source = 3,
	Destination = 4,
	Source_In = 5,
	Destination_In = 6,
	Source_Out = 7,
	Destination_Out = 8,
	Source_Atop = 9,
	Destination_Atop = 10,
	Xor = 11,
	Plus = 12,
	Multiply = 13,
	Screen = 14,
	Overlay = 15,
	Darken = 16,
	Lighten = 17,
	Colour_Dodge = 18,
	Colour_Burn = 19,
	Hard_Light = 20,
	Soft_Light = 21,
	Difference = 22,
	Exclusion = 23,
	Raster_Source_Or_Destination = 24,
	Raster_Source_And_Destination = 25,
	Raster_Source_Xor_Destination = 26,
	Raster_Not_Source_And_Not_Destination = 27,
	Raster_Not_Source_Or_Not_Destination = 28,
	Raster_Not_Source_Xor_Destination = 29,
	Raster_Not_Source = 30,
	Raster_Not_Source_And_Destination = 31,
	Raster_Source_And_Not_Destination = 32,
	Raster_Not_Source_Or_Destination = 33,
	Raster_Source_Or_Not_Destination = 34,
	Raster_Clear_Destination = 35,
	Raster_Set_Destination = 36,
}

Mask_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#MaskMode-enum
	Mask_In_Colour = 0,
	Mask_Out_Colour = 1,
}

Time_Line_State :: enum c.int { // https://doc.qt.io/qt-6.8/qtimeline.html#State-enum
	Not_Running = 0,
	Paused = 1,
	Running = 2,
}

Time_Line_Direction :: enum c.int { // https://doc.qt.io/qt-6.8/qtimeline.html#Direction-enum
	Forward = 0,
	Backward = 1,
}

Calendar_System :: enum c.int { // https://doc.qt.io/qt-6.8/qcalendar.html#System-enum
	Gregorian = 0,
	Julian = 8,
	Milankovic = 9,
}

Event_Loop_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qeventloop.html#ProcessEventsFlag-enum
	All_Events = 0x00,
	Exclude_User_Input_Events = 0x01,
	Exclude_Socket_Notifiers = 0x02,
	Wait_For_More_Events = 0x04,
}

Library_Load_Hint :: enum c.int { // https://doc.qt.io/qt-6.8/qlibrary.html#LoadHint-enum
	Resolve_All_Symbols_Hint = 0x01,
	Export_External_Symbols_Hint = 0x02,
	Load_Archive_Member_Hint = 0x04,
	Prevent_Unload_Hint = 0x08,
	Deep_Bind_Hint = 0x10,
}

Shared_Memory_Access_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qsharedmemory.html#AccessMode-enum
	Read_Only = 0,
	Read_Write = 1,
}

Shared_Memory_Error :: enum c.int { // https://doc.qt.io/qt-6.8/qsharedmemory.html#SharedMemoryError-enum
	No_Error = 0,
	Permission_Denied = 1,
	Invalid_Size = 2,
	Key_Error = 3,
	Already_Exists = 4,
	Not_Found = 5,
	Lock_Error = 6,
	Out_Of_Resources = 7,
	Unknown_Error = 8,
}

System_Semaphore_Access_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#AccessMode-enum
	Open = 0,
	Create = 1,
}

System_Semaphore_Error :: enum c.int { // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#SystemSemaphoreError-enum
	No_Error = 0,
	Permission_Denied = 1,
	Key_Error = 2,
	Already_Exists = 3,
	Not_Found = 4,
	Out_Of_Resources = 5,
	Unknown_Error = 6,
}

Lock_File_Error :: enum c.int { // https://doc.qt.io/qt-6.8/qlockfile.html#LockError-enum
	No_Error = 0,
	Lock_Failed_Error = 1,
	Permission_Error = 2,
	Unknown_Error = 3,
}

Dock_Option :: enum c.int { // https://doc.qt.io/qt-6.8/qmainwindow.html#DockOption-enum
	Animated_Docks = 0x01,
	Allow_Nested_Docks = 0x02,
	Allow_Tabbed_Docks = 0x04,
	Force_Tabbed_Docks = 0x08,
	Vertical_Tabs = 0x10,
	Grouped_Dragging = 0x20,
}

Corner :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#Corner-enum
	Top_Left = 0x00000,
	Top_Right = 0x00001,
	Bottom_Left = 0x00002,
	Bottom_Right = 0x00003,
}

Anchor_Point :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#AnchorPoint-enum
	Left = 0,
	Horizontal_Centre = 1,
	Right = 2,
	Top = 3,
	Vertical_Centre = 4,
	Bottom = 5,
}

Gesture_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#GestureType-enum
	Tap = 1,
	Tap_And_Hold = 2,
	Pan = 3,
	Pinch = 4,
	Swipe = 5,
	Custom = 0x0100,
}

Gesture_State :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#GestureState-enum
	No_Gesture = 0,
	Gesture_Started = 1,
	Gesture_Updated = 2,
	Gesture_Finished = 3,
	Gesture_Cancelled = 4,
}

Gesture_Cancel_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qgesture.html#GestureCancelPolicy-enum
	Cancel_None = 0,
	Cancel_All_In_Context = 1,
}

Swipe_Direction :: enum c.int { // https://doc.qt.io/qt-6.8/qswipegesture.html#SwipeDirection-enum
	No_Direction = 0,
	Left = 1,
	Right = 2,
	Up = 3,
	Down = 4,
}

Pinch_Change_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qpinchgesture.html#ChangeFlag-enum
	Scale_Factor_Changed = 0x1,
	Rotation_Angle_Changed = 0x2,
	Centre_Point_Changed = 0x4,
}

Text_Boundary_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#BoundaryType-enum
	Grapheme = 0,
	Word = 1,
	Sentence = 2,
	Line = 3,
}

Gesture_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#GestureFlag-enum
	Dont_Start_Gesture_On_Children = 0x01,
	Receive_Partial_Gestures = 0x02,
	Ignore_Cancelled_Gestures = 0x04,
}

Scroller_Gesture_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qscroller.html#ScrollerGestureType-enum
	Touch = 0,
	Left_Mouse_Button = 1,
	Middle_Mouse_Button = 2,
	Right_Mouse_Button = 3,
}

Scroller_State :: enum c.int { // https://doc.qt.io/qt-6.8/qscroller.html#State-enum
	Inactive = 0,
	Pressed = 1,
	Dragging = 2,
	Scrolling = 3,
}

Scroller_Metric :: enum c.int { // https://doc.qt.io/qt-6.8/qscrollerproperties.html#ScrollMetric-enum
	Mouse_Press_Event_Delay = 0,
	Drag_Start_Distance = 1,
	Drag_Velocity_Smoothing_Factor = 2,
	Axis_Lock_Threshold = 3,
	Scrolling_Curve = 4,
	Deceleration_Factor = 5,
	Minimum_Velocity = 6,
	Maximum_Velocity = 7,
	Maximum_Click_Through_Velocity = 8,
	Accelerating_Flick_Maximum_Time = 9,
	Accelerating_Flick_Speed_Up_Factor = 10,
	Snap_Position_Ratio = 11,
	Snap_Time = 12,
	Overshoot_Drag_Resistance_Factor = 13,
	Overshoot_Drag_Distance_Factor = 14,
	Overshoot_Scroll_Distance_Factor = 15,
	Overshoot_Scroll_Time = 16,
	Horizontal_Overshoot_Policy = 17,
	Vertical_Overshoot_Policy = 18,
	Frame_Rate = 19,
}

Style_Pixel_Metric :: enum c.int { // https://doc.qt.io/qt-6.8/qstyle.html#PixelMetric-enum
	Button_Margin = 0,
	Dock_Widget_Title_Bar_Button_Margin = 1,
	Button_Default_Indicator = 2,
	Menu_Button_Indicator = 3,
	Button_Shift_Horizontal = 4,
	Button_Shift_Vertical = 5,
	Default_Frame_Width = 6,
	Spin_Box_Frame_Width = 7,
	Combo_Box_Frame_Width = 8,
	Max_Popup_Width = 9,
	Scrollbar_Extent = 10,
	Scrollbar_Slider_Min = 11,
	Slider_Thickness = 12,
	Slider_Control_Thickness = 13,
	Slider_Length = 14,
	Slider_Tick_Space_Available = 15,
	Slider_Space_Available = 16,
	Dock_Widget_Separator_Extent = 17,
	Dock_Widget_Handle_Extent = 18,
	Dock_Widget_Frame_Width = 19,
	Tab_Bar_Tab_Overlap = 20,
	Tab_Bar_Tab_Horizontal_Shift = 21,
	Tab_Bar_Tab_Vertical_Shift = 22,
	Tab_Bar_Base_Height = 23,
	Tab_Bar_Base_Overlap = 24,
	Progress_Bar_Chunk_Width = 25,
	Splitter_Width = 26,
	Title_Bar_Height = 27,
	Menu_Scrollable_Style = 28,
	Menu_Horizontal_Padding = 29,
	Menu_Vertical_Padding = 30,
	Menu_Desktop_Frame_Width = 31,
	Menu_Tearoff_Height = 32,
	Header_Margin = 33,
	Header_Mark_Size = 34,
	Header_Grip_Margin = 35,
	Tab_Bar_Tab_Shift_Horizontal = 36,
	Tab_Bar_Tab_Shift_Vertical = 37,
	Tab_Bar_Scroll_Button_Width = 38,
	Tool_Bar_Frame_Width = 39,
	Tool_Bar_Handle_Extent = 40,
	Tool_Bar_Item_Spacing = 41,
	Tool_Bar_Item_Margin = 42,
	Tool_Bar_Separator_Extent = 43,
	Tool_Bar_Extension_Extent = 44,
	Small_Icon_Size = 49,
	Large_Icon_Size = 50,
	Focus_Frame_V_Margin = 51,
	Focus_Frame_H_Margin = 52,
	Tool_Bar_Icon_Size = 53,
	Icon_View_Icon_Size = 62,
	Layout_Left_Margin = 67,
	Layout_Top_Margin = 68,
	Layout_Right_Margin = 69,
	Layout_Bottom_Margin = 70,
	Layout_Horizontal_Spacing = 71,
	Layout_Vertical_Spacing = 72,
}

Window_Flag :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#WindowType-enum
	Widget = 0x00000000,
	Window = 0x00000001,
	Dialog = 0x00000003,
	Sheet = 0x00000005,
	Popup = 0x00000009,
	Tool = 0x0000000d,
	Tool_Tip = 0x0000000f,
	Splash_Screen = 0x0000000f | 0x00000004,
	Sub_Window = 0x00000012,
	Frameless_Window_Hint = 0x00000800,
	Custom_Window_Hint = 0x00000000,
	Window_Title_Hint = 0x00001000,
	Window_System_Menu_Hint = 0x00002000,
	Window_Minimize_Button_Hint = 0x00004000,
	Window_Maximize_Button_Hint = 0x00008000,
	Window_Min_Max_Buttons_Hint = 0x0000C000,
	Window_Close_Button_Hint = 0x08000000,
	Window_Context_Help_Button_Hint = 0x00010000,
	Window_Stays_On_Top_Hint = 0x00040000,
	Window_Stays_On_Bottom_Hint = 0x04000000,
}

Window_State :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#WindowState-enum
	No_State = 0x00000000,
	Minimized = 0x00000001,
	Maximized = 0x00000002,
	Full_Screen = 0x00000004,
	Active = 0x00000008,
}

Window_Modality :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#WindowModality-enum
	Non_Modal = 0,
	Window_Modal = 1,
	Application_Modal = 2,
}

Focus_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#FocusPolicy-enum
	No_Focus = 0,
	Tab_Focus = 0x1,
	Click_Focus = 0x2,
	Strong_Focus = 0xb,
	Wheel_Focus = 0xf,
}

Widget_Attribute :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#WidgetAttribute-enum
	Delete_On_Close = 55,
	Transparent_For_Mouse_Events = 51,
	No_System_Background = 9,
	Translucent_Background = 120,
	Styled_Background = 100,
	Accepts_Touches = 122,
	Always_Show_Tool_Tips = 84,
	Hover = 74,
	Input_Method_Enabled = 14,
	Mouse_No_Mask = 71,
	Touch_Padding = 126,
	Mac_Always_Show_Tool_Window = 36,
}

Combo_Box_Insert_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qcombobox.html#InsertPolicy-enum
	No_Insert = 0,
	Insert_At_Top = 1,
	Insert_At_Current = 2,
	Insert_At_Bottom = 3,
	Insert_After_Current = 4,
	Insert_Before_Current = 5,
	Insert_Alphabetically = 6,
}

Combo_Box_Size_Adjust_Policy :: enum c.int { // https://doc.qt.io/qt-6.8/qcombobox.html#SizeAdjustPolicy-enum
	Adjust_To_Contents = 0,
	Adjust_To_Contents_On_First_Show = 1,
	Adjust_To_Minimum_Contents_Length_With_Icon = 2,
}

Icon_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qicon.html#Mode-enum
	Normal = 0,
	Disabled = 1,
	Active = 2,
	Selected = 3,
}

Icon_State :: enum c.int { // https://doc.qt.io/qt-6.8/qicon.html#State-enum
	On = 0,
	Off = 1,
}

Font_Style_Strategy :: enum c.int { // https://doc.qt.io/qt-6.8/qfont.html#StyleStrategy-enum
	Prefer_Default = 0x0001,
	Prefer_Bitmap = 0x0002,
	Prefer_Device = 0x0004,
	Prefer_Outline = 0x0008,
	Force_Outline = 0x0010,
	Prefer_Match = 0x0020,
	Prefer_Quality = 0x0040,
	Prefer_Antialias = 0x0080,
	No_Antialias = 0x0100,
	No_Font_Merging = 0x8000,
	Prefer_No_Shaping = 0x1000,
}

Font_Capitalization :: enum c.int { // https://doc.qt.io/qt-6.8/qfont.html#Capitalization-enum
	Mixed_Case = 0,
	All_Uppercase = 1,
	All_Lowercase = 2,
	Small_Caps = 3,
	Capitalize = 4,
}

Font_Hinting_Preference :: enum c.int { // https://doc.qt.io/qt-6.8/qfont.html#HintingPreference-enum
	Default_Hinting = 0,
	No_Hinting = 1,
	Vertical_Hinting = 2,
	Full_Hinting = 3,
}

Colour_Spec :: enum c.int { // https://doc.qt.io/qt-6.8/qcolor.html#Spec-enum
	Invalid = 0,
	Rgb = 1,
	Hsv = 2,
	Cmyk = 3,
	Hsl = 4,
	Extended_Rgb = 5,
}

Named_Colour_Space :: enum c.int { // https://doc.qt.io/qt-6.8/qcolorspace.html#NamedColorSpace-enum
	Srgb = 1,
	Srgb_Linear = 2,
	Adobe_Rgb = 3,
	Display_P3 = 4,
	Pro_Photo_Rgb = 5,
}

Colour_Space_Primaries :: enum c.int { // https://doc.qt.io/qt-6.8/qcolorspace.html#Primaries-enum
	Custom = 0,
	Srgb = 1,
	Adobe_Rgb = 2,
	Dci_P3_D65 = 3,
	Pro_Photo_Rgb = 4,
}

Colour_Space_Transfer_Function :: enum c.int { // https://doc.qt.io/qt-6.8/qcolorspace.html#TransferFunction-enum
	Custom = 0,
	Linear = 1,
	Gamma = 2,
	Srgb = 3,
	Pro_Photo_Rgb = 4,
}

Fill_Rule :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#FillRule-enum
	Odd_Even = 0,
	Winding = 1,
}

Timer_Type :: enum c.int { // https://doc.qt.io/qt-6.8/qt.html#TimerType-enum
	Precise = 0,
	Coarse = 1,
	Very_Coarse = 2,
}

Text_Stream_Status :: enum c.int { // https://doc.qt.io/qt-6.8/qtextstream.html#Status-enum
	Ok = 0,
	Read_Past_End = 1,
	Read_Corrupt_Data = 2,
	Write_Failed = 3,
}

Data_Stream_Status :: enum c.int { // https://doc.qt.io/qt-6.8/qdatastream.html#Status-enum
	Ok = 0,
	Read_Past_End = 1,
	Read_Corrupt_Data = 2,
	Write_Failed = 3,
	Size_Limit_Exceeded = 4,
}

Data_Stream_Byte_Order :: enum c.int { // https://doc.qt.io/qt-6.8/qdatastream.html#ByteOrder-enum
	Big_Endian = 0,
	Little_Endian = 1,
}

Data_Stream_Floating_Point_Precision :: enum c.int { // https://doc.qt.io/qt-6.8/qdatastream.html#FloatingPointPrecision-enum
	Single_Precision = 0,
	Double_Precision = 1,
}

Pdf_Version :: enum c.int { // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#PdfVersion-enum
	Version_1_4 = 0,
	Version_A1b = 1,
	Version_1_6 = 2,
}

Printer_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#PrinterMode-enum
	Screen_Resolution = 0,
	Printer_Resolution = 1,
	High_Resolution = 2,
}

Printer_Page_Order :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#PageOrder-enum
	First_Page_First = 0,
	Last_Page_First = 1,
}

Printer_Colour_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#ColorMode-enum
	Grey_Scale = 0,
	Colour = 1,
}

Printer_Paper_Source :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#PaperSource-enum
	Only_One = 0,
	Lower = 1,
	Middle = 2,
	Manual = 3,
	Envelope = 4,
	Envelope_Manual = 5,
	Auto = 6,
	Tractor = 7,
	Small_Format = 8,
	Large_Format = 9,
	Large_Capacity = 10,
	Cassette = 11,
	Form_Source = 12,
	Custom_Source = 14,
}

Printer_State :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#PrinterState-enum
	Idle = 0,
	Active = 1,
	Aborted = 2,
	Error = 3,
}

Printer_Output_Format :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#OutputFormat-enum
	Native_Format = 0,
	Pdf_Format = 1,
}

Printer_Print_Range :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#PrintRange-enum
	All_Pages = 0,
	Selection = 1,
	Page_Range = 2,
	Current_Page = 3,
}

Printer_Unit :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#Unit-enum
	Millimetre = 0,
	Point = 1,
	Inch = 2,
	Pica = 3,
	Didot = 4,
	Cicero = 5,
	Device_Pixel = 6,
}

Printer_Duplex_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qprinter.html#DuplexMode-enum
	None = 0,
	Auto = 1,
	Long_Side = 2,
	Short_Side = 3,
}

Print_Dialog_Option :: enum c.int { // https://doc.qt.io/qt-6.8/qabstractprintdialog.html#PrintDialogOption-enum
	Print_To_File = 0x0001,
	Print_Selection = 0x0002,
	Print_Page_Range = 0x0004,
	Print_Show_Page_Size = 0x0008,
	Print_Collate_Copies = 0x0010,
	Print_Current_Page = 0x0040,
}

Print_Preview_View_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#ViewMode-enum
	Single_Page_View = 0,
	Facing_Pages_View = 1,
	All_Pages_View = 2,
}

Print_Preview_Zoom_Mode :: enum c.int { // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#ZoomMode-enum
	Custom_Zoom = 0,
	Fit_To_Width = 1,
	Fit_In_View = 2,
}

Printer_Callback :: #type proc "c" (printer: Printer, user_data: rawptr)

/* ── Foreign declarations ──────────────────────────────────────────── */

@(default_calling_convention="c", link_prefix="qt_")
foreign qt_lib {

	/* QApplication */

	@(require_results) application_create :: proc(argc: ^c.int, argv: [^]cstring) -> Application --- // https://doc.qt.io/qt-6.8/qapplication.html#QApplication
	application_destroy :: proc(application: Application) --- // https://doc.qt.io/qt-6.8/qapplication.html#dtor.QApplication
	@(require_results) application_exec :: proc(application: Application) -> c.int --- // https://doc.qt.io/qt-6.8/qapplication.html#exec
	application_quit :: proc(application: Application) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#quit
	application_process_events :: proc(application: Application) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#processEvents
	application_set_application_name :: proc(application: Application, name: cstring) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#applicationName-prop
	application_set_organization_name :: proc(application: Application, name: cstring) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#organizationName-prop

	/* QMainWindow */

	@(require_results) main_window_create :: proc(parent: Widget) -> Main_Window --- // https://doc.qt.io/qt-6.8/qmainwindow.html#QMainWindow
	main_window_set_central_widget :: proc(window: Main_Window, widget: Widget) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#setCentralWidget
	@(require_results) main_window_menu_bar :: proc(window: Main_Window) -> Menu_Bar --- // https://doc.qt.io/qt-6.8/qmainwindow.html#menuBar
	main_window_add_toolbar :: proc(window: Main_Window, area: Tool_Bar_Area, toolbar: Tool_Bar) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#addToolBar
	main_window_statusbar_show_message :: proc(window: Main_Window, message: cstring, timeout_ms: c.int) --- // https://doc.qt.io/qt-6.8/qmainwindow.html
	main_window_add_dock_widget :: proc(window: Main_Window, area: Dock_Widget_Area, dock_widget: Dock_Widget) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#addDockWidget
	@(require_results) main_window_get_statusbar :: proc(window: Main_Window) -> Status_Bar --- // https://doc.qt.io/qt-6.8/qmainwindow.html#statusBar
	@(require_results) main_window_get_central_widget :: proc(window: Main_Window) -> Widget --- // https://doc.qt.io/qt-6.8/qmainwindow.html#centralWidget
	main_window_remove_dock_widget :: proc(window: Main_Window, dock_widget: Dock_Widget) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#removeDockWidget
	main_window_tabify_dock_widget :: proc(window: Main_Window, first: Dock_Widget, second: Dock_Widget) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#tabifyDockWidget
	main_window_set_dock_options :: proc(window: Main_Window, options: c.int) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#dockOptions-prop
	main_window_set_tool_button_style :: proc(window: Main_Window, style: Tool_Button_Style) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#toolButtonStyle-prop
	main_window_set_animated :: proc(window: Main_Window, is_animated: c.int) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#animated-prop
	main_window_set_corner :: proc(window: Main_Window, corner: Corner, area: Dock_Widget_Area) --- // https://doc.qt.io/qt-6.8/qmainwindow.html#setCorner
	@(require_results) main_window_save_state :: proc(window: Main_Window, out_len: ^c.int, version: c.int) -> [^]u8 --- // https://doc.qt.io/qt-6.8/qmainwindow.html#saveState
	@(require_results) main_window_restore_state :: proc(window: Main_Window, data: [^]u8, len: c.int, version: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qmainwindow.html#restoreState

	/* QWidget */

	@(require_results) widget_create :: proc(parent: Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qwidget.html#QWidget
	widget_destroy :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#dtor.QWidget
	widget_show :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#show
	widget_hide :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#hide
	widget_close :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#close
	widget_set_visible :: proc(widget: Widget, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#visible-prop
	widget_set_enabled :: proc(widget: Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#enabled-prop
	@(require_results) widget_is_enabled :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#enabled-prop
	widget_set_window_title :: proc(widget: Widget, title: cstring) --- // https://doc.qt.io/qt-6.8/qwidget.html#windowTitle-prop
	widget_resize :: proc(widget: Widget, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#resize-1
	widget_set_fixed_size :: proc(widget: Widget, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#setFixedSize
	widget_set_minimum_size :: proc(widget: Widget, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#minimumSize-prop
	widget_set_maximum_size :: proc(widget: Widget, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#maximumSize-prop
	widget_set_minimum_width :: proc(widget: Widget, width: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#minimumWidth-prop
	widget_set_minimum_height :: proc(widget: Widget, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#minimumHeight-prop
	widget_set_maximum_width :: proc(widget: Widget, width: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#maximumWidth-prop
	widget_set_maximum_height :: proc(widget: Widget, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#maximumHeight-prop
	@(require_results) widget_get_width :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#width-prop
	@(require_results) widget_get_height :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#height-prop
	@(require_results) widget_get_x :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#x-prop
	@(require_results) widget_get_y :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#y-prop
	widget_move :: proc(widget: Widget, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#move-1
	widget_set_font :: proc(widget: Widget, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#font-prop
	widget_set_focus :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#setFocus
	@(require_results) widget_has_focus :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#focus-prop
	widget_set_cursor :: proc(widget: Widget, cursor_shape: Cursor_Shape) --- // https://doc.qt.io/qt-6.8/qwidget.html#cursor-prop
	widget_update :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#update
	widget_raise :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#raise
	widget_lower :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#lower
	widget_set_tooltip :: proc(widget: Widget, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qwidget.html#toolTip-prop
	widget_set_style_sheet :: proc(widget: Widget, style_sheet: cstring) --- // https://doc.qt.io/qt-6.8/qwidget.html#styleSheet-prop
	widget_set_layout :: proc(widget: Widget, layout: Layout) --- // https://doc.qt.io/qt-6.8/qwidget.html#setLayout
	widget_set_size_policy :: proc(widget: Widget, horizontal: Size_Policy, vertical: Size_Policy) --- // https://doc.qt.io/qt-6.8/qwidget.html#sizePolicy-prop
	widget_set_context_menu_policy :: proc(widget: Widget, policy: Context_Menu_Policy) --- // https://doc.qt.io/qt-6.8/qwidget.html#contextMenuPolicy-prop
	widget_add_action :: proc(widget: Widget, action: Action) --- // https://doc.qt.io/qt-6.8/qwidget.html#addAction
	@(require_results) widget_is_visible :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#visible-prop
	@(require_results) widget_get_window_title :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qwidget.html#windowTitle-prop
	@(require_results) widget_get_tool_tip :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qwidget.html#toolTip-prop
	@(require_results) widget_get_style_sheet :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qwidget.html#styleSheet-prop
	widget_set_fixed_width :: proc(widget: Widget, width: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#setFixedWidth
	widget_set_fixed_height :: proc(widget: Widget, height: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#setFixedHeight
	widget_set_object_name :: proc(widget: Widget, name: cstring) --- // https://doc.qt.io/qt-6.8/qobject.html#setObjectName
	@(require_results) widget_get_object_name :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qobject.html#objectName-prop
	widget_set_window_flags :: proc(widget: Widget, flags: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#windowFlags-prop
	@(require_results) widget_get_window_flags :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#windowFlags-prop
	widget_set_window_state :: proc(widget: Widget, state: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#setWindowState
	@(require_results) widget_get_window_state :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#windowState
	widget_show_minimized :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#showMinimized
	widget_show_maximized :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#showMaximized
	widget_show_full_screen :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#showFullScreen
	widget_show_normal :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#showNormal
	@(require_results) widget_is_minimized :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#minimized-prop
	@(require_results) widget_is_maximized :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#maximized-prop
	@(require_results) widget_is_full_screen :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#fullScreen-prop
	widget_set_window_modality :: proc(widget: Widget, modality: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#windowModality-prop
	widget_set_window_opacity :: proc(widget: Widget, opacity: c.double) --- // https://doc.qt.io/qt-6.8/qwidget.html#windowOpacity-prop
	@(require_results) widget_get_window_opacity :: proc(widget: Widget) -> c.double --- // https://doc.qt.io/qt-6.8/qwidget.html#windowOpacity-prop
	widget_set_geometry :: proc(widget: Widget, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#geometry-prop
	widget_get_geometry :: proc(widget: Widget, out_x: ^c.int, out_y: ^c.int, out_w: ^c.int, out_h: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#geometry-prop
	widget_map_to_global :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#mapToGlobal
	widget_map_from_global :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#mapFromGlobal
	widget_map_to_parent :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#mapToParent
	widget_map_from_parent :: proc(widget: Widget, x: c.int, y: c.int, out_x: ^c.int, out_y: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#mapFromParent
	widget_set_parent :: proc(widget: Widget, parent: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#setParent
	@(require_results) widget_get_parent_widget :: proc(widget: Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qwidget.html#parentWidget
	widget_set_focus_policy :: proc(widget: Widget, policy: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#focusPolicy-prop
	widget_set_attribute :: proc(widget: Widget, attribute: c.int, on: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#setAttribute
	@(require_results) widget_test_attribute :: proc(widget: Widget, attribute: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#testAttribute
	widget_adjust_size :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#adjustSize
	widget_set_contents_margins :: proc(widget: Widget, left: c.int, top: c.int, right: c.int, bottom: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#setContentsMargins
	widget_get_contents_margins :: proc(widget: Widget, left: ^c.int, top: ^c.int, right: ^c.int, bottom: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#contentsMargins
	widget_repaint :: proc(widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#repaint
	widget_set_tab_order :: proc(first: Widget, second: Widget) --- // https://doc.qt.io/qt-6.8/qwidget.html#setTabOrder
	@(require_results) widget_grab :: proc(widget: Widget) -> Pixmap --- // https://doc.qt.io/qt-6.8/qwidget.html#grab
	widget_get_rect :: proc(widget: Widget, out_x: ^c.int, out_y: ^c.int, out_w: ^c.int, out_h: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#rect-prop
	widget_get_size :: proc(widget: Widget, out_w: ^c.int, out_h: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#size-prop
	widget_get_pos :: proc(widget: Widget, out_x: ^c.int, out_y: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#pos-prop

	/* QLabel */

	@(require_results) label_create :: proc(parent: Widget, text: cstring) -> Label --- // https://doc.qt.io/qt-6.8/qlabel.html#QLabel
	label_set_text :: proc(label: Label, text: cstring) --- // https://doc.qt.io/qt-6.8/qlabel.html#text-prop
	@(require_results) label_get_text :: proc(label: Label) -> cstring --- // https://doc.qt.io/qt-6.8/qlabel.html#text-prop
	label_set_alignment :: proc(label: Label, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qlabel.html#alignment-prop
	label_set_word_wrap :: proc(label: Label, is_word_wrap: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#wordWrap-prop
	label_clear :: proc(label: Label) --- // https://doc.qt.io/qt-6.8/qlabel.html#clear
	label_set_scaled_contents :: proc(label: Label, is_scaled: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#scaledContents-prop
	label_set_text_format :: proc(label: Label, format: Text_Format) --- // https://doc.qt.io/qt-6.8/qlabel.html#textFormat-prop
	label_set_text_interaction_flags :: proc(label: Label, flags: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#textInteractionFlags-prop
	label_set_open_external_links :: proc(label: Label, is_open: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#openExternalLinks-prop
	label_set_buddy :: proc(label: Label, buddy: Widget) --- // https://doc.qt.io/qt-6.8/qlabel.html#setBuddy
	label_set_indent :: proc(label: Label, indent: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#indent-prop
	label_set_margin :: proc(label: Label, margin: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#margin-prop

	/* QPushButton */

	@(require_results) push_button_create :: proc(parent: Widget, text: cstring) -> Push_Button --- // https://doc.qt.io/qt-6.8/qpushbutton.html#QPushButton
	push_button_set_text :: proc(button: Push_Button, text: cstring) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	@(require_results) push_button_get_text :: proc(button: Push_Button) -> cstring --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	push_button_set_flat :: proc(button: Push_Button, is_flat: c.int) --- // https://doc.qt.io/qt-6.8/qpushbutton.html#flat-prop
	@(require_results) push_button_is_flat :: proc(button: Push_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qpushbutton.html#flat-prop
	push_button_set_checkable :: proc(button: Push_Button, is_checkable: c.int) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checkable-prop
	@(require_results) push_button_is_checked :: proc(button: Push_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checked-prop
	push_button_set_checked :: proc(button: Push_Button, is_checked: c.int) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checked-prop
	push_button_set_default :: proc(button: Push_Button, is_default: c.int) --- // https://doc.qt.io/qt-6.8/qpushbutton.html#default-prop
	@(require_results) push_button_is_default :: proc(button: Push_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qpushbutton.html#default-prop
	push_button_set_auto_default :: proc(button: Push_Button, is_auto_default: c.int) --- // https://doc.qt.io/qt-6.8/qpushbutton.html#autoDefault-prop
	@(require_results) push_button_is_auto_default :: proc(button: Push_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qpushbutton.html#autoDefault-prop
	push_button_set_menu :: proc(button: Push_Button, menu: Menu) --- // https://doc.qt.io/qt-6.8/qpushbutton.html#setMenu
	push_button_show_menu :: proc(button: Push_Button) --- // https://doc.qt.io/qt-6.8/qpushbutton.html#showMenu

	/* QRadioButton */

	@(require_results) radio_button_create :: proc(parent: Widget, text: cstring) -> Radio_Button --- // https://doc.qt.io/qt-6.8/qradiobutton.html#QRadioButton
	radio_button_set_text :: proc(radio_button: Radio_Button, text: cstring) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	@(require_results) radio_button_get_text :: proc(radio_button: Radio_Button) -> cstring --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	@(require_results) radio_button_is_checked :: proc(radio_button: Radio_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checked-prop
	radio_button_set_checked :: proc(radio_button: Radio_Button, is_checked: c.int) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checked-prop

	/* QLineEdit */

	@(require_results) line_edit_create :: proc(parent: Widget) -> Line_Edit --- // https://doc.qt.io/qt-6.8/qlineedit.html#QLineEdit
	line_edit_set_text :: proc(line_edit: Line_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qlineedit.html#text-prop
	@(require_results) line_edit_get_text :: proc(line_edit: Line_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qlineedit.html#text-prop
	line_edit_set_placeholder_text :: proc(line_edit: Line_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qlineedit.html#placeholderText-prop
	line_edit_set_read_only :: proc(line_edit: Line_Edit, is_read_only: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#readOnly-prop
	line_edit_set_echo_mode :: proc(line_edit: Line_Edit, mode: Echo_Mode) --- // https://doc.qt.io/qt-6.8/qlineedit.html#echoMode-prop
	line_edit_clear :: proc(line_edit: Line_Edit) --- // https://doc.qt.io/qt-6.8/qlineedit.html#clear
	@(require_results) line_edit_is_read_only :: proc(line_edit: Line_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qlineedit.html#readOnly-prop
	@(require_results) line_edit_get_placeholder_text :: proc(line_edit: Line_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qlineedit.html#placeholderText-prop
	line_edit_select_all :: proc(line_edit: Line_Edit) --- // https://doc.qt.io/qt-6.8/qlineedit.html#selectAll
	line_edit_set_max_length :: proc(line_edit: Line_Edit, length: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#maxLength-prop
	@(require_results) line_edit_get_max_length :: proc(line_edit: Line_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qlineedit.html#maxLength-prop
	line_edit_set_alignment :: proc(line_edit: Line_Edit, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qlineedit.html#alignment-prop
	line_edit_set_cursor_position :: proc(line_edit: Line_Edit, position: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#cursorPosition-prop
	@(require_results) line_edit_get_cursor_position :: proc(line_edit: Line_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qlineedit.html#cursorPosition-prop
	line_edit_set_input_mask :: proc(line_edit: Line_Edit, mask: cstring) --- // https://doc.qt.io/qt-6.8/qlineedit.html#inputMask-prop
	@(require_results) line_edit_has_selected_text :: proc(line_edit: Line_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qlineedit.html#hasSelectedText-prop
	@(require_results) line_edit_get_selected_text :: proc(line_edit: Line_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qlineedit.html#selectedText-prop
	line_edit_set_selection :: proc(line_edit: Line_Edit, start: c.int, length: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#setSelection
	line_edit_undo :: proc(line_edit: Line_Edit) --- // https://doc.qt.io/qt-6.8/qlineedit.html#undo
	line_edit_redo :: proc(line_edit: Line_Edit) --- // https://doc.qt.io/qt-6.8/qlineedit.html#redo
	@(require_results) line_edit_is_modified :: proc(line_edit: Line_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qlineedit.html#modified-prop
	line_edit_set_modified :: proc(line_edit: Line_Edit, is_modified: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#modified-prop
	line_edit_set_drag_enabled :: proc(line_edit: Line_Edit, is_drag_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#dragEnabled-prop
	line_edit_home :: proc(line_edit: Line_Edit, is_mark: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#home
	line_edit_end :: proc(line_edit: Line_Edit, is_mark: c.int) --- // https://doc.qt.io/qt-6.8/qlineedit.html#end

	/* QTextEdit */

	@(require_results) text_edit_create :: proc(parent: Widget) -> Text_Edit --- // https://doc.qt.io/qt-6.8/qtextedit.html#QTextEdit
	text_edit_set_plain_text :: proc(text_edit: Text_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setPlainText
	@(require_results) text_edit_get_plain_text :: proc(text_edit: Text_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qtextedit.html#plainText-prop
	text_edit_set_read_only :: proc(text_edit: Text_Edit, is_read_only: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#readOnly-prop
	@(require_results) text_edit_is_read_only :: proc(text_edit: Text_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qtextedit.html#readOnly-prop
	text_edit_clear :: proc(text_edit: Text_Edit) --- // https://doc.qt.io/qt-6.8/qtextedit.html#clear
	text_edit_set_html :: proc(text_edit: Text_Edit, html: cstring) --- // https://doc.qt.io/qt-6.8/qtextedit.html#html-prop
	@(require_results) text_edit_get_html :: proc(text_edit: Text_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qtextedit.html#html-prop
	text_edit_append :: proc(text_edit: Text_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextedit.html#append
	text_edit_insert_plain_text :: proc(text_edit: Text_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextedit.html#insertPlainText
	text_edit_set_tab_stop_distance :: proc(text_edit: Text_Edit, distance: c.double) --- // https://doc.qt.io/qt-6.8/qtextedit.html#tabStopDistance-prop
	@(require_results) text_edit_get_tab_stop_distance :: proc(text_edit: Text_Edit) -> c.double --- // https://doc.qt.io/qt-6.8/qtextedit.html#tabStopDistance-prop
	text_edit_set_line_wrap_mode :: proc(text_edit: Text_Edit, mode: Text_Edit_Line_Wrap_Mode) --- // https://doc.qt.io/qt-6.8/qtextedit.html#lineWrapMode-prop
	text_edit_set_word_wrap_mode :: proc(text_edit: Text_Edit, mode: Word_Wrap_Mode) --- // https://doc.qt.io/qt-6.8/qtextedit.html#wordWrapMode-prop
	text_edit_set_accept_rich_text :: proc(text_edit: Text_Edit, is_accept: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#acceptRichText-prop
	@(require_results) text_edit_find :: proc(text_edit: Text_Edit, text: cstring, flags: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtextedit.html#find
	text_edit_undo :: proc(text_edit: Text_Edit) --- // https://doc.qt.io/qt-6.8/qtextedit.html#undo
	text_edit_redo :: proc(text_edit: Text_Edit) --- // https://doc.qt.io/qt-6.8/qtextedit.html#redo
	text_edit_zoom_in :: proc(text_edit: Text_Edit, range: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#zoomIn
	text_edit_zoom_out :: proc(text_edit: Text_Edit, range: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#zoomOut
	@(require_results) text_edit_get_text_cursor :: proc(text_edit: Text_Edit) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextedit.html#textCursor
	@(require_results) text_edit_get_document :: proc(text_edit: Text_Edit) -> Text_Document --- // https://doc.qt.io/qt-6.8/qtextedit.html#document-prop
	text_edit_set_current_font :: proc(text_edit: Text_Edit, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setCurrentFont
	text_edit_set_font_weight :: proc(text_edit: Text_Edit, weight: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setFontWeight
	text_edit_set_font_italic :: proc(text_edit: Text_Edit, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setFontItalic
	text_edit_set_font_underline :: proc(text_edit: Text_Edit, is_underline: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setFontUnderline
	text_edit_set_font_point_size :: proc(text_edit: Text_Edit, size: c.double) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setFontPointSize
	text_edit_set_font_family :: proc(text_edit: Text_Edit, family: cstring) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setFontFamily
	text_edit_set_text_colour :: proc(text_edit: Text_Edit, colour: Colour_Handle) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setTextColor
	text_edit_set_text_background_colour :: proc(text_edit: Text_Edit, colour: Colour_Handle) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setTextBackgroundColor
	text_edit_set_alignment :: proc(text_edit: Text_Edit, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setAlignment
	text_edit_move_cursor :: proc(text_edit: Text_Edit, operation: Text_Cursor_Move_Operation, mode: Text_Cursor_Move_Mode) --- // https://doc.qt.io/qt-6.8/qtextedit.html#moveCursor
	text_edit_ensure_cursor_visible :: proc(text_edit: Text_Edit) --- // https://doc.qt.io/qt-6.8/qtextedit.html#ensureCursorVisible
	text_edit_set_overwrite_mode :: proc(text_edit: Text_Edit, is_overwrite: c.int) --- // https://doc.qt.io/qt-6.8/qtextedit.html#overwriteMode-prop
	@(require_results) text_edit_can_paste :: proc(text_edit: Text_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qtextedit.html#canPaste
	@(require_results) text_edit_get_vertical_scroll_bar :: proc(text_edit: Text_Edit) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#verticalScrollBar
	@(require_results) text_edit_get_horizontal_scroll_bar :: proc(text_edit: Text_Edit) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#horizontalScrollBar

	/* QPlainTextEdit */

	@(require_results) plain_text_edit_create :: proc(parent: Widget) -> Plain_Text_Edit --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#QPlainTextEdit
	plain_text_edit_set_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#setPlainText
	@(require_results) plain_text_edit_get_plain_text :: proc(plain_text_edit: Plain_Text_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#plainText-prop
	plain_text_edit_set_read_only :: proc(plain_text_edit: Plain_Text_Edit, is_read_only: c.int) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#readOnly-prop
	@(require_results) plain_text_edit_is_read_only :: proc(plain_text_edit: Plain_Text_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#readOnly-prop
	plain_text_edit_clear :: proc(plain_text_edit: Plain_Text_Edit) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#clear
	plain_text_edit_append_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#appendPlainText
	plain_text_edit_insert_plain_text :: proc(plain_text_edit: Plain_Text_Edit, text: cstring) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#insertPlainText
	plain_text_edit_set_tab_stop_distance :: proc(plain_text_edit: Plain_Text_Edit, distance: c.double) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#tabStopDistance-prop
	@(require_results) plain_text_edit_get_tab_stop_distance :: proc(plain_text_edit: Plain_Text_Edit) -> c.double --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#tabStopDistance-prop
	plain_text_edit_set_line_wrap_mode :: proc(plain_text_edit: Plain_Text_Edit, mode: Plain_Text_Edit_Line_Wrap_Mode) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#lineWrapMode-prop
	@(require_results) plain_text_edit_find :: proc(plain_text_edit: Plain_Text_Edit, text: cstring, flags: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#find
	plain_text_edit_undo :: proc(plain_text_edit: Plain_Text_Edit) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#undo
	plain_text_edit_redo :: proc(plain_text_edit: Plain_Text_Edit) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#redo
	plain_text_edit_zoom_in :: proc(plain_text_edit: Plain_Text_Edit, range: c.int) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#zoomIn
	plain_text_edit_zoom_out :: proc(plain_text_edit: Plain_Text_Edit, range: c.int) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#zoomOut
	@(require_results) plain_text_edit_get_text_cursor :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#textCursor
	@(require_results) plain_text_edit_get_document :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Document --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#document
	@(require_results) plain_text_edit_get_block_count :: proc(plain_text_edit: Plain_Text_Edit) -> c.int --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#blockCount-prop
	plain_text_edit_set_maximum_block_count :: proc(plain_text_edit: Plain_Text_Edit, count: c.int) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#maximumBlockCount-prop
	plain_text_edit_move_cursor :: proc(plain_text_edit: Plain_Text_Edit, operation: Text_Cursor_Move_Operation, mode: Text_Cursor_Move_Mode) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#moveCursor
	plain_text_edit_ensure_cursor_visible :: proc(plain_text_edit: Plain_Text_Edit) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#ensureCursorVisible
	plain_text_edit_set_overwrite_mode :: proc(plain_text_edit: Plain_Text_Edit, is_overwrite: c.int) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#overwriteMode-prop
	@(require_results) plain_text_edit_get_vertical_scroll_bar :: proc(plain_text_edit: Plain_Text_Edit) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#verticalScrollBar
	@(require_results) plain_text_edit_get_horizontal_scroll_bar :: proc(plain_text_edit: Plain_Text_Edit) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#horizontalScrollBar

	/* QCheckBox */

	@(require_results) check_box_create :: proc(parent: Widget, text: cstring) -> Check_Box --- // https://doc.qt.io/qt-6.8/qcheckbox.html#QCheckBox
	@(require_results) check_box_is_checked :: proc(check_box: Check_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checked-prop
	check_box_set_checked :: proc(check_box: Check_Box, is_checked: c.int) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#checked-prop
	check_box_set_text :: proc(check_box: Check_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	@(require_results) check_box_get_text :: proc(check_box: Check_Box) -> cstring --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	check_box_set_tristate :: proc(check_box: Check_Box, is_tristate: c.int) --- // https://doc.qt.io/qt-6.8/qcheckbox.html#tristate-prop
	@(require_results) check_box_is_tristate :: proc(check_box: Check_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qcheckbox.html#tristate-prop
	@(require_results) check_box_get_check_state :: proc(check_box: Check_Box) -> Check_State --- // https://doc.qt.io/qt-6.8/qcheckbox.html#checkState
	check_box_set_check_state :: proc(check_box: Check_Box, state: Check_State) --- // https://doc.qt.io/qt-6.8/qcheckbox.html#setCheckState

	/* QComboBox */

	@(require_results) combo_box_create :: proc(parent: Widget) -> Combo_Box --- // https://doc.qt.io/qt-6.8/qcombobox.html#QComboBox
	combo_box_add_item :: proc(combo_box: Combo_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qcombobox.html#addItem
	combo_box_remove_item :: proc(combo_box: Combo_Box, index: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#removeItem
	@(require_results) combo_box_get_current_index :: proc(combo_box: Combo_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qcombobox.html#currentIndex-prop
	combo_box_set_current_index :: proc(combo_box: Combo_Box, index: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#currentIndex-prop
	@(require_results) combo_box_get_current_text :: proc(combo_box: Combo_Box) -> cstring --- // https://doc.qt.io/qt-6.8/qcombobox.html#currentText-prop
	@(require_results) combo_box_get_count :: proc(combo_box: Combo_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qcombobox.html#count-prop
	combo_box_clear :: proc(combo_box: Combo_Box) --- // https://doc.qt.io/qt-6.8/qcombobox.html#clear
	combo_box_set_editable :: proc(combo_box: Combo_Box, is_editable: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#editable-prop
	combo_box_insert_item :: proc(combo_box: Combo_Box, index: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qcombobox.html#insertItem
	combo_box_set_item_text :: proc(combo_box: Combo_Box, index: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qcombobox.html#setItemText
	@(require_results) combo_box_get_item_text :: proc(combo_box: Combo_Box, index: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qcombobox.html#itemText
	@(require_results) combo_box_find_text :: proc(combo_box: Combo_Box, text: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qcombobox.html#findText
	combo_box_set_current_text :: proc(combo_box: Combo_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qcombobox.html#currentText-prop
	combo_box_add_items :: proc(combo_box: Combo_Box, items: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#addItems
	combo_box_insert_items :: proc(combo_box: Combo_Box, index: c.int, items: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#insertItems
	combo_box_set_max_visible_items :: proc(combo_box: Combo_Box, max_items: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#maxVisibleItems-prop
	combo_box_set_max_count :: proc(combo_box: Combo_Box, max_count: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#maxCount-prop
	combo_box_set_insert_policy :: proc(combo_box: Combo_Box, policy: Combo_Box_Insert_Policy) --- // https://doc.qt.io/qt-6.8/qcombobox.html#insertPolicy-prop
	combo_box_set_duplicates_enabled :: proc(combo_box: Combo_Box, is_duplicates_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qcombobox.html#duplicatesEnabled-prop
	@(require_results) combo_box_get_line_edit :: proc(combo_box: Combo_Box) -> Line_Edit --- // https://doc.qt.io/qt-6.8/qcombobox.html#lineEdit
	combo_box_show_popup :: proc(combo_box: Combo_Box) --- // https://doc.qt.io/qt-6.8/qcombobox.html#showPopup
	combo_box_hide_popup :: proc(combo_box: Combo_Box) --- // https://doc.qt.io/qt-6.8/qcombobox.html#hidePopup
	combo_box_set_model :: proc(combo_box: Combo_Box, model: Abstract_Item_Model) --- // https://doc.qt.io/qt-6.8/qcombobox.html#setModel
	@(require_results) combo_box_get_model :: proc(combo_box: Combo_Box) -> Abstract_Item_Model --- // https://doc.qt.io/qt-6.8/qcombobox.html#model
	combo_box_set_size_adjust_policy :: proc(combo_box: Combo_Box, policy: Combo_Box_Size_Adjust_Policy) --- // https://doc.qt.io/qt-6.8/qcombobox.html#sizeAdjustPolicy-prop

	/* QSlider */

	@(require_results) slider_create :: proc(orientation: Orientation, parent: Widget) -> Slider --- // https://doc.qt.io/qt-6.8/qslider.html#QSlider
	slider_set_range :: proc(slider: Slider, min_val: c.int, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#setRange
	@(require_results) slider_get_value :: proc(slider: Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractslider.html#value-prop
	slider_set_value :: proc(slider: Slider, value: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#value-prop
	slider_set_tick_position :: proc(slider: Slider, position: Tick_Position) --- // https://doc.qt.io/qt-6.8/qslider.html#tickPosition-prop
	slider_set_tick_interval :: proc(slider: Slider, interval: c.int) --- // https://doc.qt.io/qt-6.8/qslider.html#tickInterval-prop
	slider_set_single_step :: proc(slider: Slider, step: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#singleStep-prop
	slider_set_page_step :: proc(slider: Slider, step: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#pageStep-prop
	slider_set_orientation :: proc(slider: Slider, orientation: Orientation) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#orientation-prop
	slider_set_minimum :: proc(slider: Slider, min_val: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#minimum-prop
	slider_set_maximum :: proc(slider: Slider, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#maximum-prop
	@(require_results) slider_get_minimum :: proc(slider: Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractslider.html#minimum-prop
	@(require_results) slider_get_maximum :: proc(slider: Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractslider.html#maximum-prop
	slider_set_inverted_appearance :: proc(slider: Slider, is_inverted: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#invertedAppearance-prop
	slider_set_inverted_controls :: proc(slider: Slider, is_inverted: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#invertedControls-prop

	/* QProgressBar */

	@(require_results) progress_bar_create :: proc(parent: Widget) -> Progress_Bar --- // https://doc.qt.io/qt-6.8/qprogressbar.html#QProgressBar
	progress_bar_set_range :: proc(progress_bar: Progress_Bar, min_val: c.int, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#setRange
	@(require_results) progress_bar_get_value :: proc(progress_bar: Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qprogressbar.html#value-prop
	progress_bar_set_value :: proc(progress_bar: Progress_Bar, value: c.int) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#value-prop
	progress_bar_set_format :: proc(progress_bar: Progress_Bar, format: cstring) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#format-prop
	progress_bar_set_text_visible :: proc(progress_bar: Progress_Bar, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#textVisible-prop
	progress_bar_reset :: proc(progress_bar: Progress_Bar) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#reset
	progress_bar_set_orientation :: proc(progress_bar: Progress_Bar, orientation: Orientation) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#orientation-prop
	progress_bar_set_minimum :: proc(progress_bar: Progress_Bar, min_val: c.int) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#minimum-prop
	progress_bar_set_maximum :: proc(progress_bar: Progress_Bar, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qprogressbar.html#maximum-prop
	@(require_results) progress_bar_get_minimum :: proc(progress_bar: Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qprogressbar.html#minimum-prop
	@(require_results) progress_bar_get_maximum :: proc(progress_bar: Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qprogressbar.html#maximum-prop
	@(require_results) progress_bar_is_text_visible :: proc(progress_bar: Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qprogressbar.html#textVisible-prop
	@(require_results) progress_bar_get_text :: proc(progress_bar: Progress_Bar) -> cstring --- // https://doc.qt.io/qt-6.8/qprogressbar.html#text-prop

	/* QSpinBox */

	@(require_results) spin_box_create :: proc(parent: Widget) -> Spin_Box --- // https://doc.qt.io/qt-6.8/qspinbox.html#QSpinBox
	spin_box_set_range :: proc(spin_box: Spin_Box, min_val: c.int, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qspinbox.html#setRange
	@(require_results) spin_box_get_value :: proc(spin_box: Spin_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qspinbox.html#value-prop
	spin_box_set_value :: proc(spin_box: Spin_Box, value: c.int) --- // https://doc.qt.io/qt-6.8/qspinbox.html#value-prop
	spin_box_set_prefix :: proc(spin_box: Spin_Box, prefix: cstring) --- // https://doc.qt.io/qt-6.8/qspinbox.html#prefix-prop
	spin_box_set_suffix :: proc(spin_box: Spin_Box, suffix: cstring) --- // https://doc.qt.io/qt-6.8/qspinbox.html#suffix-prop
	spin_box_set_single_step :: proc(spin_box: Spin_Box, step: c.int) --- // https://doc.qt.io/qt-6.8/qspinbox.html#singleStep-prop
	spin_box_set_read_only :: proc(spin_box: Spin_Box, is_read_only: c.int) --- // https://doc.qt.io/qt-6.8/qabstractspinbox.html#readOnly-prop
	@(require_results) spin_box_is_read_only :: proc(spin_box: Spin_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractspinbox.html#readOnly-prop
	spin_box_set_wrapping :: proc(spin_box: Spin_Box, is_wrapping: c.int) --- // https://doc.qt.io/qt-6.8/qabstractspinbox.html#wrapping-prop

	/* QDoubleSpinBox */

	@(require_results) double_spin_box_create :: proc(parent: Widget) -> Double_Spin_Box --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#QDoubleSpinBox
	double_spin_box_set_range :: proc(double_spin_box: Double_Spin_Box, min_val: c.double, max_val: c.double) --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#setRange
	@(require_results) double_spin_box_get_value :: proc(double_spin_box: Double_Spin_Box) -> c.double --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#value-prop
	double_spin_box_set_value :: proc(double_spin_box: Double_Spin_Box, value: c.double) --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#value-prop
	double_spin_box_set_decimals :: proc(double_spin_box: Double_Spin_Box, decimals: c.int) --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#decimals-prop
	double_spin_box_set_single_step :: proc(double_spin_box: Double_Spin_Box, step: c.double) --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#singleStep-prop
	double_spin_box_set_prefix :: proc(double_spin_box: Double_Spin_Box, prefix: cstring) --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#prefix-prop
	double_spin_box_set_suffix :: proc(double_spin_box: Double_Spin_Box, suffix: cstring) --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#suffix-prop
	double_spin_box_set_read_only :: proc(double_spin_box: Double_Spin_Box, is_read_only: c.int) --- // https://doc.qt.io/qt-6.8/qabstractspinbox.html#readOnly-prop
	@(require_results) double_spin_box_is_read_only :: proc(double_spin_box: Double_Spin_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractspinbox.html#readOnly-prop
	double_spin_box_set_wrapping :: proc(double_spin_box: Double_Spin_Box, is_wrapping: c.int) --- // https://doc.qt.io/qt-6.8/qabstractspinbox.html#wrapping-prop

	/* Layouts (QVBoxLayout, QHBoxLayout, QGridLayout, QFormLayout) */

	@(require_results) vbox_layout_create :: proc(parent: Widget) -> Layout --- // https://doc.qt.io/qt-6.8/qvboxlayout.html#QVBoxLayout
	@(require_results) hbox_layout_create :: proc(parent: Widget) -> Layout --- // https://doc.qt.io/qt-6.8/qhboxlayout.html#QHBoxLayout
	@(require_results) grid_layout_create :: proc(parent: Widget) -> Layout --- // https://doc.qt.io/qt-6.8/qgridlayout.html#QGridLayout
	@(require_results) form_layout_create :: proc(parent: Widget) -> Layout --- // https://doc.qt.io/qt-6.8/qformlayout.html#QFormLayout
	layout_add_widget :: proc(layout: Layout, widget: Widget) --- // https://doc.qt.io/qt-6.8/qlayout.html#addWidget
	grid_layout_add_widget :: proc(layout: Layout, widget: Widget, row: c.int, col: c.int, row_span: c.int, col_span: c.int) --- // https://doc.qt.io/qt-6.8/qgridlayout.html#addWidget
	form_layout_add_row :: proc(layout: Layout, label: cstring, widget: Widget) --- // https://doc.qt.io/qt-6.8/qformlayout.html#addRow
	box_layout_add_layout :: proc(layout: Layout, child_layout: Layout) --- // https://doc.qt.io/qt-6.8/qboxlayout.html#addLayout
	box_layout_add_stretch :: proc(layout: Layout, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qboxlayout.html#addStretch
	box_layout_add_spacing :: proc(layout: Layout, size: c.int) --- // https://doc.qt.io/qt-6.8/qboxlayout.html#addSpacing
	box_layout_add_widget_with_stretch :: proc(layout: Layout, widget: Widget, stretch: c.int, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qboxlayout.html
	layout_set_spacing :: proc(layout: Layout, spacing: c.int) --- // https://doc.qt.io/qt-6.8/qlayout.html#spacing-prop
	layout_set_contents_margins :: proc(layout: Layout, left: c.int, top: c.int, right: c.int, bottom: c.int) --- // https://doc.qt.io/qt-6.8/qlayout.html#setContentsMargins
	layout_remove_widget :: proc(layout: Layout, widget: Widget) --- // https://doc.qt.io/qt-6.8/qlayout.html#removeWidget
	grid_layout_set_row_stretch :: proc(layout: Layout, row: c.int, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qgridlayout.html#setRowStretch
	grid_layout_set_column_stretch :: proc(layout: Layout, column: c.int, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qgridlayout.html#setColumnStretch
	grid_layout_add_layout :: proc(layout: Layout, child_layout: Layout, row: c.int, col: c.int, row_span: c.int, col_span: c.int) --- // https://doc.qt.io/qt-6.8/qgridlayout.html#addLayout
	form_layout_add_row_widgets :: proc(layout: Layout, label_widget: Widget, field_widget: Widget) --- // https://doc.qt.io/qt-6.8/qformlayout.html
	@(require_results) layout_get_count :: proc(layout: Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qlayout.html#count
	@(require_results) layout_item_at :: proc(layout: Layout, index: c.int) -> Layout_Item --- // https://doc.qt.io/qt-6.8/qlayoutitem.html
	@(require_results) layout_take_at :: proc(layout: Layout, index: c.int) -> Layout_Item --- // https://doc.qt.io/qt-6.8/qlayout.html#takeAt
	@(require_results) layout_item_get_widget :: proc(item: Layout_Item) -> Widget --- // https://doc.qt.io/qt-6.8/qlayoutitem.html#widget
	layout_item_destroy :: proc(item: Layout_Item) --- // https://doc.qt.io/qt-6.8/qlayoutitem.html#dtor.QLayoutItem
	box_layout_insert_widget :: proc(layout: Layout, index: c.int, widget: Widget, stretch: c.int, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qboxlayout.html#insertWidget
	@(require_results) spacer_item_create :: proc(width: c.int, height: c.int, horizontal_policy: Size_Policy, vertical_policy: Size_Policy) -> Spacer_Item --- // https://doc.qt.io/qt-6.8/qspaceritem.html#QSpacerItem
	box_layout_add_spacer_item :: proc(layout: Layout, spacer: Spacer_Item) --- // https://doc.qt.io/qt-6.8/qboxlayout.html#addSpacerItem
	grid_layout_add_spacer_item :: proc(layout: Layout, spacer: Spacer_Item, row: c.int, col: c.int, row_span: c.int, col_span: c.int) --- // https://doc.qt.io/qt-6.8/qgridlayout.html
	@(require_results) layout_set_widget_alignment :: proc(layout: Layout, widget: Widget, alignment: Alignment) -> c.int --- // https://doc.qt.io/qt-6.8/qlayout.html#setAlignment

	/* QListWidget */

	@(require_results) list_widget_create :: proc(parent: Widget) -> List_Widget --- // https://doc.qt.io/qt-6.8/qlistwidget.html#QListWidget
	list_widget_add_item :: proc(list_widget: List_Widget, text: cstring) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#addItem
	list_widget_remove_item :: proc(list_widget: List_Widget, row: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidget.html
	@(require_results) list_widget_get_current_row :: proc(list_widget: List_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidget.html#currentRow-prop
	list_widget_set_current_row :: proc(list_widget: List_Widget, row: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#setCurrentRow
	@(require_results) list_widget_get_count :: proc(list_widget: List_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidget.html#count-prop
	list_widget_clear :: proc(list_widget: List_Widget) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#clear
	@(require_results) list_widget_get_item_text :: proc(list_widget: List_Widget, row: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qlistwidget.html
	list_widget_insert_item :: proc(list_widget: List_Widget, row: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#insertItem
	list_widget_sort_items :: proc(list_widget: List_Widget, order: Sort_Order) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#sortItems
	list_widget_set_selection_mode :: proc(list_widget: List_Widget, mode: Selection_Mode) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionMode-prop
	@(require_results) list_widget_get_item :: proc(list_widget: List_Widget, row: c.int) -> List_Widget_Item --- // https://doc.qt.io/qt-6.8/qlistwidget.html#item
	@(require_results) list_widget_get_item_at :: proc(list_widget: List_Widget, x: c.int, y: c.int) -> List_Widget_Item --- // https://doc.qt.io/qt-6.8/qlistwidget.html#itemAt
	@(require_results) list_widget_get_current_item :: proc(list_widget: List_Widget) -> List_Widget_Item --- // https://doc.qt.io/qt-6.8/qlistwidget.html#currentItem
	list_widget_set_current_item :: proc(list_widget: List_Widget, item: List_Widget_Item) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#setCurrentItem
	list_widget_get_selected_items :: proc(list_widget: List_Widget, out_items: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#selectedItems
	list_widget_add_items :: proc(list_widget: List_Widget, items: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#addItems
	list_widget_find_items :: proc(list_widget: List_Widget, text: cstring, flags: Match_Flag, out_items: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#findItems
	list_widget_scroll_to_item :: proc(list_widget: List_Widget, item: List_Widget_Item, scroll_hint: Scroll_Hint) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#scrollToItem
	list_widget_set_view_mode :: proc(list_widget: List_Widget, mode: List_Widget_View_Mode) --- // https://doc.qt.io/qt-6.8/qlistview.html#viewMode-prop
	list_widget_set_icon_size :: proc(list_widget: List_Widget, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#iconSize-prop
	list_widget_set_grid_size :: proc(list_widget: List_Widget, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qlistview.html#gridSize-prop
	list_widget_set_flow :: proc(list_widget: List_Widget, flow: List_View_Flow) --- // https://doc.qt.io/qt-6.8/qlistview.html#flow-prop
	list_widget_set_spacing :: proc(list_widget: List_Widget, spacing: c.int) --- // https://doc.qt.io/qt-6.8/qlistview.html#spacing-prop
	list_widget_set_sorting_enabled :: proc(list_widget: List_Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#sortingEnabled-prop

	/* QListWidgetItem */

	@(require_results) list_widget_item_create :: proc(text: cstring) -> List_Widget_Item --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#QListWidgetItem
	list_widget_item_set_text :: proc(item: List_Widget_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setText
	@(require_results) list_widget_item_get_text :: proc(item: List_Widget_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#text
	list_widget_item_set_font :: proc(item: List_Widget_Item, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setFont
	list_widget_item_set_foreground :: proc(item: List_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setForeground
	list_widget_item_set_background :: proc(item: List_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setBackground
	list_widget_item_set_icon :: proc(item: List_Widget_Item, icon: Icon) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setIcon
	list_widget_item_set_flags :: proc(item: List_Widget_Item, flags: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setFlags
	@(require_results) list_widget_item_get_flags :: proc(item: List_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#flags
	list_widget_item_set_size_hint :: proc(item: List_Widget_Item, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setSizeHint
	list_widget_item_set_text_alignment :: proc(item: List_Widget_Item, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setTextAlignment
	@(require_results) list_widget_item_get_text_alignment :: proc(item: List_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#textAlignment
	list_widget_item_set_tool_tip :: proc(item: List_Widget_Item, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setToolTip
	@(require_results) list_widget_item_get_tool_tip :: proc(item: List_Widget_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#toolTip
	list_widget_item_set_check_state :: proc(item: List_Widget_Item, state: Check_State) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setCheckState
	@(require_results) list_widget_item_get_check_state :: proc(item: List_Widget_Item) -> Check_State --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#checkState
	list_widget_item_set_hidden :: proc(item: List_Widget_Item, is_hidden: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setHidden
	@(require_results) list_widget_item_is_hidden :: proc(item: List_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#isHidden
	list_widget_item_set_selected :: proc(item: List_Widget_Item, is_selected: c.int) --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#setSelected
	@(require_results) list_widget_item_is_selected :: proc(item: List_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html#isSelected
	@(require_results) list_widget_item_get_row :: proc(item: List_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qlistwidgetitem.html
	list_widget_add_item_object :: proc(list_widget: List_Widget, item: List_Widget_Item) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#addItem
	list_widget_insert_item_object :: proc(list_widget: List_Widget, row: c.int, item: List_Widget_Item) --- // https://doc.qt.io/qt-6.8/qlistwidget.html#insertItem

	/* QTreeWidget */

	@(require_results) tree_widget_create :: proc(parent: Widget) -> Tree_Widget --- // https://doc.qt.io/qt-6.8/qtreewidget.html#QTreeWidget
	tree_widget_set_column_count :: proc(tree_widget: Tree_Widget, count: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#columnCount-prop
	tree_widget_set_header_labels :: proc(tree_widget: Tree_Widget, labels: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#setHeaderLabels
	tree_widget_add_top_level_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#addTopLevelItem
	tree_widget_clear :: proc(tree_widget: Tree_Widget) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#clear
	@(require_results) tree_widget_get_top_level_item_count :: proc(tree_widget: Tree_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidget.html#topLevelItemCount-prop
	@(require_results) tree_widget_get_current_item :: proc(tree_widget: Tree_Widget) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidget.html#currentItem
	tree_widget_remove_top_level_item :: proc(tree_widget: Tree_Widget, index: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidget.html
	tree_widget_set_current_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#setCurrentItem
	tree_widget_expand_all :: proc(tree_widget: Tree_Widget) --- // https://doc.qt.io/qt-6.8/qtreeview.html#expandAll
	tree_widget_collapse_all :: proc(tree_widget: Tree_Widget) --- // https://doc.qt.io/qt-6.8/qtreeview.html#collapseAll
	tree_widget_expand_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#expandItem
	tree_widget_collapse_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#collapseItem
	tree_widget_set_selection_mode :: proc(tree_widget: Tree_Widget, mode: Selection_Mode) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionMode-prop
	tree_widget_set_sorting_enabled :: proc(tree_widget: Tree_Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#sortingEnabled-prop
	tree_widget_insert_top_level_item :: proc(tree_widget: Tree_Widget, index: c.int, item: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#insertTopLevelItem
	@(require_results) tree_widget_get_top_level_item :: proc(tree_widget: Tree_Widget, index: c.int) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidget.html#topLevelItem
	@(require_results) tree_widget_index_of_top_level_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidget.html#indexOfTopLevelItem
	tree_widget_get_selected_items :: proc(tree_widget: Tree_Widget, out_items: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#selectedItems
	tree_widget_find_items :: proc(tree_widget: Tree_Widget, text: cstring, flags: Match_Flag, column: c.int, out_items: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#findItems
	tree_widget_scroll_to_item :: proc(tree_widget: Tree_Widget, item: Tree_Widget_Item, scroll_hint: Scroll_Hint) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#scrollToItem
	tree_widget_sort_items :: proc(tree_widget: Tree_Widget, column: c.int, order: Sort_Order) --- // https://doc.qt.io/qt-6.8/qtreewidget.html#sortItems
	tree_widget_set_indentation :: proc(tree_widget: Tree_Widget, indentation: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#indentation-prop
	tree_widget_set_uniform_row_heights :: proc(tree_widget: Tree_Widget, is_uniform: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#uniformRowHeights-prop
	tree_widget_set_animated :: proc(tree_widget: Tree_Widget, is_animated: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#animated-prop
	tree_widget_set_header_hidden :: proc(tree_widget: Tree_Widget, is_hidden: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#headerHidden-prop

	/* QTreeWidgetItem */

	@(require_results) tree_widget_item_create :: proc(texts: [^]cstring, count: c.int) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#QTreeWidgetItem
	tree_widget_item_add_child :: proc(item: Tree_Widget_Item, child: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#addChild
	tree_widget_item_set_text :: proc(item: Tree_Widget_Item, column: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setText
	@(require_results) tree_widget_item_get_text :: proc(item: Tree_Widget_Item, column: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#text
	@(require_results) tree_widget_item_child_count :: proc(item: Tree_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#childCount
	@(require_results) tree_widget_item_get_child :: proc(item: Tree_Widget_Item, index: c.int) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#child
	@(require_results) tree_widget_item_get_parent :: proc(item: Tree_Widget_Item) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#parent
	tree_widget_item_remove_child :: proc(item: Tree_Widget_Item, child: Tree_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#removeChild
	tree_widget_item_set_expanded :: proc(item: Tree_Widget_Item, is_expanded: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setExpanded
	@(require_results) tree_widget_item_is_expanded :: proc(item: Tree_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#isExpanded
	tree_widget_item_set_icon :: proc(item: Tree_Widget_Item, column: c.int, icon: Icon) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setIcon
	tree_widget_item_set_check_state :: proc(item: Tree_Widget_Item, column: c.int, state: Check_State) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setCheckState
	@(require_results) tree_widget_item_get_check_state :: proc(item: Tree_Widget_Item, column: c.int) -> Check_State --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#checkState
	tree_widget_item_set_flags :: proc(item: Tree_Widget_Item, flags: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setFlags
	tree_widget_item_set_data :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role, value: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setData
	@(require_results) tree_widget_item_get_data :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#data
	tree_widget_item_set_data_string :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role, value: cstring) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setData
	@(require_results) tree_widget_item_get_data_string :: proc(item: Tree_Widget_Item, column: c.int, role: Item_Data_Role) -> cstring --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#data
	tree_widget_item_set_tool_tip :: proc(item: Tree_Widget_Item, column: c.int, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setToolTip
	tree_widget_item_set_hidden :: proc(item: Tree_Widget_Item, is_hidden: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setHidden
	@(require_results) tree_widget_item_is_hidden :: proc(item: Tree_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#isHidden
	tree_widget_item_set_disabled :: proc(item: Tree_Widget_Item, is_disabled: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setDisabled
	@(require_results) tree_widget_item_is_disabled :: proc(item: Tree_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#isDisabled
	tree_widget_item_set_selected :: proc(item: Tree_Widget_Item, is_selected: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setSelected
	@(require_results) tree_widget_item_is_selected :: proc(item: Tree_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#isSelected
	tree_widget_item_set_first_column_spanned :: proc(item: Tree_Widget_Item, is_spanned: c.int) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#setFirstColumnSpanned
	@(require_results) tree_widget_item_get_tree_widget :: proc(item: Tree_Widget_Item) -> Tree_Widget --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#treeWidget
	@(require_results) tree_widget_item_take_child :: proc(item: Tree_Widget_Item, index: c.int) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#takeChild
	tree_widget_item_sort_children :: proc(item: Tree_Widget_Item, column: c.int, order: Sort_Order) --- // https://doc.qt.io/qt-6.8/qtreewidgetitem.html#sortChildren

	/* QTreeWidgetItemIterator */

	@(require_results) tree_widget_item_iterator_create :: proc(tree: Tree_Widget, flags: c.int) -> Tree_Widget_Item_Iterator --- // https://doc.qt.io/qt-6.8/qtreewidgetitemiterator.html#QTreeWidgetItemIterator
	tree_widget_item_iterator_destroy :: proc(iter: Tree_Widget_Item_Iterator) --- // https://doc.qt.io/qt-6.8/qtreewidgetitemiterator.html#dtor.QTreeWidgetItemIterator
	@(require_results) tree_widget_item_iterator_is_valid :: proc(iter: Tree_Widget_Item_Iterator) -> c.int --- // https://doc.qt.io/qt-6.8/qtreewidgetitemiterator.html#QTreeWidgetItemIterator
	@(require_results) tree_widget_item_iterator_get_item :: proc(iter: Tree_Widget_Item_Iterator) -> Tree_Widget_Item --- // https://doc.qt.io/qt-6.8/qtreewidgetitemiterator.html#QTreeWidgetItemIterator
	tree_widget_item_iterator_next :: proc(iter: Tree_Widget_Item_Iterator) --- // https://doc.qt.io/qt-6.8/qtreewidgetitemiterator.html#operator-2b-2b

	/* QTableWidget */

	@(require_results) table_widget_create :: proc(rows: c.int, cols: c.int, parent: Widget) -> Table_Widget --- // https://doc.qt.io/qt-6.8/qtablewidget.html#QTableWidget
	table_widget_set_row_count :: proc(table_widget: Table_Widget, count: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setRowCount
	table_widget_set_column_count :: proc(table_widget: Table_Widget, count: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setColumnCount
	table_widget_set_horizontal_header_labels :: proc(table_widget: Table_Widget, labels: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setHorizontalHeaderLabels
	table_widget_set_vertical_header_labels :: proc(table_widget: Table_Widget, labels: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setVerticalHeaderLabels
	table_widget_set_item :: proc(table_widget: Table_Widget, row: c.int, col: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setItem
	@(require_results) table_widget_get_item_text :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qtablewidget.html
	@(require_results) table_widget_get_current_row :: proc(table_widget: Table_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidget.html#currentRow
	@(require_results) table_widget_get_current_column :: proc(table_widget: Table_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidget.html#currentColumn
	@(require_results) table_widget_get_row_count :: proc(table_widget: Table_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidget.html#rowCount
	@(require_results) table_widget_get_column_count :: proc(table_widget: Table_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidget.html#columnCount
	table_widget_clear :: proc(table_widget: Table_Widget) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#clear
	table_widget_clear_contents :: proc(table_widget: Table_Widget) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#clearContents
	table_widget_insert_row :: proc(table_widget: Table_Widget, row: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#insertRow
	table_widget_insert_column :: proc(table_widget: Table_Widget, column: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#insertColumn
	table_widget_remove_row :: proc(table_widget: Table_Widget, row: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#removeRow
	table_widget_remove_column :: proc(table_widget: Table_Widget, column: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#removeColumn
	table_widget_set_selection_mode :: proc(table_widget: Table_Widget, mode: Selection_Mode) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionMode-prop
	table_widget_set_selection_behaviour :: proc(table_widget: Table_Widget, behaviour: Selection_Behaviour) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionBehavior-prop
	table_widget_set_alternating_row_colours :: proc(table_widget: Table_Widget, is_alternating: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#alternatingRowColors-prop
	table_widget_set_sorting_enabled :: proc(table_widget: Table_Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#setSortingEnabled
	table_widget_set_column_width :: proc(table_widget: Table_Widget, column: c.int, width: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#setColumnWidth
	table_widget_set_row_height :: proc(table_widget: Table_Widget, row: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#setRowHeight
	table_widget_resize_columns_to_contents :: proc(table_widget: Table_Widget) --- // https://doc.qt.io/qt-6.8/qtableview.html#resizeColumnsToContents
	table_widget_resize_rows_to_contents :: proc(table_widget: Table_Widget) --- // https://doc.qt.io/qt-6.8/qtableview.html#resizeRowsToContents
	table_widget_set_cell_widget :: proc(table_widget: Table_Widget, row: c.int, col: c.int, widget: Widget) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setCellWidget
	@(require_results) table_widget_get_cell_widget :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qtablewidget.html#cellWidget
	@(require_results) table_widget_get_item :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> Table_Widget_Item --- // https://doc.qt.io/qt-6.8/qtablewidget.html#item
	@(require_results) table_widget_get_current_item :: proc(table_widget: Table_Widget) -> Table_Widget_Item --- // https://doc.qt.io/qt-6.8/qtablewidget.html#currentItem
	table_widget_set_current_cell :: proc(table_widget: Table_Widget, row: c.int, col: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setCurrentCell
	table_widget_get_selected_items :: proc(table_widget: Table_Widget, out_items: ^[^]Table_Widget_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#selectedItems
	table_widget_set_show_grid :: proc(table_widget: Table_Widget, is_show: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#showGrid-prop
	table_widget_set_span :: proc(table_widget: Table_Widget, row: c.int, col: c.int, row_span: c.int, col_span: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#setSpan
	@(require_results) table_widget_get_row_span :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtableview.html#rowSpan
	@(require_results) table_widget_get_column_span :: proc(table_widget: Table_Widget, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtableview.html#columnSpan
	table_widget_scroll_to_item :: proc(table_widget: Table_Widget, item: Table_Widget_Item, scroll_hint: Scroll_Hint) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#scrollToItem
	table_widget_find_items :: proc(table_widget: Table_Widget, text: cstring, flags: Match_Flag, out_items: ^[^]Table_Widget_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#findItems
	table_widget_set_word_wrap :: proc(table_widget: Table_Widget, is_word_wrap: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#wordWrap-prop
	table_widget_set_corner_button_enabled :: proc(table_widget: Table_Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#cornerButtonEnabled-prop

	/* QTableWidgetItem */

	@(require_results) table_widget_item_create :: proc(text: cstring) -> Table_Widget_Item --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#QTableWidgetItem
	table_widget_item_set_text :: proc(item: Table_Widget_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setText
	@(require_results) table_widget_item_get_text :: proc(item: Table_Widget_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#text
	table_widget_item_set_font :: proc(item: Table_Widget_Item, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setFont
	table_widget_item_set_foreground :: proc(item: Table_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setForeground
	table_widget_item_set_background :: proc(item: Table_Widget_Item, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setBackground
	table_widget_item_set_icon :: proc(item: Table_Widget_Item, icon: Icon) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setIcon
	table_widget_item_set_flags :: proc(item: Table_Widget_Item, flags: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setFlags
	@(require_results) table_widget_item_get_flags :: proc(item: Table_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#flags
	table_widget_item_set_text_alignment :: proc(item: Table_Widget_Item, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setTextAlignment
	@(require_results) table_widget_item_get_text_alignment :: proc(item: Table_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#textAlignment
	table_widget_item_set_tool_tip :: proc(item: Table_Widget_Item, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setToolTip
	@(require_results) table_widget_item_get_tool_tip :: proc(item: Table_Widget_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#toolTip
	table_widget_item_set_check_state :: proc(item: Table_Widget_Item, state: Check_State) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setCheckState
	@(require_results) table_widget_item_get_check_state :: proc(item: Table_Widget_Item) -> Check_State --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#checkState
	table_widget_item_set_data :: proc(item: Table_Widget_Item, role: c.int, value: cstring) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setData
	@(require_results) table_widget_item_get_data :: proc(item: Table_Widget_Item, role: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#data
	table_widget_item_set_size_hint :: proc(item: Table_Widget_Item, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setSizeHint
	@(require_results) table_widget_item_get_row :: proc(item: Table_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#row
	@(require_results) table_widget_item_get_column :: proc(item: Table_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#column
	table_widget_item_set_selected :: proc(item: Table_Widget_Item, is_selected: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#setSelected
	@(require_results) table_widget_item_is_selected :: proc(item: Table_Widget_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidgetitem.html#isSelected
	table_widget_set_item_object :: proc(table_widget: Table_Widget, row: c.int, col: c.int, item: Table_Widget_Item) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setItem

	/* QTableWidgetSelectionRange */

	@(require_results) table_widget_get_selection_ranges :: proc(table_widget: Table_Widget, out_ranges: ^[^]c.int, out_count: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtablewidget.html
	table_widget_free_selection_ranges :: proc(ranges: [^]c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html
	table_widget_set_range_selected :: proc(table_widget: Table_Widget, top_row: c.int, left_col: c.int, bottom_row: c.int, right_col: c.int, is_selected: c.int) --- // https://doc.qt.io/qt-6.8/qtablewidget.html#setRangeSelected

	/* QFileIconProvider */

	@(require_results) file_icon_provider_create :: proc() -> File_Icon_Provider --- // https://doc.qt.io/qt-6.8/qfileiconprovider.html#QFileIconProvider
	file_icon_provider_destroy :: proc(provider: File_Icon_Provider) --- // https://doc.qt.io/qt-6.8/qfileiconprovider.html#dtor.QFileIconProvider
	@(require_results) file_icon_provider_get_icon_for_file :: proc(provider: File_Icon_Provider, file_path: cstring) -> Icon --- // https://doc.qt.io/qt-6.8/qfileiconprovider.html
	@(require_results) file_icon_provider_get_icon_for_type :: proc(provider: File_Icon_Provider, icon_type: c.int) -> Icon --- // https://doc.qt.io/qt-6.8/qfileiconprovider.html

	/* QScrollArea */

	@(require_results) scroll_area_create :: proc(parent: Widget) -> Scroll_Area --- // https://doc.qt.io/qt-6.8/qscrollarea.html#QScrollArea
	scroll_area_set_widget :: proc(scroll_area: Scroll_Area, widget: Widget) --- // https://doc.qt.io/qt-6.8/qscrollarea.html#setWidget
	scroll_area_set_widget_resizable :: proc(scroll_area: Scroll_Area, is_resizable: c.int) --- // https://doc.qt.io/qt-6.8/qscrollarea.html#widgetResizable-prop
	@(require_results) scroll_area_get_widget :: proc(scroll_area: Scroll_Area) -> Widget --- // https://doc.qt.io/qt-6.8/qscrollarea.html#widget
	scroll_area_set_horizontal_scroll_bar_policy :: proc(scroll_area: Scroll_Area, policy: Scroll_Bar_Policy) --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#horizontalScrollBarPolicy-prop
	scroll_area_set_vertical_scroll_bar_policy :: proc(scroll_area: Scroll_Area, policy: Scroll_Bar_Policy) --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#verticalScrollBarPolicy-prop
	scroll_area_ensure_visible :: proc(scroll_area: Scroll_Area, x: c.int, y: c.int, x_margin: c.int, y_margin: c.int) --- // https://doc.qt.io/qt-6.8/qscrollarea.html#ensureVisible
	scroll_area_ensure_widget_visible :: proc(scroll_area: Scroll_Area, widget: Widget, x_margin: c.int, y_margin: c.int) --- // https://doc.qt.io/qt-6.8/qscrollarea.html#ensureWidgetVisible
	@(require_results) scroll_area_take_widget :: proc(scroll_area: Scroll_Area) -> Widget --- // https://doc.qt.io/qt-6.8/qscrollarea.html#takeWidget
	@(require_results) scroll_area_get_vertical_scroll_bar :: proc(scroll_area: Scroll_Area) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#verticalScrollBar
	@(require_results) scroll_area_get_horizontal_scroll_bar :: proc(scroll_area: Scroll_Area) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#horizontalScrollBar
	scroll_area_set_alignment :: proc(scroll_area: Scroll_Area, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qscrollarea.html#alignment-prop

	/* QSplitter */

	@(require_results) splitter_create :: proc(orientation: Orientation, parent: Widget) -> Splitter --- // https://doc.qt.io/qt-6.8/qsplitter.html#QSplitter
	splitter_add_widget :: proc(splitter: Splitter, widget: Widget) --- // https://doc.qt.io/qt-6.8/qsplitter.html#addWidget
	splitter_set_sizes :: proc(splitter: Splitter, sizes: [^]c.int, count: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#setSizes
	splitter_get_sizes :: proc(splitter: Splitter, sizes_out: [^]c.int, count: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#sizes
	splitter_set_stretch_factor :: proc(splitter: Splitter, index: c.int, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#setStretchFactor
	@(require_results) splitter_get_count :: proc(splitter: Splitter) -> c.int --- // https://doc.qt.io/qt-6.8/qsplitter.html#count
	splitter_set_collapsible :: proc(splitter: Splitter, index: c.int, is_collapsible: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#setCollapsible
	@(require_results) splitter_get_widget :: proc(splitter: Splitter, index: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qsplitter.html#widget
	@(require_results) splitter_index_of :: proc(splitter: Splitter, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qsplitter.html#indexOf
	splitter_set_children_collapsible :: proc(splitter: Splitter, is_collapsible: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#childrenCollapsible-prop
	splitter_set_opaque_resize :: proc(splitter: Splitter, is_opaque: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#opaqueResize-prop
	splitter_set_handle_width :: proc(splitter: Splitter, width: c.int) --- // https://doc.qt.io/qt-6.8/qsplitter.html#handleWidth-prop
	@(require_results) splitter_save_state :: proc(splitter: Splitter, out_len: ^c.int) -> [^]byte --- // https://doc.qt.io/qt-6.8/qsplitter.html#saveState
	@(require_results) splitter_restore_state :: proc(splitter: Splitter, data: [^]byte, len: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qsplitter.html#restoreState

	/* QStackedWidget */

	@(require_results) stacked_widget_create :: proc(parent: Widget) -> Stacked_Widget --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#QStackedWidget
	@(require_results) stacked_widget_add_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#addWidget
	stacked_widget_set_current_index :: proc(stacked_widget: Stacked_Widget, index: c.int) --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#currentIndex-prop
	@(require_results) stacked_widget_get_current_index :: proc(stacked_widget: Stacked_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#currentIndex-prop
	@(require_results) stacked_widget_get_count :: proc(stacked_widget: Stacked_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#count-prop
	stacked_widget_remove_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#removeWidget
	@(require_results) stacked_widget_get_widget :: proc(stacked_widget: Stacked_Widget, index: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#widget
	@(require_results) stacked_widget_index_of :: proc(stacked_widget: Stacked_Widget, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#indexOf
	stacked_widget_set_current_widget :: proc(stacked_widget: Stacked_Widget, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#setCurrentWidget

	/* QFrame */

	@(require_results) frame_create :: proc(parent: Widget) -> Frame --- // https://doc.qt.io/qt-6.8/qframe.html#QFrame
	frame_set_frame_shape :: proc(frame: Frame, shape: Frame_Shape) --- // https://doc.qt.io/qt-6.8/qframe.html#frameShape-prop
	frame_set_frame_shadow :: proc(frame: Frame, shadow: Frame_Shadow) --- // https://doc.qt.io/qt-6.8/qframe.html#frameShadow-prop
	frame_set_line_width :: proc(frame: Frame, width: c.int) --- // https://doc.qt.io/qt-6.8/qframe.html#lineWidth-prop
	@(require_results) frame_get_frame_shape :: proc(frame: Frame) -> Frame_Shape --- // https://doc.qt.io/qt-6.8/qframe.html#frameShape-prop
	@(require_results) frame_get_frame_shadow :: proc(frame: Frame) -> Frame_Shadow --- // https://doc.qt.io/qt-6.8/qframe.html#frameShadow-prop
	@(require_results) frame_get_line_width :: proc(frame: Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qframe.html#lineWidth-prop
	frame_set_mid_line_width :: proc(frame: Frame, width: c.int) --- // https://doc.qt.io/qt-6.8/qframe.html#midLineWidth-prop
	@(require_results) frame_get_mid_line_width :: proc(frame: Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qframe.html#midLineWidth-prop

	/* QMenuBar */

	@(require_results) menu_bar_add_menu :: proc(menu_bar: Menu_Bar, title: cstring) -> Menu --- // https://doc.qt.io/qt-6.8/qmenubar.html#addMenu
	menu_bar_clear :: proc(menu_bar: Menu_Bar) --- // https://doc.qt.io/qt-6.8/qmenubar.html#clear

	/* QMenu */

	@(require_results) menu_create :: proc(parent: Widget) -> Menu --- // https://doc.qt.io/qt-6.8/qmenu.html#QMenu
	@(require_results) menu_add_action :: proc(menu: Menu, text: cstring) -> Action --- // https://doc.qt.io/qt-6.8/qwidget.html#addAction
	menu_add_separator :: proc(menu: Menu) --- // https://doc.qt.io/qt-6.8/qmenu.html#addSeparator
	@(require_results) menu_add_menu :: proc(menu: Menu, title: cstring) -> Menu --- // https://doc.qt.io/qt-6.8/qmenu.html#addMenu
	menu_popup :: proc(menu: Menu, global_x: c.int, global_y: c.int) --- // https://doc.qt.io/qt-6.8/qmenu.html#popup
	menu_clear :: proc(menu: Menu) --- // https://doc.qt.io/qt-6.8/qmenu.html#clear
	@(require_results) menu_add_section :: proc(menu: Menu, text: cstring) -> Action --- // https://doc.qt.io/qt-6.8/qmenu.html#addSection
	menu_insert_action :: proc(menu: Menu, before: Action, action: Action) --- // https://doc.qt.io/qt-6.8/qwidget.html#insertAction
	@(require_results) menu_insert_separator :: proc(menu: Menu, before: Action) -> Action --- // https://doc.qt.io/qt-6.8/qmenu.html#insertSeparator
	@(require_results) menu_insert_menu :: proc(menu: Menu, before: Action, submenu: Menu) -> Action --- // https://doc.qt.io/qt-6.8/qmenu.html#insertMenu
	menu_set_title :: proc(menu: Menu, title: cstring) --- // https://doc.qt.io/qt-6.8/qmenu.html#title-prop
	@(require_results) menu_get_title :: proc(menu: Menu) -> cstring --- // https://doc.qt.io/qt-6.8/qmenu.html#title-prop
	menu_set_icon :: proc(menu: Menu, icon: Icon) --- // https://doc.qt.io/qt-6.8/qmenu.html#icon-prop
	menu_set_tear_off_enabled :: proc(menu: Menu, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qmenu.html#tearOffEnabled-prop
	menu_set_default_action :: proc(menu: Menu, action: Action) --- // https://doc.qt.io/qt-6.8/qmenu.html#setDefaultAction
	menu_get_actions :: proc(menu: Menu, out_actions: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qmenu.html#actions
	@(require_results) menu_is_empty :: proc(menu: Menu) -> c.int --- // https://doc.qt.io/qt-6.8/qmenu.html#isEmpty

	/* QAction */

	action_set_enabled :: proc(action: Action, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qaction.html#enabled-prop
	action_set_shortcut :: proc(action: Action, shortcut: cstring) --- // https://doc.qt.io/qt-6.8/qaction.html#setShortcut
	action_set_checkable :: proc(action: Action, is_checkable: c.int) --- // https://doc.qt.io/qt-6.8/qaction.html#checkable-prop
	@(require_results) action_is_checked :: proc(action: Action) -> c.int --- // https://doc.qt.io/qt-6.8/qaction.html#checked-prop
	action_set_checked :: proc(action: Action, is_checked: c.int) --- // https://doc.qt.io/qt-6.8/qaction.html#checked-prop
	action_set_tooltip :: proc(action: Action, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qaction.html#toolTip-prop
	action_set_text :: proc(action: Action, text: cstring) --- // https://doc.qt.io/qt-6.8/qaction.html#text-prop
	@(require_results) action_get_text :: proc(action: Action) -> cstring --- // https://doc.qt.io/qt-6.8/qaction.html#text-prop
	@(require_results) action_is_enabled :: proc(action: Action) -> c.int --- // https://doc.qt.io/qt-6.8/qaction.html#enabled-prop
	@(require_results) action_is_checkable :: proc(action: Action) -> c.int --- // https://doc.qt.io/qt-6.8/qaction.html#checkable-prop
	action_set_visible :: proc(action: Action, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qaction.html#visible-prop
	@(require_results) action_is_visible :: proc(action: Action) -> c.int --- // https://doc.qt.io/qt-6.8/qaction.html#visible-prop
	action_set_shortcut_context :: proc(action: Action, shortcut_context: Shortcut_Context) --- // https://doc.qt.io/qt-6.8/qaction.html#shortcutContext-prop
	action_set_status_tip :: proc(action: Action, tip: cstring) --- // https://doc.qt.io/qt-6.8/qaction.html#statusTip-prop
	action_set_whats_this :: proc(action: Action, text: cstring) --- // https://doc.qt.io/qt-6.8/qaction.html#whatsThis-prop
	action_set_auto_repeat :: proc(action: Action, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qaction.html#autoRepeat-prop
	action_set_data :: proc(action: Action, data: cstring) --- // https://doc.qt.io/qt-6.8/qaction.html#setData
	@(require_results) action_get_data :: proc(action: Action) -> cstring --- // https://doc.qt.io/qt-6.8/qaction.html#data
	action_trigger :: proc(action: Action) --- // https://doc.qt.io/qt-6.8/qaction.html#trigger
	action_set_menu_role :: proc(action: Action, role: Menu_Role) --- // https://doc.qt.io/qt-6.8/qaction.html#menuRole-prop

	/* QToolBar */

	@(require_results) toolbar_create :: proc(parent: Widget, title: cstring) -> Tool_Bar --- // https://doc.qt.io/qt-6.8/qtoolbar.html#QToolBar
	@(require_results) toolbar_add_action :: proc(toolbar: Tool_Bar, text: cstring) -> Action --- // https://doc.qt.io/qt-6.8/qtoolbar.html
	toolbar_add_separator :: proc(toolbar: Tool_Bar) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#addSeparator
	toolbar_add_widget :: proc(toolbar: Tool_Bar, widget: Widget) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#addWidget
	toolbar_set_movable :: proc(toolbar: Tool_Bar, is_movable: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#movable-prop
	@(require_results) toolbar_is_movable :: proc(toolbar: Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qtoolbar.html#movable-prop
	toolbar_set_icon_size :: proc(toolbar: Tool_Bar, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#iconSize-prop
	toolbar_set_tool_button_style :: proc(toolbar: Tool_Bar, style: Tool_Button_Style) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#toolButtonStyle-prop
	toolbar_insert_action :: proc(toolbar: Tool_Bar, before: Action, action: Action) --- // https://doc.qt.io/qt-6.8/qwidget.html#insertAction
	@(require_results) toolbar_insert_separator :: proc(toolbar: Tool_Bar, before: Action) -> Action --- // https://doc.qt.io/qt-6.8/qtoolbar.html#insertSeparator
	@(require_results) toolbar_insert_widget :: proc(toolbar: Tool_Bar, before: Action, widget: Widget) -> Action --- // https://doc.qt.io/qt-6.8/qtoolbar.html#insertWidget
	toolbar_set_allowed_areas :: proc(toolbar: Tool_Bar, areas: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#allowedAreas-prop
	toolbar_set_floatable :: proc(toolbar: Tool_Bar, is_floatable: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#floatable-prop
	toolbar_set_orientation :: proc(toolbar: Tool_Bar, orientation: Orientation) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#orientation-prop
	@(require_results) toolbar_toggle_view_action :: proc(toolbar: Tool_Bar) -> Action --- // https://doc.qt.io/qt-6.8/qtoolbar.html#toggleViewAction
	@(require_results) toolbar_widget_for_action :: proc(toolbar: Tool_Bar, action: Action) -> Widget --- // https://doc.qt.io/qt-6.8/qtoolbar.html#widgetForAction
	toolbar_clear :: proc(toolbar: Tool_Bar) --- // https://doc.qt.io/qt-6.8/qtoolbar.html#clear

	/* QTabWidget */

	@(require_results) tab_widget_create :: proc(parent: Widget) -> Tab_Widget --- // https://doc.qt.io/qt-6.8/qtabwidget.html#QTabWidget
	@(require_results) tab_widget_add_tab :: proc(tab_widget: Tab_Widget, widget: Widget, label: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtabwidget.html#addTab
	@(require_results) tab_widget_get_current_index :: proc(tab_widget: Tab_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtabwidget.html#currentIndex-prop
	tab_widget_set_current_index :: proc(tab_widget: Tab_Widget, index: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#currentIndex-prop
	@(require_results) tab_widget_get_count :: proc(tab_widget: Tab_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtabwidget.html#count-prop
	tab_widget_set_tab_text :: proc(tab_widget: Tab_Widget, index: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#setTabText
	tab_widget_remove_tab :: proc(tab_widget: Tab_Widget, index: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#removeTab
	@(require_results) tab_widget_insert_tab :: proc(tab_widget: Tab_Widget, index: c.int, widget: Widget, label: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtabwidget.html#insertTab
	tab_widget_set_tab_enabled :: proc(tab_widget: Tab_Widget, index: c.int, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#setTabEnabled
	@(require_results) tab_widget_is_tab_enabled :: proc(tab_widget: Tab_Widget, index: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtabwidget.html#isTabEnabled
	tab_widget_set_tabs_closable :: proc(tab_widget: Tab_Widget, is_closable: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#tabsClosable-prop
	tab_widget_set_movable :: proc(tab_widget: Tab_Widget, is_movable: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#movable-prop
	@(require_results) tab_widget_get_widget :: proc(tab_widget: Tab_Widget, index: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qtabwidget.html#widget
	@(require_results) tab_widget_index_of :: proc(tab_widget: Tab_Widget, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qtabwidget.html#indexOf
	@(require_results) tab_widget_get_current_widget :: proc(tab_widget: Tab_Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qtabwidget.html#currentWidget
	tab_widget_clear :: proc(tab_widget: Tab_Widget) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#clear
	tab_widget_set_document_mode :: proc(tab_widget: Tab_Widget, is_document_mode: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#documentMode-prop
	tab_widget_set_elide_mode :: proc(tab_widget: Tab_Widget, mode: Elide_Mode) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#elideMode-prop
	tab_widget_set_uses_scroll_buttons :: proc(tab_widget: Tab_Widget, is_uses: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#usesScrollButtons-prop
	tab_widget_set_tab_bar_auto_hide :: proc(tab_widget: Tab_Widget, is_auto_hide: c.int) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#tabBarAutoHide-prop
	tab_widget_set_corner_widget :: proc(tab_widget: Tab_Widget, widget: Widget, corner: Corner) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#setCornerWidget

	/* QGroupBox */

	@(require_results) group_box_create :: proc(parent: Widget, title: cstring) -> Group_Box --- // https://doc.qt.io/qt-6.8/qgroupbox.html#QGroupBox
	group_box_set_title :: proc(group_box: Group_Box, title: cstring) --- // https://doc.qt.io/qt-6.8/qgroupbox.html#title-prop
	group_box_set_checkable :: proc(group_box: Group_Box, is_checkable: c.int) --- // https://doc.qt.io/qt-6.8/qgroupbox.html#checkable-prop
	@(require_results) group_box_is_checked :: proc(group_box: Group_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qgroupbox.html#checked-prop
	group_box_set_checked :: proc(group_box: Group_Box, is_checked: c.int) --- // https://doc.qt.io/qt-6.8/qgroupbox.html#checked-prop
	@(require_results) group_box_get_title :: proc(group_box: Group_Box) -> cstring --- // https://doc.qt.io/qt-6.8/qgroupbox.html#title-prop
	group_box_set_flat :: proc(group_box: Group_Box, is_flat: c.int) --- // https://doc.qt.io/qt-6.8/qgroupbox.html#flat-prop
	@(require_results) group_box_is_flat :: proc(group_box: Group_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qgroupbox.html#flat-prop
	group_box_set_alignment :: proc(group_box: Group_Box, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qgroupbox.html#alignment-prop

	/* QDialog */

	@(require_results) dialog_create :: proc(parent: Widget) -> Dialog --- // https://doc.qt.io/qt-6.8/qdialog.html#QDialog
	@(require_results) dialog_exec :: proc(dialog: Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qdialog.html#exec
	dialog_accept :: proc(dialog: Dialog) --- // https://doc.qt.io/qt-6.8/qdialog.html#accept
	dialog_reject :: proc(dialog: Dialog) --- // https://doc.qt.io/qt-6.8/qdialog.html#reject
	dialog_set_modal :: proc(dialog: Dialog, is_modal: c.int) --- // https://doc.qt.io/qt-6.8/qdialog.html#modal-prop
	dialog_open :: proc(dialog: Dialog) --- // https://doc.qt.io/qt-6.8/qdialog.html#open
	dialog_done :: proc(dialog: Dialog, result: c.int) --- // https://doc.qt.io/qt-6.8/qdialog.html#done
	dialog_set_result :: proc(dialog: Dialog, result: c.int) --- // https://doc.qt.io/qt-6.8/qdialog.html#setResult
	@(require_results) dialog_get_result :: proc(dialog: Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qdialog.html#result
	dialog_set_size_grip_enabled :: proc(dialog: Dialog, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qdialog.html#sizeGripEnabled-prop

	/* QDockWidget */

	@(require_results) dock_widget_create :: proc(parent: Widget, title: cstring) -> Dock_Widget --- // https://doc.qt.io/qt-6.8/qdockwidget.html#QDockWidget
	dock_widget_set_widget :: proc(dock_widget: Dock_Widget, widget: Widget) --- // https://doc.qt.io/qt-6.8/qdockwidget.html#setWidget
	dock_widget_set_allowed_areas :: proc(dock_widget: Dock_Widget, areas: c.int) --- // https://doc.qt.io/qt-6.8/qdockwidget.html#allowedAreas-prop
	dock_widget_set_features :: proc(dock_widget: Dock_Widget, features: c.int) --- // https://doc.qt.io/qt-6.8/qdockwidget.html#features-prop
	@(require_results) dock_widget_is_floating :: proc(dock_widget: Dock_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qdockwidget.html#floating-prop
	dock_widget_set_floating :: proc(dock_widget: Dock_Widget, is_floating: c.int) --- // https://doc.qt.io/qt-6.8/qdockwidget.html#floating-prop
	@(require_results) dock_widget_toggle_view_action :: proc(dock_widget: Dock_Widget) -> Action --- // https://doc.qt.io/qt-6.8/qdockwidget.html#toggleViewAction
	dock_widget_set_title_bar_widget :: proc(dock_widget: Dock_Widget, widget: Widget) --- // https://doc.qt.io/qt-6.8/qdockwidget.html#setTitleBarWidget
	@(require_results) dock_widget_get_title_bar_widget :: proc(dock_widget: Dock_Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qdockwidget.html#titleBarWidget

	/* QStatusBar */

	statusbar_show_message :: proc(statusbar: Status_Bar, message: cstring, timeout_ms: c.int) --- // https://doc.qt.io/qt-6.8/qstatusbar.html#showMessage
	statusbar_clear_message :: proc(statusbar: Status_Bar) --- // https://doc.qt.io/qt-6.8/qstatusbar.html#clearMessage
	statusbar_add_permanent_widget :: proc(statusbar: Status_Bar, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstatusbar.html#addPermanentWidget
	statusbar_add_widget :: proc(statusbar: Status_Bar, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstatusbar.html#addWidget
	statusbar_remove_widget :: proc(statusbar: Status_Bar, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstatusbar.html#removeWidget
	@(require_results) statusbar_insert_widget :: proc(statusbar: Status_Bar, index: c.int, widget: Widget, stretch: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qstatusbar.html#insertWidget
	@(require_results) statusbar_insert_permanent_widget :: proc(statusbar: Status_Bar, index: c.int, widget: Widget, stretch: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qstatusbar.html#insertPermanentWidget
	@(require_results) statusbar_get_current_message :: proc(statusbar: Status_Bar) -> cstring --- // https://doc.qt.io/qt-6.8/qstatusbar.html#currentMessage
	statusbar_set_size_grip_enabled :: proc(statusbar: Status_Bar, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qstatusbar.html#sizeGripEnabled-prop

	/* QTimer */

	@(require_results) timer_create :: proc(parent: Widget) -> Timer --- // https://doc.qt.io/qt-6.8/qtimer.html#QTimer
	timer_destroy :: proc(timer: Timer) --- // https://doc.qt.io/qt-6.8/qtimer.html#dtor.QTimer
	timer_start :: proc(timer: Timer, interval_ms: c.int) --- // https://doc.qt.io/qt-6.8/qtimer.html#start
	timer_stop :: proc(timer: Timer) --- // https://doc.qt.io/qt-6.8/qtimer.html#stop
	timer_set_single_shot :: proc(timer: Timer, is_single_shot: c.int) --- // https://doc.qt.io/qt-6.8/qtimer.html#singleShot-prop
	@(require_results) timer_is_active :: proc(timer: Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qtimer.html#isActive
	@(require_results) timer_get_interval :: proc(timer: Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qtimer.html#interval-prop
	@(require_results) timer_get_remaining_time :: proc(timer: Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qtimer.html#remainingTime-prop
	timer_single_shot :: proc(interval_ms: c.int, callback: Callback, user_data: rawptr) --- // https://doc.qt.io/qt-6.8/qtimer.html#singleShot
	timer_set_interval :: proc(timer: Timer, interval_ms: c.int) --- // https://doc.qt.io/qt-6.8/qtimer.html#interval-prop
	timer_set_timer_type :: proc(timer: Timer, timer_type: c.int) --- // https://doc.qt.io/qt-6.8/qtimer.html#timerType-prop

	/* QPixmap */

	@(require_results) pixmap_create_from_file :: proc(file_path: cstring) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#QPixmap
	pixmap_destroy :: proc(pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qpixmap.html#dtor.QPixmap
	@(require_results) pixmap_get_width :: proc(pixmap: Pixmap) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmap.html#width
	@(require_results) pixmap_get_height :: proc(pixmap: Pixmap) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmap.html#height
	@(require_results) pixmap_is_null :: proc(pixmap: Pixmap) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmap.html#isNull
	@(require_results) pixmap_scaled :: proc(pixmap: Pixmap, w: c.int, h: c.int, aspect_ratio_mode: Aspect_Ratio_Mode, transform_mode: Transformation_Mode) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#scaled
	@(require_results) pixmap_scaled_to_width :: proc(pixmap: Pixmap, width: c.int, transform_mode: Transformation_Mode) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#scaledToWidth
	@(require_results) pixmap_scaled_to_height :: proc(pixmap: Pixmap, height: c.int, transform_mode: Transformation_Mode) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#scaledToHeight
	pixmap_fill :: proc(pixmap: Pixmap, colour: Colour_Handle) --- // https://doc.qt.io/qt-6.8/qpixmap.html#fill
	@(require_results) pixmap_save :: proc(pixmap: Pixmap, file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmap.html#save
	@(require_results) pixmap_load :: proc(pixmap: Pixmap, file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmap.html#load
	@(require_results) pixmap_copy :: proc(pixmap: Pixmap, x: c.int, y: c.int, w: c.int, h: c.int) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#copy
	pixmap_get_size :: proc(pixmap: Pixmap, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qpixmap.html#size
	pixmap_get_rect :: proc(pixmap: Pixmap, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qpixmap.html#rect
	@(require_results) pixmap_from_image :: proc(image: Image) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#fromImage
	@(require_results) pixmap_create_mask_from_colour :: proc(pixmap: Pixmap, colour: Colour_Handle, mode: Mask_Mode) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#QPixmap
	pixmap_set_mask :: proc(pixmap: Pixmap, bitmap: Bitmap) --- // https://doc.qt.io/qt-6.8/qpixmap.html#setMask
	@(require_results) pixmap_get_mask :: proc(pixmap: Pixmap) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#mask

	/* QPixmapCache */

	@(require_results) pixmap_cache_get_cache_limit :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qpixmapcache.html#cacheLimit
	pixmap_cache_set_cache_limit :: proc(kilobytes: c.int) --- // https://doc.qt.io/qt-6.8/qpixmapcache.html#setCacheLimit
	@(require_results) pixmap_cache_find :: proc(key: cstring, pixmap_out: Pixmap) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmapcache.html#find
	@(require_results) pixmap_cache_insert :: proc(key: cstring, pixmap: Pixmap) -> c.int --- // https://doc.qt.io/qt-6.8/qpixmapcache.html#insert
	pixmap_cache_remove :: proc(key: cstring) --- // https://doc.qt.io/qt-6.8/qpixmapcache.html#remove
	pixmap_cache_clear :: proc() --- // https://doc.qt.io/qt-6.8/qpixmapcache.html#clear

	/* QIcon */

	@(require_results) icon_create :: proc() -> Icon --- // https://doc.qt.io/qt-6.8/qicon.html#QIcon
	@(require_results) icon_create_from_file :: proc(file_path: cstring) -> Icon --- // https://doc.qt.io/qt-6.8/qicon.html#QIcon
	@(require_results) icon_create_from_pixmap :: proc(pixmap: Pixmap) -> Icon --- // https://doc.qt.io/qt-6.8/qicon.html#QIcon
	icon_destroy :: proc(icon: Icon) --- // https://doc.qt.io/qt-6.8/qicon.html#dtor.QIcon
	@(require_results) icon_is_null :: proc(icon: Icon) -> c.int --- // https://doc.qt.io/qt-6.8/qicon.html#isNull
	icon_add_file :: proc(icon: Icon, filename: cstring, w: c.int, h: c.int, mode: Icon_Mode, state: Icon_State) --- // https://doc.qt.io/qt-6.8/qicon.html#addFile
	icon_add_pixmap :: proc(icon: Icon, pixmap: Pixmap, mode: Icon_Mode, state: Icon_State) --- // https://doc.qt.io/qt-6.8/qicon.html#addPixmap
	@(require_results) icon_get_pixmap :: proc(icon: Icon, w: c.int, h: c.int, mode: Icon_Mode, state: Icon_State) -> Pixmap --- // https://doc.qt.io/qt-6.8/qicon.html#pixmap
	@(require_results) icon_from_theme :: proc(name: cstring) -> Icon --- // https://doc.qt.io/qt-6.8/qicon.html#fromTheme
	@(require_results) icon_has_theme_icon :: proc(name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qicon.html#hasThemeIcon
	icon_set_theme_name :: proc(name: cstring) --- // https://doc.qt.io/qt-6.8/qicon.html#setThemeName
	@(require_results) icon_get_theme_name :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qicon.html#themeName
	icon_get_available_sizes :: proc(icon: Icon, mode: Icon_Mode, state: Icon_State, out_sizes: ^[^]c.int, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qicon.html#availableSizes
	icon_free_available_sizes :: proc(sizes: [^]c.int) --- // https://doc.qt.io/qt-6.8/qicon.html

	/* Icon/pixmap setters on existing widgets */

	push_button_set_icon :: proc(button: Push_Button, icon: Icon) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#icon-prop
	action_set_icon :: proc(action: Action, icon: Icon) --- // https://doc.qt.io/qt-6.8/qaction.html#icon-prop
	widget_set_window_icon :: proc(widget: Widget, icon: Icon) --- // https://doc.qt.io/qt-6.8/qwidget.html#windowIcon-prop
	tab_widget_set_tab_icon :: proc(tab_widget: Tab_Widget, index: c.int, icon: Icon) --- // https://doc.qt.io/qt-6.8/qtabwidget.html#setTabIcon
	label_set_pixmap :: proc(label: Label, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qlabel.html#pixmap-prop

	/* QShortcut */

	@(require_results) shortcut_create :: proc(parent: Widget, key_sequence: cstring) -> Shortcut --- // https://doc.qt.io/qt-6.8/qshortcut.html#QShortcut
	shortcut_destroy :: proc(shortcut: Shortcut) --- // https://doc.qt.io/qt-6.8/qshortcut.html#dtor.QShortcut
	shortcut_set_key :: proc(shortcut: Shortcut, key_sequence: cstring) --- // https://doc.qt.io/qt-6.8/qshortcut.html#key-prop
	shortcut_set_enabled :: proc(shortcut: Shortcut, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qshortcut.html#enabled-prop

	/* QDialogButtonBox */

	@(require_results) dialog_button_box_create :: proc(parent: Widget) -> Dialog_Button_Box --- // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#QDialogButtonBox
	@(require_results) dialog_button_box_create_with_buttons :: proc(buttons: c.int, parent: Widget) -> Dialog_Button_Box --- // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#QDialogButtonBox
	@(require_results) dialog_button_box_add_button :: proc(button_box: Dialog_Button_Box, button: Standard_Button) -> Push_Button --- // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#addButton
	dialog_button_box_set_orientation :: proc(button_box: Dialog_Button_Box, orientation: Orientation) --- // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#orientation-prop

	/* QToolButton */

	@(require_results) tool_button_create :: proc(parent: Widget) -> Tool_Button --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#QToolButton
	tool_button_set_text :: proc(tool_button: Tool_Button, text: cstring) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#text-prop
	tool_button_set_icon :: proc(tool_button: Tool_Button, icon: Icon) --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#icon-prop
	tool_button_set_popup_mode :: proc(tool_button: Tool_Button, mode: Tool_Button_Popup_Mode) --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#popupMode-prop
	tool_button_set_menu :: proc(tool_button: Tool_Button, menu: Menu) --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#setMenu
	tool_button_set_default_action :: proc(tool_button: Tool_Button, action: Action) --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#setDefaultAction
	tool_button_set_auto_raise :: proc(tool_button: Tool_Button, is_auto_raise: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#autoRaise-prop
	tool_button_set_tool_button_style :: proc(tool_button: Tool_Button, style: Tool_Button_Style) --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#toolButtonStyle-prop
	tool_button_set_arrow_type :: proc(tool_button: Tool_Button, arrow_type: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#arrowType-prop
	@(require_results) tool_button_get_default_action :: proc(tool_button: Tool_Button) -> Action --- // https://doc.qt.io/qt-6.8/qtoolbutton.html#defaultAction

	/* QButtonGroup */

	@(require_results) button_group_create :: proc(parent: Widget) -> Button_Group --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#QButtonGroup
	button_group_destroy :: proc(button_group: Button_Group) --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#dtor.QButtonGroup
	button_group_add_button :: proc(button_group: Button_Group, button: Widget, id: c.int) --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#addButton
	button_group_remove_button :: proc(button_group: Button_Group, button: Widget) --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#removeButton
	button_group_set_exclusive :: proc(button_group: Button_Group, is_exclusive: c.int) --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#exclusive-prop
	@(require_results) button_group_get_checked_id :: proc(button_group: Button_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#checkedId

	/* QCalendarWidget */

	@(require_results) calendar_widget_create :: proc(parent: Widget) -> Calendar_Widget --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#QCalendarWidget
	calendar_widget_get_selected_date :: proc(calendar: Calendar_Widget, year: ^c.int, month: ^c.int, day: ^c.int) --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#selectedDate-prop
	calendar_widget_set_selected_date :: proc(calendar: Calendar_Widget, year: c.int, month: c.int, day: c.int) --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#selectedDate-prop
	calendar_widget_set_minimum_date :: proc(calendar: Calendar_Widget, year: c.int, month: c.int, day: c.int) --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#minimumDate-prop
	calendar_widget_set_maximum_date :: proc(calendar: Calendar_Widget, year: c.int, month: c.int, day: c.int) --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#maximumDate-prop
	calendar_widget_set_grid_visible :: proc(calendar: Calendar_Widget, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#gridVisible-prop

	/* QDateEdit */

	@(require_results) date_edit_create :: proc(parent: Widget) -> Date_Edit --- // https://doc.qt.io/qt-6.8/qdateedit.html#QDateEdit
	date_edit_get_date :: proc(date_edit: Date_Edit, year: ^c.int, month: ^c.int, day: ^c.int) --- // https://doc.qt.io/qt-6.8/qdateedit.html
	date_edit_set_date :: proc(date_edit: Date_Edit, year: c.int, month: c.int, day: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#date-prop
	date_edit_set_minimum_date :: proc(date_edit: Date_Edit, year: c.int, month: c.int, day: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#minimumDate-prop
	date_edit_set_maximum_date :: proc(date_edit: Date_Edit, year: c.int, month: c.int, day: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#maximumDate-prop
	date_edit_set_display_format :: proc(date_edit: Date_Edit, format: cstring) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#displayFormat-prop
	date_edit_set_calendar_popup :: proc(date_edit: Date_Edit, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#calendarPopup-prop

	/* QTimeEdit */

	@(require_results) time_edit_create :: proc(parent: Widget) -> Time_Edit --- // https://doc.qt.io/qt-6.8/qtimeedit.html#QTimeEdit
	time_edit_get_time :: proc(time_edit: Time_Edit, hour: ^c.int, minute: ^c.int, second: ^c.int) --- // https://doc.qt.io/qt-6.8/qtimeedit.html
	time_edit_set_time :: proc(time_edit: Time_Edit, hour: c.int, minute: c.int, second: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#time-prop
	time_edit_set_display_format :: proc(time_edit: Time_Edit, format: cstring) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#displayFormat-prop

	/* QDateTimeEdit */

	@(require_results) date_time_edit_create :: proc(parent: Widget) -> Date_Time_Edit --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#QDateTimeEdit
	date_time_edit_get_date_time :: proc(date_time_edit: Date_Time_Edit, year: ^c.int, month: ^c.int, day: ^c.int, hour: ^c.int, minute: ^c.int, second: ^c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#dateTime-prop
	date_time_edit_set_date_time :: proc(date_time_edit: Date_Time_Edit, year: c.int, month: c.int, day: c.int, hour: c.int, minute: c.int, second: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#dateTime-prop
	date_time_edit_set_display_format :: proc(date_time_edit: Date_Time_Edit, format: cstring) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#displayFormat-prop
	date_time_edit_set_calendar_popup :: proc(date_time_edit: Date_Time_Edit, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#calendarPopup-prop

	/* QDial */

	@(require_results) dial_create :: proc(parent: Widget) -> Dial --- // https://doc.qt.io/qt-6.8/qdial.html#QDial
	dial_set_range :: proc(dial: Dial, min_val: c.int, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#setRange
	@(require_results) dial_get_value :: proc(dial: Dial) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractslider.html#value-prop
	dial_set_value :: proc(dial: Dial, value: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#value-prop
	dial_set_notch_target :: proc(dial: Dial, target: c.double) --- // https://doc.qt.io/qt-6.8/qdial.html#notchTarget-prop
	dial_set_notches_visible :: proc(dial: Dial, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qdial.html#notchesVisible-prop
	dial_set_wrapping :: proc(dial: Dial, is_wrapping: c.int) --- // https://doc.qt.io/qt-6.8/qdial.html#wrapping-prop
	dial_set_single_step :: proc(dial: Dial, step: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#singleStep-prop

	/* QProgressDialog */

	@(require_results) progress_dialog_create :: proc(parent: Widget, label_text: cstring, cancel_button_text: cstring, minimum: c.int, maximum: c.int) -> Progress_Dialog --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#QProgressDialog
	progress_dialog_set_value :: proc(progress_dialog: Progress_Dialog, progress: c.int) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#value-prop
	@(require_results) progress_dialog_get_value :: proc(progress_dialog: Progress_Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#value-prop
	progress_dialog_set_label_text :: proc(progress_dialog: Progress_Dialog, text: cstring) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#labelText-prop
	progress_dialog_set_cancel_button_text :: proc(progress_dialog: Progress_Dialog, text: cstring) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#setCancelButtonText
	progress_dialog_set_range :: proc(progress_dialog: Progress_Dialog, minimum: c.int, maximum: c.int) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#setRange
	progress_dialog_set_minimum_duration :: proc(progress_dialog: Progress_Dialog, ms: c.int) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#minimumDuration-prop
	progress_dialog_set_auto_close :: proc(progress_dialog: Progress_Dialog, is_auto_close: c.int) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#autoClose-prop
	progress_dialog_set_auto_reset :: proc(progress_dialog: Progress_Dialog, is_auto_reset: c.int) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#autoReset-prop
	@(require_results) progress_dialog_was_canceled :: proc(progress_dialog: Progress_Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#wasCanceled-prop
	progress_dialog_reset :: proc(progress_dialog: Progress_Dialog) --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#reset

	/* QTextBrowser */

	@(require_results) text_browser_create :: proc(parent: Widget) -> Text_Browser --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#QTextBrowser
	text_browser_set_html :: proc(text_browser: Text_Browser, html: cstring) --- // https://doc.qt.io/qt-6.8/qtextedit.html#html-prop
	text_browser_set_source :: proc(text_browser: Text_Browser, url: cstring) --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#setSource
	text_browser_set_open_external_links :: proc(text_browser: Text_Browser, is_open: c.int) --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#openExternalLinks-prop
	text_browser_backward :: proc(text_browser: Text_Browser) --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#backward
	text_browser_forward :: proc(text_browser: Text_Browser) --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#forward
	text_browser_home :: proc(text_browser: Text_Browser) --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#home

	/* QHeaderView */

	header_view_set_section_resize_mode :: proc(header_view: Header_View, mode: Header_Resize_Mode) --- // https://doc.qt.io/qt-6.8/qheaderview.html#setSectionResizeMode
	header_view_set_section_resize_mode_for :: proc(header_view: Header_View, section: c.int, mode: Header_Resize_Mode) --- // https://doc.qt.io/qt-6.8/qheaderview.html#setSectionResizeMode
	header_view_set_stretch_last_section :: proc(header_view: Header_View, is_stretch: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#stretchLastSection-prop
	header_view_set_visible :: proc(header_view: Header_View, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#setVisible
	header_view_set_sort_indicator :: proc(header_view: Header_View, section: c.int, order: Sort_Order) --- // https://doc.qt.io/qt-6.8/qheaderview.html#setSortIndicator
	header_view_set_sort_indicator_shown :: proc(header_view: Header_View, is_shown: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#showSortIndicator-prop
	header_view_set_section_hidden :: proc(header_view: Header_View, section: c.int, is_hidden: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#setSectionHidden
	@(require_results) header_view_is_section_hidden :: proc(header_view: Header_View, section: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qheaderview.html#isSectionHidden
	header_view_resize_section :: proc(header_view: Header_View, section: c.int, size: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#resizeSection
	@(require_results) header_view_get_section_size :: proc(header_view: Header_View, section: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qheaderview.html#sectionSize
	header_view_move_section :: proc(header_view: Header_View, from: c.int, to: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#moveSection
	header_view_set_sort_indicator_clearable :: proc(header_view: Header_View, is_clearable: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#sortIndicatorClearable-prop
	@(require_results) header_view_get_count :: proc(header_view: Header_View) -> c.int --- // https://doc.qt.io/qt-6.8/qheaderview.html#count
	header_view_swap_sections :: proc(header_view: Header_View, first: c.int, second: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#swapSections
	header_view_set_minimum_section_size :: proc(header_view: Header_View, size: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#minimumSectionSize-prop
	header_view_set_maximum_section_size :: proc(header_view: Header_View, size: c.int) --- // https://doc.qt.io/qt-6.8/qheaderview.html#maximumSectionSize-prop
	@(require_results) header_view_connect_section_clicked :: proc(header_view: Header_View, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qheaderview.html#sectionClicked
	@(require_results) header_view_connect_section_resized :: proc(header_view: Header_View, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qheaderview.html#sectionResized
	@(require_results) header_view_connect_section_moved :: proc(header_view: Header_View, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qheaderview.html#sectionMoved
	@(require_results) header_view_connect_sort_indicator_changed :: proc(header_view: Header_View, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qheaderview.html#sortIndicatorChanged
	@(require_results) table_widget_get_horizontal_header :: proc(table_widget: Table_Widget) -> Header_View --- // https://doc.qt.io/qt-6.8/qtableview.html#horizontalHeader
	@(require_results) table_widget_get_vertical_header :: proc(table_widget: Table_Widget) -> Header_View --- // https://doc.qt.io/qt-6.8/qtableview.html#verticalHeader
	@(require_results) tree_widget_get_header :: proc(tree_widget: Tree_Widget) -> Header_View --- // https://doc.qt.io/qt-6.8/qtreeview.html#header

	/* QSystemTrayIcon */

	@(require_results) system_tray_icon_create :: proc(parent: Widget) -> System_Tray_Icon --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#QSystemTrayIcon
	system_tray_icon_destroy :: proc(system_tray_icon: System_Tray_Icon) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#dtor.QSystemTrayIcon
	system_tray_icon_set_icon :: proc(system_tray_icon: System_Tray_Icon, icon: Icon) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#icon-prop
	system_tray_icon_set_tooltip :: proc(system_tray_icon: System_Tray_Icon, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#toolTip-prop
	system_tray_icon_set_context_menu :: proc(system_tray_icon: System_Tray_Icon, menu: Menu) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#setContextMenu
	system_tray_icon_show :: proc(system_tray_icon: System_Tray_Icon) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#show
	system_tray_icon_hide :: proc(system_tray_icon: System_Tray_Icon) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#hide
	system_tray_icon_show_message :: proc(system_tray_icon: System_Tray_Icon, title: cstring, message: cstring, icon_type: System_Tray_Message_Icon, timeout_ms: c.int) --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#showMessage
	@(require_results) system_tray_icon_is_available :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html

	/* Clipboard */

	@(require_results) clipboard_get_text :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qclipboard.html#text
	clipboard_set_text :: proc(text: cstring) --- // https://doc.qt.io/qt-6.8/qclipboard.html#setText

	/* String management */

	free_string :: proc(str: cstring) ---
	dialog_free_string :: proc(str: cstring) ---
	free_string_array :: proc(names: [^]cstring, count: c.int) ---
	free_item_array :: proc(items: [^]rawptr) ---

	/* QFileDialog */

	@(require_results) file_dialog_get_open_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qfiledialog.html
	@(require_results) file_dialog_get_save_file_name :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qfiledialog.html
	@(require_results) file_dialog_get_existing_directory :: proc(parent: Widget, caption: cstring, dir: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qfiledialog.html
	@(require_results) file_dialog_get_open_file_names :: proc(parent: Widget, caption: cstring, dir: cstring, filter: cstring, out_names: ^[^]cstring, out_count: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qfiledialog.html

	/* QMessageBox */

	@(require_results) message_box_show_information :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html
	@(require_results) message_box_show_warning :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html
	@(require_results) message_box_show_critical :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html
	@(require_results) message_box_show_question :: proc(parent: Widget, title: cstring, text: cstring) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html
	@(require_results) message_box_show_information_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html#information
	@(require_results) message_box_show_warning_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html#warning
	@(require_results) message_box_show_critical_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html#critical
	@(require_results) message_box_show_question_ex :: proc(parent: Widget, title: cstring, text: cstring, buttons: c.int) -> Standard_Button --- // https://doc.qt.io/qt-6.8/qmessagebox.html#question

	/* QColorDialog */

	@(require_results) colour_dialog_get_colour :: proc(parent: Widget, initial_r: c.int, initial_g: c.int, initial_b: c.int, initial_a: c.int, result_r: ^c.int, result_g: ^c.int, result_b: ^c.int, result_a: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcolordialog.html

	/* QFontDialog */

	@(require_results) font_dialog_get_font :: proc(parent: Widget, family_buf: [^]u8, family_buf_size: c.int, point_size: ^c.int, weight: ^c.int, is_italic: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdialog.html

	/* QInputDialog */

	@(require_results) input_dialog_get_text :: proc(parent: Widget, title: cstring, label: cstring, default_text: cstring, is_ok: ^c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qinputdialog.html
	@(require_results) input_dialog_get_int :: proc(parent: Widget, title: cstring, label: cstring, value: c.int, min_val: c.int, max_val: c.int, step: c.int, is_ok: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qinputdialog.html
	@(require_results) input_dialog_get_double :: proc(parent: Widget, title: cstring, label: cstring, value: c.double, min_val: c.double, max_val: c.double, decimals: c.int, is_ok: ^c.int) -> c.double --- // https://doc.qt.io/qt-6.8/qinputdialog.html
	@(require_results) input_dialog_get_item :: proc(parent: Widget, title: cstring, label: cstring, items: [^]cstring, items_count: c.int, current: c.int, is_editable: c.int, is_ok: ^c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qinputdialog.html

	/* QSettings */

	@(require_results) settings_create :: proc(parent: Widget) -> Settings --- // https://doc.qt.io/qt-6.8/qsettings.html#QSettings
	settings_destroy :: proc(settings: Settings) --- // https://doc.qt.io/qt-6.8/qsettings.html#dtor.QSettings
	settings_set_value_int :: proc(settings: Settings, key: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qsettings.html#setValue
	@(require_results) settings_get_value_int :: proc(settings: Settings, key: cstring, default_value: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qsettings.html#value
	settings_set_value_string :: proc(settings: Settings, key: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qsettings.html#setValue
	@(require_results) settings_get_value_string :: proc(settings: Settings, key: cstring, default_value: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qsettings.html#value
	settings_set_value_bool :: proc(settings: Settings, key: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qsettings.html#setValue
	@(require_results) settings_get_value_bool :: proc(settings: Settings, key: cstring, default_value: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qsettings.html#value
	settings_set_value_double :: proc(settings: Settings, key: cstring, value: c.double) --- // https://doc.qt.io/qt-6.8/qsettings.html#setValue
	@(require_results) settings_get_value_double :: proc(settings: Settings, key: cstring, default_value: c.double) -> c.double --- // https://doc.qt.io/qt-6.8/qsettings.html#value
	settings_remove :: proc(settings: Settings, key: cstring) --- // https://doc.qt.io/qt-6.8/qsettings.html#remove
	@(require_results) settings_contains :: proc(settings: Settings, key: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qsettings.html#contains
	settings_sync :: proc(settings: Settings) --- // https://doc.qt.io/qt-6.8/qsettings.html#sync
	settings_begin_group :: proc(settings: Settings, prefix: cstring) --- // https://doc.qt.io/qt-6.8/qsettings.html#beginGroup
	settings_end_group :: proc(settings: Settings) --- // https://doc.qt.io/qt-6.8/qsettings.html#endGroup

	/* QDesktopServices */

	@(require_results) desktop_services_open_url :: proc(url: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdesktopservices.html#openUrl

	/* QStandardPaths */

	@(require_results) standard_paths_writable_location :: proc(type: Standard_Location) -> cstring --- // https://doc.qt.io/qt-6.8/qstandardpaths.html#writableLocation
	@(require_results) standard_paths_display_name :: proc(type: Standard_Location) -> cstring --- // https://doc.qt.io/qt-6.8/qstandardpaths.html#displayName

	/* QScreen */

	screen_get_geometry :: proc(x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) --- // https://doc.qt.io/qt-6.8/qscreen.html#geometry-prop
	@(require_results) screen_get_device_pixel_ratio :: proc() -> c.double --- // https://doc.qt.io/qt-6.8/qscreen.html#devicePixelRatio-prop
	@(require_results) screen_get_logical_dpi_x :: proc() -> c.double --- // https://doc.qt.io/qt-6.8/qscreen.html#logicalDotsPerInchX-prop
	@(require_results) screen_get_logical_dpi_y :: proc() -> c.double --- // https://doc.qt.io/qt-6.8/qscreen.html#logicalDotsPerInchY-prop
	@(require_results) screen_get_name :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qscreen.html#name-prop

	/* QFontMetrics */

	@(require_results) font_metrics_create :: proc(family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) -> Font_Metrics --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#QFontMetrics
	font_metrics_destroy :: proc(font_metrics: Font_Metrics) --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#dtor.QFontMetrics
	@(require_results) font_metrics_get_horizontal_advance :: proc(font_metrics: Font_Metrics, text: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#horizontalAdvance
	@(require_results) font_metrics_get_height :: proc(font_metrics: Font_Metrics) -> c.int --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#height
	@(require_results) font_metrics_get_ascent :: proc(font_metrics: Font_Metrics) -> c.int --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#ascent
	@(require_results) font_metrics_get_descent :: proc(font_metrics: Font_Metrics) -> c.int --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#descent
	@(require_results) font_metrics_get_leading :: proc(font_metrics: Font_Metrics) -> c.int --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#leading
	@(require_results) font_metrics_get_average_char_width :: proc(font_metrics: Font_Metrics) -> c.int --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#averageCharWidth
	font_metrics_get_bounding_rect :: proc(font_metrics: Font_Metrics, text: cstring, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) --- // https://doc.qt.io/qt-6.8/qfontmetrics.html#boundingRect

	/* QFontInfo */

	@(require_results) font_info_create :: proc(font: Font_Handle) -> Font_Info --- // https://doc.qt.io/qt-6.8/qfontinfo.html#QFontInfo
	font_info_destroy :: proc(info: Font_Info) --- // https://doc.qt.io/qt-6.8/qfontinfo.html#dtor.QFontInfo
	@(require_results) font_info_get_family :: proc(info: Font_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfontinfo.html#family
	@(require_results) font_info_get_point_size :: proc(info: Font_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfontinfo.html#pointSize
	@(require_results) font_info_get_weight :: proc(info: Font_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfontinfo.html#weight
	@(require_results) font_info_is_italic :: proc(info: Font_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfontinfo.html#italic
	@(require_results) font_info_is_fixed_pitch :: proc(info: Font_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfontinfo.html#fixedPitch
	@(require_results) font_info_is_exact_match :: proc(info: Font_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfontinfo.html#exactMatch

	/* QFontMetricsF */

	@(require_results) font_metrics_f_create :: proc(font: Font_Handle) -> Font_Metrics_F --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#QFontMetricsF
	font_metrics_f_destroy :: proc(metrics: Font_Metrics_F) --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#dtor.QFontMetricsF
	@(require_results) font_metrics_f_get_horizontal_advance :: proc(metrics: Font_Metrics_F, text: cstring) -> c.double --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#horizontalAdvance
	@(require_results) font_metrics_f_get_height :: proc(metrics: Font_Metrics_F) -> c.double --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#height
	@(require_results) font_metrics_f_get_ascent :: proc(metrics: Font_Metrics_F) -> c.double --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#ascent
	@(require_results) font_metrics_f_get_descent :: proc(metrics: Font_Metrics_F) -> c.double --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#descent
	@(require_results) font_metrics_f_get_leading :: proc(metrics: Font_Metrics_F) -> c.double --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#leading
	@(require_results) font_metrics_f_get_average_char_width :: proc(metrics: Font_Metrics_F) -> c.double --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#averageCharWidth
	font_metrics_f_get_bounding_rect :: proc(metrics: Font_Metrics_F, text: cstring, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) --- // https://doc.qt.io/qt-6.8/qfontmetricsf.html#boundingRect

	/* QApplication extras */

	application_set_style :: proc(application: Application, style_name: cstring) --- // https://doc.qt.io/qt-6.8/qapplication.html#setStyle
	application_set_style_sheet :: proc(application: Application, style_sheet: cstring) --- // https://doc.qt.io/qt-6.8/qapplication.html#styleSheet-prop
	application_set_font :: proc(application: Application, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qapplication.html#setFont
	application_set_window_icon :: proc(application: Application, icon: Icon) --- // https://doc.qt.io/qt-6.8/qguiapplication.html#windowIcon-prop
	application_set_application_version :: proc(application: Application, version: cstring) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#applicationVersion-prop

	/* QCompleter */

	@(require_results) completer_create :: proc(items: [^]cstring, count: c.int, parent: Widget) -> Completer --- // https://doc.qt.io/qt-6.8/qcompleter.html#QCompleter
	completer_destroy :: proc(completer: Completer) --- // https://doc.qt.io/qt-6.8/qcompleter.html#dtor.QCompleter
	completer_set_case_sensitivity :: proc(completer: Completer, case_sensitivity: Case_Sensitivity) --- // https://doc.qt.io/qt-6.8/qcompleter.html#caseSensitivity-prop
	completer_set_filter_mode :: proc(completer: Completer, filter_mode: Match_Flag) --- // https://doc.qt.io/qt-6.8/qcompleter.html#filterMode-prop
	line_edit_set_completer :: proc(line_edit: Line_Edit, completer: Completer) --- // https://doc.qt.io/qt-6.8/qlineedit.html#setCompleter
	combo_box_set_completer :: proc(combo_box: Combo_Box, completer: Completer) --- // https://doc.qt.io/qt-6.8/qcombobox.html#setCompleter

	/* QValidator */

	@(require_results) int_validator_create :: proc(minimum: c.int, maximum: c.int, parent: Widget) -> Validator --- // https://doc.qt.io/qt-6.8/qintvalidator.html#QIntValidator
	@(require_results) double_validator_create :: proc(minimum: c.double, maximum: c.double, decimals: c.int, parent: Widget) -> Validator --- // https://doc.qt.io/qt-6.8/qdoublevalidator.html#QDoubleValidator
	@(require_results) regex_validator_create :: proc(pattern: cstring, parent: Widget) -> Validator --- // https://doc.qt.io/qt-6.8/qregularexpressionvalidator.html#QRegularExpressionValidator
	validator_destroy :: proc(validator: Validator) --- // https://doc.qt.io/qt-6.8/qvalidator.html#dtor.QValidator
	line_edit_set_validator :: proc(line_edit: Line_Edit, validator: Validator) --- // https://doc.qt.io/qt-6.8/qlineedit.html#setValidator

	/* QToolTip */

	tooltip_show_text :: proc(global_x: c.int, global_y: c.int, text: cstring, widget: Widget) --- // https://doc.qt.io/qt-6.8/qtooltip.html#showText
	tooltip_hide_text :: proc() --- // https://doc.qt.io/qt-6.8/qtooltip.html#hideText

	/* Signal connections (all return Connection_Id for disconnect) */

	push_button_connect_clicked :: proc(button: Push_Button, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#clicked
	push_button_connect_pressed :: proc(button: Push_Button, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#pressed
	push_button_connect_released :: proc(button: Push_Button, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#released
	check_box_connect_toggled :: proc(check_box: Check_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#toggled
	radio_button_connect_toggled :: proc(radio_button: Radio_Button, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#toggled
	slider_connect_value_changed :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#valueChanged
	spin_box_connect_value_changed :: proc(spin_box: Spin_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qspinbox.html#valueChanged
	double_spin_box_connect_value_changed :: proc(double_spin_box: Double_Spin_Box, callback: Double_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#valueChanged
	line_edit_connect_text_changed :: proc(line_edit: Line_Edit, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlineedit.html#textChanged
	line_edit_connect_return_pressed :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlineedit.html#returnPressed
	line_edit_connect_editing_finished :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlineedit.html#editingFinished
	text_edit_connect_text_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextedit.html#textChanged
	plain_text_edit_connect_text_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#textChanged
	combo_box_connect_index_changed :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcombobox.html#currentIndexChanged
	list_widget_connect_current_row_changed :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlistwidget.html#currentRowChanged
	tree_widget_connect_item_clicked :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#itemClicked
	table_widget_connect_cell_clicked :: proc(table_widget: Table_Widget, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtablewidget.html#cellClicked
	widget_connect_custom_context_menu_requested :: proc(widget: Widget, callback: Point_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qwidget.html#customContextMenuRequested
	action_connect_triggered :: proc(action: Action, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qaction.html#triggered
	tab_widget_connect_current_changed :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtabwidget.html#currentChanged
	group_box_connect_toggled :: proc(group_box: Group_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgroupbox.html#toggled
	stacked_widget_connect_current_changed :: proc(stacked_widget: Stacked_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qstackedwidget.html#currentChanged
	timer_connect_timeout :: proc(timer: Timer, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtimer.html#timeout

	/* New signals */

	tab_widget_connect_tab_close_requested :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtabwidget.html#tabCloseRequested
	table_widget_connect_cell_double_clicked :: proc(table_widget: Table_Widget, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtablewidget.html#cellDoubleClicked
	table_widget_connect_cell_changed :: proc(table_widget: Table_Widget, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtablewidget.html#cellChanged
	table_widget_connect_item_selection_changed :: proc(table_widget: Table_Widget, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtablewidget.html#itemSelectionChanged
	tree_widget_connect_item_double_clicked :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#itemDoubleClicked
	tree_widget_connect_item_expanded :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#itemExpanded
	tree_widget_connect_item_collapsed :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#itemCollapsed
	tree_widget_connect_current_item_changed :: proc(tree_widget: Tree_Widget, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#currentItemChanged
	list_widget_connect_item_clicked :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlistwidget.html#itemClicked
	list_widget_connect_item_double_clicked :: proc(list_widget: List_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlistwidget.html#itemDoubleClicked
	list_widget_connect_item_selection_changed :: proc(list_widget: List_Widget, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlistwidget.html#itemSelectionChanged
	combo_box_connect_current_text_changed :: proc(combo_box: Combo_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcombobox.html#currentTextChanged
	combo_box_connect_activated :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcombobox.html#activated
	combo_box_connect_highlighted :: proc(combo_box: Combo_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcombobox.html#highlighted
	combo_box_connect_edit_text_changed :: proc(combo_box: Combo_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcombobox.html#editTextChanged
	progress_bar_connect_value_changed :: proc(progress_bar: Progress_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprogressbar.html#valueChanged
	slider_connect_slider_pressed :: proc(slider: Slider, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#sliderPressed
	slider_connect_slider_released :: proc(slider: Slider, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#sliderReleased
	dock_widget_connect_visibility_changed :: proc(dock_widget: Dock_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdockwidget.html#visibilityChanged
	dialog_connect_accepted :: proc(dialog: Dialog, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdialog.html#accepted
	dialog_connect_rejected :: proc(dialog: Dialog, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdialog.html#rejected
	dialog_connect_finished :: proc(dialog: Dialog, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdialog.html#finished

	/* New signals for section 4 */

	shortcut_connect_activated :: proc(shortcut: Shortcut, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qshortcut.html#activated
	dialog_button_box_connect_accepted :: proc(button_box: Dialog_Button_Box, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#accepted
	dialog_button_box_connect_rejected :: proc(button_box: Dialog_Button_Box, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdialogbuttonbox.html#rejected
	tool_button_connect_clicked :: proc(tool_button: Tool_Button, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractbutton.html#clicked
	button_group_connect_id_clicked :: proc(button_group: Button_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#idClicked
	button_group_connect_id_toggled :: proc(button_group: Button_Group, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qbuttongroup.html#idToggled
	calendar_widget_connect_selection_changed :: proc(calendar: Calendar_Widget, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcalendarwidget.html#selectionChanged
	date_edit_connect_date_changed :: proc(date_edit: Date_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#dateChanged
	time_edit_connect_time_changed :: proc(time_edit: Time_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#timeChanged
	date_time_edit_connect_date_time_changed :: proc(date_time_edit: Date_Time_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdatetimeedit.html#dateTimeChanged
	dial_connect_value_changed :: proc(dial: Dial, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#valueChanged
	progress_dialog_connect_canceled :: proc(progress_dialog: Progress_Dialog, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprogressdialog.html#canceled
	text_browser_connect_anchor_clicked :: proc(text_browser: Text_Browser, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextbrowser.html#anchorClicked
	system_tray_icon_connect_activated :: proc(system_tray_icon: System_Tray_Icon, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qsystemtrayicon.html#activated

	/* New signals for QTableWidget and QTreeWidget */

	table_widget_connect_current_cell_changed :: proc(table_widget: Table_Widget, callback: Four_Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtablewidget.html#currentCellChanged
	table_widget_connect_current_item_changed :: proc(table_widget: Table_Widget, callback: Two_Pointer_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtablewidget.html#currentItemChanged
	tree_widget_connect_item_changed :: proc(tree_widget: Tree_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#itemChanged
	tree_widget_connect_item_selection_changed :: proc(tree_widget: Tree_Widget, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtreewidget.html#itemSelectionChanged

	/* QTextEdit signals */

	text_edit_connect_cursor_position_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextedit.html#cursorPositionChanged
	text_edit_connect_selection_changed :: proc(text_edit: Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextedit.html#selectionChanged
	text_edit_connect_copy_available :: proc(text_edit: Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextedit.html#copyAvailable
	text_edit_connect_undo_available :: proc(text_edit: Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextedit.html#undoAvailable
	text_edit_connect_redo_available :: proc(text_edit: Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextedit.html#redoAvailable

	/* QPlainTextEdit signals */

	plain_text_edit_connect_cursor_position_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#cursorPositionChanged
	plain_text_edit_connect_selection_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#selectionChanged
	plain_text_edit_connect_block_count_changed :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#blockCountChanged
	plain_text_edit_connect_copy_available :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#copyAvailable
	plain_text_edit_connect_undo_available :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#undoAvailable
	plain_text_edit_connect_redo_available :: proc(plain_text_edit: Plain_Text_Edit, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#redoAvailable

	/* QListWidget, QMenu, QAction signals */

	list_widget_connect_item_changed :: proc(list_widget: List_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlistwidget.html#itemChanged
	list_widget_connect_item_activated :: proc(list_widget: List_Widget, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlistwidget.html#itemActivated
	menu_connect_about_to_show :: proc(menu: Menu, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmenu.html#aboutToShow
	menu_connect_about_to_hide :: proc(menu: Menu, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmenu.html#aboutToHide
	menu_connect_triggered :: proc(menu: Menu, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmenu.html#triggered
	action_connect_toggled :: proc(action: Action, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qaction.html#toggled
	action_connect_hovered :: proc(action: Action, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qaction.html#hovered

	/* QTabWidget, QSplitter, QToolBar, QSlider, QStatusBar signals */

	tab_widget_connect_tab_bar_clicked :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtabwidget.html#tabBarClicked
	tab_widget_connect_tab_bar_double_clicked :: proc(tab_widget: Tab_Widget, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtabwidget.html#tabBarDoubleClicked
	splitter_connect_splitter_moved :: proc(splitter: Splitter, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qsplitter.html#splitterMoved
	toolbar_connect_action_triggered :: proc(toolbar: Tool_Bar, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtoolbar.html#actionTriggered
	toolbar_connect_visibility_changed :: proc(toolbar: Tool_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtoolbar.html#visibilityChanged
	toolbar_connect_top_level_changed :: proc(toolbar: Tool_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtoolbar.html#topLevelChanged
	slider_connect_slider_moved :: proc(slider: Slider, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#sliderMoved
	slider_connect_range_changed :: proc(slider: Slider, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#rangeChanged
	statusbar_connect_message_changed :: proc(statusbar: Status_Bar, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qstatusbar.html#messageChanged

	/* Signal disconnection */

	disconnect :: proc(connection_id: Connection_Id) ---

	/* Event system */

	@(require_results) event_filter_create :: proc(callback: Event_Filter_Callback, user_data: rawptr) -> Event_Filter ---
	event_filter_destroy :: proc(filter: Event_Filter) ---
	widget_install_event_filter :: proc(widget: Widget, filter: Event_Filter) --- // https://doc.qt.io/qt-6.8/qobject.html#installEventFilter
	widget_remove_event_filter :: proc(widget: Widget, filter: Event_Filter) --- // https://doc.qt.io/qt-6.8/qobject.html#removeEventFilter
	@(require_results) close_event_filter_create :: proc(callback: Close_Event_Callback, user_data: rawptr) -> Event_Filter ---
	@(require_results) key_event_filter_create :: proc(callback: Key_Event_Callback, user_data: rawptr) -> Event_Filter ---
	@(require_results) mouse_event_filter_create :: proc(callback: Mouse_Event_Callback, user_data: rawptr) -> Event_Filter ---
	widget_set_mouse_tracking :: proc(widget: Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#mouseTracking-prop
	@(require_results) widget_has_mouse_tracking :: proc(widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#mouseTracking-prop

	/* QObject utilities */

	object_delete_later :: proc(object: Widget) --- // https://doc.qt.io/qt-6.8/qobject.html#deleteLater

	/* Dynamic properties */

	object_set_property_int :: proc(object: Widget, name: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qobject.html#setProperty
	@(require_results) object_get_property_int :: proc(object: Widget, name: cstring, default_value: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qobject.html#property
	object_set_property_string :: proc(object: Widget, name: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qobject.html#setProperty
	@(require_results) object_get_property_string :: proc(object: Widget, name: cstring, default_value: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qobject.html#property
	object_set_property_bool :: proc(object: Widget, name: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qobject.html#setProperty
	@(require_results) object_get_property_bool :: proc(object: Widget, name: cstring, default_value: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qobject.html#property
	object_set_property_double :: proc(object: Widget, name: cstring, value: c.double) --- // https://doc.qt.io/qt-6.8/qobject.html#setProperty
	@(require_results) object_get_property_double :: proc(object: Widget, name: cstring, default_value: c.double) -> c.double --- // https://doc.qt.io/qt-6.8/qobject.html#property

	/* QStandardItem */

	@(require_results) standard_item_create :: proc(text: cstring) -> Standard_Item --- // https://doc.qt.io/qt-6.8/qstandarditem.html#QStandardItem
	standard_item_set_text :: proc(item: Standard_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setText
	@(require_results) standard_item_get_text :: proc(item: Standard_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qstandarditem.html#text
	standard_item_set_editable :: proc(item: Standard_Item, is_editable: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setEditable
	@(require_results) standard_item_is_editable :: proc(item: Standard_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstandarditem.html#isEditable
	standard_item_set_checkable :: proc(item: Standard_Item, is_checkable: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setCheckable
	@(require_results) standard_item_is_checkable :: proc(item: Standard_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstandarditem.html#isCheckable
	standard_item_set_check_state :: proc(item: Standard_Item, state: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setCheckState
	@(require_results) standard_item_get_check_state :: proc(item: Standard_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstandarditem.html#checkState
	standard_item_set_icon :: proc(item: Standard_Item, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setIcon
	standard_item_set_selectable :: proc(item: Standard_Item, is_selectable: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setSelectable
	standard_item_set_enabled :: proc(item: Standard_Item, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#setEnabled
	standard_item_append_row :: proc(parent: Standard_Item, items: [^]Standard_Item, count: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#appendRow
	standard_item_append_child :: proc(parent: Standard_Item, child: Standard_Item) --- // https://doc.qt.io/qt-6.8/qstandarditem.html#appendRow
	@(require_results) standard_item_row_count :: proc(item: Standard_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstandarditem.html#rowCount
	@(require_results) standard_item_get_child :: proc(item: Standard_Item, row: c.int, column: c.int) -> Standard_Item --- // https://doc.qt.io/qt-6.8/qstandarditem.html#child

	/* QStandardItemModel */

	@(require_results) standard_item_model_create :: proc(rows: c.int, columns: c.int, parent: Widget) -> Standard_Item_Model --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#QStandardItemModel
	standard_item_model_destroy :: proc(model: Standard_Item_Model) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#dtor.QStandardItemModel
	standard_item_model_set_item :: proc(model: Standard_Item_Model, row: c.int, column: c.int, item: Standard_Item) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#setItem
	@(require_results) standard_item_model_get_item :: proc(model: Standard_Item_Model, row: c.int, column: c.int) -> Standard_Item --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#item
	standard_item_model_set_horizontal_header_labels :: proc(model: Standard_Item_Model, labels: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#setHorizontalHeaderLabels
	standard_item_model_set_vertical_header_labels :: proc(model: Standard_Item_Model, labels: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#setVerticalHeaderLabels
	@(require_results) standard_item_model_get_row_count :: proc(model: Standard_Item_Model) -> c.int --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#rowCount
	@(require_results) standard_item_model_get_column_count :: proc(model: Standard_Item_Model) -> c.int --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#columnCount
	standard_item_model_clear :: proc(model: Standard_Item_Model) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#clear
	standard_item_model_append_row :: proc(model: Standard_Item_Model, items: [^]Standard_Item, count: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#appendRow
	standard_item_model_insert_row :: proc(model: Standard_Item_Model, row: c.int, items: [^]Standard_Item, count: c.int) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#insertRow
	standard_item_model_remove_row :: proc(model: Standard_Item_Model, row: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemmodel.html#removeRow
	standard_item_model_remove_column :: proc(model: Standard_Item_Model, column: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemmodel.html#removeColumn
	@(require_results) standard_item_model_get_invisible_root_item :: proc(model: Standard_Item_Model) -> Standard_Item --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#invisibleRootItem

	/* Model Index */

	model_index_destroy :: proc(index: Model_Index) --- // https://doc.qt.io/qt-6.8/qmodelindex.html#QModelIndex
	@(require_results) model_index_get_row :: proc(index: Model_Index) -> c.int --- // https://doc.qt.io/qt-6.8/qmodelindex.html#row
	@(require_results) model_index_get_column :: proc(index: Model_Index) -> c.int --- // https://doc.qt.io/qt-6.8/qmodelindex.html#column
	@(require_results) model_index_is_valid :: proc(index: Model_Index) -> c.int --- // https://doc.qt.io/qt-6.8/qmodelindex.html#isValid

	/* QFileSystemModel */

	@(require_results) file_system_model_create :: proc(parent: Widget) -> File_System_Model --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#QFileSystemModel
	file_system_model_destroy :: proc(model: File_System_Model) --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#dtor.QFileSystemModel
	@(require_results) file_system_model_set_root_path :: proc(model: File_System_Model, path: cstring) -> Model_Index --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#setRootPath
	file_system_model_set_name_filters :: proc(model: File_System_Model, filters: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#setNameFilters
	file_system_model_set_name_filter_disables :: proc(model: File_System_Model, is_disables: c.int) --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#nameFilterDisables-prop
	file_system_model_set_read_only :: proc(model: File_System_Model, is_read_only: c.int) --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#readOnly-prop
	@(require_results) file_system_model_is_read_only :: proc(model: File_System_Model) -> c.int --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#readOnly-prop
	@(require_results) file_system_model_get_file_path :: proc(model: File_System_Model, index: Model_Index) -> cstring --- // https://doc.qt.io/qt-6.8/qfilesystemmodel.html#filePath

	/* QSortFilterProxyModel */

	@(require_results) sort_filter_proxy_model_create :: proc(parent: Widget) -> Sort_Filter_Proxy_Model --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#QSortFilterProxyModel
	sort_filter_proxy_model_destroy :: proc(proxy: Sort_Filter_Proxy_Model) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#dtor.QSortFilterProxyModel
	sort_filter_proxy_model_set_source_model :: proc(proxy: Sort_Filter_Proxy_Model, source: Standard_Item_Model) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#setSourceModel
	sort_filter_proxy_model_set_filter_key_column :: proc(proxy: Sort_Filter_Proxy_Model, column: c.int) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#filterKeyColumn-prop
	sort_filter_proxy_model_set_filter_regular_expression :: proc(proxy: Sort_Filter_Proxy_Model, pattern: cstring) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#setFilterRegularExpression
	sort_filter_proxy_model_set_filter_case_sensitivity :: proc(proxy: Sort_Filter_Proxy_Model, case_sensitivity: c.int) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#filterCaseSensitivity-prop
	sort_filter_proxy_model_set_sort_case_sensitivity :: proc(proxy: Sort_Filter_Proxy_Model, case_sensitivity: c.int) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#sortCaseSensitivity-prop
	sort_filter_proxy_model_invalidate :: proc(proxy: Sort_Filter_Proxy_Model) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#invalidate
	sort_filter_proxy_model_sort :: proc(proxy: Sort_Filter_Proxy_Model, column: c.int, order: c.int) --- // https://doc.qt.io/qt-6.8/qsortfilterproxymodel.html#sort

	/* Model/View — Views */

	@(require_results) tree_view_create :: proc(parent: Widget) -> Tree_View --- // https://doc.qt.io/qt-6.8/qtreeview.html#QTreeView
	tree_view_set_model :: proc(view: Tree_View, model: File_System_Model) --- // https://doc.qt.io/qt-6.8/qtreeview.html#setModel
	tree_view_set_root_index :: proc(view: Tree_View, index: Model_Index) --- // https://doc.qt.io/qt-6.8/qtreeview.html#setRootIndex
	tree_view_expand_all :: proc(view: Tree_View) --- // https://doc.qt.io/qt-6.8/qtreeview.html#expandAll
	tree_view_collapse_all :: proc(view: Tree_View) --- // https://doc.qt.io/qt-6.8/qtreeview.html#collapseAll
	tree_view_set_sorting_enabled :: proc(view: Tree_View, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#sortingEnabled-prop
	tree_view_set_header_hidden :: proc(view: Tree_View, is_hidden: c.int) --- // https://doc.qt.io/qt-6.8/qtreeview.html#headerHidden-prop

	@(require_results) table_view_create :: proc(parent: Widget) -> Table_View --- // https://doc.qt.io/qt-6.8/qtableview.html#QTableView
	table_view_set_model :: proc(view: Table_View, model: Standard_Item_Model) --- // https://doc.qt.io/qt-6.8/qtableview.html#setModel
	table_view_set_sorting_enabled :: proc(view: Table_View, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtableview.html#setSortingEnabled
	table_view_resize_columns_to_contents :: proc(view: Table_View) --- // https://doc.qt.io/qt-6.8/qtableview.html#resizeColumnsToContents
	table_view_resize_rows_to_contents :: proc(view: Table_View) --- // https://doc.qt.io/qt-6.8/qtableview.html#resizeRowsToContents
	table_view_set_selection_behaviour :: proc(view: Table_View, behaviour: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionBehavior-prop
	table_view_set_selection_mode :: proc(view: Table_View, mode: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionMode-prop
	table_view_set_alternating_row_colours :: proc(view: Table_View, is_alternating: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#alternatingRowColors-prop

	@(require_results) list_view_create :: proc(parent: Widget) -> List_View --- // https://doc.qt.io/qt-6.8/qlistview.html#QListView
	list_view_set_model :: proc(view: List_View, model: Standard_Item_Model) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#setModel
	list_view_set_selection_mode :: proc(view: List_View, mode: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionMode-prop

	/* QPainter / Custom drawing */

	@(require_results) paintable_widget_create :: proc(parent: Widget, callback: Paint_Callback, user_data: rawptr) -> Paintable_Widget ---

	painter_set_pen_colour :: proc(painter: Painter, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setPen
	painter_set_pen_width :: proc(painter: Painter, width: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setPen
	painter_set_no_pen :: proc(painter: Painter) --- // https://doc.qt.io/qt-6.8/qpainter.html
	painter_set_pen :: proc(painter: Painter, pen: Pen) --- // https://doc.qt.io/qt-6.8/qpainter.html#setPen
	painter_set_brush_colour :: proc(painter: Painter, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setBrush
	painter_set_no_brush :: proc(painter: Painter) --- // https://doc.qt.io/qt-6.8/qpainter.html
	painter_set_brush :: proc(painter: Painter, brush: Brush) --- // https://doc.qt.io/qt-6.8/qpainter.html#setBrush
	painter_set_font :: proc(painter: Painter, family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setFont
	painter_set_antialiasing :: proc(painter: Painter, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setRenderHint
	painter_set_opacity :: proc(painter: Painter, opacity: c.double) --- // https://doc.qt.io/qt-6.8/qpainter.html#setOpacity
	painter_set_render_hint :: proc(painter: Painter, hint: Render_Hint, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setRenderHint
	painter_set_render_hints :: proc(painter: Painter, hints: c.int, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setRenderHints
	painter_set_composition_mode :: proc(painter: Painter, mode: Composition_Mode) --- // https://doc.qt.io/qt-6.8/qpainter.html#setCompositionMode
	@(require_results) painter_get_composition_mode :: proc(painter: Painter) -> Composition_Mode --- // https://doc.qt.io/qt-6.8/qpainter.html#compositionMode
	painter_set_clipping :: proc(painter: Painter, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setClipping
	@(require_results) painter_has_clipping :: proc(painter: Painter) -> c.int --- // https://doc.qt.io/qt-6.8/qpainter.html#hasClipping
	painter_get_clip_bounding_rect :: proc(painter: Painter, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#clipBoundingRect
	painter_draw_line :: proc(painter: Painter, x1: c.int, y1: c.int, x2: c.int, y2: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawLine
	painter_draw_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawRect
	painter_fill_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#fillRect
	painter_erase_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#eraseRect
	painter_draw_ellipse :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawEllipse
	painter_draw_arc :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, start_angle: c.int, span_angle: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawArc
	painter_draw_pie :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, start_angle: c.int, span_angle: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPie
	painter_draw_chord :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, start_angle: c.int, span_angle: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawChord
	painter_draw_rounded_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, x_radius: c.double, y_radius: c.double) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawRoundedRect
	painter_draw_text :: proc(painter: Painter, x: c.int, y: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawText
	painter_draw_text_in_rect :: proc(painter: Painter, x: c.int, y: c.int, width: c.int, height: c.int, flags: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qpainter.html
	painter_bounding_rect :: proc(painter: Painter, x: c.int, y: c.int, w: c.int, h: c.int, flags: c.int, text: cstring, out_x: ^c.int, out_y: ^c.int, out_w: ^c.int, out_h: ^c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#boundingRect
	painter_draw_pixmap :: proc(painter: Painter, x: c.int, y: c.int, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPixmap
	painter_draw_image :: proc(painter: Painter, x: c.int, y: c.int, image: Image) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawImage
	painter_draw_point :: proc(painter: Painter, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPoint
	painter_draw_points :: proc(painter: Painter, points: [^]c.int, point_count: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPoints
	painter_draw_polygon :: proc(painter: Painter, points: [^]c.int, point_count: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPolygon
	painter_draw_polyline :: proc(painter: Painter, points: [^]c.int, point_count: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPolyline
	painter_draw_convex_polygon :: proc(painter: Painter, points: [^]c.int, point_count: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawConvexPolygon
	painter_save :: proc(painter: Painter) --- // https://doc.qt.io/qt-6.8/qpainter.html#save
	painter_restore :: proc(painter: Painter) --- // https://doc.qt.io/qt-6.8/qpainter.html#restore
	painter_translate :: proc(painter: Painter, dx: c.double, dy: c.double) --- // https://doc.qt.io/qt-6.8/qpainter.html#translate
	painter_rotate :: proc(painter: Painter, angle: c.double) --- // https://doc.qt.io/qt-6.8/qpainter.html#rotate
	painter_scale :: proc(painter: Painter, sx: c.double, sy: c.double) --- // https://doc.qt.io/qt-6.8/qpainter.html#scale
	@(require_results) painter_create :: proc() -> Painter --- // https://doc.qt.io/qt-6.8/qpainter.html#QPainter
	painter_destroy :: proc(painter: Painter) --- // https://doc.qt.io/qt-6.8/qpainter.html#dtor.QPainter
	@(require_results) painter_begin :: proc(painter: Painter, device: rawptr) -> c.int --- // https://doc.qt.io/qt-6.8/qpainter.html#begin
	@(require_results) painter_begin_pdf_writer :: proc(painter: Painter, pdf_writer: Pdf_Writer) -> c.int --- // https://doc.qt.io/qt-6.8/qpainter.html#begin
	@(require_results) painter_end :: proc(painter: Painter) -> c.int --- // https://doc.qt.io/qt-6.8/qpainter.html#end
	@(require_results) painter_is_active :: proc(painter: Painter) -> c.int --- // https://doc.qt.io/qt-6.8/qpainter.html#isActive

	/* Drag and Drop */

	widget_set_accept_drops :: proc(widget: Widget, is_accept: c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#acceptDrops-prop
	@(require_results) drag_drop_filter_create :: proc(enter_cb: Drag_Enter_Callback, drop_cb: Drop_Callback, user_data: rawptr) -> Drag_Drop_Filter ---
	widget_start_drag :: proc(widget: Widget, mime_text: cstring) --- // https://doc.qt.io/qt-6.8/qdrag.html#exec

	/* QSyntaxHighlighter */

	@(require_results) text_char_format_create :: proc() -> Text_Char_Format --- // https://doc.qt.io/qt-6.8/qtextcharformat.html#QTextCharFormat
	text_char_format_destroy :: proc(format: Text_Char_Format) --- // https://doc.qt.io/qt-6.8/qtextcharformat.html
	text_char_format_set_foreground :: proc(format: Text_Char_Format, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qtextformat.html#setForeground
	text_char_format_set_background :: proc(format: Text_Char_Format, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qtextformat.html#setBackground
	text_char_format_set_font_weight :: proc(format: Text_Char_Format, weight: c.int) --- // https://doc.qt.io/qt-6.8/qtextcharformat.html#setFontWeight
	text_char_format_set_font_italic :: proc(format: Text_Char_Format, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qtextcharformat.html#setFontItalic
	text_char_format_set_font_underline :: proc(format: Text_Char_Format, is_underline: c.int) --- // https://doc.qt.io/qt-6.8/qtextcharformat.html#setFontUnderline

	@(require_results) syntax_highlighter_create_for_text_edit :: proc(text_edit: Text_Edit) -> Syntax_Highlighter --- // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html#QSyntaxHighlighter
	@(require_results) syntax_highlighter_create_for_plain_text_edit :: proc(plain_text_edit: Plain_Text_Edit) -> Syntax_Highlighter --- // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html#QSyntaxHighlighter
	syntax_highlighter_destroy :: proc(highlighter: Syntax_Highlighter) --- // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html#dtor.QSyntaxHighlighter
	syntax_highlighter_add_rule :: proc(highlighter: Syntax_Highlighter, pattern: cstring, format: Text_Char_Format) --- // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html#highlightBlock
	syntax_highlighter_clear_rules :: proc(highlighter: Syntax_Highlighter) --- // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html#highlightBlock
	syntax_highlighter_rehighlight :: proc(highlighter: Syntax_Highlighter) --- // https://doc.qt.io/qt-6.8/qsyntaxhighlighter.html#rehighlight

	/* QPropertyAnimation / Animation groups */

	@(require_results) property_animation_create :: proc(target: Widget, property_name: cstring) -> Property_Animation --- // https://doc.qt.io/qt-6.8/qpropertyanimation.html#QPropertyAnimation
	property_animation_destroy :: proc(animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qpropertyanimation.html#dtor.QPropertyAnimation
	property_animation_set_duration :: proc(animation: Property_Animation, ms: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#duration-prop
	property_animation_set_start_value_int :: proc(animation: Property_Animation, value: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#startValue-prop
	property_animation_set_end_value_int :: proc(animation: Property_Animation, value: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#endValue-prop
	property_animation_set_start_value_double :: proc(animation: Property_Animation, value: c.double) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#startValue-prop
	property_animation_set_end_value_double :: proc(animation: Property_Animation, value: c.double) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#endValue-prop
	property_animation_set_start_value_rect :: proc(animation: Property_Animation, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#startValue-prop
	property_animation_set_end_value_rect :: proc(animation: Property_Animation, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#endValue-prop
	property_animation_set_start_value_size :: proc(animation: Property_Animation, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#startValue-prop
	property_animation_set_end_value_size :: proc(animation: Property_Animation, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#endValue-prop
	property_animation_set_start_value_point :: proc(animation: Property_Animation, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#startValue-prop
	property_animation_set_end_value_point :: proc(animation: Property_Animation, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#endValue-prop
	property_animation_set_easing_curve :: proc(animation: Property_Animation, curve_type: Easing_Curve) --- // https://doc.qt.io/qt-6.8/qvariantanimation.html#easingCurve-prop
	property_animation_set_clamp_range :: proc(animation: Property_Animation, min_val: c.int, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qpropertyanimation.html
	property_animation_start :: proc(animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#start
	property_animation_stop :: proc(animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#stop
	property_animation_pause :: proc(animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#pause
	property_animation_resume :: proc(animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#resume
	property_animation_set_loop_count :: proc(animation: Property_Animation, count: c.int) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#loopCount-prop
	property_animation_connect_finished :: proc(animation: Property_Animation, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#finished

	@(require_results) parallel_animation_group_create :: proc(parent: Widget) -> Parallel_Animation_Group --- // https://doc.qt.io/qt-6.8/qparallelanimationgroup.html#QParallelAnimationGroup
	parallel_animation_group_destroy :: proc(group: Parallel_Animation_Group) --- // https://doc.qt.io/qt-6.8/qparallelanimationgroup.html#dtor.QParallelAnimationGroup
	parallel_animation_group_add_animation :: proc(group: Parallel_Animation_Group, animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qanimationgroup.html
	parallel_animation_group_start :: proc(group: Parallel_Animation_Group) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#start
	parallel_animation_group_stop :: proc(group: Parallel_Animation_Group) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#stop
	parallel_animation_group_connect_finished :: proc(group: Parallel_Animation_Group, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#finished

	@(require_results) sequential_animation_group_create :: proc(parent: Widget) -> Sequential_Animation_Group --- // https://doc.qt.io/qt-6.8/qsequentialanimationgroup.html#QSequentialAnimationGroup
	sequential_animation_group_destroy :: proc(group: Sequential_Animation_Group) --- // https://doc.qt.io/qt-6.8/qsequentialanimationgroup.html#dtor.QSequentialAnimationGroup
	sequential_animation_group_add_animation :: proc(group: Sequential_Animation_Group, animation: Property_Animation) --- // https://doc.qt.io/qt-6.8/qanimationgroup.html
	sequential_animation_group_start :: proc(group: Sequential_Animation_Group) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#start
	sequential_animation_group_stop :: proc(group: Sequential_Animation_Group) --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#stop
	sequential_animation_group_connect_finished :: proc(group: Sequential_Animation_Group, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractanimation.html#finished

	/* QPauseAnimation */

	@(require_results) pause_animation_create :: proc(duration_ms: c.int, parent: rawptr) -> Pause_Animation --- // https://doc.qt.io/qt-6.8/qpauseanimation.html#QPauseAnimation
	pause_animation_destroy :: proc(animation: Pause_Animation) --- // https://doc.qt.io/qt-6.8/qpauseanimation.html#dtor.QPauseAnimation
	pause_animation_set_duration :: proc(animation: Pause_Animation, ms: c.int) --- // https://doc.qt.io/qt-6.8/qpauseanimation.html#duration-prop
	@(require_results) pause_animation_get_duration :: proc(animation: Pause_Animation) -> c.int --- // https://doc.qt.io/qt-6.8/qpauseanimation.html#duration-prop

	/* QTabBar */

	@(require_results) tab_bar_create :: proc(parent: Widget) -> Tab_Bar --- // https://doc.qt.io/qt-6.8/qtabbar.html#QTabBar
	@(require_results) tab_bar_add_tab :: proc(tab_bar: Tab_Bar, text: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtabbar.html#addTab
	@(require_results) tab_bar_insert_tab :: proc(tab_bar: Tab_Bar, index: c.int, text: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtabbar.html#insertTab
	tab_bar_remove_tab :: proc(tab_bar: Tab_Bar, index: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#removeTab
	@(require_results) tab_bar_get_current_index :: proc(tab_bar: Tab_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qtabbar.html#currentIndex-prop
	tab_bar_set_current_index :: proc(tab_bar: Tab_Bar, index: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#currentIndex-prop
	@(require_results) tab_bar_get_count :: proc(tab_bar: Tab_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qtabbar.html#count-prop
	tab_bar_set_tab_text :: proc(tab_bar: Tab_Bar, index: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qtabbar.html#setTabText
	@(require_results) tab_bar_get_tab_text :: proc(tab_bar: Tab_Bar, index: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qtabbar.html#tabText
	tab_bar_set_tab_enabled :: proc(tab_bar: Tab_Bar, index: c.int, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#setTabEnabled
	@(require_results) tab_bar_is_tab_enabled :: proc(tab_bar: Tab_Bar, index: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtabbar.html#isTabEnabled
	tab_bar_set_tab_visible :: proc(tab_bar: Tab_Bar, index: c.int, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#setTabVisible
	@(require_results) tab_bar_is_tab_visible :: proc(tab_bar: Tab_Bar, index: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtabbar.html#isTabVisible
	tab_bar_set_tabs_closable :: proc(tab_bar: Tab_Bar, is_closable: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#tabsClosable-prop
	tab_bar_set_movable :: proc(tab_bar: Tab_Bar, is_movable: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#movable-prop
	tab_bar_set_expanding :: proc(tab_bar: Tab_Bar, is_expanding: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#expanding-prop
	tab_bar_set_shape :: proc(tab_bar: Tab_Bar, shape: Tab_Bar_Shape) --- // https://doc.qt.io/qt-6.8/qtabbar.html#shape-prop
	tab_bar_set_icon_size :: proc(tab_bar: Tab_Bar, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#iconSize-prop
	tab_bar_set_document_mode :: proc(tab_bar: Tab_Bar, is_document_mode: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#documentMode-prop
	tab_bar_set_draw_base :: proc(tab_bar: Tab_Bar, is_draw_base: c.int) --- // https://doc.qt.io/qt-6.8/qtabbar.html#drawBase-prop
	tab_bar_set_tab_icon :: proc(tab_bar: Tab_Bar, index: c.int, icon: Icon) --- // https://doc.qt.io/qt-6.8/qtabbar.html#setTabIcon
	tab_bar_connect_current_changed :: proc(tab_bar: Tab_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtabbar.html#currentChanged
	tab_bar_connect_tab_close_requested :: proc(tab_bar: Tab_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtabbar.html#tabCloseRequested

	/* QToolBox */

	@(require_results) tool_box_create :: proc(parent: Widget) -> Tool_Box --- // https://doc.qt.io/qt-6.8/qtoolbox.html#QToolBox
	@(require_results) tool_box_add_item :: proc(tool_box: Tool_Box, widget: Widget, text: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtoolbox.html#addItem
	@(require_results) tool_box_insert_item :: proc(tool_box: Tool_Box, index: c.int, widget: Widget, text: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtoolbox.html#insertItem
	tool_box_remove_item :: proc(tool_box: Tool_Box, index: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbox.html#removeItem
	@(require_results) tool_box_get_current_index :: proc(tool_box: Tool_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qtoolbox.html#currentIndex-prop
	tool_box_set_current_index :: proc(tool_box: Tool_Box, index: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbox.html#currentIndex-prop
	@(require_results) tool_box_get_count :: proc(tool_box: Tool_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qtoolbox.html#count-prop
	tool_box_set_item_text :: proc(tool_box: Tool_Box, index: c.int, text: cstring) --- // https://doc.qt.io/qt-6.8/qtoolbox.html#setItemText
	@(require_results) tool_box_get_item_text :: proc(tool_box: Tool_Box, index: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qtoolbox.html#itemText
	tool_box_set_item_enabled :: proc(tool_box: Tool_Box, index: c.int, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtoolbox.html#setItemEnabled
	@(require_results) tool_box_is_item_enabled :: proc(tool_box: Tool_Box, index: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtoolbox.html#isItemEnabled
	tool_box_set_item_icon :: proc(tool_box: Tool_Box, index: c.int, icon: Icon) --- // https://doc.qt.io/qt-6.8/qtoolbox.html#setItemIcon
	@(require_results) tool_box_get_widget :: proc(tool_box: Tool_Box, index: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qtoolbox.html#widget
	tool_box_connect_current_changed :: proc(tool_box: Tool_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtoolbox.html#currentChanged

	/* QScrollBar */

	@(require_results) scroll_bar_create :: proc(orientation: Orientation, parent: Widget) -> Scroll_Bar --- // https://doc.qt.io/qt-6.8/qscrollbar.html#QScrollBar
	scroll_bar_set_range :: proc(scroll_bar: Scroll_Bar, min_val: c.int, max_val: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#setRange
	@(require_results) scroll_bar_get_value :: proc(scroll_bar: Scroll_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qabstractslider.html#value-prop
	scroll_bar_set_value :: proc(scroll_bar: Scroll_Bar, value: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#value-prop
	scroll_bar_set_single_step :: proc(scroll_bar: Scroll_Bar, step: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#singleStep-prop
	scroll_bar_set_page_step :: proc(scroll_bar: Scroll_Bar, step: c.int) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#pageStep-prop
	scroll_bar_set_orientation :: proc(scroll_bar: Scroll_Bar, orientation: Orientation) --- // https://doc.qt.io/qt-6.8/qabstractslider.html#orientation-prop
	scroll_bar_connect_value_changed :: proc(scroll_bar: Scroll_Bar, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractslider.html#valueChanged

	/* QLCDNumber */

	@(require_results) lcd_number_create :: proc(parent: Widget) -> LCD_Number --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#QLCDNumber
	lcd_number_display_int :: proc(lcd: LCD_Number, value: c.int) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#display
	lcd_number_display_double :: proc(lcd: LCD_Number, value: c.double) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#display
	lcd_number_display_string :: proc(lcd: LCD_Number, text: cstring) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#display
	lcd_number_set_digit_count :: proc(lcd: LCD_Number, count: c.int) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#setDigitCount
	@(require_results) lcd_number_get_digit_count :: proc(lcd: LCD_Number) -> c.int --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#digitCount
	lcd_number_set_mode :: proc(lcd: LCD_Number, mode: LCD_Number_Mode) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#mode-prop
	@(require_results) lcd_number_get_mode :: proc(lcd: LCD_Number) -> LCD_Number_Mode --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#mode-prop
	lcd_number_set_segment_style :: proc(lcd: LCD_Number, style: LCD_Number_Segment_Style) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#segmentStyle-prop
	@(require_results) lcd_number_get_segment_style :: proc(lcd: LCD_Number) -> LCD_Number_Segment_Style --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#segmentStyle-prop
	lcd_number_set_small_decimal_point :: proc(lcd: LCD_Number, is_small: c.int) --- // https://doc.qt.io/qt-6.8/qlcdnumber.html#smallDecimalPoint-prop

	/* QCommandLinkButton */

	@(require_results) command_link_button_create :: proc(parent: Widget, text: cstring, description: cstring) -> Command_Link_Button --- // https://doc.qt.io/qt-6.8/qcommandlinkbutton.html#QCommandLinkButton
	command_link_button_set_description :: proc(button: Command_Link_Button, description: cstring) --- // https://doc.qt.io/qt-6.8/qcommandlinkbutton.html#description-prop
	@(require_results) command_link_button_get_description :: proc(button: Command_Link_Button) -> cstring --- // https://doc.qt.io/qt-6.8/qcommandlinkbutton.html#description

	/* QKeySequenceEdit */

	@(require_results) key_sequence_edit_create :: proc(parent: Widget) -> Key_Sequence_Edit --- // https://doc.qt.io/qt-6.8/qkeysequenceedit.html#QKeySequenceEdit
	@(require_results) key_sequence_edit_get_key_sequence :: proc(edit: Key_Sequence_Edit) -> cstring --- // https://doc.qt.io/qt-6.8/qkeysequenceedit.html#keySequence-prop
	key_sequence_edit_set_key_sequence :: proc(edit: Key_Sequence_Edit, key_sequence: cstring) --- // https://doc.qt.io/qt-6.8/qkeysequenceedit.html#keySequence-prop
	key_sequence_edit_clear :: proc(edit: Key_Sequence_Edit) --- // https://doc.qt.io/qt-6.8/qkeysequenceedit.html#clear
	key_sequence_edit_connect_key_sequence_changed :: proc(edit: Key_Sequence_Edit, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qkeysequenceedit.html

	/* QFontComboBox */

	@(require_results) font_combo_box_create :: proc(parent: Widget) -> Font_Combo_Box --- // https://doc.qt.io/qt-6.8/qfontcombobox.html#QFontComboBox
	@(require_results) font_combo_box_get_current_font_family :: proc(combo: Font_Combo_Box) -> cstring --- // https://doc.qt.io/qt-6.8/qfontcombobox.html#currentFont-prop
	font_combo_box_set_current_font_family :: proc(combo: Font_Combo_Box, family: cstring) --- // https://doc.qt.io/qt-6.8/qfontcombobox.html#currentFont-prop
	font_combo_box_set_font_filters :: proc(combo: Font_Combo_Box, filters: Font_Combo_Box_Font_Filter) --- // https://doc.qt.io/qt-6.8/qfontcombobox.html#fontFilters-prop
	font_combo_box_connect_current_font_changed :: proc(combo: Font_Combo_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qfontcombobox.html#currentFontChanged

	/* QSplashScreen */

	@(require_results) splash_screen_create :: proc() -> Splash_Screen --- // https://doc.qt.io/qt-6.8/qsplashscreen.html#QSplashScreen
	@(require_results) splash_screen_create_with_pixmap :: proc(pixmap: Pixmap) -> Splash_Screen --- // https://doc.qt.io/qt-6.8/qsplashscreen.html#QSplashScreen
	splash_screen_show_message :: proc(splash: Splash_Screen, message: cstring, alignment: Alignment, colour_r: c.int, colour_g: c.int, colour_b: c.int) --- // https://doc.qt.io/qt-6.8/qsplashscreen.html#showMessage
	splash_screen_clear_message :: proc(splash: Splash_Screen) --- // https://doc.qt.io/qt-6.8/qsplashscreen.html#clearMessage
	splash_screen_finish :: proc(splash: Splash_Screen, main_window: Widget) --- // https://doc.qt.io/qt-6.8/qsplashscreen.html#finish

	/* QStackedLayout */

	@(require_results) stacked_layout_create :: proc(parent: Widget) -> Stacked_Layout --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#QStackedLayout
	@(require_results) stacked_layout_add_widget :: proc(layout: Stacked_Layout, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#addWidget
	@(require_results) stacked_layout_insert_widget :: proc(layout: Stacked_Layout, index: c.int, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#insertWidget
	stacked_layout_set_current_index :: proc(layout: Stacked_Layout, index: c.int) --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#currentIndex-prop
	@(require_results) stacked_layout_get_current_index :: proc(layout: Stacked_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#currentIndex-prop
	@(require_results) stacked_layout_get_count :: proc(layout: Stacked_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#count-prop
	@(require_results) stacked_layout_get_widget :: proc(layout: Stacked_Layout, index: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#widget
	stacked_layout_set_current_widget :: proc(layout: Stacked_Layout, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#setCurrentWidget
	stacked_layout_set_stacking_mode :: proc(layout: Stacked_Layout, mode: Stacked_Layout_Stacking_Mode) --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#stackingMode-prop
	stacked_layout_connect_current_changed :: proc(layout: Stacked_Layout, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qstackedlayout.html#currentChanged

	/* QWidgetAction */

	@(require_results) widget_action_create :: proc(parent: Widget) -> Widget_Action --- // https://doc.qt.io/qt-6.8/qwidgetaction.html#QWidgetAction
	widget_action_set_default_widget :: proc(action: Widget_Action, widget: Widget) --- // https://doc.qt.io/qt-6.8/qwidgetaction.html#setDefaultWidget
	@(require_results) widget_action_get_default_widget :: proc(action: Widget_Action) -> Widget --- // https://doc.qt.io/qt-6.8/qwidgetaction.html#defaultWidget

	/* QActionGroup */

	@(require_results) action_group_create :: proc(parent: Widget) -> Action_Group --- // https://doc.qt.io/qt-6.8/qactiongroup.html#QActionGroup
	action_group_destroy :: proc(group: Action_Group) --- // https://doc.qt.io/qt-6.8/qactiongroup.html#dtor.QActionGroup
	action_group_add_action :: proc(group: Action_Group, action: Action) --- // https://doc.qt.io/qt-6.8/qactiongroup.html#addAction
	action_group_remove_action :: proc(group: Action_Group, action: Action) --- // https://doc.qt.io/qt-6.8/qactiongroup.html#removeAction
	action_group_set_exclusive :: proc(group: Action_Group, is_exclusive: c.int) --- // https://doc.qt.io/qt-6.8/qactiongroup.html#setExclusive
	@(require_results) action_group_is_exclusive :: proc(group: Action_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qactiongroup.html#isExclusive
	action_group_set_enabled :: proc(group: Action_Group, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qactiongroup.html#enabled-prop
	@(require_results) action_group_is_enabled :: proc(group: Action_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qactiongroup.html#enabled-prop
	action_group_set_visible :: proc(group: Action_Group, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qactiongroup.html#visible-prop
	@(require_results) action_group_is_visible :: proc(group: Action_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qactiongroup.html#visible-prop
	@(require_results) action_group_get_checked_action :: proc(group: Action_Group) -> Action --- // https://doc.qt.io/qt-6.8/qactiongroup.html#checkedAction
	action_group_connect_triggered :: proc(group: Action_Group, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qactiongroup.html#triggered

	/* QErrorMessage */

	@(require_results) error_message_create :: proc(parent: Widget) -> Error_Message --- // https://doc.qt.io/qt-6.8/qerrormessage.html#QErrorMessage
	error_message_show_message :: proc(dialog: Error_Message, message: cstring) --- // https://doc.qt.io/qt-6.8/qerrormessage.html#showMessage
	error_message_show_message_type :: proc(dialog: Error_Message, message: cstring, type: cstring) --- // https://doc.qt.io/qt-6.8/qerrormessage.html#showMessage

	/* QMdiArea */

	@(require_results) mdi_area_create :: proc(parent: Widget) -> Mdi_Area --- // https://doc.qt.io/qt-6.8/qmdiarea.html#QMdiArea
	@(require_results) mdi_area_add_sub_window :: proc(mdi_area: Mdi_Area, widget: Widget) -> Mdi_Sub_Window --- // https://doc.qt.io/qt-6.8/qmdiarea.html#addSubWindow
	mdi_area_remove_sub_window :: proc(mdi_area: Mdi_Area, widget: Widget) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#removeSubWindow
	mdi_area_set_active_sub_window :: proc(mdi_area: Mdi_Area, sub_window: Mdi_Sub_Window) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#setActiveSubWindow
	@(require_results) mdi_area_get_active_sub_window :: proc(mdi_area: Mdi_Area) -> Mdi_Sub_Window --- // https://doc.qt.io/qt-6.8/qmdiarea.html#activeSubWindow
	@(require_results) mdi_area_get_sub_window_count :: proc(mdi_area: Mdi_Area) -> c.int --- // https://doc.qt.io/qt-6.8/qmdiarea.html#subWindowList
	mdi_area_cascade_sub_windows :: proc(mdi_area: Mdi_Area) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#cascadeSubWindows
	mdi_area_tile_sub_windows :: proc(mdi_area: Mdi_Area) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#tileSubWindows
	mdi_area_close_active_sub_window :: proc(mdi_area: Mdi_Area) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#closeActiveSubWindow
	mdi_area_close_all_sub_windows :: proc(mdi_area: Mdi_Area) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#closeAllSubWindows
	mdi_area_set_view_mode :: proc(mdi_area: Mdi_Area, mode: Mdi_Area_View_Mode) --- // https://doc.qt.io/qt-6.8/qmdiarea.html#viewMode-prop
	mdi_area_connect_sub_window_activated :: proc(mdi_area: Mdi_Area, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmdiarea.html#subWindowActivated

	/* QMdiSubWindow */

	@(require_results) mdi_sub_window_create :: proc(parent: Widget) -> Mdi_Sub_Window --- // https://doc.qt.io/qt-6.8/qmdisubwindow.html#QMdiSubWindow
	mdi_sub_window_set_widget :: proc(sub_window: Mdi_Sub_Window, widget: Widget) --- // https://doc.qt.io/qt-6.8/qmdisubwindow.html#setWidget
	@(require_results) mdi_sub_window_get_widget :: proc(sub_window: Mdi_Sub_Window) -> Widget --- // https://doc.qt.io/qt-6.8/qmdisubwindow.html#widget
	mdi_sub_window_set_system_menu :: proc(sub_window: Mdi_Sub_Window, menu: Menu) --- // https://doc.qt.io/qt-6.8/qmdisubwindow.html#setSystemMenu
	@(require_results) mdi_sub_window_is_shaded :: proc(sub_window: Mdi_Sub_Window) -> c.int --- // https://doc.qt.io/qt-6.8/qmdisubwindow.html#isShaded
	mdi_sub_window_show_shaded :: proc(sub_window: Mdi_Sub_Window) --- // https://doc.qt.io/qt-6.8/qmdisubwindow.html#showShaded
	mdi_sub_window_show_normal :: proc(sub_window: Mdi_Sub_Window) --- // https://doc.qt.io/qt-6.8/qwidget.html#showNormal

	/* QWizard */

	@(require_results) wizard_create :: proc(parent: Widget) -> Wizard --- // https://doc.qt.io/qt-6.8/qwizard.html#QWizard
	@(require_results) wizard_add_page :: proc(wizard: Wizard, page: Wizard_Page) -> c.int --- // https://doc.qt.io/qt-6.8/qwizard.html#addPage
	wizard_set_page :: proc(wizard: Wizard, id: c.int, page: Wizard_Page) --- // https://doc.qt.io/qt-6.8/qwizard.html#setPage
	wizard_remove_page :: proc(wizard: Wizard, id: c.int) --- // https://doc.qt.io/qt-6.8/qwizard.html#removePage
	@(require_results) wizard_get_current_id :: proc(wizard: Wizard) -> c.int --- // https://doc.qt.io/qt-6.8/qwizard.html#currentId-prop
	wizard_set_start_id :: proc(wizard: Wizard, id: c.int) --- // https://doc.qt.io/qt-6.8/qwizard.html#startId-prop
	wizard_set_button_text :: proc(wizard: Wizard, which: Wizard_Button, text: cstring) --- // https://doc.qt.io/qt-6.8/qwizard.html#setButtonText
	wizard_set_wizard_style :: proc(wizard: Wizard, style: Wizard_Style) --- // https://doc.qt.io/qt-6.8/qwizard.html#wizardStyle-prop
	wizard_set_option :: proc(wizard: Wizard, option: Wizard_Option, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qwizard.html#setOption
	wizard_restart :: proc(wizard: Wizard) --- // https://doc.qt.io/qt-6.8/qwizard.html#restart
	wizard_connect_current_id_changed :: proc(wizard: Wizard, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qwizard.html#currentIdChanged
	wizard_connect_page_added :: proc(wizard: Wizard, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qwizard.html#pageAdded
	wizard_connect_page_removed :: proc(wizard: Wizard, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qwizard.html#pageRemoved

	/* QWizardPage */

	@(require_results) wizard_page_create :: proc(parent: Widget) -> Wizard_Page --- // https://doc.qt.io/qt-6.8/qwizardpage.html#QWizardPage
	wizard_page_set_title :: proc(page: Wizard_Page, title: cstring) --- // https://doc.qt.io/qt-6.8/qwizardpage.html#title-prop
	@(require_results) wizard_page_get_title :: proc(page: Wizard_Page) -> cstring --- // https://doc.qt.io/qt-6.8/qwizardpage.html#title-prop
	wizard_page_set_sub_title :: proc(page: Wizard_Page, sub_title: cstring) --- // https://doc.qt.io/qt-6.8/qwizardpage.html#subTitle-prop
	@(require_results) wizard_page_get_sub_title :: proc(page: Wizard_Page) -> cstring --- // https://doc.qt.io/qt-6.8/qwizardpage.html#subTitle-prop
	wizard_page_set_commit_page :: proc(page: Wizard_Page, is_commit: c.int) --- // https://doc.qt.io/qt-6.8/qwizardpage.html#setCommitPage
	@(require_results) wizard_page_is_commit_page :: proc(page: Wizard_Page) -> c.int --- // https://doc.qt.io/qt-6.8/qwizardpage.html#isCommitPage
	wizard_page_set_final_page :: proc(page: Wizard_Page, is_final: c.int) --- // https://doc.qt.io/qt-6.8/qwizardpage.html#setFinalPage
	@(require_results) wizard_page_is_final_page :: proc(page: Wizard_Page) -> c.int --- // https://doc.qt.io/qt-6.8/qwizardpage.html#isFinalPage

	/* QColumnView */

	@(require_results) column_view_create :: proc(parent: Widget) -> Column_View --- // https://doc.qt.io/qt-6.8/qcolumnview.html#QColumnView
	column_view_set_model :: proc(view: Column_View, model: rawptr) --- // https://doc.qt.io/qt-6.8/qcolumnview.html#setModel
	column_view_set_root_index :: proc(view: Column_View, index: Model_Index) --- // https://doc.qt.io/qt-6.8/qcolumnview.html#setRootIndex
	column_view_set_preview_widget :: proc(view: Column_View, widget: Widget) --- // https://doc.qt.io/qt-6.8/qcolumnview.html#setPreviewWidget
	@(require_results) column_view_get_preview_widget :: proc(view: Column_View) -> Widget --- // https://doc.qt.io/qt-6.8/qcolumnview.html#previewWidget
	column_view_set_resizing_grips_visible :: proc(view: Column_View, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qcolumnview.html#resizeGripsVisible-prop

	/* QUndoView */

	@(require_results) undo_view_create :: proc(parent: Widget) -> Undo_View --- // https://doc.qt.io/qt-6.8/qundoview.html#QUndoView
	undo_view_set_stack :: proc(view: Undo_View, stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundoview.html#setStack
	undo_view_set_group :: proc(view: Undo_View, group: Undo_Group) --- // https://doc.qt.io/qt-6.8/qundoview.html#setGroup
	undo_view_set_clean_icon :: proc(view: Undo_View, icon: Icon) --- // https://doc.qt.io/qt-6.8/qundoview.html#cleanIcon-prop
	undo_view_set_empty_label :: proc(view: Undo_View, label: cstring) --- // https://doc.qt.io/qt-6.8/qundoview.html#emptyLabel-prop

	/* QRubberBand */

	@(require_results) rubber_band_create :: proc(shape: Rubber_Band_Shape, parent: Widget) -> Rubber_Band --- // https://doc.qt.io/qt-6.8/qrubberband.html#QRubberBand
	rubber_band_set_geometry :: proc(band: Rubber_Band, x: c.int, y: c.int, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qrubberband.html#setGeometry
	rubber_band_move :: proc(band: Rubber_Band, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qrubberband.html#move
	rubber_band_resize :: proc(band: Rubber_Band, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qrubberband.html#resize

	/* QFocusFrame */

	@(require_results) focus_frame_create :: proc(parent: Widget) -> Focus_Frame --- // https://doc.qt.io/qt-6.8/qfocusframe.html#QFocusFrame
	focus_frame_set_widget :: proc(frame: Focus_Frame, widget: Widget) --- // https://doc.qt.io/qt-6.8/qfocusframe.html#setWidget
	@(require_results) focus_frame_get_widget :: proc(frame: Focus_Frame) -> Widget --- // https://doc.qt.io/qt-6.8/qfocusframe.html#widget

	/* QSizeGrip */

	@(require_results) size_grip_create :: proc(parent: Widget) -> Size_Grip --- // https://doc.qt.io/qt-6.8/qsizegrip.html#QSizeGrip

	/* QWhatsThis */

	whats_this_enter_mode :: proc() --- // https://doc.qt.io/qt-6.8/qwhatsthis.html#enterWhatsThisMode
	whats_this_leave_mode :: proc() --- // https://doc.qt.io/qt-6.8/qwhatsthis.html#leaveWhatsThisMode
	@(require_results) whats_this_is_in_mode :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qwhatsthis.html#inWhatsThisMode
	whats_this_show_text :: proc(global_x: c.int, global_y: c.int, text: cstring, widget: Widget) --- // https://doc.qt.io/qt-6.8/qwhatsthis.html#showText
	whats_this_hide_text :: proc() --- // https://doc.qt.io/qt-6.8/qwhatsthis.html#hideText

	/* QImage */

	@(require_results) image_create :: proc(width: c.int, height: c.int, format: Image_Format) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#QImage
	@(require_results) image_create_from_file :: proc(file_path: cstring) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#QImage
	@(require_results) image_create_from_data :: proc(data: [^]u8, size: c.int) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#QImage
	image_destroy :: proc(image: Image) --- // https://doc.qt.io/qt-6.8/qimage.html#dtor.QImage
	@(require_results) image_get_width :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#width
	@(require_results) image_get_height :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#height
	@(require_results) image_get_format :: proc(image: Image) -> Image_Format --- // https://doc.qt.io/qt-6.8/qimage.html#format
	@(require_results) image_is_null :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#isNull
	image_fill :: proc(image: Image, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qimage.html#fill
	image_set_pixel :: proc(image: Image, x: c.int, y: c.int, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qimage.html#setPixel
	image_get_pixel :: proc(image: Image, x: c.int, y: c.int, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qimage.html#pixel
	@(require_results) image_scaled :: proc(image: Image, width: c.int, height: c.int, aspect_mode: Aspect_Ratio_Mode, transform_mode: Transformation_Mode) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#scaled
	@(require_results) image_mirrored :: proc(image: Image, is_horizontal: c.int, is_vertical: c.int) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#mirrored
	@(require_results) image_copy :: proc(image: Image, x: c.int, y: c.int, width: c.int, height: c.int) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#copy
	@(require_results) image_save :: proc(image: Image, file_path: cstring, format: cstring, quality: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#save
	@(require_results) image_to_pixmap :: proc(image: Image) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#fromImage
	@(require_results) pixmap_to_image :: proc(pixmap: Pixmap) -> Image --- // https://doc.qt.io/qt-6.8/qpixmap.html#toImage
	@(require_results) image_get_depth :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#depth
	@(require_results) image_get_byte_count :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#sizeInBytes
	@(require_results) image_get_bits :: proc(image: Image) -> [^]u8 --- // https://doc.qt.io/qt-6.8/qimage.html#bits
	@(require_results) image_convert_to_format :: proc(image: Image, format: Image_Format) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#convertToFormat
	@(require_results) image_rgb_swapped :: proc(image: Image) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#rgbSwapped
	@(require_results) image_transformed :: proc(image: Image, transform: Transform) -> Image --- // https://doc.qt.io/qt-6.8/qimage.html#transformed
	image_set_text :: proc(image: Image, key: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qimage.html#setText
	@(require_results) image_get_text :: proc(image: Image, key: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qimage.html#text
	@(require_results) image_is_all_grey :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#allGray
	@(require_results) image_is_greyscale :: proc(image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimage.html#isGrayscale

	/* QColor (standalone) */

	@(require_results) colour_create :: proc(r: c.int, g: c.int, b: c.int, a: c.int) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#QColor
	@(require_results) colour_create_from_name :: proc(name: cstring) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#QColor
	@(require_results) colour_create_from_hsv :: proc(h: c.int, s: c.int, v: c.int, a: c.int) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#QColor
	@(require_results) colour_create_from_hsl :: proc(h: c.int, s: c.int, l: c.int, a: c.int) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#QColor
	colour_destroy :: proc(colour: Colour_Handle) --- // https://doc.qt.io/qt-6.8/qcolor.html
	colour_get_rgb :: proc(colour: Colour_Handle, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html#rgb
	colour_get_hsv :: proc(colour: Colour_Handle, h: ^c.int, s: ^c.int, v: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html
	colour_get_hsl :: proc(colour: Colour_Handle, h: ^c.int, s: ^c.int, l: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html
	@(require_results) colour_get_name :: proc(colour: Colour_Handle) -> cstring --- // https://doc.qt.io/qt-6.8/qcolor.html#name
	@(require_results) colour_is_valid :: proc(colour: Colour_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qcolor.html#isValid
	@(require_results) colour_lighter :: proc(colour: Colour_Handle, factor: c.int) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#lighter
	@(require_results) colour_darker :: proc(colour: Colour_Handle, factor: c.int) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#darker
	colour_set_alpha :: proc(colour: Colour_Handle, alpha: c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html#setAlpha
	@(require_results) colour_get_alpha :: proc(colour: Colour_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qcolor.html#alpha
	colour_set_red :: proc(colour: Colour_Handle, red: c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html#setRed
	@(require_results) colour_get_red :: proc(colour: Colour_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qcolor.html#red
	colour_set_green :: proc(colour: Colour_Handle, green: c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html#setGreen
	@(require_results) colour_get_green :: proc(colour: Colour_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qcolor.html#green
	colour_set_blue :: proc(colour: Colour_Handle, blue: c.int) --- // https://doc.qt.io/qt-6.8/qcolor.html#setBlue
	@(require_results) colour_get_blue :: proc(colour: Colour_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qcolor.html#blue
	@(require_results) colour_to_rgb :: proc(colour: Colour_Handle) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#toRgb
	@(require_results) colour_to_hsv :: proc(colour: Colour_Handle) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#toHsv
	@(require_results) colour_to_hsl :: proc(colour: Colour_Handle) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolor.html#toHsl
	@(require_results) colour_get_spec :: proc(colour: Colour_Handle) -> Colour_Spec --- // https://doc.qt.io/qt-6.8/qcolor.html#spec
	colour_set_named_colour :: proc(colour: Colour_Handle, name: cstring) --- // https://doc.qt.io/qt-6.8/qcolor.html#fromString

	/* QColorSpace */

	@(require_results) colour_space_create :: proc() -> Colour_Space --- // https://doc.qt.io/qt-6.8/qcolorspace.html#QColorSpace
	@(require_results) colour_space_create_named :: proc(named_colour_space: Named_Colour_Space) -> Colour_Space --- // https://doc.qt.io/qt-6.8/qcolorspace.html#QColorSpace
	colour_space_destroy :: proc(colour_space: Colour_Space) --- // https://doc.qt.io/qt-6.8/qcolorspace.html
	@(require_results) colour_space_is_valid :: proc(colour_space: Colour_Space) -> c.int --- // https://doc.qt.io/qt-6.8/qcolorspace.html#isValid
	@(require_results) colour_space_get_primaries :: proc(colour_space: Colour_Space) -> Colour_Space_Primaries --- // https://doc.qt.io/qt-6.8/qcolorspace.html#primaries
	@(require_results) colour_space_get_transfer_function :: proc(colour_space: Colour_Space) -> Colour_Space_Transfer_Function --- // https://doc.qt.io/qt-6.8/qcolorspace.html#transferFunction
	@(require_results) colour_space_get_gamma :: proc(colour_space: Colour_Space) -> c.float --- // https://doc.qt.io/qt-6.8/qcolorspace.html#gamma
	@(require_results) colour_space_get_description :: proc(colour_space: Colour_Space) -> cstring --- // https://doc.qt.io/qt-6.8/qcolorspace.html#description
	colour_space_set_description :: proc(colour_space: Colour_Space, description: cstring) --- // https://doc.qt.io/qt-6.8/qcolorspace.html#setDescription
	@(require_results) colour_space_get_transform_to :: proc(colour_space: Colour_Space, target: Colour_Space) -> Colour_Transform --- // https://doc.qt.io/qt-6.8/qcolorspace.html
	@(require_results) colour_space_create_with_primaries_and_transfer :: proc(primaries: Colour_Space_Primaries, transfer_function: Colour_Space_Transfer_Function) -> Colour_Space --- // https://doc.qt.io/qt-6.8/qcolorspace.html#QColorSpace
	@(require_results) colour_space_create_with_primaries_and_gamma :: proc(primaries: Colour_Space_Primaries, gamma: c.float) -> Colour_Space --- // https://doc.qt.io/qt-6.8/qcolorspace.html#QColorSpace

	/* QColorTransform */

	@(require_results) colour_transform_create :: proc() -> Colour_Transform --- // https://doc.qt.io/qt-6.8/qcolortransform.html
	colour_transform_destroy :: proc(transform: Colour_Transform) --- // https://doc.qt.io/qt-6.8/qcolortransform.html
	@(require_results) colour_transform_is_identity :: proc(transform: Colour_Transform) -> c.int --- // https://doc.qt.io/qt-6.8/qcolortransform.html#isIdentity
	@(require_results) colour_transform_map_colour :: proc(transform: Colour_Transform, colour: Colour_Handle) -> Colour_Handle --- // https://doc.qt.io/qt-6.8/qcolortransform.html
	@(require_results) colour_transform_transform_image :: proc(transform: Colour_Transform, image: Image) -> Image --- // https://doc.qt.io/qt-6.8/qcolortransform.html

	/* QFont (standalone) */

	@(require_results) font_create :: proc(family: cstring, point_size: c.int, weight: c.int, is_italic: c.int) -> Font_Handle --- // https://doc.qt.io/qt-6.8/qfont.html#QFont
	@(require_results) font_create_default :: proc() -> Font_Handle --- // https://doc.qt.io/qt-6.8/qfont.html#QFont
	font_destroy :: proc(font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qfont.html#dtor.QFont
	font_set_family :: proc(font: Font_Handle, family: cstring) --- // https://doc.qt.io/qt-6.8/qfont.html#setFamily
	@(require_results) font_get_family :: proc(font: Font_Handle) -> cstring --- // https://doc.qt.io/qt-6.8/qfont.html#family
	font_set_point_size :: proc(font: Font_Handle, size: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setPointSize
	@(require_results) font_get_point_size :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html#pointSize
	font_set_pixel_size :: proc(font: Font_Handle, size: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setPixelSize
	@(require_results) font_get_pixel_size :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html#pixelSize
	font_set_weight :: proc(font: Font_Handle, weight: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setWeight
	@(require_results) font_get_weight :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html#weight
	font_set_bold :: proc(font: Font_Handle, is_bold: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setBold
	@(require_results) font_is_bold :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_italic :: proc(font: Font_Handle, is_italic: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setItalic
	@(require_results) font_is_italic :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_underline :: proc(font: Font_Handle, is_underline: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setUnderline
	@(require_results) font_is_underline :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_strikeout :: proc(font: Font_Handle, is_strikeout: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setStrikeOut
	@(require_results) font_is_strikeout :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_kerning :: proc(font: Font_Handle, is_kerning: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setKerning
	@(require_results) font_is_kerning :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_letter_spacing :: proc(font: Font_Handle, spacing_type: Font_Spacing_Type, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qfont.html#setLetterSpacing
	font_set_word_spacing :: proc(font: Font_Handle, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qfont.html#setWordSpacing
	font_set_stretch :: proc(font: Font_Handle, factor: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setStretch
	font_set_style_hint :: proc(font: Font_Handle, hint: Font_Style_Hint) --- // https://doc.qt.io/qt-6.8/qfont.html#setStyleHint
	@(require_results) font_to_string :: proc(font: Font_Handle) -> cstring --- // https://doc.qt.io/qt-6.8/qfont.html#toString
	font_set_style_strategy :: proc(font: Font_Handle, strategy: Font_Style_Strategy) --- // https://doc.qt.io/qt-6.8/qfont.html#setStyleStrategy
	@(require_results) font_from_string :: proc(description: cstring) -> Font_Handle --- // https://doc.qt.io/qt-6.8/qfont.html#fromString
	@(require_results) font_is_exact_match :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_overline :: proc(font: Font_Handle, is_overline: c.int) --- // https://doc.qt.io/qt-6.8/qfont.html#setOverline
	@(require_results) font_is_overline :: proc(font: Font_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qfont.html
	font_set_capitalization :: proc(font: Font_Handle, capitalization: Font_Capitalization) --- // https://doc.qt.io/qt-6.8/qfont.html#setCapitalization
	font_set_hinting_preference :: proc(font: Font_Handle, preference: Font_Hinting_Preference) --- // https://doc.qt.io/qt-6.8/qfont.html#setHintingPreference

	/* QPen (standalone) */

	@(require_results) pen_create :: proc() -> Pen --- // https://doc.qt.io/qt-6.8/qpen.html#QPen
	@(require_results) pen_create_with_colour :: proc(r: c.int, g: c.int, b: c.int, a: c.int) -> Pen --- // https://doc.qt.io/qt-6.8/qpen.html#QPen
	pen_destroy :: proc(pen: Pen) --- // https://doc.qt.io/qt-6.8/qpen.html#dtor.QPen
	pen_set_colour :: proc(pen: Pen, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qpen.html#setColor
	pen_get_colour :: proc(pen: Pen, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qpen.html#color
	pen_set_width :: proc(pen: Pen, width: c.int) --- // https://doc.qt.io/qt-6.8/qpen.html#setWidth
	@(require_results) pen_get_width :: proc(pen: Pen) -> c.int --- // https://doc.qt.io/qt-6.8/qpen.html#width
	pen_set_width_f :: proc(pen: Pen, width: c.double) --- // https://doc.qt.io/qt-6.8/qpen.html#setWidthF
	@(require_results) pen_get_width_f :: proc(pen: Pen) -> c.double --- // https://doc.qt.io/qt-6.8/qpen.html#widthF
	pen_set_style :: proc(pen: Pen, style: Pen_Style) --- // https://doc.qt.io/qt-6.8/qpen.html#setStyle
	@(require_results) pen_get_style :: proc(pen: Pen) -> Pen_Style --- // https://doc.qt.io/qt-6.8/qpen.html#style
	pen_set_cap_style :: proc(pen: Pen, style: Pen_Cap_Style) --- // https://doc.qt.io/qt-6.8/qpen.html#setCapStyle
	@(require_results) pen_get_cap_style :: proc(pen: Pen) -> Pen_Cap_Style --- // https://doc.qt.io/qt-6.8/qpen.html#capStyle
	pen_set_join_style :: proc(pen: Pen, style: Pen_Join_Style) --- // https://doc.qt.io/qt-6.8/qpen.html#setJoinStyle
	@(require_results) pen_get_join_style :: proc(pen: Pen) -> Pen_Join_Style --- // https://doc.qt.io/qt-6.8/qpen.html#joinStyle
	pen_set_dash_offset :: proc(pen: Pen, offset: c.double) --- // https://doc.qt.io/qt-6.8/qpen.html#setDashOffset
	@(require_results) pen_get_dash_offset :: proc(pen: Pen) -> c.double --- // https://doc.qt.io/qt-6.8/qpen.html#dashOffset
	pen_set_brush :: proc(pen: Pen, brush: Brush) --- // https://doc.qt.io/qt-6.8/qpen.html#setBrush
	@(require_results) pen_get_brush :: proc(pen: Pen) -> Brush --- // https://doc.qt.io/qt-6.8/qpen.html#brush
	pen_set_dash_pattern :: proc(pen: Pen, pattern: [^]c.double, count: c.int) --- // https://doc.qt.io/qt-6.8/qpen.html#setDashPattern
	pen_get_dash_pattern :: proc(pen: Pen, out_pattern: ^[^]c.double, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qpen.html#dashPattern
	pen_free_dash_pattern :: proc(pattern: [^]c.double) --- // https://doc.qt.io/qt-6.8/qpen.html
	pen_set_cosmetic :: proc(pen: Pen, is_cosmetic: c.int) --- // https://doc.qt.io/qt-6.8/qpen.html#setCosmetic
	@(require_results) pen_is_cosmetic :: proc(pen: Pen) -> c.int --- // https://doc.qt.io/qt-6.8/qpen.html#isCosmetic
	pen_set_miter_limit :: proc(pen: Pen, limit: c.double) --- // https://doc.qt.io/qt-6.8/qpen.html#setMiterLimit
	@(require_results) pen_get_miter_limit :: proc(pen: Pen) -> c.double --- // https://doc.qt.io/qt-6.8/qpen.html#miterLimit

	/* QBrush (standalone) */

	@(require_results) brush_create :: proc() -> Brush --- // https://doc.qt.io/qt-6.8/qbrush.html#QBrush
	@(require_results) brush_create_with_colour :: proc(r: c.int, g: c.int, b: c.int, a: c.int) -> Brush --- // https://doc.qt.io/qt-6.8/qbrush.html#QBrush
	brush_destroy :: proc(brush: Brush) --- // https://doc.qt.io/qt-6.8/qbrush.html#dtor.QBrush
	brush_set_colour :: proc(brush: Brush, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qbrush.html#setColor
	brush_get_colour :: proc(brush: Brush, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qbrush.html#color
	brush_set_style :: proc(brush: Brush, style: Brush_Style) --- // https://doc.qt.io/qt-6.8/qbrush.html#setStyle
	@(require_results) brush_get_style :: proc(brush: Brush) -> Brush_Style --- // https://doc.qt.io/qt-6.8/qbrush.html#style
	brush_set_texture :: proc(brush: Brush, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qbrush.html#setTexture

	/* QPalette */

	@(require_results) palette_create :: proc() -> Palette --- // https://doc.qt.io/qt-6.8/qpalette.html#QPalette
	@(require_results) palette_create_from_widget :: proc(widget: Widget) -> Palette --- // https://doc.qt.io/qt-6.8/qpalette.html#QPalette
	palette_destroy :: proc(palette: Palette) --- // https://doc.qt.io/qt-6.8/qpalette.html#dtor.QPalette
	palette_set_colour :: proc(palette: Palette, group: Palette_Colour_Group, role: Palette_Colour_Role, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qpalette.html#setColor
	palette_get_colour :: proc(palette: Palette, group: Palette_Colour_Group, role: Palette_Colour_Role, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qpalette.html#color
	palette_set_brush :: proc(palette: Palette, group: Palette_Colour_Group, role: Palette_Colour_Role, brush: Brush) --- // https://doc.qt.io/qt-6.8/qpalette.html#setBrush
	widget_set_palette :: proc(widget: Widget, palette: Palette) --- // https://doc.qt.io/qt-6.8/qwidget.html#palette-prop

	/* QCursor (standalone) */

	@(require_results) cursor_create :: proc(shape: Cursor_Shape) -> Cursor_Handle --- // https://doc.qt.io/qt-6.8/qcursor.html#QCursor
	@(require_results) cursor_create_from_pixmap :: proc(pixmap: Pixmap, hot_x: c.int, hot_y: c.int) -> Cursor_Handle --- // https://doc.qt.io/qt-6.8/qcursor.html#QCursor
	cursor_destroy :: proc(cursor: Cursor_Handle) --- // https://doc.qt.io/qt-6.8/qcursor.html#dtor.QCursor
	cursor_get_pos :: proc(x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qcursor.html#pos
	cursor_set_pos :: proc(x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qcursor.html#setPos
	widget_set_cursor_object :: proc(widget: Widget, cursor: Cursor_Handle) --- // https://doc.qt.io/qt-6.8/qwidget.html#cursor-prop

	/* QPainterPath */

	@(require_results) painter_path_create :: proc() -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#QPainterPath
	painter_path_destroy :: proc(path: Painter_Path) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#dtor.QPainterPath
	painter_path_move_to :: proc(path: Painter_Path, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#moveTo
	painter_path_line_to :: proc(path: Painter_Path, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#lineTo
	painter_path_cubic_to :: proc(path: Painter_Path, ctrl1_x: c.double, ctrl1_y: c.double, ctrl2_x: c.double, ctrl2_y: c.double, end_x: c.double, end_y: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#cubicTo
	painter_path_quad_to :: proc(path: Painter_Path, ctrl_x: c.double, ctrl_y: c.double, end_x: c.double, end_y: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#quadTo
	painter_path_arc_to :: proc(path: Painter_Path, x: c.double, y: c.double, width: c.double, height: c.double, start_angle: c.double, sweep_length: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#arcTo
	painter_path_add_rect :: proc(path: Painter_Path, x: c.double, y: c.double, width: c.double, height: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#addRect
	painter_path_add_ellipse :: proc(path: Painter_Path, x: c.double, y: c.double, width: c.double, height: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#addEllipse
	painter_path_add_text :: proc(path: Painter_Path, x: c.double, y: c.double, font: Font_Handle, text: cstring) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#addText
	painter_path_add_rounded_rect :: proc(path: Painter_Path, x: c.double, y: c.double, w: c.double, h: c.double, x_radius: c.double, y_radius: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#addRoundedRect
	painter_path_close_subpath :: proc(path: Painter_Path) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#closeSubpath
	@(require_results) painter_path_is_empty :: proc(path: Painter_Path) -> c.int --- // https://doc.qt.io/qt-6.8/qpainterpath.html#isEmpty
	@(require_results) painter_path_contains_point :: proc(path: Painter_Path, x: c.double, y: c.double) -> c.int --- // https://doc.qt.io/qt-6.8/qpainterpath.html#contains
	painter_path_add_path :: proc(path: Painter_Path, other: Painter_Path) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#addPath
	painter_path_add_polygon :: proc(path: Painter_Path, points: [^]c.double, point_count: c.int) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#addPolygon
	painter_path_get_bounding_rect :: proc(path: Painter_Path, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#boundingRect
	@(require_results) painter_path_get_length :: proc(path: Painter_Path) -> c.double --- // https://doc.qt.io/qt-6.8/qpainterpath.html#length
	@(require_results) painter_path_get_percent_at_length :: proc(path: Painter_Path, length: c.double) -> c.double --- // https://doc.qt.io/qt-6.8/qpainterpath.html#percentAtLength
	painter_path_get_point_at_percent :: proc(path: Painter_Path, percent: c.double, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#pointAtPercent
	@(require_results) painter_path_get_angle_at_percent :: proc(path: Painter_Path, percent: c.double) -> c.double --- // https://doc.qt.io/qt-6.8/qpainterpath.html#angleAtPercent
	@(require_results) painter_path_united :: proc(path: Painter_Path, other: Painter_Path) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#united
	@(require_results) painter_path_intersected :: proc(path: Painter_Path, other: Painter_Path) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#intersected
	@(require_results) painter_path_subtracted :: proc(path: Painter_Path, other: Painter_Path) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#subtracted
	@(require_results) painter_path_simplified :: proc(path: Painter_Path) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#simplified
	@(require_results) painter_path_translated :: proc(path: Painter_Path, dx: c.double, dy: c.double) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#translated
	@(require_results) painter_path_to_reversed :: proc(path: Painter_Path) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpath.html#toReversed
	@(require_results) painter_path_intersects_rect :: proc(path: Painter_Path, x: c.double, y: c.double, w: c.double, h: c.double) -> c.int --- // https://doc.qt.io/qt-6.8/qpainterpath.html#intersects
	@(require_results) painter_path_intersects_path :: proc(path: Painter_Path, other: Painter_Path) -> c.int --- // https://doc.qt.io/qt-6.8/qpainterpath.html
	painter_path_set_fill_rule :: proc(path: Painter_Path, rule: Fill_Rule) --- // https://doc.qt.io/qt-6.8/qpainterpath.html#setFillRule
	@(require_results) painter_path_get_fill_rule :: proc(path: Painter_Path) -> Fill_Rule --- // https://doc.qt.io/qt-6.8/qpainterpath.html#fillRule
	@(require_results) painter_path_get_element_count :: proc(path: Painter_Path) -> c.int --- // https://doc.qt.io/qt-6.8/qpainterpath.html#elementCount
	painter_draw_path :: proc(painter: Painter, path: Painter_Path) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPath
	painter_set_clip_path :: proc(painter: Painter, path: Painter_Path) --- // https://doc.qt.io/qt-6.8/qpainter.html#setClipPath
	painter_fill_path :: proc(painter: Painter, path: Painter_Path, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#fillPath
	painter_stroke_path :: proc(painter: Painter, path: Painter_Path, pen: Pen) --- // https://doc.qt.io/qt-6.8/qpainter.html#strokePath

	/* QPainterPathStroker */

	@(require_results) painter_path_stroker_create :: proc() -> Painter_Path_Stroker --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#QPainterPathStroker
	painter_path_stroker_destroy :: proc(stroker: Painter_Path_Stroker) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#dtor.QPainterPathStroker
	painter_path_stroker_set_width :: proc(stroker: Painter_Path_Stroker, width: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#setWidth
	@(require_results) painter_path_stroker_get_width :: proc(stroker: Painter_Path_Stroker) -> c.double --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#width
	painter_path_stroker_set_cap_style :: proc(stroker: Painter_Path_Stroker, style: Pen_Cap_Style) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#setCapStyle
	@(require_results) painter_path_stroker_get_cap_style :: proc(stroker: Painter_Path_Stroker) -> Pen_Cap_Style --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#capStyle
	painter_path_stroker_set_join_style :: proc(stroker: Painter_Path_Stroker, style: Pen_Join_Style) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#setJoinStyle
	@(require_results) painter_path_stroker_get_join_style :: proc(stroker: Painter_Path_Stroker) -> Pen_Join_Style --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#joinStyle
	painter_path_stroker_set_miter_limit :: proc(stroker: Painter_Path_Stroker, limit: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#setMiterLimit
	@(require_results) painter_path_stroker_get_miter_limit :: proc(stroker: Painter_Path_Stroker) -> c.double --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#miterLimit
	painter_path_stroker_set_dash_pattern :: proc(stroker: Painter_Path_Stroker, style: Pen_Style) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#setDashPattern
	painter_path_stroker_set_dash_offset :: proc(stroker: Painter_Path_Stroker, offset: c.double) --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#setDashOffset
	@(require_results) painter_path_stroker_get_dash_offset :: proc(stroker: Painter_Path_Stroker) -> c.double --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#dashOffset
	@(require_results) painter_path_stroker_create_stroke :: proc(stroker: Painter_Path_Stroker, path: Painter_Path) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qpainterpathstroker.html#QPainterPathStroker

	/* QTransform */

	@(require_results) transform_create :: proc() -> Transform --- // https://doc.qt.io/qt-6.8/qtransform.html#QTransform
	@(require_results) transform_create_values :: proc(m11: c.double, m12: c.double, m13: c.double, m21: c.double, m22: c.double, m23: c.double, m31: c.double, m32: c.double, m33: c.double) -> Transform --- // https://doc.qt.io/qt-6.8/qtransform.html#QTransform
	transform_destroy :: proc(transform: Transform) --- // https://doc.qt.io/qt-6.8/qtransform.html
	@(require_results) transform_inverted :: proc(transform: Transform) -> Transform --- // https://doc.qt.io/qt-6.8/qtransform.html#inverted
	@(require_results) transform_transposed :: proc(transform: Transform) -> Transform --- // https://doc.qt.io/qt-6.8/qtransform.html#transposed
	transform_translate :: proc(transform: Transform, dx: c.double, dy: c.double) --- // https://doc.qt.io/qt-6.8/qtransform.html#translate
	transform_scale :: proc(transform: Transform, sx: c.double, sy: c.double) --- // https://doc.qt.io/qt-6.8/qtransform.html#scale
	transform_rotate :: proc(transform: Transform, angle: c.double) --- // https://doc.qt.io/qt-6.8/qtransform.html#rotate
	transform_shear :: proc(transform: Transform, sh: c.double, sv: c.double) --- // https://doc.qt.io/qt-6.8/qtransform.html#shear
	transform_reset :: proc(transform: Transform) --- // https://doc.qt.io/qt-6.8/qtransform.html#reset
	@(require_results) transform_is_identity :: proc(transform: Transform) -> c.int --- // https://doc.qt.io/qt-6.8/qtransform.html#isIdentity
	@(require_results) transform_determinant :: proc(transform: Transform) -> c.double --- // https://doc.qt.io/qt-6.8/qtransform.html#determinant
	painter_set_transform :: proc(painter: Painter, transform: Transform, is_combine: c.int) --- // https://doc.qt.io/qt-6.8/qpainter.html#setTransform
	painter_reset_transform :: proc(painter: Painter) --- // https://doc.qt.io/qt-6.8/qpainter.html#resetTransform

	/* QRegion */

	@(require_results) region_create :: proc() -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#QRegion
	@(require_results) region_create_rect :: proc(x: c.int, y: c.int, width: c.int, height: c.int) -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#QRegion
	@(require_results) region_create_ellipse :: proc(x: c.int, y: c.int, width: c.int, height: c.int) -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#QRegion
	region_destroy :: proc(region: Region) --- // https://doc.qt.io/qt-6.8/qregion.html
	@(require_results) region_is_empty :: proc(region: Region) -> c.int --- // https://doc.qt.io/qt-6.8/qregion.html#isEmpty
	@(require_results) region_contains_point :: proc(region: Region, x: c.int, y: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregion.html#contains
	@(require_results) region_contains_rect :: proc(region: Region, x: c.int, y: c.int, width: c.int, height: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregion.html#contains
	@(require_results) region_united :: proc(region: Region, other: Region) -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#united
	@(require_results) region_intersected :: proc(region: Region, other: Region) -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#intersected
	@(require_results) region_subtracted :: proc(region: Region, other: Region) -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#subtracted
	@(require_results) region_xored :: proc(region: Region, other: Region) -> Region --- // https://doc.qt.io/qt-6.8/qregion.html#xored
	region_get_bounding_rect :: proc(region: Region, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) --- // https://doc.qt.io/qt-6.8/qregion.html#boundingRect
	painter_set_clip_region :: proc(painter: Painter, region: Region) --- // https://doc.qt.io/qt-6.8/qpainter.html#setClipRegion

	/* QGradient / QLinearGradient / QRadialGradient / QConicalGradient */

	@(require_results) linear_gradient_create :: proc(x1: c.double, y1: c.double, x2: c.double, y2: c.double) -> Gradient --- // https://doc.qt.io/qt-6.8/qlineargradient.html#QLinearGradient
	@(require_results) radial_gradient_create :: proc(cx: c.double, cy: c.double, radius: c.double) -> Gradient --- // https://doc.qt.io/qt-6.8/qradialgradient.html#QRadialGradient
	@(require_results) radial_gradient_create_focal :: proc(cx: c.double, cy: c.double, radius: c.double, fx: c.double, fy: c.double) -> Gradient --- // https://doc.qt.io/qt-6.8/qradialgradient.html#QRadialGradient
	@(require_results) conical_gradient_create :: proc(cx: c.double, cy: c.double, angle: c.double) -> Gradient --- // https://doc.qt.io/qt-6.8/qconicalgradient.html#QConicalGradient
	gradient_destroy :: proc(gradient: Gradient) --- // https://doc.qt.io/qt-6.8/qgradient.html
	gradient_set_colour_at :: proc(gradient: Gradient, position: c.double, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qgradient.html#setColorAt
	gradient_set_spread :: proc(gradient: Gradient, spread: Gradient_Spread) --- // https://doc.qt.io/qt-6.8/qgradient.html#setSpread
	brush_set_gradient :: proc(brush: Brush, gradient: Gradient) --- // https://doc.qt.io/qt-6.8/qbrush.html

	/* QTextCursor */

	@(require_results) text_cursor_create :: proc(document: Text_Document) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextcursor.html#QTextCursor
	@(require_results) text_cursor_create_from_text_edit :: proc(text_edit: Text_Edit) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextcursor.html#QTextCursor
	@(require_results) text_cursor_create_from_plain_text_edit :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextcursor.html#QTextCursor
	text_cursor_destroy :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#dtor.QTextCursor
	@(require_results) text_cursor_get_position :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#position
	text_cursor_set_position :: proc(cursor: Text_Cursor, position: c.int, move_mode: Text_Cursor_Move_Mode) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#setPosition
	@(require_results) text_cursor_get_anchor :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#anchor
	@(require_results) text_cursor_has_selection :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#hasSelection
	@(require_results) text_cursor_get_selected_text :: proc(cursor: Text_Cursor) -> cstring --- // https://doc.qt.io/qt-6.8/qtextcursor.html#selectedText
	text_cursor_remove_selected_text :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#removeSelectedText
	text_cursor_insert_text :: proc(cursor: Text_Cursor, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertText
	text_cursor_insert_html :: proc(cursor: Text_Cursor, html: cstring) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertHtml
	text_cursor_select :: proc(cursor: Text_Cursor, selection_type: Text_Cursor_Selection_Type) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#select
	text_cursor_move_position :: proc(cursor: Text_Cursor, operation: Text_Cursor_Move_Operation, move_mode: Text_Cursor_Move_Mode, n: c.int) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#movePosition
	text_cursor_begin_edit_block :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#beginEditBlock
	text_cursor_end_edit_block :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#endEditBlock
	@(require_results) text_cursor_at_start :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#atStart
	@(require_results) text_cursor_at_end :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#atEnd
	@(require_results) text_cursor_get_block_number :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#blockNumber
	@(require_results) text_cursor_get_column_number :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#columnNumber
	text_cursor_insert_block :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertBlock
	text_cursor_insert_image :: proc(cursor: Text_Cursor, file_path: cstring) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertImage
	@(require_results) text_cursor_insert_table :: proc(cursor: Text_Cursor, rows: c.int, cols: c.int) -> rawptr --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertTable
	text_cursor_insert_list :: proc(cursor: Text_Cursor, style: Text_List_Style) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertList
	text_cursor_delete_char :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#deleteChar
	text_cursor_delete_previous_char :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#deletePreviousChar
	text_cursor_clear_selection :: proc(cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#clearSelection
	@(require_results) text_cursor_get_selection_start :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#selectionStart
	@(require_results) text_cursor_get_selection_end :: proc(cursor: Text_Cursor) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#selectionEnd
	@(require_results) text_cursor_get_block :: proc(cursor: Text_Cursor, out_position: ^c.int, out_length: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtextcursor.html#block
	text_edit_set_text_cursor :: proc(text_edit: Text_Edit, cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qtextedit.html#setTextCursor
	plain_text_edit_set_text_cursor :: proc(text_edit: Plain_Text_Edit, cursor: Text_Cursor) --- // https://doc.qt.io/qt-6.8/qplaintextedit.html#setTextCursor

	/* QTextDocument */

	@(require_results) text_document_create :: proc(parent: Widget) -> Text_Document --- // https://doc.qt.io/qt-6.8/qtextdocument.html#QTextDocument
	@(require_results) text_document_create_from_text_edit :: proc(text_edit: Text_Edit) -> Text_Document --- // https://doc.qt.io/qt-6.8/qtextdocument.html#QTextDocument
	@(require_results) text_document_create_from_plain_text_edit :: proc(plain_text_edit: Plain_Text_Edit) -> Text_Document --- // https://doc.qt.io/qt-6.8/qtextdocument.html#QTextDocument
	text_document_destroy :: proc(document: Text_Document) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#dtor.QTextDocument
	@(require_results) text_document_get_plain_text :: proc(document: Text_Document) -> cstring --- // https://doc.qt.io/qt-6.8/qtextdocument.html
	@(require_results) text_document_get_html :: proc(document: Text_Document) -> cstring --- // https://doc.qt.io/qt-6.8/qtextdocument.html
	text_document_set_plain_text :: proc(document: Text_Document, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#setPlainText
	text_document_set_html :: proc(document: Text_Document, html: cstring) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#setHtml
	@(require_results) text_document_is_modified :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#modified-prop
	text_document_set_modified :: proc(document: Text_Document, is_modified: c.int) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#modified-prop
	@(require_results) text_document_is_empty :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#isEmpty
	@(require_results) text_document_get_block_count :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#blockCount-prop
	@(require_results) text_document_get_character_count :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#characterCount
	text_document_set_default_font :: proc(document: Text_Document, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#setDefaultFont
	text_document_undo :: proc(document: Text_Document) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#undo
	text_document_redo :: proc(document: Text_Document) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#redo
	@(require_results) text_document_is_undo_available :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#isUndoAvailable
	@(require_results) text_document_is_redo_available :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#isRedoAvailable
	text_document_clear_undo_redo_stacks :: proc(document: Text_Document) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#clearUndoRedoStacks
	text_document_set_maximum_block_count :: proc(document: Text_Document, maximum: c.int) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#maximumBlockCount-prop
	@(require_results) text_document_find :: proc(document: Text_Document, text: cstring, position: c.int, flags: c.int) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextdocument.html#find
	text_document_set_default_style_sheet :: proc(document: Text_Document, sheet: cstring) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#defaultStyleSheet-prop
	text_document_set_page_size :: proc(document: Text_Document, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#pageSize-prop
	text_document_get_page_size :: proc(document: Text_Document, out_w: ^c.double, out_h: ^c.double) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#pageSize-prop
	text_document_set_text_width :: proc(document: Text_Document, width: c.double) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#textWidth-prop
	@(require_results) text_document_get_text_width :: proc(document: Text_Document) -> c.double --- // https://doc.qt.io/qt-6.8/qtextdocument.html#textWidth-prop
	@(require_results) text_document_get_ideal_width :: proc(document: Text_Document) -> c.double --- // https://doc.qt.io/qt-6.8/qtextdocument.html#idealWidth
	@(require_results) text_document_get_line_count :: proc(document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocument.html#lineCount
	@(require_results) text_document_connect_contents_changed :: proc(document: Text_Document, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextdocument.html#contentsChanged
	@(require_results) text_document_connect_modification_changed :: proc(document: Text_Document, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextdocument.html#modificationChanged
	@(require_results) text_document_connect_undo_available :: proc(document: Text_Document, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextdocument.html#undoAvailable
	@(require_results) text_document_connect_redo_available :: proc(document: Text_Document, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtextdocument.html#redoAvailable

	/* QTextBlock */

	@(require_results) text_block_create_from_cursor :: proc(cursor: Text_Cursor) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextblock.html#QTextBlock
	text_block_destroy :: proc(block: Text_Block) --- // https://doc.qt.io/qt-6.8/qtextblock.html
	@(require_results) text_block_is_valid :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#isValid
	@(require_results) text_block_get_block_number :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#blockNumber
	@(require_results) text_block_get_position :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#position
	@(require_results) text_block_get_length :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#length
	@(require_results) text_block_get_text :: proc(block: Text_Block) -> cstring --- // https://doc.qt.io/qt-6.8/qtextblock.html#text
	@(require_results) text_block_next :: proc(block: Text_Block) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextblock.html#next
	@(require_results) text_block_previous :: proc(block: Text_Block) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextblock.html#previous
	@(require_results) text_block_get_line_count :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#lineCount
	@(require_results) text_block_is_visible :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#isVisible
	text_block_set_visible :: proc(block: Text_Block, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qtextblock.html#setVisible
	@(require_results) text_block_get_revision :: proc(block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblock.html#revision
	@(require_results) text_document_get_first_block :: proc(document: Text_Document) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextdocument.html#firstBlock
	@(require_results) text_document_get_last_block :: proc(document: Text_Document) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextdocument.html#lastBlock
	@(require_results) text_document_find_block_by_number :: proc(document: Text_Document, block_number: c.int) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextdocument.html#findBlockByNumber

	/* QTextBlockFormat */

	@(require_results) text_block_format_create :: proc() -> Text_Block_Format --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#QTextBlockFormat
	text_block_format_destroy :: proc(fmt: Text_Block_Format) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html
	text_block_format_set_alignment :: proc(fmt: Text_Block_Format, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setAlignment
	@(require_results) text_block_format_get_alignment :: proc(fmt: Text_Block_Format) -> Alignment --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#alignment
	text_block_format_set_indent :: proc(fmt: Text_Block_Format, indent: c.int) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setIndent
	@(require_results) text_block_format_get_indent :: proc(fmt: Text_Block_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#indent
	text_block_format_set_text_indent :: proc(fmt: Text_Block_Format, indent: c.double) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setTextIndent
	@(require_results) text_block_format_get_text_indent :: proc(fmt: Text_Block_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#textIndent
	text_block_format_set_top_margin :: proc(fmt: Text_Block_Format, margin: c.double) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setTopMargin
	@(require_results) text_block_format_get_top_margin :: proc(fmt: Text_Block_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#topMargin
	text_block_format_set_bottom_margin :: proc(fmt: Text_Block_Format, margin: c.double) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setBottomMargin
	@(require_results) text_block_format_get_bottom_margin :: proc(fmt: Text_Block_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#bottomMargin
	text_block_format_set_left_margin :: proc(fmt: Text_Block_Format, margin: c.double) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setLeftMargin
	@(require_results) text_block_format_get_left_margin :: proc(fmt: Text_Block_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#leftMargin
	text_block_format_set_right_margin :: proc(fmt: Text_Block_Format, margin: c.double) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setRightMargin
	@(require_results) text_block_format_get_right_margin :: proc(fmt: Text_Block_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#rightMargin
	text_block_format_set_line_height :: proc(fmt: Text_Block_Format, height: c.double, height_type: c.int) --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#setLineHeight
	@(require_results) text_block_format_get_line_height :: proc(fmt: Text_Block_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#lineHeight
	@(require_results) text_block_format_get_line_height_type :: proc(fmt: Text_Block_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtextblockformat.html#lineHeightType
	text_cursor_set_block_format :: proc(cursor: Text_Cursor, fmt: Text_Block_Format) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#setBlockFormat
	text_cursor_merge_block_format :: proc(cursor: Text_Cursor, fmt: Text_Block_Format) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#mergeBlockFormat

	/* QTextListFormat */

	@(require_results) text_list_format_create :: proc() -> Text_List_Format --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#QTextListFormat
	text_list_format_destroy :: proc(fmt: Text_List_Format) --- // https://doc.qt.io/qt-6.8/qtextlistformat.html
	text_list_format_set_style :: proc(fmt: Text_List_Format, style: c.int) --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#setStyle
	@(require_results) text_list_format_get_style :: proc(fmt: Text_List_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#style
	text_list_format_set_indent :: proc(fmt: Text_List_Format, indent: c.int) --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#setIndent
	@(require_results) text_list_format_get_indent :: proc(fmt: Text_List_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#indent
	text_list_format_set_number_prefix :: proc(fmt: Text_List_Format, prefix: cstring) --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#setNumberPrefix
	@(require_results) text_list_format_get_number_prefix :: proc(fmt: Text_List_Format) -> cstring --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#numberPrefix
	text_list_format_set_number_suffix :: proc(fmt: Text_List_Format, suffix: cstring) --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#setNumberSuffix
	@(require_results) text_list_format_get_number_suffix :: proc(fmt: Text_List_Format) -> cstring --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#numberSuffix
	text_cursor_insert_list_with_format :: proc(cursor: Text_Cursor, fmt: Text_List_Format) --- // https://doc.qt.io/qt-6.8/qtextcursor.html

	/* QTextImageFormat */

	@(require_results) text_image_format_create :: proc() -> Text_Image_Format --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#QTextImageFormat
	text_image_format_destroy :: proc(fmt: Text_Image_Format) --- // https://doc.qt.io/qt-6.8/qtextimageformat.html
	text_image_format_set_name :: proc(fmt: Text_Image_Format, name: cstring) --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#setName
	@(require_results) text_image_format_get_name :: proc(fmt: Text_Image_Format) -> cstring --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#name
	text_image_format_set_width :: proc(fmt: Text_Image_Format, width: c.double) --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#setWidth
	@(require_results) text_image_format_get_width :: proc(fmt: Text_Image_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#width
	text_image_format_set_height :: proc(fmt: Text_Image_Format, height: c.double) --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#setHeight
	@(require_results) text_image_format_get_height :: proc(fmt: Text_Image_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextimageformat.html#height
	text_cursor_insert_image_with_format :: proc(cursor: Text_Cursor, fmt: Text_Image_Format) --- // https://doc.qt.io/qt-6.8/qtextcursor.html

	/* QTextFrameFormat */

	@(require_results) text_frame_format_create :: proc() -> Text_Frame_Format --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#QTextFrameFormat
	text_frame_format_destroy :: proc(fmt: Text_Frame_Format) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html
	text_frame_format_set_border :: proc(fmt: Text_Frame_Format, border: c.double) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setBorder
	@(require_results) text_frame_format_get_border :: proc(fmt: Text_Frame_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#border
	text_frame_format_set_border_style :: proc(fmt: Text_Frame_Format, style: c.int) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setBorderStyle
	@(require_results) text_frame_format_get_border_style :: proc(fmt: Text_Frame_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#borderStyle
	text_frame_format_set_margin :: proc(fmt: Text_Frame_Format, margin: c.double) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setMargin
	@(require_results) text_frame_format_get_margin :: proc(fmt: Text_Frame_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#margin
	text_frame_format_set_padding :: proc(fmt: Text_Frame_Format, padding: c.double) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setPadding
	@(require_results) text_frame_format_get_padding :: proc(fmt: Text_Frame_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#padding
	text_frame_format_set_width :: proc(fmt: Text_Frame_Format, width: c.double, length_type: c.int) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setWidth
	text_frame_format_set_height :: proc(fmt: Text_Frame_Format, height: c.double, length_type: c.int) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setHeight
	text_frame_format_set_position :: proc(fmt: Text_Frame_Format, position: c.int) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setPosition
	@(require_results) text_frame_format_get_position :: proc(fmt: Text_Frame_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#position
	text_frame_set_frame_format :: proc(frame: Text_Frame, fmt: Text_Frame_Format) --- // https://doc.qt.io/qt-6.8/qtextframe.html#setFrameFormat

	/* QTextTableFormat */

	@(require_results) text_table_format_create :: proc() -> Text_Table_Format --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#QTextTableFormat
	text_table_format_destroy :: proc(fmt: Text_Table_Format) --- // https://doc.qt.io/qt-6.8/qtexttableformat.html
	text_table_format_set_columns :: proc(fmt: Text_Table_Format, columns: c.int) --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#columns
	@(require_results) text_table_format_get_columns :: proc(fmt: Text_Table_Format) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#columns
	text_table_format_set_cell_padding :: proc(fmt: Text_Table_Format, padding: c.double) --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#setCellPadding
	@(require_results) text_table_format_get_cell_padding :: proc(fmt: Text_Table_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#cellPadding
	text_table_format_set_cell_spacing :: proc(fmt: Text_Table_Format, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#setCellSpacing
	@(require_results) text_table_format_get_cell_spacing :: proc(fmt: Text_Table_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#cellSpacing
	text_table_format_set_alignment :: proc(fmt: Text_Table_Format, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#setAlignment
	@(require_results) text_table_format_get_alignment :: proc(fmt: Text_Table_Format) -> Alignment --- // https://doc.qt.io/qt-6.8/qtexttableformat.html#alignment
	text_table_format_set_border :: proc(fmt: Text_Table_Format, border: c.double) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setBorder
	text_table_format_set_border_style :: proc(fmt: Text_Table_Format, style: c.int) --- // https://doc.qt.io/qt-6.8/qtextframeformat.html#setBorderStyle
	text_table_set_format :: proc(table: Text_Table, fmt: Text_Table_Format) --- // https://doc.qt.io/qt-6.8/qtexttable.html#setFormat
	@(require_results) text_cursor_insert_table_with_format :: proc(cursor: Text_Cursor, rows: c.int, cols: c.int, fmt: Text_Table_Format) -> Text_Table --- // https://doc.qt.io/qt-6.8/qtextcursor.html

	/* QTextTableCellFormat */

	@(require_results) text_table_cell_format_create :: proc() -> Text_Table_Cell_Format --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#QTextTableCellFormat
	text_table_cell_format_destroy :: proc(fmt: Text_Table_Cell_Format) --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html
	text_table_cell_format_set_top_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#setTopPadding
	@(require_results) text_table_cell_format_get_top_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#topPadding
	text_table_cell_format_set_bottom_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#setBottomPadding
	@(require_results) text_table_cell_format_get_bottom_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#bottomPadding
	text_table_cell_format_set_left_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#setLeftPadding
	@(require_results) text_table_cell_format_get_left_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#leftPadding
	text_table_cell_format_set_right_padding :: proc(fmt: Text_Table_Cell_Format, padding: c.double) --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#setRightPadding
	@(require_results) text_table_cell_format_get_right_padding :: proc(fmt: Text_Table_Cell_Format) -> c.double --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#rightPadding
	text_table_cell_format_set_background :: proc(fmt: Text_Table_Cell_Format, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qtextformat.html#setBackground
	text_table_cell_format_set_border_brush :: proc(fmt: Text_Table_Cell_Format, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qtexttablecellformat.html#setBorderBrush
	text_table_cell_set_format :: proc(table: Text_Table, row: c.int, col: c.int, fmt: Text_Table_Cell_Format) --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#setFormat

	/* QTextDocumentFragment */

	@(require_results) text_document_fragment_from_plain_text :: proc(text: cstring) -> Text_Document_Fragment --- // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html#fromPlainText
	@(require_results) text_document_fragment_from_html :: proc(html: cstring) -> Text_Document_Fragment --- // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html#fromHtml
	@(require_results) text_document_fragment_from_selection :: proc(cursor: Text_Cursor) -> Text_Document_Fragment --- // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html
	text_document_fragment_destroy :: proc(fragment: Text_Document_Fragment) --- // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html#dtor.QTextDocumentFragment
	@(require_results) text_document_fragment_to_plain_text :: proc(fragment: Text_Document_Fragment) -> cstring --- // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html#toPlainText
	@(require_results) text_document_fragment_to_html :: proc(fragment: Text_Document_Fragment) -> cstring --- // https://doc.qt.io/qt-6.8/qtextdocumentfragment.html#toHtml
	text_cursor_insert_fragment :: proc(cursor: Text_Cursor, fragment: Text_Document_Fragment) --- // https://doc.qt.io/qt-6.8/qtextcursor.html#insertFragment

	/* QTextDocumentWriter */

	@(require_results) text_document_writer_create :: proc(file_path: cstring, format: cstring) -> Text_Document_Writer --- // https://doc.qt.io/qt-6.8/qtextdocumentwriter.html#QTextDocumentWriter
	text_document_writer_destroy :: proc(writer: Text_Document_Writer) --- // https://doc.qt.io/qt-6.8/qtextdocumentwriter.html#dtor.QTextDocumentWriter
	text_document_writer_set_format :: proc(writer: Text_Document_Writer, format: cstring) --- // https://doc.qt.io/qt-6.8/qtextdocumentwriter.html#setFormat
	@(require_results) text_document_writer_write :: proc(writer: Text_Document_Writer, document: Text_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qtextdocumentwriter.html#write

	/* QTextOption */

	@(require_results) text_option_create :: proc() -> Text_Option --- // https://doc.qt.io/qt-6.8/qtextoption.html#QTextOption
	@(require_results) text_option_create_with_alignment :: proc(alignment: Alignment) -> Text_Option --- // https://doc.qt.io/qt-6.8/qtextoption.html#QTextOption
	text_option_destroy :: proc(option: Text_Option) --- // https://doc.qt.io/qt-6.8/qtextoption.html#dtor.QTextOption
	text_option_set_alignment :: proc(option: Text_Option, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qtextoption.html#setAlignment
	@(require_results) text_option_get_alignment :: proc(option: Text_Option) -> c.int --- // https://doc.qt.io/qt-6.8/qtextoption.html#alignment
	text_option_set_wrap_mode :: proc(option: Text_Option, mode: Word_Wrap_Mode) --- // https://doc.qt.io/qt-6.8/qtextoption.html#setWrapMode
	@(require_results) text_option_get_wrap_mode :: proc(option: Text_Option) -> c.int --- // https://doc.qt.io/qt-6.8/qtextoption.html#wrapMode
	text_option_set_tab_stop_distance :: proc(option: Text_Option, distance: c.double) --- // https://doc.qt.io/qt-6.8/qtextoption.html#setTabStopDistance
	@(require_results) text_option_get_tab_stop_distance :: proc(option: Text_Option) -> c.double --- // https://doc.qt.io/qt-6.8/qtextoption.html#tabStopDistance
	text_document_set_default_text_option :: proc(document: Text_Document, option: Text_Option) --- // https://doc.qt.io/qt-6.8/qtextdocument.html#setDefaultTextOption

	/* QTextLayout */

	@(require_results) text_layout_create :: proc() -> Text_Layout --- // https://doc.qt.io/qt-6.8/qtextlayout.html#QTextLayout
	@(require_results) text_layout_create_with_text :: proc(text: cstring) -> Text_Layout --- // https://doc.qt.io/qt-6.8/qtextlayout.html#QTextLayout
	@(require_results) text_layout_create_with_text_and_font :: proc(text: cstring, font: Font_Handle) -> Text_Layout --- // https://doc.qt.io/qt-6.8/qtextlayout.html#QTextLayout
	text_layout_destroy :: proc(layout: Text_Layout) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#dtor.QTextLayout
	text_layout_set_text :: proc(layout: Text_Layout, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#setText
	@(require_results) text_layout_get_text :: proc(layout: Text_Layout) -> cstring --- // https://doc.qt.io/qt-6.8/qtextlayout.html#text
	text_layout_set_font :: proc(layout: Text_Layout, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#setFont
	text_layout_set_text_option :: proc(layout: Text_Layout, option: Text_Option) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#setTextOption
	text_layout_begin_layout :: proc(layout: Text_Layout) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#beginLayout
	text_layout_end_layout :: proc(layout: Text_Layout) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#endLayout
	@(require_results) text_layout_create_line :: proc(layout: Text_Layout) -> Text_Line --- // https://doc.qt.io/qt-6.8/qtextlayout.html#QTextLayout
	@(require_results) text_layout_get_line_count :: proc(layout: Text_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qtextlayout.html#lineCount
	@(require_results) text_layout_get_line_at :: proc(layout: Text_Layout, index: c.int) -> Text_Line --- // https://doc.qt.io/qt-6.8/qtextlayout.html#lineAt
	text_layout_set_position :: proc(layout: Text_Layout, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#setPosition
	text_layout_get_bounding_rect :: proc(layout: Text_Layout, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#boundingRect
	text_layout_draw :: proc(layout: Text_Layout, painter: Painter, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#draw
	text_layout_set_cache_enabled :: proc(layout: Text_Layout, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qtextlayout.html#setCacheEnabled

	/* QTextLine */

	text_line_destroy :: proc(line: Text_Line) --- // https://doc.qt.io/qt-6.8/qtextline.html
	@(require_results) text_line_is_valid :: proc(line: Text_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtextline.html#isValid
	text_line_set_line_width :: proc(line: Text_Line, width: c.double) --- // https://doc.qt.io/qt-6.8/qtextline.html#setLineWidth
	text_line_set_position :: proc(line: Text_Line, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qtextline.html#setPosition
	@(require_results) text_line_get_width :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#width
	@(require_results) text_line_get_natural_text_width :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#naturalTextWidth
	@(require_results) text_line_get_height :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#height
	@(require_results) text_line_get_ascent :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#ascent
	@(require_results) text_line_get_descent :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#descent
	@(require_results) text_line_get_leading :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#leading
	@(require_results) text_line_get_x :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#x
	@(require_results) text_line_get_y :: proc(line: Text_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtextline.html#y
	@(require_results) text_line_get_text_start :: proc(line: Text_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtextline.html#textStart
	@(require_results) text_line_get_text_length :: proc(line: Text_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtextline.html#textLength
	@(require_results) text_line_get_line_number :: proc(line: Text_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtextline.html#lineNumber
	text_line_get_natural_text_rect :: proc(line: Text_Line, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) --- // https://doc.qt.io/qt-6.8/qtextline.html#naturalTextRect
	text_line_draw :: proc(line: Text_Line, painter: Painter, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qtextline.html#draw

	/* QDrag */

	@(require_results) drag_create :: proc(source: rawptr) -> Drag --- // https://doc.qt.io/qt-6.8/qdrag.html#QDrag
	drag_destroy :: proc(drag: Drag) --- // https://doc.qt.io/qt-6.8/qdrag.html#dtor.QDrag
	drag_set_mime_data_text :: proc(drag: Drag, text: cstring) --- // https://doc.qt.io/qt-6.8/qdrag.html#setMimeData
	drag_set_mime_data :: proc(drag: Drag, mime_data: Mime_Data) --- // https://doc.qt.io/qt-6.8/qdrag.html#setMimeData
	drag_set_pixmap :: proc(drag: Drag, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qdrag.html#setPixmap
	drag_set_hot_spot :: proc(drag: Drag, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qdrag.html#setHotSpot
	@(require_results) drag_exec :: proc(drag: Drag, supported_actions: c.int, default_action: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qdrag.html#exec

	/* QMimeData */

	@(require_results) mime_data_create :: proc() -> Mime_Data --- // https://doc.qt.io/qt-6.8/qmimedata.html#QMimeData
	mime_data_destroy :: proc(mime: Mime_Data) --- // https://doc.qt.io/qt-6.8/qmimedata.html#dtor.QMimeData
	mime_data_set_text :: proc(mime: Mime_Data, text: cstring) --- // https://doc.qt.io/qt-6.8/qmimedata.html#setText
	@(require_results) mime_data_get_text :: proc(mime: Mime_Data) -> cstring --- // https://doc.qt.io/qt-6.8/qmimedata.html#text
	@(require_results) mime_data_has_text :: proc(mime: Mime_Data) -> c.int --- // https://doc.qt.io/qt-6.8/qmimedata.html#hasText
	mime_data_set_html :: proc(mime: Mime_Data, html: cstring) --- // https://doc.qt.io/qt-6.8/qmimedata.html#setHtml
	@(require_results) mime_data_get_html :: proc(mime: Mime_Data) -> cstring --- // https://doc.qt.io/qt-6.8/qmimedata.html#html
	@(require_results) mime_data_has_html :: proc(mime: Mime_Data) -> c.int --- // https://doc.qt.io/qt-6.8/qmimedata.html#hasHtml
	mime_data_set_urls :: proc(mime: Mime_Data, urls: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qmimedata.html#setUrls
	mime_data_get_urls :: proc(mime: Mime_Data, out_urls: ^[^]cstring, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qmimedata.html#urls
	@(require_results) mime_data_has_urls :: proc(mime: Mime_Data) -> c.int --- // https://doc.qt.io/qt-6.8/qmimedata.html#hasUrls
	mime_data_set_image_data :: proc(mime: Mime_Data, image: Image) --- // https://doc.qt.io/qt-6.8/qmimedata.html#setImageData
	@(require_results) mime_data_has_image :: proc(mime: Mime_Data) -> c.int --- // https://doc.qt.io/qt-6.8/qmimedata.html#hasImage
	mime_data_set_data :: proc(mime: Mime_Data, mime_type: cstring, data: [^]u8, size: c.int) --- // https://doc.qt.io/qt-6.8/qmimedata.html#setData
	mime_data_get_data :: proc(mime: Mime_Data, mime_type: cstring, out_data: ^[^]u8, out_size: ^c.int) --- // https://doc.qt.io/qt-6.8/qmimedata.html#data
	@(require_results) mime_data_has_format :: proc(mime: Mime_Data, mime_type: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qmimedata.html#hasFormat
	mime_data_get_formats :: proc(mime: Mime_Data, out_formats: ^[^]cstring, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qmimedata.html#formats
	mime_data_remove_format :: proc(mime: Mime_Data, mime_type: cstring) --- // https://doc.qt.io/qt-6.8/qmimedata.html#removeFormat
	mime_data_clear :: proc(mime: Mime_Data) --- // https://doc.qt.io/qt-6.8/qmimedata.html#clear

	/* QPolygon */

	@(require_results) polygon_create :: proc() -> Polygon --- // https://doc.qt.io/qt-6.8/qpolygon.html#QPolygon
	@(require_results) polygon_create_from_points :: proc(points: [^]c.int, count: c.int) -> Polygon --- // https://doc.qt.io/qt-6.8/qpolygon.html#QPolygon
	polygon_destroy :: proc(polygon: Polygon) --- // https://doc.qt.io/qt-6.8/qpolygon.html
	polygon_append :: proc(polygon: Polygon, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qpolygon.html
	@(require_results) polygon_get_count :: proc(polygon: Polygon) -> c.int --- // https://doc.qt.io/qt-6.8/qpolygon.html
	polygon_get_point :: proc(polygon: Polygon, index: c.int, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qpolygon.html#point
	polygon_set_point :: proc(polygon: Polygon, index: c.int, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qpolygon.html#setPoint
	@(require_results) polygon_contains_point :: proc(polygon: Polygon, x: c.int, y: c.int, fill_rule: Fill_Rule) -> c.int --- // https://doc.qt.io/qt-6.8/qpolygon.html#containsPoint
	polygon_translate :: proc(polygon: Polygon, dx: c.int, dy: c.int) --- // https://doc.qt.io/qt-6.8/qpolygon.html#translate
	@(require_results) polygon_translated :: proc(polygon: Polygon, dx: c.int, dy: c.int) -> Polygon --- // https://doc.qt.io/qt-6.8/qpolygon.html#translated
	polygon_get_bounding_rect :: proc(polygon: Polygon, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qpolygon.html#boundingRect

	/* QPolygonF */

	@(require_results) polygon_f_create :: proc() -> Polygon_F --- // https://doc.qt.io/qt-6.8/qpolygonf.html#QPolygonF
	@(require_results) polygon_f_create_from_points :: proc(points: [^]c.double, count: c.int) -> Polygon_F --- // https://doc.qt.io/qt-6.8/qpolygonf.html#QPolygonF
	polygon_f_destroy :: proc(polygon: Polygon_F) --- // https://doc.qt.io/qt-6.8/qpolygonf.html
	polygon_f_append :: proc(polygon: Polygon_F, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qpolygonf.html
	@(require_results) polygon_f_get_count :: proc(polygon: Polygon_F) -> c.int --- // https://doc.qt.io/qt-6.8/qpolygonf.html
	polygon_f_get_point :: proc(polygon: Polygon_F, index: c.int, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpolygonf.html
	@(require_results) polygon_f_contains_point :: proc(polygon: Polygon_F, x: c.double, y: c.double, fill_rule: Fill_Rule) -> c.int --- // https://doc.qt.io/qt-6.8/qpolygonf.html#containsPoint
	polygon_f_translate :: proc(polygon: Polygon_F, dx: c.double, dy: c.double) --- // https://doc.qt.io/qt-6.8/qpolygonf.html#translate
	@(require_results) polygon_f_translated :: proc(polygon: Polygon_F, dx: c.double, dy: c.double) -> Polygon_F --- // https://doc.qt.io/qt-6.8/qpolygonf.html#translated
	polygon_f_get_bounding_rect :: proc(polygon: Polygon_F, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qpolygonf.html#boundingRect

	/* QFontDatabase */

	@(require_results) font_database_get_families :: proc(families_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdatabase.html#families
	font_database_free_families :: proc(families: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qfontdatabase.html
	@(require_results) font_database_has_family :: proc(family: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdatabase.html
	@(require_results) font_database_is_fixed_pitch :: proc(family: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdatabase.html#isFixedPitch
	@(require_results) font_database_is_scalable :: proc(family: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdatabase.html#isScalable
	@(require_results) font_database_add_application_font :: proc(file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdatabase.html#addApplicationFont
	@(require_results) font_database_add_application_font_from_data :: proc(data: [^]u8, size: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qfontdatabase.html#addApplicationFontFromData
	font_database_remove_application_font :: proc(id: c.int) --- // https://doc.qt.io/qt-6.8/qfontdatabase.html#removeApplicationFont

	/* QKeySequence (standalone) */

	@(require_results) key_sequence_create :: proc(key: cstring) -> Key_Sequence --- // https://doc.qt.io/qt-6.8/qkeysequence.html#QKeySequence
	@(require_results) key_sequence_create_standard :: proc(standard_key: Key_Sequence_Standard_Key) -> Key_Sequence --- // https://doc.qt.io/qt-6.8/qkeysequence.html#QKeySequence
	key_sequence_destroy :: proc(key_sequence: Key_Sequence) --- // https://doc.qt.io/qt-6.8/qkeysequence.html#dtor.QKeySequence
	@(require_results) key_sequence_to_string :: proc(key_sequence: Key_Sequence) -> cstring --- // https://doc.qt.io/qt-6.8/qkeysequence.html#toString
	@(require_results) key_sequence_get_count :: proc(key_sequence: Key_Sequence) -> c.int --- // https://doc.qt.io/qt-6.8/qkeysequence.html#count
	@(require_results) key_sequence_matches :: proc(key_sequence: Key_Sequence, other: Key_Sequence) -> Key_Sequence_Match --- // https://doc.qt.io/qt-6.8/qkeysequence.html#matches

	/* QMovie */

	@(require_results) movie_create :: proc(file_path: cstring, parent: Widget) -> Movie --- // https://doc.qt.io/qt-6.8/qmovie.html#QMovie
	movie_destroy :: proc(movie: Movie) --- // https://doc.qt.io/qt-6.8/qmovie.html#dtor.QMovie
	movie_start :: proc(movie: Movie) --- // https://doc.qt.io/qt-6.8/qmovie.html#start
	movie_stop :: proc(movie: Movie) --- // https://doc.qt.io/qt-6.8/qmovie.html#stop
	movie_set_paused :: proc(movie: Movie, is_paused: c.int) --- // https://doc.qt.io/qt-6.8/qmovie.html#setPaused
	@(require_results) movie_is_valid :: proc(movie: Movie) -> c.int --- // https://doc.qt.io/qt-6.8/qmovie.html#isValid
	@(require_results) movie_get_frame_count :: proc(movie: Movie) -> c.int --- // https://doc.qt.io/qt-6.8/qmovie.html#frameCount
	@(require_results) movie_get_current_frame_number :: proc(movie: Movie) -> c.int --- // https://doc.qt.io/qt-6.8/qmovie.html#currentFrameNumber
	movie_set_speed :: proc(movie: Movie, percent: c.int) --- // https://doc.qt.io/qt-6.8/qmovie.html#speed-prop
	movie_set_scaled_size :: proc(movie: Movie, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qmovie.html#setScaledSize
	@(require_results) movie_get_state :: proc(movie: Movie) -> Movie_State --- // https://doc.qt.io/qt-6.8/qmovie.html#state
	label_set_movie :: proc(label: Label, movie: Movie) --- // https://doc.qt.io/qt-6.8/qlabel.html#setMovie
	movie_connect_frame_changed :: proc(movie: Movie, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmovie.html#frameChanged
	movie_connect_state_changed :: proc(movie: Movie, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmovie.html#stateChanged

	/* QImageReader */

	@(require_results) image_reader_create :: proc(file_path: cstring) -> Image_Reader --- // https://doc.qt.io/qt-6.8/qimagereader.html#QImageReader
	image_reader_destroy :: proc(reader: Image_Reader) --- // https://doc.qt.io/qt-6.8/qimagereader.html#dtor.QImageReader
	@(require_results) image_reader_can_read :: proc(reader: Image_Reader) -> c.int --- // https://doc.qt.io/qt-6.8/qimagereader.html#canRead
	@(require_results) image_reader_read :: proc(reader: Image_Reader) -> Image --- // https://doc.qt.io/qt-6.8/qimagereader.html#read
	@(require_results) image_reader_get_image_count :: proc(reader: Image_Reader) -> c.int --- // https://doc.qt.io/qt-6.8/qimagereader.html#imageCount
	image_reader_get_size :: proc(reader: Image_Reader, width: ^c.int, height: ^c.int) --- // https://doc.qt.io/qt-6.8/qimagereader.html#size
	@(require_results) image_reader_get_format :: proc(reader: Image_Reader) -> cstring --- // https://doc.qt.io/qt-6.8/qimagereader.html#format
	@(require_results) image_reader_get_error_string :: proc(reader: Image_Reader) -> cstring --- // https://doc.qt.io/qt-6.8/qimagereader.html#errorString
	image_reader_set_scaled_size :: proc(reader: Image_Reader, width: c.int, height: c.int) --- // https://doc.qt.io/qt-6.8/qimagereader.html#setScaledSize

	/* QImageWriter */

	@(require_results) image_writer_create :: proc(file_path: cstring) -> Image_Writer --- // https://doc.qt.io/qt-6.8/qimagewriter.html#QImageWriter
	image_writer_destroy :: proc(writer: Image_Writer) --- // https://doc.qt.io/qt-6.8/qimagewriter.html#dtor.QImageWriter
	image_writer_set_format :: proc(writer: Image_Writer, format: cstring) --- // https://doc.qt.io/qt-6.8/qimagewriter.html#setFormat
	image_writer_set_quality :: proc(writer: Image_Writer, quality: c.int) --- // https://doc.qt.io/qt-6.8/qimagewriter.html#setQuality
	@(require_results) image_writer_write :: proc(writer: Image_Writer, image: Image) -> c.int --- // https://doc.qt.io/qt-6.8/qimagewriter.html#write
	@(require_results) image_writer_get_error_string :: proc(writer: Image_Writer) -> cstring --- // https://doc.qt.io/qt-6.8/qimagewriter.html#errorString

	/* QBitmap */

	@(require_results) bitmap_create :: proc(width: c.int, height: c.int) -> Bitmap --- // https://doc.qt.io/qt-6.8/qbitmap.html#QBitmap
	@(require_results) bitmap_create_from_file :: proc(file_path: cstring) -> Bitmap --- // https://doc.qt.io/qt-6.8/qbitmap.html#QBitmap
	bitmap_destroy :: proc(bitmap: Bitmap) --- // https://doc.qt.io/qt-6.8/qbitmap.html
	@(require_results) bitmap_from_image :: proc(image: Image) -> Bitmap --- // https://doc.qt.io/qt-6.8/qbitmap.html#fromImage
	bitmap_clear :: proc(bitmap: Bitmap) --- // https://doc.qt.io/qt-6.8/qbitmap.html#clear

	/* QStaticText */

	@(require_results) static_text_create :: proc(text: cstring) -> Static_Text --- // https://doc.qt.io/qt-6.8/qstatictext.html#QStaticText
	static_text_destroy :: proc(static_text: Static_Text) --- // https://doc.qt.io/qt-6.8/qstatictext.html#dtor.QStaticText
	static_text_set_text :: proc(static_text: Static_Text, text: cstring) --- // https://doc.qt.io/qt-6.8/qstatictext.html#setText
	@(require_results) static_text_get_text :: proc(static_text: Static_Text) -> cstring --- // https://doc.qt.io/qt-6.8/qstatictext.html#text
	static_text_set_text_format :: proc(static_text: Static_Text, format: Text_Format) --- // https://doc.qt.io/qt-6.8/qstatictext.html#setTextFormat
	static_text_set_text_width :: proc(static_text: Static_Text, width: c.double) --- // https://doc.qt.io/qt-6.8/qstatictext.html#setTextWidth
	static_text_prepare :: proc(static_text: Static_Text, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qstatictext.html#prepare
	painter_draw_static_text :: proc(painter: Painter, x: c.int, y: c.int, static_text: Static_Text) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawStaticText

	/* QPicture */

	@(require_results) picture_create :: proc() -> Picture --- // https://doc.qt.io/qt-6.8/qpicture.html#QPicture
	picture_destroy :: proc(picture: Picture) --- // https://doc.qt.io/qt-6.8/qpicture.html#dtor.QPicture
	@(require_results) picture_is_null :: proc(picture: Picture) -> c.int --- // https://doc.qt.io/qt-6.8/qpicture.html#isNull
	@(require_results) picture_save :: proc(picture: Picture, file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qpicture.html#save
	@(require_results) picture_load :: proc(picture: Picture, file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qpicture.html#load
	picture_get_bounding_rect :: proc(picture: Picture, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) --- // https://doc.qt.io/qt-6.8/qpicture.html#boundingRect
	painter_draw_picture :: proc(painter: Painter, x: c.int, y: c.int, picture: Picture) --- // https://doc.qt.io/qt-6.8/qpainter.html#drawPicture

	/* QPageSize */

	@(require_results) page_size_create :: proc(page_size_id: Page_Size_Id) -> Page_Size --- // https://doc.qt.io/qt-6.8/qpagesize.html#QPageSize
	@(require_results) page_size_create_custom :: proc(width: c.double, height: c.double, unit: Page_Size_Unit) -> Page_Size --- // https://doc.qt.io/qt-6.8/qpagesize.html#QPageSize
	page_size_destroy :: proc(page_size: Page_Size) --- // https://doc.qt.io/qt-6.8/qpagesize.html#dtor.QPageSize
	@(require_results) page_size_get_name :: proc(page_size: Page_Size) -> cstring --- // https://doc.qt.io/qt-6.8/qpagesize.html#name
	@(require_results) page_size_get_id :: proc(page_size: Page_Size) -> Page_Size_Id --- // https://doc.qt.io/qt-6.8/qpagesize.html#id
	@(require_results) page_size_is_valid :: proc(page_size: Page_Size) -> c.int --- // https://doc.qt.io/qt-6.8/qpagesize.html#isValid

	/* QPageLayout */

	@(require_results) page_layout_create :: proc(page_size: Page_Size, orientation: Page_Layout_Orientation, left: c.double, top: c.double, right: c.double, bottom: c.double, unit: Page_Size_Unit) -> Page_Layout --- // https://doc.qt.io/qt-6.8/qpagelayout.html#QPageLayout
	page_layout_destroy :: proc(page_layout: Page_Layout) --- // https://doc.qt.io/qt-6.8/qpagelayout.html#dtor.QPageLayout
	@(require_results) page_layout_get_orientation :: proc(page_layout: Page_Layout) -> Page_Layout_Orientation --- // https://doc.qt.io/qt-6.8/qpagelayout.html#orientation
	page_layout_set_orientation :: proc(page_layout: Page_Layout, orientation: Page_Layout_Orientation) --- // https://doc.qt.io/qt-6.8/qpagelayout.html#setOrientation
	@(require_results) page_layout_is_valid :: proc(page_layout: Page_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qpagelayout.html#isValid

	/* QFile */

	@(require_results) file_create :: proc(file_path: cstring) -> File --- // https://doc.qt.io/qt-6.8/qfile.html#QFile
	file_destroy :: proc(file: File) --- // https://doc.qt.io/qt-6.8/qfile.html#dtor.QFile
	@(require_results) file_open :: proc(file: File, mode: File_Open_Mode) -> c.int --- // https://doc.qt.io/qt-6.8/qfile.html#open
	file_close :: proc(file: File) --- // https://doc.qt.io/qt-6.8/qiodevice.html#close
	@(require_results) file_is_open :: proc(file: File) -> c.int --- // https://doc.qt.io/qt-6.8/qiodevice.html#isOpen
	@(require_results) file_size :: proc(file: File) -> c.longlong --- // https://doc.qt.io/qt-6.8/qfile.html#size
	@(require_results) file_pos :: proc(file: File) -> c.longlong --- // https://doc.qt.io/qt-6.8/qfiledevice.html
	@(require_results) file_seek :: proc(file: File, pos: c.longlong) -> c.int --- // https://doc.qt.io/qt-6.8/qfiledevice.html
	@(require_results) file_at_end :: proc(file: File) -> c.int --- // https://doc.qt.io/qt-6.8/qfiledevice.html
	@(require_results) file_read :: proc(file: File, data: [^]u8, max_size: c.longlong) -> c.longlong --- // https://doc.qt.io/qt-6.8/qiodevice.html#read
	@(require_results) file_write :: proc(file: File, data: [^]u8, size: c.longlong) -> c.longlong --- // https://doc.qt.io/qt-6.8/qiodevice.html#write
	@(require_results) file_read_all :: proc(file: File) -> cstring --- // https://doc.qt.io/qt-6.8/qiodevice.html#readAll
	@(require_results) file_exists :: proc(file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfile.html#exists
	@(require_results) file_remove :: proc(file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfile.html#remove
	@(require_results) file_copy :: proc(source: cstring, destination: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfile.html#copy
	@(require_results) file_rename :: proc(old_name: cstring, new_name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfile.html#rename
	@(require_results) file_get_error_string :: proc(file: File) -> cstring --- // https://doc.qt.io/qt-6.8/qfiledevice.html

	/* QFileInfo */

	@(require_results) file_info_create :: proc(file_path: cstring) -> File_Info --- // https://doc.qt.io/qt-6.8/qfileinfo.html#QFileInfo
	file_info_destroy :: proc(info: File_Info) --- // https://doc.qt.io/qt-6.8/qfileinfo.html#dtor.QFileInfo
	@(require_results) file_info_exists :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#exists
	@(require_results) file_info_get_file_name :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#fileName
	@(require_results) file_info_get_file_path :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#filePath
	@(require_results) file_info_get_absolute_file_path :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#absoluteFilePath
	@(require_results) file_info_get_absolute_path :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#absolutePath
	@(require_results) file_info_get_suffix :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#suffix
	@(require_results) file_info_get_complete_suffix :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#completeSuffix
	@(require_results) file_info_get_base_name :: proc(info: File_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qfileinfo.html#baseName
	@(require_results) file_info_get_size :: proc(info: File_Info) -> c.longlong --- // https://doc.qt.io/qt-6.8/qfileinfo.html#size
	@(require_results) file_info_is_file :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isFile
	@(require_results) file_info_is_dir :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isDir
	@(require_results) file_info_is_symlink :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isSymLink
	@(require_results) file_info_is_readable :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isReadable
	@(require_results) file_info_is_writable :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isWritable
	@(require_results) file_info_is_executable :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isExecutable
	@(require_results) file_info_is_hidden :: proc(info: File_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qfileinfo.html#isHidden

	/* QDir */

	@(require_results) dir_create :: proc(path: cstring) -> Dir --- // https://doc.qt.io/qt-6.8/qdir.html#QDir
	dir_destroy :: proc(dir: Dir) --- // https://doc.qt.io/qt-6.8/qdir.html#dtor.QDir
	@(require_results) dir_get_path :: proc(dir: Dir) -> cstring --- // https://doc.qt.io/qt-6.8/qdir.html#path
	@(require_results) dir_get_absolute_path :: proc(dir: Dir) -> cstring --- // https://doc.qt.io/qt-6.8/qdir.html#absolutePath
	@(require_results) dir_exists :: proc(dir: Dir) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#exists
	@(require_results) dir_mkdir :: proc(dir: Dir, name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#mkdir
	@(require_results) dir_mkpath :: proc(dir: Dir, path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#mkpath
	@(require_results) dir_rmdir :: proc(dir: Dir, name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#rmdir
	@(require_results) dir_rmpath :: proc(dir: Dir, path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#rmpath
	@(require_results) dir_remove :: proc(dir: Dir, file_name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#remove
	@(require_results) dir_rename :: proc(dir: Dir, old_name: cstring, new_name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#rename
	@(require_results) dir_cd :: proc(dir: Dir, dir_name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#cd
	@(require_results) dir_cd_up :: proc(dir: Dir) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#cdUp
	@(require_results) dir_get_entry_count :: proc(dir: Dir, filters: Dir_Filter) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html
	@(require_results) dir_get_entry_list :: proc(dir: Dir, filters: Dir_Filter, entries_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qdir.html#entryList
	dir_free_entry_list :: proc(entries: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qdir.html
	@(require_results) dir_home_path :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qdir.html#homePath
	@(require_results) dir_temp_path :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qdir.html#tempPath
	@(require_results) dir_root_path :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qdir.html#rootPath
	@(require_results) dir_current_path :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qdir.html#currentPath

	/* QDirIterator */

	@(require_results) dir_iterator_create :: proc(path: cstring, filters: c.int, iterator_flags: c.int) -> Dir_Iterator --- // https://doc.qt.io/qt-6.8/qdiriterator.html#QDirIterator
	@(require_results) dir_iterator_create_with_patterns :: proc(path: cstring, name_filters: [^]cstring, filter_count: c.int, dir_filters: c.int, iterator_flags: c.int) -> Dir_Iterator --- // https://doc.qt.io/qt-6.8/qdiriterator.html#QDirIterator
	dir_iterator_destroy :: proc(iter: Dir_Iterator) --- // https://doc.qt.io/qt-6.8/qdiriterator.html#dtor.QDirIterator
	@(require_results) dir_iterator_has_next :: proc(iter: Dir_Iterator) -> c.int --- // https://doc.qt.io/qt-6.8/qdiriterator.html#hasNext
	@(require_results) dir_iterator_next :: proc(iter: Dir_Iterator) -> cstring --- // https://doc.qt.io/qt-6.8/qdiriterator.html#next
	@(require_results) dir_iterator_get_file_name :: proc(iter: Dir_Iterator) -> cstring --- // https://doc.qt.io/qt-6.8/qdiriterator.html#fileName
	@(require_results) dir_iterator_get_file_path :: proc(iter: Dir_Iterator) -> cstring --- // https://doc.qt.io/qt-6.8/qdiriterator.html#filePath
	@(require_results) dir_iterator_get_path :: proc(iter: Dir_Iterator) -> cstring --- // https://doc.qt.io/qt-6.8/qdiriterator.html#path

	/* QTimeZone */

	@(require_results) time_zone_create :: proc(iana_id: cstring) -> Time_Zone --- // https://doc.qt.io/qt-6.8/qtimezone.html#QTimeZone
	@(require_results) time_zone_create_utc :: proc() -> Time_Zone --- // https://doc.qt.io/qt-6.8/qtimezone.html#QTimeZone
	@(require_results) time_zone_create_system :: proc() -> Time_Zone --- // https://doc.qt.io/qt-6.8/qtimezone.html#QTimeZone
	time_zone_destroy :: proc(tz: Time_Zone) --- // https://doc.qt.io/qt-6.8/qtimezone.html#dtor.QTimeZone
	@(require_results) time_zone_is_valid :: proc(tz: Time_Zone) -> c.int --- // https://doc.qt.io/qt-6.8/qtimezone.html#isValid
	@(require_results) time_zone_get_id :: proc(tz: Time_Zone) -> cstring --- // https://doc.qt.io/qt-6.8/qtimezone.html#id
	@(require_results) time_zone_get_display_name :: proc(tz: Time_Zone, time_type: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qtimezone.html#displayName
	@(require_results) time_zone_get_offset_from_utc :: proc(tz: Time_Zone, datetime: Date_Time) -> c.int --- // https://doc.qt.io/qt-6.8/qtimezone.html#offsetFromUtc
	@(require_results) time_zone_has_daylight_time :: proc(tz: Time_Zone) -> c.int --- // https://doc.qt.io/qt-6.8/qtimezone.html#hasDaylightTime
	@(require_results) time_zone_is_daylight_time :: proc(tz: Time_Zone, datetime: Date_Time) -> c.int --- // https://doc.qt.io/qt-6.8/qtimezone.html#isDaylightTime
	@(require_results) time_zone_get_available_ids :: proc(ids_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtimezone.html
	time_zone_free_ids :: proc(ids: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qtimezone.html
	date_time_set_time_zone :: proc(datetime: Date_Time, tz: Time_Zone) --- // https://doc.qt.io/qt-6.8/qdatetime.html#setTimeZone

	/* QProcess */

	@(require_results) process_create :: proc(parent: Widget) -> Process --- // https://doc.qt.io/qt-6.8/qprocess.html#QProcess
	process_destroy :: proc(process: Process) --- // https://doc.qt.io/qt-6.8/qprocess.html#dtor.QProcess
	process_start :: proc(process: Process, program: cstring, arguments: [^]cstring, arg_count: c.int) --- // https://doc.qt.io/qt-6.8/qprocess.html#start
	process_start_command :: proc(process: Process, command: cstring) --- // https://doc.qt.io/qt-6.8/qprocess.html#startCommand
	@(require_results) process_wait_for_started :: proc(process: Process, timeout_ms: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qprocess.html#waitForStarted
	@(require_results) process_wait_for_finished :: proc(process: Process, timeout_ms: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qprocess.html#waitForFinished
	process_kill :: proc(process: Process) --- // https://doc.qt.io/qt-6.8/qprocess.html#kill
	process_terminate :: proc(process: Process) --- // https://doc.qt.io/qt-6.8/qprocess.html#terminate
	@(require_results) process_get_state :: proc(process: Process) -> Process_State --- // https://doc.qt.io/qt-6.8/qprocess.html#state
	@(require_results) process_get_exit_code :: proc(process: Process) -> c.int --- // https://doc.qt.io/qt-6.8/qprocess.html#exitCode
	@(require_results) process_get_exit_status :: proc(process: Process) -> Process_Exit_Status --- // https://doc.qt.io/qt-6.8/qprocess.html#exitStatus
	@(require_results) process_read_all_standard_output :: proc(process: Process) -> cstring --- // https://doc.qt.io/qt-6.8/qprocess.html#readAllStandardOutput
	@(require_results) process_read_all_standard_error :: proc(process: Process) -> cstring --- // https://doc.qt.io/qt-6.8/qprocess.html#readAllStandardError
	process_write :: proc(process: Process, data: [^]u8, size: c.int) --- // https://doc.qt.io/qt-6.8/qiodevice.html#write
	process_close_write_channel :: proc(process: Process) --- // https://doc.qt.io/qt-6.8/qprocess.html#closeWriteChannel
	process_set_working_directory :: proc(process: Process, dir: cstring) --- // https://doc.qt.io/qt-6.8/qprocess.html#setWorkingDirectory
	process_connect_finished :: proc(process: Process, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprocess.html#finished
	process_connect_error_occurred :: proc(process: Process, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprocess.html#errorOccurred
	process_connect_started :: proc(process: Process, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprocess.html#started
	process_set_environment :: proc(process: Process, env: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qprocess.html#setProcessEnvironment
	process_set_standard_output_process :: proc(process: Process, destination: Process) --- // https://doc.qt.io/qt-6.8/qprocess.html#setStandardOutputProcess
	process_set_read_channel :: proc(process: Process, channel: c.int) --- // https://doc.qt.io/qt-6.8/qprocess.html#setReadChannel
	process_set_process_channel_mode :: proc(process: Process, mode: c.int) --- // https://doc.qt.io/qt-6.8/qprocess.html#setProcessChannelMode
	@(require_results) process_connect_ready_read_standard_output :: proc(process: Process, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprocess.html#readyReadStandardOutput
	@(require_results) process_connect_ready_read_standard_error :: proc(process: Process, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprocess.html#readyReadStandardError

	/* QThread */

	thread_sleep :: proc(ms: c.ulong) --- // https://doc.qt.io/qt-6.8/qthread.html#sleep
	thread_msleep :: proc(ms: c.ulong) --- // https://doc.qt.io/qt-6.8/qthread.html#msleep
	thread_usleep :: proc(us: c.ulong) --- // https://doc.qt.io/qt-6.8/qthread.html#usleep

	/* QMutex */

	@(require_results) mutex_create :: proc() -> Mutex --- // https://doc.qt.io/qt-6.8/qmutex.html#QMutex
	mutex_destroy :: proc(mutex: Mutex) --- // https://doc.qt.io/qt-6.8/qmutex.html#dtor.QMutex
	mutex_lock :: proc(mutex: Mutex) --- // https://doc.qt.io/qt-6.8/qmutex.html#lock
	mutex_unlock :: proc(mutex: Mutex) --- // https://doc.qt.io/qt-6.8/qmutex.html#unlock
	@(require_results) mutex_try_lock :: proc(mutex: Mutex) -> c.int --- // https://doc.qt.io/qt-6.8/qmutex.html#tryLock

	/* QReadWriteLock */

	@(require_results) read_write_lock_create :: proc() -> Read_Write_Lock --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#QReadWriteLock
	read_write_lock_destroy :: proc(lock: Read_Write_Lock) --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#dtor.QReadWriteLock
	read_write_lock_lock_for_read :: proc(lock: Read_Write_Lock) --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#lockForRead
	read_write_lock_lock_for_write :: proc(lock: Read_Write_Lock) --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#lockForWrite
	read_write_lock_unlock :: proc(lock: Read_Write_Lock) --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#unlock
	@(require_results) read_write_lock_try_lock_for_read :: proc(lock: Read_Write_Lock) -> c.int --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#tryLockForRead
	@(require_results) read_write_lock_try_lock_for_write :: proc(lock: Read_Write_Lock) -> c.int --- // https://doc.qt.io/qt-6.8/qreadwritelock.html#tryLockForWrite

	/* QSemaphore */

	@(require_results) semaphore_create :: proc(n: c.int) -> Semaphore --- // https://doc.qt.io/qt-6.8/qsemaphore.html#QSemaphore
	semaphore_destroy :: proc(semaphore: Semaphore) --- // https://doc.qt.io/qt-6.8/qsemaphore.html#dtor.QSemaphore
	semaphore_acquire :: proc(semaphore: Semaphore, n: c.int) --- // https://doc.qt.io/qt-6.8/qsemaphore.html#acquire
	semaphore_release :: proc(semaphore: Semaphore, n: c.int) --- // https://doc.qt.io/qt-6.8/qsemaphore.html#release
	@(require_results) semaphore_available :: proc(semaphore: Semaphore) -> c.int --- // https://doc.qt.io/qt-6.8/qsemaphore.html#available
	@(require_results) semaphore_try_acquire :: proc(semaphore: Semaphore, n: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qsemaphore.html#tryAcquire

	/* QWaitCondition */

	@(require_results) wait_condition_create :: proc() -> Wait_Condition --- // https://doc.qt.io/qt-6.8/qwaitcondition.html#QWaitCondition
	wait_condition_destroy :: proc(condition: Wait_Condition) --- // https://doc.qt.io/qt-6.8/qwaitcondition.html#dtor.QWaitCondition
	@(require_results) wait_condition_wait_mutex :: proc(condition: Wait_Condition, mutex: Mutex, time_msec: c.ulong) -> c.int --- // https://doc.qt.io/qt-6.8/qwaitcondition.html
	@(require_results) wait_condition_wait_read_write_lock :: proc(condition: Wait_Condition, lock: Read_Write_Lock, time_msec: c.ulong) -> c.int --- // https://doc.qt.io/qt-6.8/qwaitcondition.html
	wait_condition_wake_one :: proc(condition: Wait_Condition) --- // https://doc.qt.io/qt-6.8/qwaitcondition.html#wakeOne
	wait_condition_wake_all :: proc(condition: Wait_Condition) --- // https://doc.qt.io/qt-6.8/qwaitcondition.html#wakeAll

	/* QThreadPool */

	@(require_results) thread_pool_global_instance :: proc() -> Thread_Pool --- // https://doc.qt.io/qt-6.8/qthreadpool.html#globalInstance
	@(require_results) thread_pool_create :: proc(parent: rawptr) -> Thread_Pool --- // https://doc.qt.io/qt-6.8/qthreadpool.html#QThreadPool
	thread_pool_destroy :: proc(pool: Thread_Pool) --- // https://doc.qt.io/qt-6.8/qthreadpool.html#dtor.QThreadPool
	thread_pool_start_callback :: proc(pool: Thread_Pool, callback: Callback, user_data: rawptr, priority: c.int) --- // https://doc.qt.io/qt-6.8/qthreadpool.html
	@(require_results) thread_pool_try_start_callback :: proc(pool: Thread_Pool, callback: Callback, user_data: rawptr) -> c.int --- // https://doc.qt.io/qt-6.8/qthreadpool.html
	@(require_results) thread_pool_get_max_thread_count :: proc(pool: Thread_Pool) -> c.int --- // https://doc.qt.io/qt-6.8/qthreadpool.html#maxThreadCount-prop
	thread_pool_set_max_thread_count :: proc(pool: Thread_Pool, count: c.int) --- // https://doc.qt.io/qt-6.8/qthreadpool.html#maxThreadCount-prop
	@(require_results) thread_pool_get_active_thread_count :: proc(pool: Thread_Pool) -> c.int --- // https://doc.qt.io/qt-6.8/qthreadpool.html#activeThreadCount-prop
	thread_pool_release_thread :: proc(pool: Thread_Pool) --- // https://doc.qt.io/qt-6.8/qthreadpool.html#releaseThread
	thread_pool_reserve_thread :: proc(pool: Thread_Pool) --- // https://doc.qt.io/qt-6.8/qthreadpool.html#reserveThread
	@(require_results) thread_pool_wait_for_done :: proc(pool: Thread_Pool, msecs: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qthreadpool.html#waitForDone
	thread_pool_clear :: proc(pool: Thread_Pool) --- // https://doc.qt.io/qt-6.8/qthreadpool.html#clear

	/* QBuffer */

	@(require_results) buffer_create :: proc() -> Buffer --- // https://doc.qt.io/qt-6.8/qbuffer.html#QBuffer
	buffer_destroy :: proc(buffer: Buffer) --- // https://doc.qt.io/qt-6.8/qbuffer.html#dtor.QBuffer
	@(require_results) buffer_open :: proc(buffer: Buffer, mode: File_Open_Mode) -> c.int --- // https://doc.qt.io/qt-6.8/qbuffer.html#open
	buffer_close :: proc(buffer: Buffer) --- // https://doc.qt.io/qt-6.8/qbuffer.html#close
	buffer_set_data :: proc(buffer: Buffer, data: [^]u8, size: c.int) --- // https://doc.qt.io/qt-6.8/qbuffer.html#setData
	@(require_results) buffer_get_data :: proc(buffer: Buffer, size: ^c.int) -> [^]u8 --- // https://doc.qt.io/qt-6.8/qbuffer.html#data
	@(require_results) buffer_size :: proc(buffer: Buffer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qbuffer.html#size

	/* QJsonDocument / QJsonObject / QJsonArray */

	@(require_results) json_document_from_json :: proc(json: cstring, size: c.int, error_out: ^cstring) -> Json_Document --- // https://doc.qt.io/qt-6.8/qjsondocument.html#fromJson
	@(require_results) json_document_from_object :: proc(object: Json_Object) -> Json_Document --- // https://doc.qt.io/qt-6.8/qjsondocument.html
	@(require_results) json_document_from_array :: proc(array: Json_Array) -> Json_Document --- // https://doc.qt.io/qt-6.8/qjsondocument.html
	json_document_destroy :: proc(doc: Json_Document) --- // https://doc.qt.io/qt-6.8/qjsondocument.html#dtor.QJsonDocument
	@(require_results) json_document_to_json :: proc(doc: Json_Document, is_compact: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qjsondocument.html#toJson
	@(require_results) json_document_is_object :: proc(doc: Json_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qjsondocument.html#isObject
	@(require_results) json_document_is_array :: proc(doc: Json_Document) -> c.int --- // https://doc.qt.io/qt-6.8/qjsondocument.html#isArray
	@(require_results) json_document_get_object :: proc(doc: Json_Document) -> Json_Object --- // https://doc.qt.io/qt-6.8/qjsondocument.html#object
	@(require_results) json_document_get_array :: proc(doc: Json_Document) -> Json_Array --- // https://doc.qt.io/qt-6.8/qjsondocument.html#array

	@(require_results) json_object_create :: proc() -> Json_Object --- // https://doc.qt.io/qt-6.8/qjsonobject.html#QJsonObject
	json_object_destroy :: proc(obj: Json_Object) --- // https://doc.qt.io/qt-6.8/qjsonobject.html#dtor.QJsonObject
	@(require_results) json_object_get_count :: proc(obj: Json_Object) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonobject.html#count
	@(require_results) json_object_contains :: proc(obj: Json_Object, key: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonobject.html#contains
	json_object_set_string :: proc(obj: Json_Object, key: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_set_int :: proc(obj: Json_Object, key: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_set_double :: proc(obj: Json_Object, key: cstring, value: c.double) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_set_bool :: proc(obj: Json_Object, key: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_set_object :: proc(obj: Json_Object, key: cstring, child: Json_Object) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_set_array :: proc(obj: Json_Object, key: cstring, array: Json_Array) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_set_null :: proc(obj: Json_Object, key: cstring) --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	@(require_results) json_object_get_string :: proc(obj: Json_Object, key: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	@(require_results) json_object_get_int :: proc(obj: Json_Object, key: cstring, default_val: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	@(require_results) json_object_get_double :: proc(obj: Json_Object, key: cstring, default_val: c.double) -> c.double --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	@(require_results) json_object_get_bool :: proc(obj: Json_Object, key: cstring, default_val: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	@(require_results) json_object_get_object :: proc(obj: Json_Object, key: cstring) -> Json_Object --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	@(require_results) json_object_get_array :: proc(obj: Json_Object, key: cstring) -> Json_Array --- // https://doc.qt.io/qt-6.8/qjsonobject.html
	json_object_remove :: proc(obj: Json_Object, key: cstring) --- // https://doc.qt.io/qt-6.8/qjsonobject.html#remove
	@(require_results) json_object_get_keys :: proc(obj: Json_Object, keys_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonobject.html#keys
	json_object_free_keys :: proc(keys: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qjsonobject.html

	@(require_results) json_array_create :: proc() -> Json_Array --- // https://doc.qt.io/qt-6.8/qjsonarray.html#QJsonArray
	json_array_destroy :: proc(arr: Json_Array) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#dtor.QJsonArray
	@(require_results) json_array_get_count :: proc(arr: Json_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonarray.html#count
	json_array_append_string :: proc(arr: Json_Array, value: cstring) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	json_array_append_int :: proc(arr: Json_Array, value: c.int) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	json_array_append_double :: proc(arr: Json_Array, value: c.double) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	json_array_append_bool :: proc(arr: Json_Array, value: c.int) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	json_array_append_object :: proc(arr: Json_Array, object: Json_Object) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	json_array_append_array :: proc(arr: Json_Array, other: Json_Array) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	json_array_append_null :: proc(arr: Json_Array) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#append
	@(require_results) json_array_get_string :: proc(arr: Json_Array, index: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qjsonarray.html
	@(require_results) json_array_get_int :: proc(arr: Json_Array, index: c.int, default_val: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonarray.html
	@(require_results) json_array_get_double :: proc(arr: Json_Array, index: c.int, default_val: c.double) -> c.double --- // https://doc.qt.io/qt-6.8/qjsonarray.html
	@(require_results) json_array_get_bool :: proc(arr: Json_Array, index: c.int, default_val: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qjsonarray.html
	@(require_results) json_array_get_object :: proc(arr: Json_Array, index: c.int) -> Json_Object --- // https://doc.qt.io/qt-6.8/qjsonarray.html
	@(require_results) json_array_get_array :: proc(arr: Json_Array, index: c.int) -> Json_Array --- // https://doc.qt.io/qt-6.8/qjsonarray.html
	json_array_remove_at :: proc(arr: Json_Array, index: c.int) --- // https://doc.qt.io/qt-6.8/qjsonarray.html#removeAt

	/* QXmlStreamReader / QXmlStreamWriter */

	@(require_results) xml_stream_reader_create :: proc(data: cstring, size: c.int) -> Xml_Stream_Reader --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#QXmlStreamReader
	xml_stream_reader_destroy :: proc(reader: Xml_Stream_Reader) --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#dtor.QXmlStreamReader
	@(require_results) xml_stream_reader_read_next :: proc(reader: Xml_Stream_Reader) -> Xml_Token_Type --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#readNext
	@(require_results) xml_stream_reader_get_token_type :: proc(reader: Xml_Stream_Reader) -> Xml_Token_Type --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#tokenType
	@(require_results) xml_stream_reader_get_name :: proc(reader: Xml_Stream_Reader) -> cstring --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#name
	@(require_results) xml_stream_reader_get_text :: proc(reader: Xml_Stream_Reader) -> cstring --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#text
	@(require_results) xml_stream_reader_at_end :: proc(reader: Xml_Stream_Reader) -> c.int --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#atEnd
	@(require_results) xml_stream_reader_has_error :: proc(reader: Xml_Stream_Reader) -> c.int --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#hasError
	@(require_results) xml_stream_reader_get_error_string :: proc(reader: Xml_Stream_Reader) -> cstring --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#errorString
	@(require_results) xml_stream_reader_get_attribute :: proc(reader: Xml_Stream_Reader, name: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html
	@(require_results) xml_stream_reader_is_start_element :: proc(reader: Xml_Stream_Reader) -> c.int --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#isStartElement
	@(require_results) xml_stream_reader_is_end_element :: proc(reader: Xml_Stream_Reader) -> c.int --- // https://doc.qt.io/qt-6.8/qxmlstreamreader.html#isEndElement

	@(require_results) xml_stream_writer_create :: proc() -> Xml_Stream_Writer --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#QXmlStreamWriter
	xml_stream_writer_destroy :: proc(writer: Xml_Stream_Writer) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#dtor.QXmlStreamWriter
	xml_stream_writer_set_auto_formatting :: proc(writer: Xml_Stream_Writer, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#setAutoFormatting
	xml_stream_writer_write_start_document :: proc(writer: Xml_Stream_Writer) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeStartDocument
	xml_stream_writer_write_end_document :: proc(writer: Xml_Stream_Writer) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeEndDocument
	xml_stream_writer_write_start_element :: proc(writer: Xml_Stream_Writer, name: cstring) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeStartElement
	xml_stream_writer_write_end_element :: proc(writer: Xml_Stream_Writer) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeEndElement
	xml_stream_writer_write_attribute :: proc(writer: Xml_Stream_Writer, name: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeAttribute
	xml_stream_writer_write_text_element :: proc(writer: Xml_Stream_Writer, name: cstring, text: cstring) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeTextElement
	xml_stream_writer_write_characters :: proc(writer: Xml_Stream_Writer, text: cstring) --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html#writeCharacters
	@(require_results) xml_stream_writer_get_output :: proc(writer: Xml_Stream_Writer) -> cstring --- // https://doc.qt.io/qt-6.8/qxmlstreamwriter.html

	/* QDateTime / QDate / QTime */

	@(require_results) date_time_create :: proc() -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html#QDateTime
	@(require_results) date_time_create_from_components :: proc(year: c.int, month: c.int, day: c.int, hour: c.int, minute: c.int, second: c.int) -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html#QDateTime
	@(require_results) date_time_current :: proc() -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html#currentDateTime
	@(require_results) date_time_current_utc :: proc() -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html#currentDateTimeUtc
	date_time_destroy :: proc(dt: Date_Time) --- // https://doc.qt.io/qt-6.8/qdatetime.html#dtor.QDateTime
	@(require_results) date_time_to_string :: proc(dt: Date_Time, format: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qdatetime.html#toString
	@(require_results) date_time_to_msecs_since_epoch :: proc(dt: Date_Time) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdatetime.html
	@(require_results) date_time_from_msecs_since_epoch :: proc(msecs: c.longlong) -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html
	@(require_results) date_time_is_valid :: proc(dt: Date_Time) -> c.int --- // https://doc.qt.io/qt-6.8/qdatetime.html#isValid
	date_time_get_date :: proc(dt: Date_Time, year: ^c.int, month: ^c.int, day: ^c.int) --- // https://doc.qt.io/qt-6.8/qdatetime.html#date
	date_time_get_time :: proc(dt: Date_Time, hour: ^c.int, minute: ^c.int, second: ^c.int) --- // https://doc.qt.io/qt-6.8/qdatetime.html#time
	@(require_results) date_time_secs_to :: proc(dt: Date_Time, other: Date_Time) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdatetime.html#secsTo
	@(require_results) date_time_days_to :: proc(dt: Date_Time, other: Date_Time) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdatetime.html#daysTo
	@(require_results) date_time_add_days :: proc(dt: Date_Time, days: c.longlong) -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html#addDays
	@(require_results) date_time_add_secs :: proc(dt: Date_Time, seconds: c.longlong) -> Date_Time --- // https://doc.qt.io/qt-6.8/qdatetime.html#addSecs

	@(require_results) date_create :: proc(year: c.int, month: c.int, day: c.int) -> Date --- // https://doc.qt.io/qt-6.8/qdate.html#QDate
	@(require_results) date_current :: proc() -> Date --- // https://doc.qt.io/qt-6.8/qdate.html#currentDate
	date_destroy :: proc(date: Date) --- // https://doc.qt.io/qt-6.8/qdate.html
	@(require_results) date_to_string :: proc(date: Date, format: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qdate.html#toString
	@(require_results) date_is_valid :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#isValid
	@(require_results) date_get_year :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#year
	@(require_results) date_get_month :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#month
	@(require_results) date_get_day :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#day
	@(require_results) date_get_day_of_week :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#dayOfWeek
	@(require_results) date_get_day_of_year :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#dayOfYear
	@(require_results) date_get_days_in_month :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#daysInMonth
	@(require_results) date_get_days_in_year :: proc(date: Date) -> c.int --- // https://doc.qt.io/qt-6.8/qdate.html#daysInYear

	@(require_results) time_create :: proc(hour: c.int, minute: c.int, second: c.int, ms: c.int) -> Time_Handle --- // https://doc.qt.io/qt-6.8/qtime.html#QTime
	@(require_results) time_current :: proc() -> Time_Handle --- // https://doc.qt.io/qt-6.8/qtime.html#currentTime
	time_destroy :: proc(time_obj: Time_Handle) --- // https://doc.qt.io/qt-6.8/qtime.html
	@(require_results) time_to_string :: proc(time_obj: Time_Handle, format: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qtime.html#toString
	@(require_results) time_is_valid :: proc(time_obj: Time_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qtime.html#isValid
	@(require_results) time_get_hour :: proc(time_obj: Time_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qtime.html#hour
	@(require_results) time_get_minute :: proc(time_obj: Time_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qtime.html#minute
	@(require_results) time_get_second :: proc(time_obj: Time_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qtime.html#second
	@(require_results) time_get_msec :: proc(time_obj: Time_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qtime.html#msec
	@(require_results) time_msecs_since_start_of_day :: proc(time_obj: Time_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qtime.html#msecsSinceStartOfDay

	/* QLocale */

	@(require_results) locale_create :: proc() -> Locale --- // https://doc.qt.io/qt-6.8/qlocale.html#QLocale
	@(require_results) locale_create_from_name :: proc(name: cstring) -> Locale --- // https://doc.qt.io/qt-6.8/qlocale.html#QLocale
	locale_destroy :: proc(locale: Locale) --- // https://doc.qt.io/qt-6.8/qlocale.html#dtor.QLocale
	@(require_results) locale_get_name :: proc(locale: Locale) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html#name
	@(require_results) locale_get_language_name :: proc(locale: Locale) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html
	@(require_results) locale_get_country_name :: proc(locale: Locale) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html
	@(require_results) locale_get_decimal_point :: proc(locale: Locale) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html#decimalPoint
	@(require_results) locale_to_string_int :: proc(locale: Locale, value: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html#toString
	@(require_results) locale_to_string_double :: proc(locale: Locale, value: c.double, precision: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html#toString
	@(require_results) locale_format_date_time :: proc(locale: Locale, dt: Date_Time, format: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qlocale.html

	/* QRegularExpression (standalone) */

	@(require_results) regex_create :: proc(pattern: cstring) -> Regex --- // https://doc.qt.io/qt-6.8/qregularexpression.html#QRegularExpression
	@(require_results) regex_create_with_options :: proc(pattern: cstring, options: Regex_Pattern_Option) -> Regex --- // https://doc.qt.io/qt-6.8/qregularexpression.html#QRegularExpression
	regex_destroy :: proc(regex: Regex) --- // https://doc.qt.io/qt-6.8/qregularexpression.html#dtor.QRegularExpression
	@(require_results) regex_get_pattern :: proc(regex: Regex) -> cstring --- // https://doc.qt.io/qt-6.8/qregularexpression.html#pattern
	@(require_results) regex_is_valid :: proc(regex: Regex) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpression.html#isValid
	@(require_results) regex_get_error_string :: proc(regex: Regex) -> cstring --- // https://doc.qt.io/qt-6.8/qregularexpression.html#errorString
	@(require_results) regex_has_match :: proc(regex: Regex, subject: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpression.html
	@(require_results) regex_get_match :: proc(regex: Regex, subject: cstring, capture_group: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qregularexpression.html#match
	@(require_results) regex_get_match_start :: proc(regex: Regex, subject: cstring, capture_group: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpression.html
	@(require_results) regex_get_match_end :: proc(regex: Regex, subject: cstring, capture_group: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpression.html

	/* QUrl */

	@(require_results) url_create :: proc(url: cstring) -> Url --- // https://doc.qt.io/qt-6.8/qurl.html#QUrl
	@(require_results) url_create_from_local_file :: proc(file_path: cstring) -> Url --- // https://doc.qt.io/qt-6.8/qurl.html#QUrl
	url_destroy :: proc(url: Url) --- // https://doc.qt.io/qt-6.8/qurl.html#dtor.QUrl
	@(require_results) url_to_string :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#toString
	@(require_results) url_to_local_file :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#toLocalFile
	@(require_results) url_get_scheme :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#scheme
	@(require_results) url_get_host :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#host
	@(require_results) url_get_port :: proc(url: Url) -> c.int --- // https://doc.qt.io/qt-6.8/qurl.html#port
	@(require_results) url_get_path :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#path
	@(require_results) url_get_query :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#query
	@(require_results) url_get_fragment :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#fragment
	@(require_results) url_is_valid :: proc(url: Url) -> c.int --- // https://doc.qt.io/qt-6.8/qurl.html#isValid
	@(require_results) url_is_local_file :: proc(url: Url) -> c.int --- // https://doc.qt.io/qt-6.8/qurl.html#isLocalFile
	@(require_results) url_get_file_name :: proc(url: Url) -> cstring --- // https://doc.qt.io/qt-6.8/qurl.html#fileName

	/* QUrlQuery */

	@(require_results) url_query_create :: proc() -> Url_Query --- // https://doc.qt.io/qt-6.8/qurlquery.html#QUrlQuery
	@(require_results) url_query_create_from_url :: proc(url: Url) -> Url_Query --- // https://doc.qt.io/qt-6.8/qurlquery.html#QUrlQuery
	@(require_results) url_query_create_from_string :: proc(query_string: cstring) -> Url_Query --- // https://doc.qt.io/qt-6.8/qurlquery.html#QUrlQuery
	url_query_destroy :: proc(query: Url_Query) --- // https://doc.qt.io/qt-6.8/qurlquery.html#dtor.QUrlQuery
	url_query_add_item :: proc(query: Url_Query, key: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qurlquery.html
	@(require_results) url_query_get_query_value :: proc(query: Url_Query, key: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qurlquery.html#query
	@(require_results) url_query_has_query_item :: proc(query: Url_Query, key: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qurlquery.html#hasQueryItem
	url_query_remove_query_item :: proc(query: Url_Query, key: cstring) --- // https://doc.qt.io/qt-6.8/qurlquery.html#removeQueryItem
	url_query_remove_all_query_items :: proc(query: Url_Query, key: cstring) --- // https://doc.qt.io/qt-6.8/qurlquery.html#removeAllQueryItems
	@(require_results) url_query_to_string :: proc(query: Url_Query) -> cstring --- // https://doc.qt.io/qt-6.8/qurlquery.html#toString
	@(require_results) url_query_is_empty :: proc(query: Url_Query) -> c.int --- // https://doc.qt.io/qt-6.8/qurlquery.html#isEmpty
	url_query_clear :: proc(query: Url_Query) --- // https://doc.qt.io/qt-6.8/qurlquery.html#clear

	/* QUuid */

	@(require_results) uuid_create :: proc() -> Uuid --- // https://doc.qt.io/qt-6.8/quuid.html#QUuid
	@(require_results) uuid_create_from_string :: proc(text: cstring) -> Uuid --- // https://doc.qt.io/qt-6.8/quuid.html#QUuid
	uuid_destroy :: proc(uuid: Uuid) --- // https://doc.qt.io/qt-6.8/quuid.html
	@(require_results) uuid_to_string :: proc(uuid: Uuid) -> cstring --- // https://doc.qt.io/qt-6.8/quuid.html#toString
	@(require_results) uuid_is_null :: proc(uuid: Uuid) -> c.int --- // https://doc.qt.io/qt-6.8/quuid.html#isNull

	/* QElapsedTimer */

	@(require_results) elapsed_timer_create :: proc() -> Elapsed_Timer --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html#QElapsedTimer
	elapsed_timer_destroy :: proc(timer: Elapsed_Timer) --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html
	elapsed_timer_start :: proc(timer: Elapsed_Timer) --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html#start
	@(require_results) elapsed_timer_elapsed :: proc(timer: Elapsed_Timer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html#elapsed
	@(require_results) elapsed_timer_restart :: proc(timer: Elapsed_Timer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html#restart
	@(require_results) elapsed_timer_is_valid :: proc(timer: Elapsed_Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html#isValid
	@(require_results) elapsed_timer_has_expired :: proc(timer: Elapsed_Timer, timeout: c.longlong) -> c.int --- // https://doc.qt.io/qt-6.8/qelapsedtimer.html#hasExpired

	/* QBasicTimer */

	@(require_results) basic_timer_create :: proc() -> Basic_Timer --- // https://doc.qt.io/qt-6.8/qbasictimer.html#QBasicTimer
	basic_timer_destroy :: proc(timer: Basic_Timer) --- // https://doc.qt.io/qt-6.8/qbasictimer.html#dtor.QBasicTimer
	@(require_results) basic_timer_is_active :: proc(timer: Basic_Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qbasictimer.html#isActive
	@(require_results) basic_timer_get_timer_id :: proc(timer: Basic_Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qbasictimer.html
	basic_timer_start :: proc(timer: Basic_Timer, msec: c.int, object: rawptr) --- // https://doc.qt.io/qt-6.8/qbasictimer.html
	basic_timer_stop :: proc(timer: Basic_Timer) --- // https://doc.qt.io/qt-6.8/qbasictimer.html#stop

	/* QBitArray */

	@(require_results) bit_array_create :: proc(size: c.int, value: c.int) -> Bit_Array --- // https://doc.qt.io/qt-6.8/qbitarray.html#QBitArray
	bit_array_destroy :: proc(array: Bit_Array) --- // https://doc.qt.io/qt-6.8/qbitarray.html
	@(require_results) bit_array_get_size :: proc(array: Bit_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qbitarray.html#size
	bit_array_resize :: proc(array: Bit_Array, size: c.int) --- // https://doc.qt.io/qt-6.8/qbitarray.html#resize
	@(require_results) bit_array_test_bit :: proc(array: Bit_Array, index: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qbitarray.html#testBit
	bit_array_set_bit :: proc(array: Bit_Array, index: c.int) --- // https://doc.qt.io/qt-6.8/qbitarray.html#setBit
	bit_array_clear_bit :: proc(array: Bit_Array, index: c.int) --- // https://doc.qt.io/qt-6.8/qbitarray.html#clearBit
	bit_array_toggle_bit :: proc(array: Bit_Array, index: c.int) --- // https://doc.qt.io/qt-6.8/qbitarray.html#toggleBit
	@(require_results) bit_array_is_null :: proc(array: Bit_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qbitarray.html#isNull
	@(require_results) bit_array_is_empty :: proc(array: Bit_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qbitarray.html#isEmpty
	bit_array_fill :: proc(array: Bit_Array, value: c.int) --- // https://doc.qt.io/qt-6.8/qbitarray.html#fill
	@(require_results) bit_array_count_set :: proc(array: Bit_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qbitarray.html
	bit_array_clear :: proc(array: Bit_Array) --- // https://doc.qt.io/qt-6.8/qbitarray.html#clear
	bit_array_truncate :: proc(array: Bit_Array, pos: c.int) --- // https://doc.qt.io/qt-6.8/qbitarray.html#truncate

	/* QTextBoundaryFinder */

	@(require_results) text_boundary_finder_create :: proc(boundary_type: Text_Boundary_Type, text: cstring) -> Text_Boundary_Finder --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#QTextBoundaryFinder
	text_boundary_finder_destroy :: proc(finder: Text_Boundary_Finder) --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#dtor.QTextBoundaryFinder
	text_boundary_finder_set_position :: proc(finder: Text_Boundary_Finder, position: c.int) --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#setPosition
	@(require_results) text_boundary_finder_get_position :: proc(finder: Text_Boundary_Finder) -> c.int --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#position
	@(require_results) text_boundary_finder_to_next_boundary :: proc(finder: Text_Boundary_Finder) -> c.int --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#toNextBoundary
	@(require_results) text_boundary_finder_to_previous_boundary :: proc(finder: Text_Boundary_Finder) -> c.int --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#toPreviousBoundary
	@(require_results) text_boundary_finder_is_at_boundary :: proc(finder: Text_Boundary_Finder) -> c.int --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#isAtBoundary
	@(require_results) text_boundary_finder_get_boundary_reasons :: proc(finder: Text_Boundary_Finder) -> c.int --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#boundaryReasons
	@(require_results) text_boundary_finder_get_type :: proc(finder: Text_Boundary_Finder) -> Text_Boundary_Type --- // https://doc.qt.io/qt-6.8/qtextboundaryfinder.html#type

	/* QCryptographicHash */

	@(require_results) crypto_hash_create :: proc(algorithm: Crypto_Hash_Algorithm) -> Crypto_Hash --- // https://doc.qt.io/qt-6.8/qcryptographichash.html#QCryptographicHash
	crypto_hash_destroy :: proc(hash: Crypto_Hash) --- // https://doc.qt.io/qt-6.8/qcryptographichash.html#dtor.QCryptographicHash
	crypto_hash_add_data :: proc(hash: Crypto_Hash, data: [^]u8, size: c.int) --- // https://doc.qt.io/qt-6.8/qcryptographichash.html#addData
	crypto_hash_reset :: proc(hash: Crypto_Hash) --- // https://doc.qt.io/qt-6.8/qcryptographichash.html#reset
	@(require_results) crypto_hash_get_result :: proc(hash: Crypto_Hash, out: [^]u8, max_size: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcryptographichash.html#result
	@(require_results) crypto_hash_static :: proc(algorithm: Crypto_Hash_Algorithm, data: [^]u8, size: c.int, out: [^]u8, max_size: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcryptographichash.html#hash

	/* QMimeDatabase */

	@(require_results) mime_database_create :: proc() -> Mime_Database --- // https://doc.qt.io/qt-6.8/qmimedatabase.html#QMimeDatabase
	mime_database_destroy :: proc(db: Mime_Database) --- // https://doc.qt.io/qt-6.8/qmimedatabase.html#dtor.QMimeDatabase
	@(require_results) mime_database_mime_type_for_file :: proc(db: Mime_Database, file_path: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qmimedatabase.html#mimeTypeForFile
	@(require_results) mime_database_mime_type_for_data :: proc(db: Mime_Database, data: [^]u8, size: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qmimedatabase.html#mimeTypeForData
	@(require_results) mime_database_suffix_for_mime_type :: proc(db: Mime_Database, mime_type: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qmimedatabase.html

	/* QStorageInfo */

	@(require_results) storage_info_create :: proc(path: cstring) -> Storage_Info --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#QStorageInfo
	storage_info_destroy :: proc(info: Storage_Info) --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#dtor.QStorageInfo
	@(require_results) storage_info_get_root_path :: proc(info: Storage_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#rootPath
	@(require_results) storage_info_get_device :: proc(info: Storage_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#device
	@(require_results) storage_info_get_display_name :: proc(info: Storage_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#displayName
	@(require_results) storage_info_get_file_system_type :: proc(info: Storage_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#fileSystemType
	@(require_results) storage_info_get_bytes_total :: proc(info: Storage_Info) -> c.longlong --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#bytesTotal
	@(require_results) storage_info_get_bytes_free :: proc(info: Storage_Info) -> c.longlong --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#bytesFree
	@(require_results) storage_info_get_bytes_available :: proc(info: Storage_Info) -> c.longlong --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#bytesAvailable
	@(require_results) storage_info_is_valid :: proc(info: Storage_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#isValid
	@(require_results) storage_info_is_ready :: proc(info: Storage_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#isReady
	@(require_results) storage_info_is_read_only :: proc(info: Storage_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qstorageinfo.html#isReadOnly

	/* QVersionNumber */

	@(require_results) version_number_create :: proc(major: c.int, minor: c.int, micro: c.int) -> Version_Number --- // https://doc.qt.io/qt-6.8/qversionnumber.html#QVersionNumber
	version_number_destroy :: proc(version: Version_Number) --- // https://doc.qt.io/qt-6.8/qversionnumber.html
	@(require_results) version_number_get_major :: proc(version: Version_Number) -> c.int --- // https://doc.qt.io/qt-6.8/qversionnumber.html
	@(require_results) version_number_get_minor :: proc(version: Version_Number) -> c.int --- // https://doc.qt.io/qt-6.8/qversionnumber.html
	@(require_results) version_number_get_micro :: proc(version: Version_Number) -> c.int --- // https://doc.qt.io/qt-6.8/qversionnumber.html
	@(require_results) version_number_to_string :: proc(version: Version_Number) -> cstring --- // https://doc.qt.io/qt-6.8/qversionnumber.html#toString
	@(require_results) version_number_compare :: proc(v1: Version_Number, v2: Version_Number) -> c.int --- // https://doc.qt.io/qt-6.8/qversionnumber.html#compare
	@(require_results) version_number_is_null :: proc(version: Version_Number) -> c.int --- // https://doc.qt.io/qt-6.8/qversionnumber.html#isNull

	/* QTranslator */

	@(require_results) translator_create :: proc(parent: Widget) -> Translator --- // https://doc.qt.io/qt-6.8/qtranslator.html#QTranslator
	translator_destroy :: proc(translator: Translator) --- // https://doc.qt.io/qt-6.8/qtranslator.html#dtor.QTranslator
	@(require_results) translator_load :: proc(translator: Translator, filename: cstring, directory: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qtranslator.html#load
	@(require_results) translator_is_empty :: proc(translator: Translator) -> c.int --- // https://doc.qt.io/qt-6.8/qtranslator.html#isEmpty
	application_install_translator :: proc(app: Application, translator: Translator) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#installTranslator
	application_remove_translator :: proc(app: Application, translator: Translator) --- // https://doc.qt.io/qt-6.8/qcoreapplication.html#removeTranslator

	/* QCommandLineParser */

	@(require_results) command_line_parser_create :: proc() -> Command_Line_Parser --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#QCommandLineParser
	command_line_parser_destroy :: proc(parser: Command_Line_Parser) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#dtor.QCommandLineParser
	command_line_parser_set_application_description :: proc(parser: Command_Line_Parser, description: cstring) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#setApplicationDescription
	command_line_parser_add_help_option :: proc(parser: Command_Line_Parser) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#addHelpOption
	command_line_parser_add_version_option :: proc(parser: Command_Line_Parser) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#addVersionOption
	command_line_parser_add_option :: proc(parser: Command_Line_Parser, name: cstring, description: cstring, value_name: cstring, default_value: cstring) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#addOption
	command_line_parser_add_positional_argument :: proc(parser: Command_Line_Parser, name: cstring, description: cstring, syntax: cstring) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#addPositionalArgument
	command_line_parser_process :: proc(parser: Command_Line_Parser, app: Application) --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#process
	@(require_results) command_line_parser_is_set :: proc(parser: Command_Line_Parser, name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#isSet
	@(require_results) command_line_parser_get_value :: proc(parser: Command_Line_Parser, name: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qcommandlineparser.html#value

	/* QTemporaryFile */

	@(require_results) temporary_file_create :: proc() -> Temporary_File --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#QTemporaryFile
	@(require_results) temporary_file_create_with_template :: proc(template_name: cstring) -> Temporary_File --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#QTemporaryFile
	temporary_file_destroy :: proc(file: Temporary_File) --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#dtor.QTemporaryFile
	@(require_results) temporary_file_open :: proc(file: Temporary_File) -> c.int --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#open
	@(require_results) temporary_file_get_file_name :: proc(file: Temporary_File) -> cstring --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#fileName
	@(require_results) temporary_file_auto_remove :: proc(file: Temporary_File) -> c.int --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#autoRemove
	temporary_file_set_auto_remove :: proc(file: Temporary_File, is_auto_remove: c.int) --- // https://doc.qt.io/qt-6.8/qtemporaryfile.html#setAutoRemove

	/* QTemporaryDir */

	@(require_results) temporary_dir_create :: proc() -> Temporary_Dir --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#QTemporaryDir
	@(require_results) temporary_dir_create_with_template :: proc(template_name: cstring) -> Temporary_Dir --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#QTemporaryDir
	temporary_dir_destroy :: proc(dir: Temporary_Dir) --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#dtor.QTemporaryDir
	@(require_results) temporary_dir_is_valid :: proc(dir: Temporary_Dir) -> c.int --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#isValid
	@(require_results) temporary_dir_get_path :: proc(dir: Temporary_Dir) -> cstring --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#path
	@(require_results) temporary_dir_auto_remove :: proc(dir: Temporary_Dir) -> c.int --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#autoRemove
	temporary_dir_set_auto_remove :: proc(dir: Temporary_Dir, is_auto_remove: c.int) --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#setAutoRemove
	@(require_results) temporary_dir_remove :: proc(dir: Temporary_Dir) -> c.int --- // https://doc.qt.io/qt-6.8/qtemporarydir.html#remove

	/* QSaveFile */

	@(require_results) save_file_create :: proc(file_path: cstring) -> Save_File --- // https://doc.qt.io/qt-6.8/qsavefile.html#QSaveFile
	save_file_destroy :: proc(file: Save_File) --- // https://doc.qt.io/qt-6.8/qsavefile.html#dtor.QSaveFile
	@(require_results) save_file_open :: proc(file: Save_File, mode: File_Open_Mode) -> c.int --- // https://doc.qt.io/qt-6.8/qsavefile.html#open
	@(require_results) save_file_write :: proc(file: Save_File, data: [^]u8, size: c.longlong) -> c.longlong --- // https://doc.qt.io/qt-6.8/qiodevice.html#write
	@(require_results) save_file_commit :: proc(file: Save_File) -> c.int --- // https://doc.qt.io/qt-6.8/qsavefile.html#commit
	save_file_cancel_writing :: proc(file: Save_File) --- // https://doc.qt.io/qt-6.8/qsavefile.html#cancelWriting
	@(require_results) save_file_get_error_string :: proc(file: Save_File) -> cstring --- // https://doc.qt.io/qt-6.8/qfiledevice.html

	/* QFileSystemWatcher */

	@(require_results) file_system_watcher_create :: proc(parent: Widget) -> File_System_Watcher --- // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html#QFileSystemWatcher
	file_system_watcher_destroy :: proc(watcher: File_System_Watcher) --- // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html#dtor.QFileSystemWatcher
	@(require_results) file_system_watcher_add_path :: proc(watcher: File_System_Watcher, path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html#addPath
	@(require_results) file_system_watcher_remove_path :: proc(watcher: File_System_Watcher, path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html#removePath
	file_system_watcher_connect_file_changed :: proc(watcher: File_System_Watcher, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html#fileChanged
	file_system_watcher_connect_directory_changed :: proc(watcher: File_System_Watcher, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qfilesystemwatcher.html#directoryChanged

	/* QStringListModel */

	@(require_results) string_list_model_create :: proc(parent: Widget) -> String_List_Model --- // https://doc.qt.io/qt-6.8/qstringlistmodel.html#QStringListModel
	string_list_model_destroy :: proc(model: String_List_Model) --- // https://doc.qt.io/qt-6.8/qstringlistmodel.html
	string_list_model_set_string_list :: proc(model: String_List_Model, strings: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qstringlistmodel.html#setStringList
	@(require_results) string_list_model_get_string_list :: proc(model: String_List_Model, strings_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qstringlistmodel.html#stringList
	string_list_model_free_string_list :: proc(strings: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qstringlistmodel.html

	/* QItemSelectionModel */

	@(require_results) item_selection_model_create :: proc(model: rawptr, parent: Widget) -> Item_Selection_Model --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#QItemSelectionModel
	item_selection_model_destroy :: proc(selection_model: Item_Selection_Model) --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#dtor.QItemSelectionModel
	item_selection_model_select_index :: proc(selection_model: Item_Selection_Model, index: Model_Index, flags: Item_Selection_Flag) --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html
	item_selection_model_clear :: proc(selection_model: Item_Selection_Model) --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#clear
	item_selection_model_clear_selection :: proc(selection_model: Item_Selection_Model) --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#clearSelection
	@(require_results) item_selection_model_is_selected :: proc(selection_model: Item_Selection_Model, index: Model_Index) -> c.int --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#isSelected
	@(require_results) item_selection_model_has_selection :: proc(selection_model: Item_Selection_Model) -> c.int --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#hasSelection
	@(require_results) item_selection_model_get_current_index :: proc(selection_model: Item_Selection_Model) -> Model_Index --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#currentIndex
	item_selection_model_set_current_index :: proc(selection_model: Item_Selection_Model, index: Model_Index, flags: Item_Selection_Flag) --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#setCurrentIndex
	item_selection_model_connect_selection_changed :: proc(selection_model: Item_Selection_Model, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#selectionChanged
	item_selection_model_connect_current_changed :: proc(selection_model: Item_Selection_Model, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qitemselectionmodel.html#currentChanged

	/* QUndoCommand */

	@(require_results) undo_command_create :: proc(text: cstring, parent: Undo_Command) -> Undo_Command --- // https://doc.qt.io/qt-6.8/qundocommand.html#QUndoCommand
	undo_command_destroy :: proc(command: Undo_Command) --- // https://doc.qt.io/qt-6.8/qundocommand.html#dtor.QUndoCommand
	@(require_results) undo_command_get_text :: proc(command: Undo_Command) -> cstring --- // https://doc.qt.io/qt-6.8/qundocommand.html#text
	@(require_results) undo_command_get_action_text :: proc(command: Undo_Command) -> cstring --- // https://doc.qt.io/qt-6.8/qundocommand.html#actionText
	undo_command_set_obsolete :: proc(command: Undo_Command, is_obsolete: c.int) --- // https://doc.qt.io/qt-6.8/qundocommand.html#setObsolete
	@(require_results) undo_command_is_obsolete :: proc(command: Undo_Command) -> c.int --- // https://doc.qt.io/qt-6.8/qundocommand.html#isObsolete
	@(require_results) undo_command_get_child_count :: proc(command: Undo_Command) -> c.int --- // https://doc.qt.io/qt-6.8/qundocommand.html#childCount
	@(require_results) undo_command_get_child :: proc(command: Undo_Command, index: c.int) -> Undo_Command --- // https://doc.qt.io/qt-6.8/qundocommand.html#child

	/* QUndoStack */

	@(require_results) undo_stack_create :: proc(parent: rawptr) -> Undo_Stack --- // https://doc.qt.io/qt-6.8/qundostack.html#QUndoStack
	undo_stack_destroy :: proc(stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundostack.html#dtor.QUndoStack
	undo_stack_push :: proc(stack: Undo_Stack, command: Undo_Command) --- // https://doc.qt.io/qt-6.8/qundostack.html#push
	undo_stack_clear :: proc(stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundostack.html#clear
	undo_stack_undo :: proc(stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundostack.html#undo
	undo_stack_redo :: proc(stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundostack.html#redo
	@(require_results) undo_stack_can_undo :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#canUndo
	@(require_results) undo_stack_can_redo :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#canRedo
	@(require_results) undo_stack_get_undo_text :: proc(stack: Undo_Stack) -> cstring --- // https://doc.qt.io/qt-6.8/qundostack.html#undoText
	@(require_results) undo_stack_get_redo_text :: proc(stack: Undo_Stack) -> cstring --- // https://doc.qt.io/qt-6.8/qundostack.html#redoText
	@(require_results) undo_stack_is_clean :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#isClean
	@(require_results) undo_stack_get_clean_index :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#cleanIndex
	undo_stack_set_clean :: proc(stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundostack.html#setClean
	@(require_results) undo_stack_get_index :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#index
	@(require_results) undo_stack_get_count :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#count
	undo_stack_set_index :: proc(stack: Undo_Stack, index: c.int) --- // https://doc.qt.io/qt-6.8/qundostack.html#setIndex
	undo_stack_set_undo_limit :: proc(stack: Undo_Stack, limit: c.int) --- // https://doc.qt.io/qt-6.8/qundostack.html#undoLimit-prop
	@(require_results) undo_stack_get_undo_limit :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#undoLimit-prop
	undo_stack_begin_macro :: proc(stack: Undo_Stack, text: cstring) --- // https://doc.qt.io/qt-6.8/qundostack.html#beginMacro
	undo_stack_end_macro :: proc(stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundostack.html#endMacro
	undo_stack_set_active :: proc(stack: Undo_Stack, is_active: c.int) --- // https://doc.qt.io/qt-6.8/qundostack.html#active-prop
	@(require_results) undo_stack_is_active :: proc(stack: Undo_Stack) -> c.int --- // https://doc.qt.io/qt-6.8/qundostack.html#active-prop
	undo_stack_connect_can_undo_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundostack.html#canUndoChanged
	undo_stack_connect_can_redo_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundostack.html#canRedoChanged
	undo_stack_connect_clean_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundostack.html#cleanChanged
	undo_stack_connect_index_changed :: proc(stack: Undo_Stack, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundostack.html#indexChanged
	undo_stack_connect_undo_text_changed :: proc(stack: Undo_Stack, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundostack.html#undoTextChanged
	undo_stack_connect_redo_text_changed :: proc(stack: Undo_Stack, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundostack.html#redoTextChanged

	/* QUndoGroup */

	@(require_results) undo_group_create :: proc(parent: rawptr) -> Undo_Group --- // https://doc.qt.io/qt-6.8/qundogroup.html#QUndoGroup
	undo_group_destroy :: proc(group: Undo_Group) --- // https://doc.qt.io/qt-6.8/qundogroup.html#dtor.QUndoGroup
	undo_group_add_stack :: proc(group: Undo_Group, stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundogroup.html#addStack
	undo_group_remove_stack :: proc(group: Undo_Group, stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundogroup.html#removeStack
	undo_group_set_active_stack :: proc(group: Undo_Group, stack: Undo_Stack) --- // https://doc.qt.io/qt-6.8/qundogroup.html#setActiveStack
	@(require_results) undo_group_get_active_stack :: proc(group: Undo_Group) -> Undo_Stack --- // https://doc.qt.io/qt-6.8/qundogroup.html#activeStack
	undo_group_undo :: proc(group: Undo_Group) --- // https://doc.qt.io/qt-6.8/qundogroup.html#undo
	undo_group_redo :: proc(group: Undo_Group) --- // https://doc.qt.io/qt-6.8/qundogroup.html#redo
	@(require_results) undo_group_can_undo :: proc(group: Undo_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qundogroup.html#canUndo
	@(require_results) undo_group_can_redo :: proc(group: Undo_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qundogroup.html#canRedo
	@(require_results) undo_group_get_undo_text :: proc(group: Undo_Group) -> cstring --- // https://doc.qt.io/qt-6.8/qundogroup.html#undoText
	@(require_results) undo_group_get_redo_text :: proc(group: Undo_Group) -> cstring --- // https://doc.qt.io/qt-6.8/qundogroup.html#redoText
	@(require_results) undo_group_is_clean :: proc(group: Undo_Group) -> c.int --- // https://doc.qt.io/qt-6.8/qundogroup.html#isClean
	undo_group_connect_active_stack_changed :: proc(group: Undo_Group, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundogroup.html#activeStackChanged
	undo_group_connect_can_undo_changed :: proc(group: Undo_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundogroup.html#canUndoChanged
	undo_group_connect_can_redo_changed :: proc(group: Undo_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundogroup.html#canRedoChanged
	undo_group_connect_clean_changed :: proc(group: Undo_Group, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qundogroup.html#cleanChanged

	/* QDataWidgetMapper */

	@(require_results) data_widget_mapper_create :: proc(parent: rawptr) -> Data_Widget_Mapper --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#QDataWidgetMapper
	data_widget_mapper_destroy :: proc(mapper: Data_Widget_Mapper) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#dtor.QDataWidgetMapper
	data_widget_mapper_set_model :: proc(mapper: Data_Widget_Mapper, model: rawptr) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#setModel
	@(require_results) data_widget_mapper_get_model :: proc(mapper: Data_Widget_Mapper) -> rawptr --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#model
	data_widget_mapper_add_mapping :: proc(mapper: Data_Widget_Mapper, widget: Widget, section: c.int) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#addMapping
	data_widget_mapper_add_mapping_with_property :: proc(mapper: Data_Widget_Mapper, widget: Widget, section: c.int, property_name: cstring) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html
	data_widget_mapper_remove_mapping :: proc(mapper: Data_Widget_Mapper, widget: Widget) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#removeMapping
	data_widget_mapper_set_current_index :: proc(mapper: Data_Widget_Mapper, index: c.int) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#currentIndex-prop
	@(require_results) data_widget_mapper_get_current_index :: proc(mapper: Data_Widget_Mapper) -> c.int --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#currentIndex-prop
	data_widget_mapper_set_root_index :: proc(mapper: Data_Widget_Mapper, index: Model_Index) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#setRootIndex
	data_widget_mapper_to_first :: proc(mapper: Data_Widget_Mapper) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#toFirst
	data_widget_mapper_to_last :: proc(mapper: Data_Widget_Mapper) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#toLast
	data_widget_mapper_to_next :: proc(mapper: Data_Widget_Mapper) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#toNext
	data_widget_mapper_to_previous :: proc(mapper: Data_Widget_Mapper) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#toPrevious
	@(require_results) data_widget_mapper_submit :: proc(mapper: Data_Widget_Mapper) -> c.int --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#submit
	data_widget_mapper_revert :: proc(mapper: Data_Widget_Mapper) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#revert
	data_widget_mapper_set_submit_policy :: proc(mapper: Data_Widget_Mapper, policy: Data_Widget_Mapper_Submit_Policy) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#submitPolicy-prop
	@(require_results) data_widget_mapper_get_submit_policy :: proc(mapper: Data_Widget_Mapper) -> Data_Widget_Mapper_Submit_Policy --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#submitPolicy-prop
	data_widget_mapper_set_orientation :: proc(mapper: Data_Widget_Mapper, orientation: Orientation) --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#orientation-prop
	@(require_results) data_widget_mapper_get_orientation :: proc(mapper: Data_Widget_Mapper) -> Orientation --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#orientation-prop
	data_widget_mapper_connect_current_index_changed :: proc(mapper: Data_Widget_Mapper, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdatawidgetmapper.html#currentIndexChanged

	/* QStyledItemDelegate */

	@(require_results) styled_item_delegate_create :: proc(parent: rawptr) -> Styled_Item_Delegate --- // https://doc.qt.io/qt-6.8/qstyleditemdelegate.html#QStyledItemDelegate
	styled_item_delegate_destroy :: proc(delegate: Styled_Item_Delegate) --- // https://doc.qt.io/qt-6.8/qstyleditemdelegate.html#dtor.QStyledItemDelegate

	/* QItemDelegate */

	@(require_results) item_delegate_create :: proc(parent: rawptr) -> Item_Delegate --- // https://doc.qt.io/qt-6.8/qitemdelegate.html#QItemDelegate
	item_delegate_destroy :: proc(delegate: Item_Delegate) --- // https://doc.qt.io/qt-6.8/qitemdelegate.html#dtor.QItemDelegate

	/* QGraphicsScene */

	@(require_results) graphics_scene_create :: proc(parent: rawptr) -> Graphics_Scene --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#QGraphicsScene
	@(require_results) graphics_scene_create_with_rect :: proc(x: c.double, y: c.double, width: c.double, height: c.double, parent: rawptr) -> Graphics_Scene --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#QGraphicsScene
	graphics_scene_destroy :: proc(scene: Graphics_Scene) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#dtor.QGraphicsScene
	graphics_scene_set_scene_rect :: proc(scene: Graphics_Scene, x: c.double, y: c.double, width: c.double, height: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#sceneRect-prop
	graphics_scene_get_scene_rect :: proc(scene: Graphics_Scene, x: ^c.double, y: ^c.double, width: ^c.double, height: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#sceneRect-prop
	graphics_scene_set_background_brush :: proc(scene: Graphics_Scene, brush: Brush) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#backgroundBrush-prop
	graphics_scene_set_foreground_brush :: proc(scene: Graphics_Scene, brush: Brush) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#foregroundBrush-prop
	graphics_scene_add_item :: proc(scene: Graphics_Scene, item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addItem
	graphics_scene_remove_item :: proc(scene: Graphics_Scene, item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#removeItem
	graphics_scene_clear :: proc(scene: Graphics_Scene) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#clear
	@(require_results) graphics_scene_add_rect :: proc(scene: Graphics_Scene, x: c.double, y: c.double, w: c.double, h: c.double, pen: Pen, brush: Brush) -> Graphics_Rect_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addRect
	@(require_results) graphics_scene_add_ellipse :: proc(scene: Graphics_Scene, x: c.double, y: c.double, w: c.double, h: c.double, pen: Pen, brush: Brush) -> Graphics_Ellipse_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addEllipse
	@(require_results) graphics_scene_add_text :: proc(scene: Graphics_Scene, text: cstring, font: Font_Handle) -> Graphics_Text_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addText
	@(require_results) graphics_scene_add_line :: proc(scene: Graphics_Scene, x1: c.double, y1: c.double, x2: c.double, y2: c.double, pen: Pen) -> Graphics_Line_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addLine
	@(require_results) graphics_scene_add_pixmap :: proc(scene: Graphics_Scene, pixmap: Pixmap) -> Graphics_Pixmap_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addPixmap
	@(require_results) graphics_scene_add_path :: proc(scene: Graphics_Scene, path: Painter_Path, pen: Pen, brush: Brush) -> Graphics_Path_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addPath
	@(require_results) graphics_scene_add_widget :: proc(scene: Graphics_Scene, widget: Widget) -> Graphics_Proxy_Widget --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#addWidget
	@(require_results) graphics_scene_create_item_group :: proc(scene: Graphics_Scene, items: [^]Graphics_Item, count: c.int) -> Graphics_Item_Group --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#QGraphicsScene
	graphics_scene_destroy_item_group :: proc(scene: Graphics_Scene, group: Graphics_Item_Group) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#destroyItemGroup
	@(require_results) graphics_scene_get_item_count :: proc(scene: Graphics_Scene) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#items
	graphics_scene_set_selection_area :: proc(scene: Graphics_Scene, path: Painter_Path) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#setSelectionArea
	graphics_scene_clear_selection :: proc(scene: Graphics_Scene) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#clearSelection
	graphics_scene_connect_selection_changed :: proc(scene: Graphics_Scene, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#selectionChanged
	@(require_results) graphics_scene_item_at :: proc(scene: Graphics_Scene, x: c.double, y: c.double, transform: Transform) -> Graphics_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#itemAt
	graphics_scene_get_items :: proc(scene: Graphics_Scene, out_items: ^[^]Graphics_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#items
	graphics_scene_get_items_in_rect :: proc(scene: Graphics_Scene, x: c.double, y: c.double, w: c.double, h: c.double, out_items: ^[^]Graphics_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html
	graphics_scene_get_colliding_items :: proc(scene: Graphics_Scene, item: Graphics_Item, out_items: ^[^]Graphics_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#collidingItems
	graphics_scene_render :: proc(scene: Graphics_Scene, painter: Painter) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#render
	@(require_results) graphics_scene_get_width :: proc(scene: Graphics_Scene) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#width
	@(require_results) graphics_scene_get_height :: proc(scene: Graphics_Scene) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#height
	graphics_scene_invalidate :: proc(scene: Graphics_Scene) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#invalidate
	graphics_scene_advance :: proc(scene: Graphics_Scene) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#advance
	graphics_scene_set_focus_item :: proc(scene: Graphics_Scene, item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#setFocusItem
	@(require_results) graphics_scene_get_focus_item :: proc(scene: Graphics_Scene) -> Graphics_Item --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#focusItem
	@(require_results) graphics_scene_connect_scene_rect_changed :: proc(scene: Graphics_Scene, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsscene.html#sceneRectChanged

	/* QGraphicsView */

	@(require_results) graphics_view_create :: proc(parent: Widget) -> Graphics_View --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#QGraphicsView
	@(require_results) graphics_view_create_with_scene :: proc(scene: Graphics_Scene, parent: Widget) -> Graphics_View --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#QGraphicsView
	graphics_view_destroy :: proc(view: Graphics_View) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#dtor.QGraphicsView
	graphics_view_set_scene :: proc(view: Graphics_View, scene: Graphics_Scene) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#setScene
	@(require_results) graphics_view_get_scene :: proc(view: Graphics_View) -> Graphics_Scene --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#scene
	graphics_view_set_render_hint :: proc(view: Graphics_View, hint: Render_Hint, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#setRenderHint
	graphics_view_set_drag_mode :: proc(view: Graphics_View, mode: Graphics_View_Drag_Mode) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#dragMode-prop
	@(require_results) graphics_view_get_drag_mode :: proc(view: Graphics_View) -> Graphics_View_Drag_Mode --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#dragMode-prop
	graphics_view_set_interactive :: proc(view: Graphics_View, is_interactive: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#interactive-prop
	@(require_results) graphics_view_is_interactive :: proc(view: Graphics_View) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#interactive-prop
	graphics_view_set_alignment :: proc(view: Graphics_View, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#alignment-prop
	graphics_view_set_viewport_update_mode :: proc(view: Graphics_View, mode: Graphics_View_Viewport_Update_Mode) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#viewportUpdateMode-prop
	graphics_view_fit_in_view :: proc(view: Graphics_View, x: c.double, y: c.double, w: c.double, h: c.double, aspect_ratio_mode: Aspect_Ratio_Mode) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#fitInView
	graphics_view_center_on :: proc(view: Graphics_View, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#centerOn
	graphics_view_scale :: proc(view: Graphics_View, sx: c.double, sy: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#scale
	graphics_view_rotate :: proc(view: Graphics_View, angle: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#rotate
	graphics_view_reset_transform :: proc(view: Graphics_View) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#resetTransform
	graphics_view_set_scene_rect :: proc(view: Graphics_View, x: c.double, y: c.double, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#sceneRect-prop
	graphics_view_ensure_visible :: proc(view: Graphics_View, x: c.double, y: c.double, w: c.double, h: c.double, x_margin: c.int, y_margin: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#ensureVisible
	graphics_view_set_transformation_anchor :: proc(view: Graphics_View, anchor: Graphics_View_Viewport_Anchor) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#transformationAnchor-prop
	graphics_view_set_resize_anchor :: proc(view: Graphics_View, anchor: Graphics_View_Viewport_Anchor) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#resizeAnchor-prop
	graphics_view_set_viewport :: proc(view: Graphics_View, viewport_widget: Widget) --- // https://doc.qt.io/qt-6.8/qabstractscrollarea.html#setViewport
	graphics_view_set_background_brush :: proc(view: Graphics_View, brush: Brush) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#backgroundBrush-prop
	graphics_view_set_foreground_brush :: proc(view: Graphics_View, brush: Brush) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#foregroundBrush-prop
	graphics_view_set_transform :: proc(view: Graphics_View, transform: Transform, is_combine: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#setTransform
	@(require_results) graphics_view_get_transform :: proc(view: Graphics_View) -> Transform --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#transform
	graphics_view_get_items :: proc(view: Graphics_View, out_items: ^[^]Graphics_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#items
	@(require_results) graphics_view_get_item_at :: proc(view: Graphics_View, x: c.int, y: c.int) -> Graphics_Item --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#itemAt
	@(require_results) graphics_view_get_viewport :: proc(view: Graphics_View) -> Widget --- // https://doc.qt.io/qt-6.8/qgraphicsview.html#viewport

	/* QGraphicsItem (base operations) */

	graphics_item_set_pos :: proc(item: Graphics_Item, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setPos
	graphics_item_get_pos :: proc(item: Graphics_Item, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#pos
	graphics_item_set_z_value :: proc(item: Graphics_Item, z: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setZValue
	@(require_results) graphics_item_get_z_value :: proc(item: Graphics_Item) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#zValue
	graphics_item_set_rotation :: proc(item: Graphics_Item, angle: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setRotation
	@(require_results) graphics_item_get_rotation :: proc(item: Graphics_Item) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#rotation
	graphics_item_set_scale :: proc(item: Graphics_Item, scale: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setScale
	@(require_results) graphics_item_get_scale :: proc(item: Graphics_Item) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#scale
	graphics_item_set_opacity :: proc(item: Graphics_Item, opacity: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setOpacity
	@(require_results) graphics_item_get_opacity :: proc(item: Graphics_Item) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#opacity
	graphics_item_set_visible :: proc(item: Graphics_Item, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setVisible
	@(require_results) graphics_item_is_visible :: proc(item: Graphics_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#isVisible
	graphics_item_set_enabled :: proc(item: Graphics_Item, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setEnabled
	@(require_results) graphics_item_is_enabled :: proc(item: Graphics_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#isEnabled
	graphics_item_set_selected :: proc(item: Graphics_Item, is_selected: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setSelected
	@(require_results) graphics_item_is_selected :: proc(item: Graphics_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#isSelected
	graphics_item_set_flag :: proc(item: Graphics_Item, flag: Graphics_Item_Flag, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setFlag
	graphics_item_set_flags :: proc(item: Graphics_Item, flags: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setFlags
	@(require_results) graphics_item_get_flags :: proc(item: Graphics_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#flags
	graphics_item_set_tool_tip :: proc(item: Graphics_Item, tooltip: cstring) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setToolTip
	@(require_results) graphics_item_get_parent_item :: proc(item: Graphics_Item) -> Graphics_Item --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#parentItem
	graphics_item_set_parent_item :: proc(item: Graphics_Item, parent: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setParentItem
	graphics_item_destroy :: proc(item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#dtor.QGraphicsItem
	graphics_item_move_by :: proc(item: Graphics_Item, dx: c.double, dy: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#moveBy
	graphics_item_get_bounding_rect :: proc(item: Graphics_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#boundingRect
	@(require_results) graphics_item_collides_with_item :: proc(item: Graphics_Item, other: Graphics_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#collidesWithItem
	graphics_item_set_cursor :: proc(item: Graphics_Item, shape: Cursor_Shape) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setCursor
	graphics_item_unset_cursor :: proc(item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#unsetCursor
	graphics_item_set_transform :: proc(item: Graphics_Item, transform: Transform, is_combine: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setTransform
	@(require_results) graphics_item_get_transform :: proc(item: Graphics_Item) -> Transform --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#transform
	graphics_item_set_transform_origin_point :: proc(item: Graphics_Item, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setTransformOriginPoint
	graphics_item_map_to_scene :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#mapToScene
	graphics_item_map_from_scene :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#mapFromScene
	graphics_item_map_to_parent :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#mapToParent
	graphics_item_map_from_parent :: proc(item: Graphics_Item, x: c.double, y: c.double, out_x: ^c.double, out_y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#mapFromParent
	@(require_results) graphics_item_collides_with_path :: proc(item: Graphics_Item, path: Painter_Path) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#collidesWithPath
	@(require_results) graphics_item_contains :: proc(item: Graphics_Item, x: c.double, y: c.double) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#contains
	@(require_results) graphics_item_get_shape :: proc(item: Graphics_Item) -> Painter_Path --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#shape
	graphics_item_update :: proc(item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#update
	graphics_item_get_child_items :: proc(item: Graphics_Item, out_items: ^[^]Graphics_Item, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#childItems
	graphics_item_get_scene_bounding_rect :: proc(item: Graphics_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#sceneBoundingRect
	graphics_item_set_accept_hover_events :: proc(item: Graphics_Item, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setAcceptHoverEvents
	graphics_item_set_accept_drops :: proc(item: Graphics_Item, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setAcceptDrops

	/* QGraphicsRectItem */

	@(require_results) graphics_rect_item_create :: proc(x: c.double, y: c.double, w: c.double, h: c.double, parent: Graphics_Item) -> Graphics_Rect_Item --- // https://doc.qt.io/qt-6.8/qgraphicsrectitem.html#QGraphicsRectItem
	graphics_rect_item_set_rect :: proc(item: Graphics_Rect_Item, x: c.double, y: c.double, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsrectitem.html#setRect
	graphics_rect_item_get_rect :: proc(item: Graphics_Rect_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsrectitem.html#rect
	graphics_rect_item_set_pen :: proc(item: Graphics_Rect_Item, pen: Pen) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setPen
	graphics_rect_item_set_brush :: proc(item: Graphics_Rect_Item, brush: Brush) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setBrush

	/* QGraphicsEllipseItem */

	@(require_results) graphics_ellipse_item_create :: proc(x: c.double, y: c.double, w: c.double, h: c.double, parent: Graphics_Item) -> Graphics_Ellipse_Item --- // https://doc.qt.io/qt-6.8/qgraphicsellipseitem.html#QGraphicsEllipseItem
	graphics_ellipse_item_set_rect :: proc(item: Graphics_Ellipse_Item, x: c.double, y: c.double, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsellipseitem.html#setRect
	graphics_ellipse_item_get_rect :: proc(item: Graphics_Ellipse_Item, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsellipseitem.html#rect
	graphics_ellipse_item_set_pen :: proc(item: Graphics_Ellipse_Item, pen: Pen) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setPen
	graphics_ellipse_item_set_brush :: proc(item: Graphics_Ellipse_Item, brush: Brush) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setBrush
	graphics_ellipse_item_set_start_angle :: proc(item: Graphics_Ellipse_Item, angle: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsellipseitem.html#setStartAngle
	graphics_ellipse_item_set_span_angle :: proc(item: Graphics_Ellipse_Item, angle: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsellipseitem.html#setSpanAngle

	/* QGraphicsTextItem */

	@(require_results) graphics_text_item_create :: proc(text: cstring, parent: Graphics_Item) -> Graphics_Text_Item --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#QGraphicsTextItem
	graphics_text_item_set_text :: proc(item: Graphics_Text_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#setPlainText
	graphics_text_item_set_html :: proc(item: Graphics_Text_Item, html: cstring) --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#setHtml
	@(require_results) graphics_text_item_get_text :: proc(item: Graphics_Text_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#toPlainText
	graphics_text_item_set_font :: proc(item: Graphics_Text_Item, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#setFont
	graphics_text_item_set_default_text_colour :: proc(item: Graphics_Text_Item, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#setDefaultTextColor
	graphics_text_item_set_text_width :: proc(item: Graphics_Text_Item, width: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#setTextWidth
	@(require_results) graphics_text_item_get_text_width :: proc(item: Graphics_Text_Item) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#textWidth
	graphics_text_item_set_text_interaction_flags :: proc(item: Graphics_Text_Item, flags: Text_Interaction_Flag) --- // https://doc.qt.io/qt-6.8/qgraphicstextitem.html#setTextInteractionFlags

	/* QGraphicsLineItem */

	@(require_results) graphics_line_item_create :: proc(x1: c.double, y1: c.double, x2: c.double, y2: c.double, parent: Graphics_Item) -> Graphics_Line_Item --- // https://doc.qt.io/qt-6.8/qgraphicslineitem.html#QGraphicsLineItem
	graphics_line_item_set_line :: proc(item: Graphics_Line_Item, x1: c.double, y1: c.double, x2: c.double, y2: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicslineitem.html#setLine
	graphics_line_item_set_pen :: proc(item: Graphics_Line_Item, pen: Pen) --- // https://doc.qt.io/qt-6.8/qgraphicslineitem.html#setPen

	/* QGraphicsPixmapItem */

	@(require_results) graphics_pixmap_item_create :: proc(pixmap: Pixmap, parent: Graphics_Item) -> Graphics_Pixmap_Item --- // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html#QGraphicsPixmapItem
	graphics_pixmap_item_set_pixmap :: proc(item: Graphics_Pixmap_Item, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html#setPixmap
	graphics_pixmap_item_set_offset :: proc(item: Graphics_Pixmap_Item, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html#setOffset
	graphics_pixmap_item_set_transformation_mode :: proc(item: Graphics_Pixmap_Item, mode: Transformation_Mode) --- // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html#setTransformationMode
	graphics_pixmap_item_set_shape_mode :: proc(item: Graphics_Pixmap_Item, mode: Graphics_Pixmap_Item_Shape_Mode) --- // https://doc.qt.io/qt-6.8/qgraphicspixmapitem.html#setShapeMode

	/* QGraphicsPathItem */

	@(require_results) graphics_path_item_create :: proc(path: Painter_Path, parent: Graphics_Item) -> Graphics_Path_Item --- // https://doc.qt.io/qt-6.8/qgraphicspathitem.html#QGraphicsPathItem
	graphics_path_item_set_path :: proc(item: Graphics_Path_Item, path: Painter_Path) --- // https://doc.qt.io/qt-6.8/qgraphicspathitem.html#setPath
	graphics_path_item_set_pen :: proc(item: Graphics_Path_Item, pen: Pen) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setPen
	graphics_path_item_set_brush :: proc(item: Graphics_Path_Item, brush: Brush) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setBrush

	/* QGraphicsPolygonItem */

	@(require_results) graphics_polygon_item_create :: proc(polygon_f: Polygon_F, parent: Graphics_Item) -> Graphics_Polygon_Item --- // https://doc.qt.io/qt-6.8/qgraphicspolygonitem.html#QGraphicsPolygonItem
	graphics_polygon_item_set_polygon :: proc(item: Graphics_Polygon_Item, polygon_f: Polygon_F) --- // https://doc.qt.io/qt-6.8/qgraphicspolygonitem.html#setPolygon
	graphics_polygon_item_set_pen :: proc(item: Graphics_Polygon_Item, pen: Pen) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setPen
	graphics_polygon_item_set_brush :: proc(item: Graphics_Polygon_Item, brush: Brush) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setBrush
	graphics_polygon_item_set_fill_rule :: proc(item: Graphics_Polygon_Item, fill_rule: Fill_Rule) --- // https://doc.qt.io/qt-6.8/qgraphicspolygonitem.html#setFillRule
	@(require_results) graphics_polygon_item_get_fill_rule :: proc(item: Graphics_Polygon_Item) -> Fill_Rule --- // https://doc.qt.io/qt-6.8/qgraphicspolygonitem.html#fillRule

	/* QGraphicsSimpleTextItem */

	@(require_results) graphics_simple_text_item_create :: proc(text: cstring, parent: Graphics_Item) -> Graphics_Simple_Text_Item --- // https://doc.qt.io/qt-6.8/qgraphicssimpletextitem.html#QGraphicsSimpleTextItem
	graphics_simple_text_item_set_text :: proc(item: Graphics_Simple_Text_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qgraphicssimpletextitem.html#setText
	@(require_results) graphics_simple_text_item_get_text :: proc(item: Graphics_Simple_Text_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qgraphicssimpletextitem.html#text
	graphics_simple_text_item_set_font :: proc(item: Graphics_Simple_Text_Item, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qgraphicssimpletextitem.html#setFont
	graphics_simple_text_item_set_pen :: proc(item: Graphics_Simple_Text_Item, pen: Pen) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setPen
	graphics_simple_text_item_set_brush :: proc(item: Graphics_Simple_Text_Item, brush: Brush) --- // https://doc.qt.io/qt-6.8/qabstractgraphicsshapeitem.html#setBrush

	/* QGraphicsItemGroup */

	@(require_results) graphics_item_group_create :: proc(parent: Graphics_Item) -> Graphics_Item_Group --- // https://doc.qt.io/qt-6.8/qgraphicsitemgroup.html#QGraphicsItemGroup
	graphics_item_group_add_to_group :: proc(group: Graphics_Item_Group, item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitemgroup.html#addToGroup
	graphics_item_group_remove_from_group :: proc(group: Graphics_Item_Group, item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitemgroup.html#removeFromGroup

	/* QGraphicsProxyWidget */

	@(require_results) graphics_proxy_widget_create :: proc(parent: Graphics_Item) -> Graphics_Proxy_Widget --- // https://doc.qt.io/qt-6.8/qgraphicsproxywidget.html#QGraphicsProxyWidget
	graphics_proxy_widget_set_widget :: proc(proxy: Graphics_Proxy_Widget, widget: Widget) --- // https://doc.qt.io/qt-6.8/qgraphicsproxywidget.html#setWidget
	@(require_results) graphics_proxy_widget_get_widget :: proc(proxy: Graphics_Proxy_Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qgraphicsproxywidget.html#widget

	/* QGraphicsWidget */

	@(require_results) graphics_widget_create :: proc(parent: Graphics_Item) -> Graphics_Widget --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#QGraphicsWidget
	graphics_widget_set_layout :: proc(widget: Graphics_Widget, layout: rawptr) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#setLayout
	@(require_results) graphics_widget_get_layout :: proc(widget: Graphics_Widget) -> rawptr --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#layout
	graphics_widget_set_geometry :: proc(widget: Graphics_Widget, x: c.double, y: c.double, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#setGeometry
	graphics_widget_set_minimum_size :: proc(widget: Graphics_Widget, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#minimumSize-prop
	graphics_widget_set_maximum_size :: proc(widget: Graphics_Widget, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#maximumSize-prop
	graphics_widget_set_preferred_size :: proc(widget: Graphics_Widget, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#preferredSize-prop
	graphics_widget_set_size_policy :: proc(widget: Graphics_Widget, horizontal: Size_Policy, vertical: Size_Policy) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#sizePolicy-prop
	graphics_widget_set_window_title :: proc(widget: Graphics_Widget, title: cstring) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#windowTitle-prop
	graphics_widget_set_window_flags :: proc(widget: Graphics_Widget, flags: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#windowFlags-prop
	graphics_widget_set_palette :: proc(widget: Graphics_Widget, palette: Palette) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#palette-prop
	graphics_widget_set_font :: proc(widget: Graphics_Widget, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#font-prop
	graphics_widget_set_style :: proc(widget: Graphics_Widget, style: Style) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#setStyle
	graphics_widget_resize :: proc(widget: Graphics_Widget, w: c.double, h: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#resize-1
	graphics_widget_set_auto_fill_background :: proc(widget: Graphics_Widget, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicswidget.html#autoFillBackground-prop

	/* QGraphicsLinearLayout */

	@(require_results) graphics_linear_layout_create :: proc(orientation: Orientation, parent: rawptr) -> Graphics_Linear_Layout --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#QGraphicsLinearLayout
	graphics_linear_layout_destroy :: proc(layout: Graphics_Linear_Layout) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#dtor.QGraphicsLinearLayout
	graphics_linear_layout_add_item :: proc(layout: Graphics_Linear_Layout, item: rawptr) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#addItem
	graphics_linear_layout_insert_item :: proc(layout: Graphics_Linear_Layout, index: c.int, item: rawptr) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#insertItem
	graphics_linear_layout_remove_item :: proc(layout: Graphics_Linear_Layout, item: rawptr) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#removeItem
	graphics_linear_layout_add_stretch :: proc(layout: Graphics_Linear_Layout, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#addStretch
	graphics_linear_layout_set_spacing :: proc(layout: Graphics_Linear_Layout, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#setSpacing
	@(require_results) graphics_linear_layout_get_spacing :: proc(layout: Graphics_Linear_Layout) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#spacing
	graphics_linear_layout_set_alignment :: proc(layout: Graphics_Linear_Layout, item: rawptr, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#setAlignment
	@(require_results) graphics_linear_layout_get_count :: proc(layout: Graphics_Linear_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicslinearlayout.html#count

	/* QGraphicsGridLayout */

	@(require_results) graphics_grid_layout_create :: proc(parent: rawptr) -> Graphics_Grid_Layout --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#QGraphicsGridLayout
	graphics_grid_layout_destroy :: proc(layout: Graphics_Grid_Layout) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#dtor.QGraphicsGridLayout
	graphics_grid_layout_add_item :: proc(layout: Graphics_Grid_Layout, item: rawptr, row: c.int, col: c.int, row_span: c.int, col_span: c.int, alignment: Alignment) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#addItem
	graphics_grid_layout_set_row_spacing :: proc(layout: Graphics_Grid_Layout, row: c.int, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setRowSpacing
	graphics_grid_layout_set_column_spacing :: proc(layout: Graphics_Grid_Layout, col: c.int, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setColumnSpacing
	graphics_grid_layout_set_row_stretch_factor :: proc(layout: Graphics_Grid_Layout, row: c.int, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setRowStretchFactor
	graphics_grid_layout_set_column_stretch_factor :: proc(layout: Graphics_Grid_Layout, col: c.int, stretch: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setColumnStretchFactor
	graphics_grid_layout_set_row_minimum_height :: proc(layout: Graphics_Grid_Layout, row: c.int, height: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setRowMinimumHeight
	graphics_grid_layout_set_column_minimum_width :: proc(layout: Graphics_Grid_Layout, col: c.int, width: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setColumnMinimumWidth
	graphics_grid_layout_set_spacing :: proc(layout: Graphics_Grid_Layout, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#setSpacing
	@(require_results) graphics_grid_layout_get_count :: proc(layout: Graphics_Grid_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsgridlayout.html#count

	/* QGraphicsObject */

	@(require_results) graphics_object_from_item :: proc(item: Graphics_Item) -> Graphics_Object --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#QGraphicsObject
	@(require_results) graphics_object_get_x :: proc(obj: Graphics_Object) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setX
	@(require_results) graphics_object_get_y :: proc(obj: Graphics_Object) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#setY
	graphics_object_set_x :: proc(obj: Graphics_Object, x: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#x-prop
	graphics_object_set_y :: proc(obj: Graphics_Object, y: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#y-prop
	@(require_results) graphics_object_get_opacity :: proc(obj: Graphics_Object) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#opacity
	graphics_object_set_opacity :: proc(obj: Graphics_Object, opacity: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#opacity-prop
	@(require_results) graphics_object_get_rotation :: proc(obj: Graphics_Object) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#rotation
	graphics_object_set_rotation :: proc(obj: Graphics_Object, rotation: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#rotation-prop
	@(require_results) graphics_object_get_scale :: proc(obj: Graphics_Object) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#scale
	graphics_object_set_scale :: proc(obj: Graphics_Object, scale: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#scale-prop
	@(require_results) graphics_object_is_enabled :: proc(obj: Graphics_Object) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#isEnabled
	graphics_object_set_enabled :: proc(obj: Graphics_Object, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#enabled-prop
	@(require_results) graphics_object_is_visible :: proc(obj: Graphics_Object) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsitem.html#isVisible
	graphics_object_set_visible :: proc(obj: Graphics_Object, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsobject.html#visible-prop

	/* QGraphicsAnchorLayout */

	@(require_results) graphics_anchor_layout_create :: proc(parent: rawptr) -> Graphics_Anchor_Layout --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#QGraphicsAnchorLayout
	graphics_anchor_layout_destroy :: proc(layout: Graphics_Anchor_Layout) --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#dtor.QGraphicsAnchorLayout
	@(require_results) graphics_anchor_layout_add_anchor :: proc(layout: Graphics_Anchor_Layout, first_item: rawptr, first_edge: Anchor_Point, second_item: rawptr, second_edge: Anchor_Point) -> Graphics_Anchor --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#addAnchor
	graphics_anchor_layout_add_corner_anchors :: proc(layout: Graphics_Anchor_Layout, first_item: rawptr, first_corner: Corner, second_item: rawptr, second_corner: Corner) --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#addCornerAnchors
	graphics_anchor_layout_add_anchors :: proc(layout: Graphics_Anchor_Layout, first_item: rawptr, second_item: rawptr, orientations: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#addAnchors
	graphics_anchor_layout_set_horizontal_spacing :: proc(layout: Graphics_Anchor_Layout, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#setHorizontalSpacing
	graphics_anchor_layout_set_vertical_spacing :: proc(layout: Graphics_Anchor_Layout, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#setVerticalSpacing
	graphics_anchor_layout_set_spacing :: proc(layout: Graphics_Anchor_Layout, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#setSpacing
	@(require_results) graphics_anchor_layout_get_count :: proc(layout: Graphics_Anchor_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsanchorlayout.html#count
	graphics_anchor_set_spacing :: proc(anchor: Graphics_Anchor, spacing: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsanchor.html#spacing-prop
	@(require_results) graphics_anchor_get_spacing :: proc(anchor: Graphics_Anchor) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsanchor.html#spacing-prop

	/* QGraphicsItemAnimation */

	@(require_results) graphics_item_animation_create :: proc(parent: rawptr) -> Graphics_Item_Animation --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#QGraphicsItemAnimation
	graphics_item_animation_destroy :: proc(animation: Graphics_Item_Animation) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#dtor.QGraphicsItemAnimation
	graphics_item_animation_set_item :: proc(animation: Graphics_Item_Animation, item: Graphics_Item) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setItem
	@(require_results) graphics_item_animation_get_item :: proc(animation: Graphics_Item_Animation) -> Graphics_Item --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#item
	graphics_item_animation_set_timeline :: proc(animation: Graphics_Item_Animation, timeline: Time_Line) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setTimeLine
	@(require_results) graphics_item_animation_get_timeline :: proc(animation: Graphics_Item_Animation) -> Time_Line --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#timeLine
	graphics_item_animation_set_pos_at :: proc(animation: Graphics_Item_Animation, step: c.double, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setPosAt
	graphics_item_animation_set_rotation_at :: proc(animation: Graphics_Item_Animation, step: c.double, angle: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setRotationAt
	graphics_item_animation_set_scale_at :: proc(animation: Graphics_Item_Animation, step: c.double, sx: c.double, sy: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setScaleAt
	graphics_item_animation_set_shear_at :: proc(animation: Graphics_Item_Animation, step: c.double, sh: c.double, sv: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setShearAt
	graphics_item_animation_set_translation_at :: proc(animation: Graphics_Item_Animation, step: c.double, dx: c.double, dy: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#setTranslationAt
	graphics_item_animation_clear :: proc(animation: Graphics_Item_Animation) --- // https://doc.qt.io/qt-6.8/qgraphicsitemanimation.html#clear

	/* QGraphicsSceneMouseEvent */

	graphics_scene_mouse_event_get_pos :: proc(event: Graphics_Scene_Mouse_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#pos
	graphics_scene_mouse_event_get_scene_pos :: proc(event: Graphics_Scene_Mouse_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#scenePos
	graphics_scene_mouse_event_get_screen_pos :: proc(event: Graphics_Scene_Mouse_Event, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#screenPos
	@(require_results) graphics_scene_mouse_event_get_button :: proc(event: Graphics_Scene_Mouse_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#button
	@(require_results) graphics_scene_mouse_event_get_buttons :: proc(event: Graphics_Scene_Mouse_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#buttons
	@(require_results) graphics_scene_mouse_event_get_modifiers :: proc(event: Graphics_Scene_Mouse_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#modifiers
	graphics_scene_mouse_event_get_last_pos :: proc(event: Graphics_Scene_Mouse_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#lastPos
	graphics_scene_mouse_event_get_last_scene_pos :: proc(event: Graphics_Scene_Mouse_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#lastScenePos
	graphics_scene_mouse_event_get_button_down_pos :: proc(event: Graphics_Scene_Mouse_Event, button: c.int, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#buttonDownPos
	graphics_scene_mouse_event_get_button_down_scene_pos :: proc(event: Graphics_Scene_Mouse_Event, button: c.int, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenemouseevent.html#buttonDownScenePos

	/* QGraphicsSceneHoverEvent */

	graphics_scene_hover_event_get_pos :: proc(event: Graphics_Scene_Hover_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html#pos
	graphics_scene_hover_event_get_scene_pos :: proc(event: Graphics_Scene_Hover_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html#scenePos
	graphics_scene_hover_event_get_screen_pos :: proc(event: Graphics_Scene_Hover_Event, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html#screenPos
	graphics_scene_hover_event_get_last_pos :: proc(event: Graphics_Scene_Hover_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html#lastPos
	graphics_scene_hover_event_get_last_scene_pos :: proc(event: Graphics_Scene_Hover_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html#lastScenePos
	@(require_results) graphics_scene_hover_event_get_modifiers :: proc(event: Graphics_Scene_Hover_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenehoverevent.html#modifiers

	/* QGraphicsSceneWheelEvent */

	graphics_scene_wheel_event_get_pos :: proc(event: Graphics_Scene_Wheel_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#pos
	graphics_scene_wheel_event_get_scene_pos :: proc(event: Graphics_Scene_Wheel_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#scenePos
	graphics_scene_wheel_event_get_screen_pos :: proc(event: Graphics_Scene_Wheel_Event, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#screenPos
	@(require_results) graphics_scene_wheel_event_get_delta :: proc(event: Graphics_Scene_Wheel_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#delta
	@(require_results) graphics_scene_wheel_event_get_orientation :: proc(event: Graphics_Scene_Wheel_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#orientation
	@(require_results) graphics_scene_wheel_event_get_modifiers :: proc(event: Graphics_Scene_Wheel_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#modifiers
	@(require_results) graphics_scene_wheel_event_get_buttons :: proc(event: Graphics_Scene_Wheel_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenewheelevent.html#buttons

	/* QGraphicsSceneContextMenuEvent */

	graphics_scene_context_menu_event_get_pos :: proc(event: Graphics_Scene_Context_Menu_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenecontextmenuevent.html#pos
	graphics_scene_context_menu_event_get_scene_pos :: proc(event: Graphics_Scene_Context_Menu_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenecontextmenuevent.html#scenePos
	graphics_scene_context_menu_event_get_screen_pos :: proc(event: Graphics_Scene_Context_Menu_Event, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscenecontextmenuevent.html#screenPos
	@(require_results) graphics_scene_context_menu_event_get_modifiers :: proc(event: Graphics_Scene_Context_Menu_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenecontextmenuevent.html#modifiers
	@(require_results) graphics_scene_context_menu_event_get_reason :: proc(event: Graphics_Scene_Context_Menu_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenecontextmenuevent.html#reason

	/* QGraphicsSceneDragDropEvent */

	graphics_scene_drag_drop_event_get_pos :: proc(event: Graphics_Scene_Drag_Drop_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#pos
	graphics_scene_drag_drop_event_get_scene_pos :: proc(event: Graphics_Scene_Drag_Drop_Event, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#scenePos
	graphics_scene_drag_drop_event_get_screen_pos :: proc(event: Graphics_Scene_Drag_Drop_Event, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#screenPos
	@(require_results) graphics_scene_drag_drop_event_get_buttons :: proc(event: Graphics_Scene_Drag_Drop_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#buttons
	@(require_results) graphics_scene_drag_drop_event_get_modifiers :: proc(event: Graphics_Scene_Drag_Drop_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#modifiers
	@(require_results) graphics_scene_drag_drop_event_get_mime_data :: proc(event: Graphics_Scene_Drag_Drop_Event) -> Mime_Data --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#mimeData
	@(require_results) graphics_scene_drag_drop_event_get_drop_action :: proc(event: Graphics_Scene_Drag_Drop_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#dropAction
	@(require_results) graphics_scene_drag_drop_event_get_proposed_action :: proc(event: Graphics_Scene_Drag_Drop_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#proposedAction
	@(require_results) graphics_scene_drag_drop_event_get_possible_actions :: proc(event: Graphics_Scene_Drag_Drop_Event) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#possibleActions
	graphics_scene_drag_drop_event_set_drop_action :: proc(event: Graphics_Scene_Drag_Drop_Event, action: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#setDropAction
	graphics_scene_drag_drop_event_accept_proposed_action :: proc(event: Graphics_Scene_Drag_Drop_Event) --- // https://doc.qt.io/qt-6.8/qgraphicsscenedragdropevent.html#acceptProposedAction

	/* QGraphicsEffect (base + subclasses) */

	graphics_effect_set_enabled :: proc(effect: Graphics_Effect, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicseffect.html#enabled-prop
	@(require_results) graphics_effect_is_enabled :: proc(effect: Graphics_Effect) -> c.int --- // https://doc.qt.io/qt-6.8/qgraphicseffect.html#enabled-prop

	@(require_results) graphics_blur_effect_create :: proc(parent: rawptr) -> Graphics_Blur_Effect --- // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#QGraphicsBlurEffect
	graphics_blur_effect_destroy :: proc(effect: Graphics_Blur_Effect) --- // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#dtor.QGraphicsBlurEffect
	graphics_blur_effect_set_blur_radius :: proc(effect: Graphics_Blur_Effect, radius: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#blurRadius-prop
	@(require_results) graphics_blur_effect_get_blur_radius :: proc(effect: Graphics_Blur_Effect) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#blurRadius-prop
	graphics_blur_effect_set_blur_hints :: proc(effect: Graphics_Blur_Effect, hints: Graphics_Blur_Hint) --- // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#blurHints-prop
	graphics_blur_effect_connect_blur_radius_changed :: proc(effect: Graphics_Blur_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsblureffect.html#blurRadiusChanged

	@(require_results) graphics_colourize_effect_create :: proc(parent: rawptr) -> Graphics_Colourize_Effect --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#QGraphicsColorizeEffect
	graphics_colourize_effect_destroy :: proc(effect: Graphics_Colourize_Effect) --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#dtor.QGraphicsColorizeEffect
	graphics_colourize_effect_set_colour :: proc(effect: Graphics_Colourize_Effect, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#color-prop
	graphics_colourize_effect_get_colour :: proc(effect: Graphics_Colourize_Effect, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#color-prop
	graphics_colourize_effect_set_strength :: proc(effect: Graphics_Colourize_Effect, strength: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#strength-prop
	@(require_results) graphics_colourize_effect_get_strength :: proc(effect: Graphics_Colourize_Effect) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#strength-prop
	graphics_colourize_effect_connect_colour_changed :: proc(effect: Graphics_Colourize_Effect, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#colorChanged
	graphics_colourize_effect_connect_strength_changed :: proc(effect: Graphics_Colourize_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicscolorizeeffect.html#strengthChanged

	@(require_results) graphics_drop_shadow_effect_create :: proc(parent: rawptr) -> Graphics_Drop_Shadow_Effect --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#QGraphicsDropShadowEffect
	graphics_drop_shadow_effect_destroy :: proc(effect: Graphics_Drop_Shadow_Effect) --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#dtor.QGraphicsDropShadowEffect
	graphics_drop_shadow_effect_set_blur_radius :: proc(effect: Graphics_Drop_Shadow_Effect, radius: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#blurRadius-prop
	@(require_results) graphics_drop_shadow_effect_get_blur_radius :: proc(effect: Graphics_Drop_Shadow_Effect) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#blurRadius-prop
	graphics_drop_shadow_effect_set_colour :: proc(effect: Graphics_Drop_Shadow_Effect, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#color-prop
	graphics_drop_shadow_effect_get_colour :: proc(effect: Graphics_Drop_Shadow_Effect, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#color-prop
	graphics_drop_shadow_effect_set_offset :: proc(effect: Graphics_Drop_Shadow_Effect, dx: c.double, dy: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#offset-prop
	graphics_drop_shadow_effect_get_offset :: proc(effect: Graphics_Drop_Shadow_Effect, dx: ^c.double, dy: ^c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#offset-prop
	graphics_drop_shadow_effect_connect_blur_radius_changed :: proc(effect: Graphics_Drop_Shadow_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#blurRadiusChanged
	graphics_drop_shadow_effect_connect_colour_changed :: proc(effect: Graphics_Drop_Shadow_Effect, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#colorChanged
	graphics_drop_shadow_effect_connect_offset_changed :: proc(effect: Graphics_Drop_Shadow_Effect, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsdropshadoweffect.html#offsetChanged

	@(require_results) graphics_opacity_effect_create :: proc(parent: rawptr) -> Graphics_Opacity_Effect --- // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html#QGraphicsOpacityEffect
	graphics_opacity_effect_destroy :: proc(effect: Graphics_Opacity_Effect) --- // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html#dtor.QGraphicsOpacityEffect
	graphics_opacity_effect_set_opacity :: proc(effect: Graphics_Opacity_Effect, opacity: c.double) --- // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html#opacity-prop
	@(require_results) graphics_opacity_effect_get_opacity :: proc(effect: Graphics_Opacity_Effect) -> c.double --- // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html#opacity-prop
	graphics_opacity_effect_set_opacity_mask :: proc(effect: Graphics_Opacity_Effect, brush: Brush) --- // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html#opacityMask-prop
	graphics_opacity_effect_connect_opacity_changed :: proc(effect: Graphics_Opacity_Effect, callback: Double_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qgraphicsopacityeffect.html#opacityChanged

	/* QStyle / QStyleFactory */

	@(require_results) style_get_keys :: proc(keys_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qstyle.html
	style_free_keys :: proc(keys: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qstyle.html
	@(require_results) application_get_style :: proc(app: Application) -> Style --- // https://doc.qt.io/qt-6.8/qapplication.html#style
	@(require_results) style_get_pixel_metric :: proc(style: Style, metric: Style_Pixel_Metric, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstyle.html#pixelMetric
	@(require_results) style_get_name :: proc(style: Style) -> cstring --- // https://doc.qt.io/qt-6.8/qstyle.html#name

	/* QProxyStyle */

	@(require_results) proxy_style_create :: proc(base_style_key: cstring) -> Proxy_Style --- // https://doc.qt.io/qt-6.8/qproxystyle.html#QProxyStyle
	proxy_style_destroy :: proc(style: Proxy_Style) --- // https://doc.qt.io/qt-6.8/qproxystyle.html#dtor.QProxyStyle
	application_set_style_object :: proc(style: Proxy_Style) --- // https://doc.qt.io/qt-6.8/qapplication.html#setStyle

	/* QScroller / QScrollerProperties */

	@(require_results) scroller_grab :: proc(target: rawptr, gesture_type: Scroller_Gesture_Type) -> Scroller --- // https://doc.qt.io/qt-6.8/qscroller.html#grabGesture
	@(require_results) scroller_get_scroller :: proc(target: rawptr) -> Scroller --- // https://doc.qt.io/qt-6.8/qscroller.html#scroller
	scroller_set_snap_positions_x :: proc(scroller: Scroller, first: c.double, interval: c.double) --- // https://doc.qt.io/qt-6.8/qscroller.html#setSnapPositionsX
	scroller_set_snap_positions_y :: proc(scroller: Scroller, first: c.double, interval: c.double) --- // https://doc.qt.io/qt-6.8/qscroller.html#setSnapPositionsY
	@(require_results) scroller_get_state :: proc(scroller: Scroller) -> Scroller_State --- // https://doc.qt.io/qt-6.8/qscroller.html#state-prop
	scroller_stop :: proc(scroller: Scroller) --- // https://doc.qt.io/qt-6.8/qscroller.html#stop

	@(require_results) scroller_properties_create :: proc(scroller: Scroller) -> Scroller_Properties --- // https://doc.qt.io/qt-6.8/qscrollerproperties.html#QScrollerProperties
	scroller_properties_destroy :: proc(props: Scroller_Properties) --- // https://doc.qt.io/qt-6.8/qscrollerproperties.html#dtor.QScrollerProperties
	scroller_properties_set_metric :: proc(props: Scroller_Properties, metric: Scroller_Metric, value: c.double) --- // https://doc.qt.io/qt-6.8/qscrollerproperties.html#setScrollMetric
	@(require_results) scroller_properties_get_metric :: proc(props: Scroller_Properties, metric: Scroller_Metric) -> c.double --- // https://doc.qt.io/qt-6.8/qscrollerproperties.html#scrollMetric
	scroller_properties_apply :: proc(props: Scroller_Properties, scroller: Scroller) --- // https://doc.qt.io/qt-6.8/qscroller.html

	/* QIdentityProxyModel */

	@(require_results) identity_proxy_model_create :: proc(parent: rawptr) -> Identity_Proxy_Model --- // https://doc.qt.io/qt-6.8/qidentityproxymodel.html#QIdentityProxyModel
	identity_proxy_model_destroy :: proc(model: Identity_Proxy_Model) --- // https://doc.qt.io/qt-6.8/qidentityproxymodel.html#dtor.QIdentityProxyModel
	identity_proxy_model_set_source_model :: proc(model: Identity_Proxy_Model, source: rawptr) --- // https://doc.qt.io/qt-6.8/qidentityproxymodel.html#setSourceModel
	@(require_results) identity_proxy_model_get_source_model :: proc(model: Identity_Proxy_Model) -> rawptr --- // https://doc.qt.io/qt-6.8/qabstractproxymodel.html
	@(require_results) identity_proxy_model_map_to_source :: proc(model: Identity_Proxy_Model, proxy_index: Model_Index) -> Model_Index --- // https://doc.qt.io/qt-6.8/qidentityproxymodel.html#mapToSource
	@(require_results) identity_proxy_model_map_from_source :: proc(model: Identity_Proxy_Model, source_index: Model_Index) -> Model_Index --- // https://doc.qt.io/qt-6.8/qidentityproxymodel.html#mapFromSource

	/* QTransposeProxyModel */

	@(require_results) transpose_proxy_model_create :: proc(parent: rawptr) -> Transpose_Proxy_Model --- // https://doc.qt.io/qt-6.8/qtransposeproxymodel.html#QTransposeProxyModel
	transpose_proxy_model_destroy :: proc(model: Transpose_Proxy_Model) --- // https://doc.qt.io/qt-6.8/qtransposeproxymodel.html#dtor.QTransposeProxyModel
	transpose_proxy_model_set_source_model :: proc(model: Transpose_Proxy_Model, source: rawptr) --- // https://doc.qt.io/qt-6.8/qtransposeproxymodel.html#setSourceModel
	@(require_results) transpose_proxy_model_get_source_model :: proc(model: Transpose_Proxy_Model) -> rawptr --- // https://doc.qt.io/qt-6.8/qabstractproxymodel.html

	/* QConcatenateTablesProxyModel */

	@(require_results) concatenate_tables_proxy_model_create :: proc(parent: rawptr) -> Concatenate_Tables_Proxy_Model --- // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html#QConcatenateTablesProxyModel
	concatenate_tables_proxy_model_destroy :: proc(model: Concatenate_Tables_Proxy_Model) --- // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html#dtor.QConcatenateTablesProxyModel
	concatenate_tables_proxy_model_add_source_model :: proc(model: Concatenate_Tables_Proxy_Model, source: rawptr) --- // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html#addSourceModel
	concatenate_tables_proxy_model_remove_source_model :: proc(model: Concatenate_Tables_Proxy_Model, source: rawptr) --- // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html#removeSourceModel
	@(require_results) concatenate_tables_proxy_model_map_to_source :: proc(model: Concatenate_Tables_Proxy_Model, proxy_index: Model_Index) -> Model_Index --- // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html#mapToSource
	@(require_results) concatenate_tables_proxy_model_map_from_source :: proc(model: Concatenate_Tables_Proxy_Model, source_index: Model_Index, source_model: rawptr) -> Model_Index --- // https://doc.qt.io/qt-6.8/qconcatenatetablesproxymodel.html#mapFromSource

	/* QSignalMapper */

	@(require_results) signal_mapper_create :: proc(parent: rawptr) -> Signal_Mapper --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#QSignalMapper
	signal_mapper_destroy :: proc(mapper: Signal_Mapper) --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#dtor.QSignalMapper
	signal_mapper_set_mapping_int :: proc(mapper: Signal_Mapper, sender: rawptr, id: c.int) --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#setMapping
	signal_mapper_set_mapping_string :: proc(mapper: Signal_Mapper, sender: rawptr, text: cstring) --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#setMapping
	signal_mapper_set_mapping_widget :: proc(mapper: Signal_Mapper, sender: rawptr, widget: Widget) --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#setMapping
	signal_mapper_remove_mappings :: proc(mapper: Signal_Mapper, sender: rawptr) --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#removeMappings
	signal_mapper_map :: proc(mapper: Signal_Mapper, sender: rawptr) --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#map
	signal_mapper_connect_mapped_int :: proc(mapper: Signal_Mapper, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#mappedInt
	signal_mapper_connect_mapped_string :: proc(mapper: Signal_Mapper, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qsignalmapper.html#mappedString

	/* QLockFile */

	@(require_results) lock_file_create :: proc(file_path: cstring) -> Lock_File --- // https://doc.qt.io/qt-6.8/qlockfile.html#QLockFile
	lock_file_destroy :: proc(lock: Lock_File) --- // https://doc.qt.io/qt-6.8/qlockfile.html#dtor.QLockFile
	@(require_results) lock_file_lock :: proc(lock: Lock_File) -> c.int --- // https://doc.qt.io/qt-6.8/qlockfile.html#lock
	@(require_results) lock_file_try_lock :: proc(lock: Lock_File, timeout_ms: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qlockfile.html#tryLock
	lock_file_unlock :: proc(lock: Lock_File) --- // https://doc.qt.io/qt-6.8/qlockfile.html#unlock
	@(require_results) lock_file_is_locked :: proc(lock: Lock_File) -> c.int --- // https://doc.qt.io/qt-6.8/qlockfile.html#isLocked
	@(require_results) lock_file_get_error :: proc(lock: Lock_File) -> Lock_File_Error --- // https://doc.qt.io/qt-6.8/qlockfile.html#error
	lock_file_set_stale_lock_time :: proc(lock: Lock_File, msecs: c.int) --- // https://doc.qt.io/qt-6.8/qlockfile.html#setStaleLockTime
	@(require_results) lock_file_get_stale_lock_time :: proc(lock: Lock_File) -> c.int --- // https://doc.qt.io/qt-6.8/qlockfile.html#staleLockTime
	@(require_results) lock_file_remove_stale_lock_file :: proc(lock: Lock_File) -> c.int --- // https://doc.qt.io/qt-6.8/qlockfile.html#removeStaleLockFile

	/* QTimeLine */

	@(require_results) time_line_create :: proc(duration_ms: c.int, parent: rawptr) -> Time_Line --- // https://doc.qt.io/qt-6.8/qtimeline.html#QTimeLine
	time_line_destroy :: proc(timeline: Time_Line) --- // https://doc.qt.io/qt-6.8/qtimeline.html#dtor.QTimeLine
	time_line_start :: proc(timeline: Time_Line) --- // https://doc.qt.io/qt-6.8/qtimeline.html#start
	time_line_stop :: proc(timeline: Time_Line) --- // https://doc.qt.io/qt-6.8/qtimeline.html#stop
	time_line_resume :: proc(timeline: Time_Line) --- // https://doc.qt.io/qt-6.8/qtimeline.html#resume
	time_line_set_paused :: proc(timeline: Time_Line, is_paused: c.int) --- // https://doc.qt.io/qt-6.8/qtimeline.html#setPaused
	@(require_results) time_line_get_state :: proc(timeline: Time_Line) -> Time_Line_State --- // https://doc.qt.io/qt-6.8/qtimeline.html#state
	time_line_set_duration :: proc(timeline: Time_Line, duration_ms: c.int) --- // https://doc.qt.io/qt-6.8/qtimeline.html#duration-prop
	@(require_results) time_line_get_duration :: proc(timeline: Time_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtimeline.html#duration-prop
	time_line_set_frame_range :: proc(timeline: Time_Line, start: c.int, end: c.int) --- // https://doc.qt.io/qt-6.8/qtimeline.html#setFrameRange
	@(require_results) time_line_get_start_frame :: proc(timeline: Time_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtimeline.html#startFrame
	@(require_results) time_line_get_end_frame :: proc(timeline: Time_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtimeline.html#endFrame
	@(require_results) time_line_get_current_frame :: proc(timeline: Time_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtimeline.html#currentFrame
	@(require_results) time_line_get_current_value :: proc(timeline: Time_Line) -> c.double --- // https://doc.qt.io/qt-6.8/qtimeline.html#currentValue
	time_line_set_current_time :: proc(timeline: Time_Line, msec: c.int) --- // https://doc.qt.io/qt-6.8/qtimeline.html#currentTime-prop
	@(require_results) time_line_get_current_time :: proc(timeline: Time_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtimeline.html#currentTime-prop
	time_line_set_loop_count :: proc(timeline: Time_Line, count: c.int) --- // https://doc.qt.io/qt-6.8/qtimeline.html#loopCount-prop
	@(require_results) time_line_get_loop_count :: proc(timeline: Time_Line) -> c.int --- // https://doc.qt.io/qt-6.8/qtimeline.html#loopCount-prop
	time_line_set_direction :: proc(timeline: Time_Line, direction: Time_Line_Direction) --- // https://doc.qt.io/qt-6.8/qtimeline.html#direction-prop
	@(require_results) time_line_get_direction :: proc(timeline: Time_Line) -> Time_Line_Direction --- // https://doc.qt.io/qt-6.8/qtimeline.html#direction-prop
	time_line_set_easing_curve :: proc(timeline: Time_Line, curve_type: Easing_Curve) --- // https://doc.qt.io/qt-6.8/qtimeline.html#easingCurve-prop
	time_line_set_update_interval :: proc(timeline: Time_Line, interval_ms: c.int) --- // https://doc.qt.io/qt-6.8/qtimeline.html#updateInterval-prop
	time_line_connect_value_changed :: proc(timeline: Time_Line, callback: Double_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtimeline.html#valueChanged
	time_line_connect_frame_changed :: proc(timeline: Time_Line, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtimeline.html#frameChanged
	time_line_connect_state_changed :: proc(timeline: Time_Line, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtimeline.html#stateChanged
	time_line_connect_finished :: proc(timeline: Time_Line, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qtimeline.html#finished

	/* QCalendar */

	@(require_results) calendar_create :: proc() -> Calendar --- // https://doc.qt.io/qt-6.8/qcalendar.html#QCalendar
	@(require_results) calendar_create_with_system :: proc(system: Calendar_System) -> Calendar --- // https://doc.qt.io/qt-6.8/qcalendar.html#QCalendar
	calendar_destroy :: proc(calendar: Calendar) --- // https://doc.qt.io/qt-6.8/qcalendar.html
	@(require_results) calendar_is_valid :: proc(calendar: Calendar) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#isValid
	@(require_results) calendar_get_days_in_month :: proc(calendar: Calendar, month: c.int, year: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#daysInMonth
	@(require_results) calendar_get_days_in_year :: proc(calendar: Calendar, year: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#daysInYear
	@(require_results) calendar_get_months_in_year :: proc(calendar: Calendar, year: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#monthsInYear
	@(require_results) calendar_is_date_valid :: proc(calendar: Calendar, year: c.int, month: c.int, day: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#isDateValid
	@(require_results) calendar_is_gregorian :: proc(calendar: Calendar) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#isGregorian
	@(require_results) calendar_is_leap_year :: proc(calendar: Calendar, year: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#isLeapYear
	@(require_results) calendar_get_maximum_days_in_month :: proc(calendar: Calendar) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#maximumDaysInMonth
	@(require_results) calendar_get_maximum_months_in_year :: proc(calendar: Calendar) -> c.int --- // https://doc.qt.io/qt-6.8/qcalendar.html#maximumMonthsInYear

	/* QRandomGenerator */

	@(require_results) random_generator_generate :: proc() -> c.uint --- // https://doc.qt.io/qt-6.8/qrandomgenerator.html#generate
	@(require_results) random_generator_generate_bounded_int :: proc(highest: c.int) -> c.uint --- // https://doc.qt.io/qt-6.8/qrandomgenerator.html
	@(require_results) random_generator_generate_bounded_range :: proc(lowest: c.int, highest: c.int) -> c.uint --- // https://doc.qt.io/qt-6.8/qrandomgenerator.html
	@(require_results) random_generator_generate_double :: proc() -> c.double --- // https://doc.qt.io/qt-6.8/qrandomgenerator.html#generateDouble

	/* QEventLoop */

	@(require_results) event_loop_create :: proc(parent: rawptr) -> Event_Loop --- // https://doc.qt.io/qt-6.8/qeventloop.html#QEventLoop
	event_loop_destroy :: proc(loop: Event_Loop) --- // https://doc.qt.io/qt-6.8/qeventloop.html#dtor.QEventLoop
	@(require_results) event_loop_exec :: proc(loop: Event_Loop, flags: Event_Loop_Flag) -> c.int --- // https://doc.qt.io/qt-6.8/qeventloop.html#exec
	event_loop_exit :: proc(loop: Event_Loop, return_code: c.int) --- // https://doc.qt.io/qt-6.8/qeventloop.html#exit
	event_loop_quit :: proc(loop: Event_Loop) --- // https://doc.qt.io/qt-6.8/qeventloop.html#quit
	@(require_results) event_loop_is_running :: proc(loop: Event_Loop) -> c.int --- // https://doc.qt.io/qt-6.8/qeventloop.html#isRunning
	event_loop_process_events :: proc(loop: Event_Loop, flags: Event_Loop_Flag) --- // https://doc.qt.io/qt-6.8/qeventloop.html#processEvents
	event_loop_wake_up :: proc(loop: Event_Loop) --- // https://doc.qt.io/qt-6.8/qeventloop.html#wakeUp

	/* QSysInfo */

	@(require_results) sys_info_get_product_type :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#productType
	@(require_results) sys_info_get_product_version :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#productVersion
	@(require_results) sys_info_get_pretty_product_name :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#prettyProductName
	@(require_results) sys_info_get_kernel_type :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#kernelType
	@(require_results) sys_info_get_kernel_version :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#kernelVersion
	@(require_results) sys_info_get_cpu_architecture :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html
	@(require_results) sys_info_get_build_abi :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#buildAbi
	@(require_results) sys_info_get_build_cpu_architecture :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#buildCpuArchitecture
	@(require_results) sys_info_get_machine_host_name :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#machineHostName
	@(require_results) sys_info_get_machine_unique_id :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#machineUniqueId
	@(require_results) sys_info_get_boot_unique_id :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qsysinfo.html#bootUniqueId

	/* QLibrary */

	@(require_results) library_create :: proc(file_path: cstring, parent: rawptr) -> Library --- // https://doc.qt.io/qt-6.8/qlibrary.html#QLibrary
	library_destroy :: proc(library: Library) --- // https://doc.qt.io/qt-6.8/qlibrary.html#dtor.QLibrary
	@(require_results) library_load :: proc(library: Library) -> c.int --- // https://doc.qt.io/qt-6.8/qlibrary.html#load
	@(require_results) library_unload :: proc(library: Library) -> c.int --- // https://doc.qt.io/qt-6.8/qlibrary.html#unload
	@(require_results) library_is_loaded :: proc(library: Library) -> c.int --- // https://doc.qt.io/qt-6.8/qlibrary.html#isLoaded
	@(require_results) library_resolve :: proc(library: Library, symbol: cstring) -> rawptr --- // https://doc.qt.io/qt-6.8/qlibrary.html#resolve
	@(require_results) library_get_error_string :: proc(library: Library) -> cstring --- // https://doc.qt.io/qt-6.8/qlibrary.html#errorString
	library_set_file_name :: proc(library: Library, file_path: cstring) --- // https://doc.qt.io/qt-6.8/qlibrary.html#fileName-prop
	@(require_results) library_get_file_name :: proc(library: Library) -> cstring --- // https://doc.qt.io/qt-6.8/qlibrary.html#fileName-prop
	library_set_load_hints :: proc(library: Library, hints: Library_Load_Hint) --- // https://doc.qt.io/qt-6.8/qlibrary.html#loadHints-prop
	@(require_results) library_get_load_hints :: proc(library: Library) -> c.int --- // https://doc.qt.io/qt-6.8/qlibrary.html#loadHints-prop
	@(require_results) library_is_library :: proc(file_path: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qlibrary.html#isLibrary

	/* QSharedMemory */

	@(require_results) shared_memory_create :: proc(key: cstring, parent: rawptr) -> Shared_Memory --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#QSharedMemory
	shared_memory_destroy :: proc(shm: Shared_Memory) --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#dtor.QSharedMemory
	@(require_results) shared_memory_create_segment :: proc(shm: Shared_Memory, size: c.int, mode: Shared_Memory_Access_Mode) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#QSharedMemory
	@(require_results) shared_memory_attach :: proc(shm: Shared_Memory, mode: Shared_Memory_Access_Mode) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#attach
	@(require_results) shared_memory_detach :: proc(shm: Shared_Memory) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#detach
	@(require_results) shared_memory_is_attached :: proc(shm: Shared_Memory) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#isAttached
	@(require_results) shared_memory_get_data :: proc(shm: Shared_Memory) -> rawptr --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#data
	@(require_results) shared_memory_get_size :: proc(shm: Shared_Memory) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#size
	@(require_results) shared_memory_lock :: proc(shm: Shared_Memory) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#lock
	@(require_results) shared_memory_unlock :: proc(shm: Shared_Memory) -> c.int --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#unlock
	@(require_results) shared_memory_get_error_string :: proc(shm: Shared_Memory) -> cstring --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#errorString
	@(require_results) shared_memory_get_error :: proc(shm: Shared_Memory) -> Shared_Memory_Error --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#error
	shared_memory_set_key :: proc(shm: Shared_Memory, key: cstring) --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#setKey
	shared_memory_set_native_key :: proc(shm: Shared_Memory, key: cstring) --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#setNativeKey
	@(require_results) shared_memory_get_native_key :: proc(shm: Shared_Memory) -> cstring --- // https://doc.qt.io/qt-6.8/qsharedmemory.html#nativeKey

	/* QSystemSemaphore */

	@(require_results) system_semaphore_create :: proc(key: cstring, initial_value: c.int, mode: System_Semaphore_Access_Mode) -> System_Semaphore --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#QSystemSemaphore
	system_semaphore_destroy :: proc(sem: System_Semaphore) --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#dtor.QSystemSemaphore
	@(require_results) system_semaphore_acquire :: proc(sem: System_Semaphore) -> c.int --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#acquire
	@(require_results) system_semaphore_release :: proc(sem: System_Semaphore, count: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#release
	@(require_results) system_semaphore_get_error_string :: proc(sem: System_Semaphore) -> cstring --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#errorString
	@(require_results) system_semaphore_get_error :: proc(sem: System_Semaphore) -> System_Semaphore_Error --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#error
	system_semaphore_set_key :: proc(sem: System_Semaphore, key: cstring, initial_value: c.int, mode: System_Semaphore_Access_Mode) --- // https://doc.qt.io/qt-6.8/qsystemsemaphore.html#setKey

	/* QDeadlineTimer */

	@(require_results) deadline_timer_create :: proc(msecs: c.longlong, timer_type: Timer_Type) -> Deadline_Timer --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#QDeadlineTimer
	@(require_results) deadline_timer_create_forever :: proc(timer_type: Timer_Type) -> Deadline_Timer --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#QDeadlineTimer
	deadline_timer_destroy :: proc(timer: Deadline_Timer) --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html
	@(require_results) deadline_timer_has_expired :: proc(timer: Deadline_Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#hasExpired
	@(require_results) deadline_timer_is_forever :: proc(timer: Deadline_Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#isForever
	@(require_results) deadline_timer_get_remaining_time :: proc(timer: Deadline_Timer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#remainingTime
	@(require_results) deadline_timer_get_remaining_time_nsecs :: proc(timer: Deadline_Timer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html
	@(require_results) deadline_timer_get_deadline :: proc(timer: Deadline_Timer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#deadline
	@(require_results) deadline_timer_get_deadline_nsecs :: proc(timer: Deadline_Timer) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html
	deadline_timer_set_remaining_time :: proc(timer: Deadline_Timer, msecs: c.longlong, timer_type: Timer_Type) --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#setRemainingTime
	deadline_timer_set_deadline :: proc(timer: Deadline_Timer, msecs: c.longlong, timer_type: Timer_Type) --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#setDeadline
	deadline_timer_set_timer_type :: proc(timer: Deadline_Timer, timer_type: Timer_Type) --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#setTimerType
	@(require_results) deadline_timer_get_timer_type :: proc(timer: Deadline_Timer) -> c.int --- // https://doc.qt.io/qt-6.8/qdeadlinetimer.html#timerType

	/* QCollator */

	@(require_results) collator_create :: proc(locale_name: cstring) -> Collator --- // https://doc.qt.io/qt-6.8/qcollator.html#QCollator
	collator_destroy :: proc(collator: Collator) --- // https://doc.qt.io/qt-6.8/qcollator.html#dtor.QCollator
	collator_set_locale :: proc(collator: Collator, locale_name: cstring) --- // https://doc.qt.io/qt-6.8/qcollator.html#setLocale
	@(require_results) collator_get_locale :: proc(collator: Collator) -> cstring --- // https://doc.qt.io/qt-6.8/qcollator.html#locale
	collator_set_case_sensitivity :: proc(collator: Collator, cs: c.int) --- // https://doc.qt.io/qt-6.8/qcollator.html#setCaseSensitivity
	@(require_results) collator_get_case_sensitivity :: proc(collator: Collator) -> c.int --- // https://doc.qt.io/qt-6.8/qcollator.html#caseSensitivity
	collator_set_numeric_mode :: proc(collator: Collator, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qcollator.html#setNumericMode
	@(require_results) collator_is_numeric_mode :: proc(collator: Collator) -> c.int --- // https://doc.qt.io/qt-6.8/qcollator.html
	collator_set_ignore_punctuation :: proc(collator: Collator, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qcollator.html#setIgnorePunctuation
	@(require_results) collator_does_ignore_punctuation :: proc(collator: Collator) -> c.int --- // https://doc.qt.io/qt-6.8/qcollator.html
	@(require_results) collator_compare :: proc(collator: Collator, s1: cstring, s2: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qcollator.html#compare

	/* QPdfWriter */

	@(require_results) pdf_writer_create :: proc(filename: cstring) -> Pdf_Writer --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#QPdfWriter
	pdf_writer_destroy :: proc(writer: Pdf_Writer) --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#dtor.QPdfWriter
	pdf_writer_set_title :: proc(writer: Pdf_Writer, title: cstring) --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#setTitle
	@(require_results) pdf_writer_get_title :: proc(writer: Pdf_Writer) -> cstring --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#title
	pdf_writer_set_creator :: proc(writer: Pdf_Writer, creator: cstring) --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#setCreator
	@(require_results) pdf_writer_get_creator :: proc(writer: Pdf_Writer) -> cstring --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#creator
	@(require_results) pdf_writer_new_page :: proc(writer: Pdf_Writer) -> c.int --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#newPage
	pdf_writer_set_resolution :: proc(writer: Pdf_Writer, dpi: c.int) --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#setResolution
	@(require_results) pdf_writer_get_resolution :: proc(writer: Pdf_Writer) -> c.int --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#resolution
	pdf_writer_set_page_size :: proc(writer: Pdf_Writer, page_size_id: c.int) --- // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#setPageSize
	pdf_writer_set_page_orientation :: proc(writer: Pdf_Writer, orientation: c.int) --- // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#setPageOrientation
	pdf_writer_set_page_margins :: proc(writer: Pdf_Writer, left: c.double, top: c.double, right: c.double, bottom: c.double, unit: c.int) --- // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#setPageMargins
	pdf_writer_set_pdf_version :: proc(writer: Pdf_Writer, version: Pdf_Version) --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#setPdfVersion
	@(require_results) pdf_writer_get_pdf_version :: proc(writer: Pdf_Writer) -> c.int --- // https://doc.qt.io/qt-6.8/qpdfwriter.html#pdfVersion

	/* QTextStream */

	@(require_results) text_stream_create_file :: proc(filename: cstring, mode: c.int) -> Text_Stream --- // https://doc.qt.io/qt-6.8/qtextstream.html#QTextStream
	@(require_results) text_stream_create_string :: proc() -> Text_Stream --- // https://doc.qt.io/qt-6.8/qtextstream.html#QTextStream
	text_stream_destroy :: proc(stream: Text_Stream) --- // https://doc.qt.io/qt-6.8/qtextstream.html#dtor.QTextStream
	text_stream_write_string :: proc(stream: Text_Stream, text: cstring) --- // https://doc.qt.io/qt-6.8/qtextstream.html
	text_stream_write_int :: proc(stream: Text_Stream, value: c.int) --- // https://doc.qt.io/qt-6.8/qtextstream.html
	text_stream_write_double :: proc(stream: Text_Stream, value: c.double) --- // https://doc.qt.io/qt-6.8/qtextstream.html
	@(require_results) text_stream_read_line :: proc(stream: Text_Stream) -> cstring --- // https://doc.qt.io/qt-6.8/qtextstream.html#readLine
	@(require_results) text_stream_read_all :: proc(stream: Text_Stream) -> cstring --- // https://doc.qt.io/qt-6.8/qtextstream.html#readAll
	@(require_results) text_stream_is_at_end :: proc(stream: Text_Stream) -> c.int --- // https://doc.qt.io/qt-6.8/qtextstream.html
	text_stream_flush :: proc(stream: Text_Stream) --- // https://doc.qt.io/qt-6.8/qtextstream.html#flush
	text_stream_seek :: proc(stream: Text_Stream, pos: c.longlong) --- // https://doc.qt.io/qt-6.8/qtextstream.html#seek
	@(require_results) text_stream_get_pos :: proc(stream: Text_Stream) -> c.longlong --- // https://doc.qt.io/qt-6.8/qtextstream.html#pos
	@(require_results) text_stream_get_status :: proc(stream: Text_Stream) -> Text_Stream_Status --- // https://doc.qt.io/qt-6.8/qtextstream.html#status
	text_stream_reset_status :: proc(stream: Text_Stream) --- // https://doc.qt.io/qt-6.8/qtextstream.html#resetStatus
	@(require_results) text_stream_get_string :: proc(stream: Text_Stream) -> cstring --- // https://doc.qt.io/qt-6.8/qtextstream.html#string

	/* QDataStream */

	@(require_results) data_stream_create_file :: proc(filename: cstring, mode: c.int) -> Data_Stream --- // https://doc.qt.io/qt-6.8/qdatastream.html#QDataStream
	@(require_results) data_stream_create_buffer :: proc() -> Data_Stream --- // https://doc.qt.io/qt-6.8/qdatastream.html#QDataStream
	data_stream_destroy :: proc(stream: Data_Stream) --- // https://doc.qt.io/qt-6.8/qdatastream.html#dtor.QDataStream
	data_stream_write_int8 :: proc(stream: Data_Stream, value: c.int) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	data_stream_write_int16 :: proc(stream: Data_Stream, value: c.int) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	data_stream_write_int32 :: proc(stream: Data_Stream, value: c.int) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	data_stream_write_int64 :: proc(stream: Data_Stream, value: c.longlong) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	data_stream_write_float :: proc(stream: Data_Stream, value: c.float) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	data_stream_write_double :: proc(stream: Data_Stream, value: c.double) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	data_stream_write_string :: proc(stream: Data_Stream, text: cstring) --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_int8 :: proc(stream: Data_Stream) -> c.int --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_int16 :: proc(stream: Data_Stream) -> c.int --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_int32 :: proc(stream: Data_Stream) -> c.int --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_int64 :: proc(stream: Data_Stream) -> c.longlong --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_float :: proc(stream: Data_Stream) -> c.float --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_double :: proc(stream: Data_Stream) -> c.double --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_read_string :: proc(stream: Data_Stream) -> cstring --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_is_at_end :: proc(stream: Data_Stream) -> c.int --- // https://doc.qt.io/qt-6.8/qdatastream.html
	@(require_results) data_stream_get_status :: proc(stream: Data_Stream) -> Data_Stream_Status --- // https://doc.qt.io/qt-6.8/qdatastream.html#status
	data_stream_reset_status :: proc(stream: Data_Stream) --- // https://doc.qt.io/qt-6.8/qdatastream.html#resetStatus
	data_stream_set_byte_order :: proc(stream: Data_Stream, order: Data_Stream_Byte_Order) --- // https://doc.qt.io/qt-6.8/qdatastream.html#setByteOrder
	@(require_results) data_stream_get_byte_order :: proc(stream: Data_Stream) -> Data_Stream_Byte_Order --- // https://doc.qt.io/qt-6.8/qdatastream.html#byteOrder
	data_stream_set_version :: proc(stream: Data_Stream, version: c.int) --- // https://doc.qt.io/qt-6.8/qdatastream.html#setVersion
	@(require_results) data_stream_get_version :: proc(stream: Data_Stream) -> c.int --- // https://doc.qt.io/qt-6.8/qdatastream.html#version
	@(require_results) data_stream_get_buffer :: proc(stream: Data_Stream) -> rawptr --- // https://doc.qt.io/qt-6.8/qdatastream.html#device

	/* QTextTable */

	text_table_resize :: proc(table: Text_Table, rows: c.int, cols: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#resize
	text_table_insert_rows :: proc(table: Text_Table, pos: c.int, count: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#insertRows
	text_table_insert_columns :: proc(table: Text_Table, pos: c.int, count: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#insertColumns
	text_table_append_rows :: proc(table: Text_Table, count: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#appendRows
	text_table_append_columns :: proc(table: Text_Table, count: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#appendColumns
	text_table_remove_rows :: proc(table: Text_Table, pos: c.int, count: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#removeRows
	text_table_remove_columns :: proc(table: Text_Table, pos: c.int, count: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#removeColumns
	text_table_merge_cells :: proc(table: Text_Table, row: c.int, col: c.int, num_rows: c.int, num_cols: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#mergeCells
	text_table_split_cell :: proc(table: Text_Table, row: c.int, col: c.int, num_rows: c.int, num_cols: c.int) --- // https://doc.qt.io/qt-6.8/qtexttable.html#splitCell
	@(require_results) text_table_get_rows :: proc(table: Text_Table) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttable.html#rows
	@(require_results) text_table_get_columns :: proc(table: Text_Table) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttable.html#columns

	/* QTextTableCell */

	@(require_results) text_table_cell_get_row :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#row
	@(require_results) text_table_cell_get_column :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#column
	@(require_results) text_table_cell_get_row_span :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#rowSpan
	@(require_results) text_table_cell_get_column_span :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#columnSpan
	@(require_results) text_table_cell_is_valid :: proc(table: Text_Table, row: c.int, col: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#isValid
	@(require_results) text_table_cell_get_first_cursor_position :: proc(table: Text_Table, row: c.int, col: c.int) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#firstCursorPosition
	@(require_results) text_table_cell_get_last_cursor_position :: proc(table: Text_Table, row: c.int, col: c.int) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtexttablecell.html#lastCursorPosition

	/* QTextList */

	@(require_results) text_list_get_count :: proc(list: Text_List) -> c.int --- // https://doc.qt.io/qt-6.8/qtextlist.html#count
	@(require_results) text_list_get_item :: proc(list: Text_List, index: c.int) -> Text_Block --- // https://doc.qt.io/qt-6.8/qtextlist.html#item
	@(require_results) text_list_get_item_number :: proc(list: Text_List, block: Text_Block) -> c.int --- // https://doc.qt.io/qt-6.8/qtextlist.html#itemNumber
	@(require_results) text_list_get_item_text :: proc(list: Text_List, block: Text_Block) -> cstring --- // https://doc.qt.io/qt-6.8/qtextlist.html#itemText
	text_list_remove_item :: proc(list: Text_List, index: c.int) --- // https://doc.qt.io/qt-6.8/qtextlist.html#removeItem
	text_list_add :: proc(list: Text_List, block: Text_Block) --- // https://doc.qt.io/qt-6.8/qtextlist.html#add
	text_list_set_style :: proc(list: Text_List, style: Text_List_Style) --- // https://doc.qt.io/qt-6.8/qtextlistformat.html#setStyle
	@(require_results) text_list_get_style :: proc(list: Text_List) -> Text_List_Style --- // https://doc.qt.io/qt-6.8/qtextlist.html#format

	/* QTextFrame */

	@(require_results) text_frame_get_first_cursor_position :: proc(frame: Text_Frame) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextframe.html#firstCursorPosition
	@(require_results) text_frame_get_last_cursor_position :: proc(frame: Text_Frame) -> Text_Cursor --- // https://doc.qt.io/qt-6.8/qtextframe.html#lastCursorPosition
	@(require_results) text_frame_get_first_position :: proc(frame: Text_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qtextframe.html#firstPosition
	@(require_results) text_frame_get_last_position :: proc(frame: Text_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qtextframe.html#lastPosition
	@(require_results) text_frame_get_parent_frame :: proc(frame: Text_Frame) -> Text_Frame --- // https://doc.qt.io/qt-6.8/qtextframe.html#parentFrame
	text_frame_get_child_frames :: proc(frame: Text_Frame, out_items: ^rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qtextframe.html#childFrames

	/* QAbstractItemModel helper (CCustomItemModel) */

	@(require_results) custom_item_model_create :: proc(row_count_cb: Model_Row_Count_Callback, column_count_cb: Model_Column_Count_Callback, data_cb: Model_Data_Callback, flags_cb: Model_Flags_Callback, header_data_cb: Model_Header_Data_Callback, user_data: rawptr) -> Custom_Item_Model ---
	custom_item_model_destroy :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_reset :: proc(model: Custom_Item_Model) ---
	custom_item_model_end_reset :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_insert_rows :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_insert_rows :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_remove_rows :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_remove_rows :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_insert_columns :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_insert_columns :: proc(model: Custom_Item_Model) ---
	custom_item_model_begin_remove_columns :: proc(model: Custom_Item_Model, parent: rawptr, first: c.int, last: c.int) ---
	custom_item_model_end_remove_columns :: proc(model: Custom_Item_Model) ---
	custom_item_model_emit_data_changed :: proc(model: Custom_Item_Model, top_left: rawptr, bottom_right: rawptr) ---
	@(require_results) custom_item_model_create_index :: proc(model: Custom_Item_Model, row: c.int, column: c.int, parent: rawptr) -> rawptr ---

	/* QGesture (base) */

	@(require_results) gesture_get_gesture_type :: proc(gesture: Gesture) -> Gesture_Type --- // https://doc.qt.io/qt-6.8/qgesture.html#gestureType-prop
	@(require_results) gesture_get_state :: proc(gesture: Gesture) -> Gesture_State --- // https://doc.qt.io/qt-6.8/qgesture.html#state-prop
	gesture_get_hot_spot :: proc(gesture: Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qgesture.html#hotSpot-prop
	gesture_set_hot_spot :: proc(gesture: Gesture, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qgesture.html#hotSpot-prop
	@(require_results) gesture_has_hot_spot :: proc(gesture: Gesture) -> c.int --- // https://doc.qt.io/qt-6.8/qgesture.html#hasHotSpot-prop
	gesture_unset_hot_spot :: proc(gesture: Gesture) --- // https://doc.qt.io/qt-6.8/qgesture.html#hasHotSpot-prop
	gesture_set_gesture_cancel_policy :: proc(gesture: Gesture, policy: Gesture_Cancel_Policy) --- // https://doc.qt.io/qt-6.8/qgesture.html#gestureCancelPolicy-prop
	@(require_results) gesture_get_gesture_cancel_policy :: proc(gesture: Gesture) -> Gesture_Cancel_Policy --- // https://doc.qt.io/qt-6.8/qgesture.html#gestureCancelPolicy-prop

	/* QPanGesture */

	pan_gesture_get_last_offset :: proc(gesture: Pan_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpangesture.html#lastOffset-prop
	pan_gesture_get_offset :: proc(gesture: Pan_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpangesture.html#offset-prop
	pan_gesture_get_delta :: proc(gesture: Pan_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpangesture.html#delta-prop
	@(require_results) pan_gesture_get_acceleration :: proc(gesture: Pan_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpangesture.html#acceleration-prop

	/* QPinchGesture */

	@(require_results) pinch_gesture_get_change_flags :: proc(gesture: Pinch_Gesture) -> c.int --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#changeFlags-prop
	@(require_results) pinch_gesture_get_total_change_flags :: proc(gesture: Pinch_Gesture) -> c.int --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#totalChangeFlags-prop
	@(require_results) pinch_gesture_get_total_scale_factor :: proc(gesture: Pinch_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#totalScaleFactor-prop
	@(require_results) pinch_gesture_get_last_scale_factor :: proc(gesture: Pinch_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#lastScaleFactor-prop
	@(require_results) pinch_gesture_get_scale_factor :: proc(gesture: Pinch_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#scaleFactor-prop
	@(require_results) pinch_gesture_get_total_rotation_angle :: proc(gesture: Pinch_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#totalRotationAngle-prop
	@(require_results) pinch_gesture_get_last_rotation_angle :: proc(gesture: Pinch_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#lastRotationAngle-prop
	@(require_results) pinch_gesture_get_rotation_angle :: proc(gesture: Pinch_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qpinchgesture.html#rotationAngle-prop
	pinch_gesture_get_start_centre_point :: proc(gesture: Pinch_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpinchgesture.html
	pinch_gesture_get_last_centre_point :: proc(gesture: Pinch_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpinchgesture.html
	pinch_gesture_get_centre_point :: proc(gesture: Pinch_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qpinchgesture.html

	/* QSwipeGesture */

	@(require_results) swipe_gesture_get_horizontal_direction :: proc(gesture: Swipe_Gesture) -> Swipe_Direction --- // https://doc.qt.io/qt-6.8/qswipegesture.html#horizontalDirection-prop
	@(require_results) swipe_gesture_get_vertical_direction :: proc(gesture: Swipe_Gesture) -> Swipe_Direction --- // https://doc.qt.io/qt-6.8/qswipegesture.html#verticalDirection-prop
	@(require_results) swipe_gesture_get_swipe_angle :: proc(gesture: Swipe_Gesture) -> c.double --- // https://doc.qt.io/qt-6.8/qswipegesture.html#swipeAngle-prop

	/* QTapGesture */

	tap_gesture_get_position :: proc(gesture: Tap_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qtapgesture.html#position-prop
	tap_gesture_set_position :: proc(gesture: Tap_Gesture, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qtapgesture.html#position-prop

	/* QTapAndHoldGesture */

	tap_and_hold_gesture_get_position :: proc(gesture: Tap_And_Hold_Gesture, x: ^c.double, y: ^c.double) --- // https://doc.qt.io/qt-6.8/qtapandholdgesture.html#position-prop
	tap_and_hold_gesture_set_position :: proc(gesture: Tap_And_Hold_Gesture, x: c.double, y: c.double) --- // https://doc.qt.io/qt-6.8/qtapandholdgesture.html#position-prop
	tap_and_hold_gesture_set_timeout :: proc(msecs: c.int) --- // https://doc.qt.io/qt-6.8/qtapandholdgesture.html#setTimeout
	@(require_results) tap_and_hold_gesture_get_timeout :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qtapandholdgesture.html#timeout

	/* QGestureEvent */

	@(require_results) gesture_event_get_gesture :: proc(event: Gesture_Event, gesture_type: Gesture_Type) -> Gesture --- // https://doc.qt.io/qt-6.8/qgestureevent.html#gesture
	@(require_results) gesture_event_is_accepted :: proc(event: Gesture_Event, gesture_type: Gesture_Type) -> c.int --- // https://doc.qt.io/qt-6.8/qgestureevent.html#isAccepted
	gesture_event_set_accepted :: proc(event: Gesture_Event, gesture_type: Gesture_Type, is_accepted: c.int) --- // https://doc.qt.io/qt-6.8/qgestureevent.html#setAccepted

	/* Widget gesture support */

	@(require_results) widget_grab_gesture :: proc(widget: Widget, gesture_type: Gesture_Type, flags: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qwidget.html#grabGesture
	widget_ungrab_gesture :: proc(widget: Widget, gesture_type: Gesture_Type) --- // https://doc.qt.io/qt-6.8/qwidget.html#ungrabGesture

	/* QPageRanges */

	@(require_results) page_ranges_create :: proc() -> Page_Ranges --- // https://doc.qt.io/qt-6.8/qpageranges.html#QPageRanges
	page_ranges_destroy :: proc(ranges: Page_Ranges) --- // https://doc.qt.io/qt-6.8/qpageranges.html#dtor.QPageRanges
	page_ranges_add_page :: proc(ranges: Page_Ranges, page: c.int) --- // https://doc.qt.io/qt-6.8/qpageranges.html#addPage
	page_ranges_add_range :: proc(ranges: Page_Ranges, from: c.int, to: c.int) --- // https://doc.qt.io/qt-6.8/qpageranges.html#addRange
	@(require_results) page_ranges_contains :: proc(ranges: Page_Ranges, page: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qpageranges.html#contains
	@(require_results) page_ranges_is_empty :: proc(ranges: Page_Ranges) -> c.int --- // https://doc.qt.io/qt-6.8/qpageranges.html#isEmpty
	@(require_results) page_ranges_get_first_page :: proc(ranges: Page_Ranges) -> c.int --- // https://doc.qt.io/qt-6.8/qpageranges.html#firstPage
	@(require_results) page_ranges_get_last_page :: proc(ranges: Page_Ranges) -> c.int --- // https://doc.qt.io/qt-6.8/qpageranges.html#lastPage
	page_ranges_clear :: proc(ranges: Page_Ranges) --- // https://doc.qt.io/qt-6.8/qpageranges.html#clear
	@(require_results) page_ranges_to_string :: proc(ranges: Page_Ranges) -> cstring --- // https://doc.qt.io/qt-6.8/qpageranges.html#toString
	@(require_results) page_ranges_from_string :: proc(ranges_string: cstring) -> Page_Ranges --- // https://doc.qt.io/qt-6.8/qpageranges.html#fromString

	/* QFileSelector */

	@(require_results) file_selector_create :: proc(parent: rawptr) -> File_Selector --- // https://doc.qt.io/qt-6.8/qfileselector.html#QFileSelector
	file_selector_destroy :: proc(selector: File_Selector) --- // https://doc.qt.io/qt-6.8/qfileselector.html#dtor.QFileSelector
	@(require_results) file_selector_select :: proc(selector: File_Selector, file_path: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qfileselector.html#select
	@(require_results) file_selector_select_url :: proc(selector: File_Selector, url: Url) -> Url --- // https://doc.qt.io/qt-6.8/qfileselector.html#select
	file_selector_set_extra_selectors :: proc(selector: File_Selector, selectors: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qfileselector.html#setExtraSelectors

	/* QPluginLoader */

	@(require_results) plugin_loader_create :: proc(file_name: cstring, parent: rawptr) -> Plugin_Loader --- // https://doc.qt.io/qt-6.8/qpluginloader.html#QPluginLoader
	plugin_loader_destroy :: proc(loader: Plugin_Loader) --- // https://doc.qt.io/qt-6.8/qpluginloader.html#dtor.QPluginLoader
	@(require_results) plugin_loader_load :: proc(loader: Plugin_Loader) -> c.int --- // https://doc.qt.io/qt-6.8/qpluginloader.html#load
	@(require_results) plugin_loader_unload :: proc(loader: Plugin_Loader) -> c.int --- // https://doc.qt.io/qt-6.8/qpluginloader.html#unload
	@(require_results) plugin_loader_is_loaded :: proc(loader: Plugin_Loader) -> c.int --- // https://doc.qt.io/qt-6.8/qpluginloader.html#isLoaded
	@(require_results) plugin_loader_get_error_string :: proc(loader: Plugin_Loader) -> cstring --- // https://doc.qt.io/qt-6.8/qpluginloader.html#errorString
	@(require_results) plugin_loader_get_file_name :: proc(loader: Plugin_Loader) -> cstring --- // https://doc.qt.io/qt-6.8/qpluginloader.html#fileName-prop
	plugin_loader_set_file_name :: proc(loader: Plugin_Loader, file_name: cstring) --- // https://doc.qt.io/qt-6.8/qpluginloader.html#fileName-prop
	plugin_loader_set_load_hints :: proc(loader: Plugin_Loader, hints: c.int) --- // https://doc.qt.io/qt-6.8/qpluginloader.html#loadHints-prop

	/* QLoggingCategory */

	@(require_results) logging_category_create :: proc(category: cstring) -> Logging_Category --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#QLoggingCategory
	logging_category_destroy :: proc(category: Logging_Category) --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#dtor.QLoggingCategory
	@(require_results) logging_category_is_debug_enabled :: proc(category: Logging_Category) -> c.int --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#isDebugEnabled
	@(require_results) logging_category_is_info_enabled :: proc(category: Logging_Category) -> c.int --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#isInfoEnabled
	@(require_results) logging_category_is_warning_enabled :: proc(category: Logging_Category) -> c.int --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#isWarningEnabled
	@(require_results) logging_category_is_critical_enabled :: proc(category: Logging_Category) -> c.int --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#isCriticalEnabled
	@(require_results) logging_category_get_category_name :: proc(category: Logging_Category) -> cstring --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#categoryName
	logging_category_set_filter_rules :: proc(rules: cstring) --- // https://doc.qt.io/qt-6.8/qloggingcategory.html#setFilterRules

	/* QCborValue */

	@(require_results) cbor_value_create_integer :: proc(value: c.longlong) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_double :: proc(value: c.double) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_bool :: proc(value: c.int) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_string :: proc(text: cstring) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_byte_array :: proc(data: [^]u8, size: c.int) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_null :: proc() -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_undefined :: proc() -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_from_map :: proc(map_val: Cbor_Map) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	@(require_results) cbor_value_create_from_array :: proc(array: Cbor_Array) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#QCborValue
	cbor_value_destroy :: proc(value: Cbor_Value) --- // https://doc.qt.io/qt-6.8/qcborvalue.html#dtor.QCborValue
	@(require_results) cbor_value_get_type :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#type
	@(require_results) cbor_value_is_integer :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isInteger
	@(require_results) cbor_value_is_double :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isDouble
	@(require_results) cbor_value_is_string :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isString
	@(require_results) cbor_value_is_byte_array :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isByteArray
	@(require_results) cbor_value_is_map :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isMap
	@(require_results) cbor_value_is_array :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isArray
	@(require_results) cbor_value_is_bool :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isBool
	@(require_results) cbor_value_is_null :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#isNull
	@(require_results) cbor_value_to_integer :: proc(value: Cbor_Value) -> c.longlong --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toInteger
	@(require_results) cbor_value_to_double :: proc(value: Cbor_Value) -> c.double --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toDouble
	@(require_results) cbor_value_to_string :: proc(value: Cbor_Value) -> cstring --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toString
	@(require_results) cbor_value_to_bool :: proc(value: Cbor_Value) -> c.int --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toBool
	@(require_results) cbor_value_to_map :: proc(value: Cbor_Value) -> Cbor_Map --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toMap
	@(require_results) cbor_value_to_array :: proc(value: Cbor_Value) -> Cbor_Array --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toArray
	cbor_value_to_byte_array :: proc(value: Cbor_Value, out_data: ^[^]u8, out_size: ^c.int) --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toByteArray
	cbor_value_free_byte_array :: proc(data: [^]u8) --- // https://doc.qt.io/qt-6.8/qcborvalue.html
	@(require_results) cbor_value_to_cbor :: proc(value: Cbor_Value, out_size: ^c.int) -> rawptr --- // https://doc.qt.io/qt-6.8/qcborvalue.html#toCbor
	@(require_results) cbor_value_from_cbor :: proc(data: [^]u8, size: c.int) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborvalue.html#fromCbor

	/* QCborMap */

	@(require_results) cbor_map_create :: proc() -> Cbor_Map --- // https://doc.qt.io/qt-6.8/qcbormap.html#QCborMap
	cbor_map_destroy :: proc(map_val: Cbor_Map) --- // https://doc.qt.io/qt-6.8/qcbormap.html#dtor.QCborMap
	@(require_results) cbor_map_get_size :: proc(map_val: Cbor_Map) -> c.int --- // https://doc.qt.io/qt-6.8/qcbormap.html#size
	@(require_results) cbor_map_is_empty :: proc(map_val: Cbor_Map) -> c.int --- // https://doc.qt.io/qt-6.8/qcbormap.html#isEmpty
	cbor_map_insert_integer :: proc(map_val: Cbor_Map, key: cstring, value: c.longlong) --- // https://doc.qt.io/qt-6.8/qcbormap.html
	cbor_map_insert_double :: proc(map_val: Cbor_Map, key: cstring, value: c.double) --- // https://doc.qt.io/qt-6.8/qcbormap.html#insert
	cbor_map_insert_string :: proc(map_val: Cbor_Map, key: cstring, value: cstring) --- // https://doc.qt.io/qt-6.8/qcbormap.html#insert
	cbor_map_insert_bool :: proc(map_val: Cbor_Map, key: cstring, value: c.int) --- // https://doc.qt.io/qt-6.8/qcbormap.html#insert
	cbor_map_insert_value :: proc(map_val: Cbor_Map, key: cstring, value: Cbor_Value) --- // https://doc.qt.io/qt-6.8/qcbormap.html#insert
	@(require_results) cbor_map_get_value :: proc(map_val: Cbor_Map, key: cstring) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcbormap.html#value
	@(require_results) cbor_map_contains :: proc(map_val: Cbor_Map, key: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qcbormap.html#contains
	cbor_map_remove :: proc(map_val: Cbor_Map, key: cstring) --- // https://doc.qt.io/qt-6.8/qcbormap.html#remove

	/* QCborArray */

	@(require_results) cbor_array_create :: proc() -> Cbor_Array --- // https://doc.qt.io/qt-6.8/qcborarray.html#QCborArray
	cbor_array_destroy :: proc(array: Cbor_Array) --- // https://doc.qt.io/qt-6.8/qcborarray.html#dtor.QCborArray
	@(require_results) cbor_array_get_size :: proc(array: Cbor_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qcborarray.html#size
	@(require_results) cbor_array_is_empty :: proc(array: Cbor_Array) -> c.int --- // https://doc.qt.io/qt-6.8/qcborarray.html#isEmpty
	cbor_array_append_value :: proc(array: Cbor_Array, value: Cbor_Value) --- // https://doc.qt.io/qt-6.8/qcborarray.html#append
	cbor_array_append_integer :: proc(array: Cbor_Array, value: c.longlong) --- // https://doc.qt.io/qt-6.8/qcborarray.html
	cbor_array_append_double :: proc(array: Cbor_Array, value: c.double) --- // https://doc.qt.io/qt-6.8/qcborarray.html#append
	cbor_array_append_string :: proc(array: Cbor_Array, text: cstring) --- // https://doc.qt.io/qt-6.8/qcborarray.html#append
	cbor_array_append_bool :: proc(array: Cbor_Array, value: c.int) --- // https://doc.qt.io/qt-6.8/qcborarray.html#append
	@(require_results) cbor_array_get_value_at :: proc(array: Cbor_Array, index: c.int) -> Cbor_Value --- // https://doc.qt.io/qt-6.8/qcborarray.html

	/* QPlainTextDocumentLayout */

	@(require_results) plain_text_document_layout_create :: proc(document: Text_Document) -> Plain_Text_Document_Layout --- // https://doc.qt.io/qt-6.8/qplaintextdocumentlayout.html#QPlainTextDocumentLayout
	plain_text_document_layout_destroy :: proc(layout: Plain_Text_Document_Layout) --- // https://doc.qt.io/qt-6.8/qplaintextdocumentlayout.html#dtor.QPlainTextDocumentLayout
	plain_text_document_layout_set_cursor_width :: proc(layout: Plain_Text_Document_Layout, width: c.int) --- // https://doc.qt.io/qt-6.8/qplaintextdocumentlayout.html#cursorWidth-prop
	@(require_results) plain_text_document_layout_get_cursor_width :: proc(layout: Plain_Text_Document_Layout) -> c.int --- // https://doc.qt.io/qt-6.8/qplaintextdocumentlayout.html#cursorWidth-prop
	plain_text_document_layout_request_update :: proc(layout: Plain_Text_Document_Layout) --- // https://doc.qt.io/qt-6.8/qplaintextdocumentlayout.html#requestUpdate

	/* QSplitterHandle */

	@(require_results) splitter_handle_get_orientation :: proc(handle: Splitter_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qsplitterhandle.html#orientation
	@(require_results) splitter_handle_get_splitter :: proc(handle: Splitter_Handle) -> Splitter --- // https://doc.qt.io/qt-6.8/qsplitterhandle.html#splitter
	@(require_results) splitter_handle_is_opaque_resize :: proc(handle: Splitter_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qsplitterhandle.html

	/* QStylePainter */

	@(require_results) style_painter_create :: proc(widget: Widget) -> Style_Painter --- // https://doc.qt.io/qt-6.8/qstylepainter.html#QStylePainter
	style_painter_destroy :: proc(painter: Style_Painter) --- // https://doc.qt.io/qt-6.8/qstylepainter.html
	@(require_results) style_painter_begin :: proc(painter: Style_Painter, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstylepainter.html#begin
	style_painter_draw_primitive :: proc(painter: Style_Painter, element: c.int, option: rawptr) --- // https://doc.qt.io/qt-6.8/qstylepainter.html#drawPrimitive
	style_painter_draw_control :: proc(painter: Style_Painter, element: c.int, option: rawptr) --- // https://doc.qt.io/qt-6.8/qstylepainter.html#drawControl
	style_painter_draw_complex_control :: proc(painter: Style_Painter, control: c.int, option: rawptr) --- // https://doc.qt.io/qt-6.8/qstylepainter.html#drawComplexControl
	style_painter_draw_item_text :: proc(painter: Style_Painter, x: c.int, y: c.int, w: c.int, h: c.int, flags: c.int, palette: rawptr, is_enabled: c.int, text: cstring, text_role: c.int) --- // https://doc.qt.io/qt-6.8/qstylepainter.html#drawItemText
	style_painter_draw_item_pixmap :: proc(painter: Style_Painter, x: c.int, y: c.int, w: c.int, h: c.int, flags: c.int, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qstylepainter.html#drawItemPixmap
	@(require_results) style_painter_get_style :: proc(painter: Style_Painter) -> Style --- // https://doc.qt.io/qt-6.8/qstylepainter.html#style

	/* QWindow */

	@(require_results) window_create :: proc(parent: Window_Handle) -> Window_Handle --- // https://doc.qt.io/qt-6.8/qwindow.html#QWindow
	window_destroy :: proc(window: Window_Handle) --- // https://doc.qt.io/qt-6.8/qwindow.html#dtor.QWindow
	window_set_title :: proc(window: Window_Handle, title: cstring) --- // https://doc.qt.io/qt-6.8/qwindow.html#title-prop
	@(require_results) window_get_title :: proc(window: Window_Handle) -> cstring --- // https://doc.qt.io/qt-6.8/qwindow.html#title-prop
	window_set_geometry :: proc(window: Window_Handle, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#setGeometry
	window_get_geometry :: proc(window: Window_Handle, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#geometry
	window_resize :: proc(window: Window_Handle, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#resize
	window_set_minimum_size :: proc(window: Window_Handle, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#setMinimumSize
	window_set_maximum_size :: proc(window: Window_Handle, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#setMaximumSize
	window_show :: proc(window: Window_Handle) --- // https://doc.qt.io/qt-6.8/qwindow.html#show
	window_hide :: proc(window: Window_Handle) --- // https://doc.qt.io/qt-6.8/qwindow.html#hide
	@(require_results) window_is_visible :: proc(window: Window_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qwindow.html#visible-prop
	window_set_visible :: proc(window: Window_Handle, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#visible-prop
	window_set_opacity :: proc(window: Window_Handle, opacity: c.double) --- // https://doc.qt.io/qt-6.8/qwindow.html#opacity-prop
	@(require_results) window_get_opacity :: proc(window: Window_Handle) -> c.double --- // https://doc.qt.io/qt-6.8/qwindow.html#opacity-prop
	window_request_activate :: proc(window: Window_Handle) --- // https://doc.qt.io/qt-6.8/qwindow.html#requestActivate
	@(require_results) window_is_active :: proc(window: Window_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qwindow.html#isActive
	window_set_modality :: proc(window: Window_Handle, modality: c.int) --- // https://doc.qt.io/qt-6.8/qwindow.html#modality-prop
	@(require_results) window_get_modality :: proc(window: Window_Handle) -> c.int --- // https://doc.qt.io/qt-6.8/qwindow.html#modality-prop
	@(require_results) window_get_device_pixel_ratio :: proc(window: Window_Handle) -> c.double --- // https://doc.qt.io/qt-6.8/qwindow.html#devicePixelRatio

	/* QBackingStore */

	@(require_results) backing_store_create :: proc(window: Window_Handle) -> Backing_Store --- // https://doc.qt.io/qt-6.8/qbackingstore.html#QBackingStore
	backing_store_destroy :: proc(store: Backing_Store) --- // https://doc.qt.io/qt-6.8/qbackingstore.html#dtor.QBackingStore
	backing_store_begin_paint :: proc(store: Backing_Store, region: Region) --- // https://doc.qt.io/qt-6.8/qbackingstore.html#beginPaint
	backing_store_end_paint :: proc(store: Backing_Store) --- // https://doc.qt.io/qt-6.8/qbackingstore.html#endPaint
	backing_store_flush :: proc(store: Backing_Store, region: Region, window: Window_Handle, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qbackingstore.html#flush
	backing_store_resize :: proc(store: Backing_Store, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qbackingstore.html#resize
	backing_store_get_size :: proc(store: Backing_Store, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qbackingstore.html#size

	/* QRawFont */

	@(require_results) raw_font_create :: proc(file_name: cstring, pixel_size: c.double) -> Raw_Font --- // https://doc.qt.io/qt-6.8/qrawfont.html#QRawFont
	raw_font_destroy :: proc(font: Raw_Font) --- // https://doc.qt.io/qt-6.8/qrawfont.html#dtor.QRawFont
	@(require_results) raw_font_is_valid :: proc(font: Raw_Font) -> c.int --- // https://doc.qt.io/qt-6.8/qrawfont.html#isValid
	@(require_results) raw_font_get_family_name :: proc(font: Raw_Font) -> cstring --- // https://doc.qt.io/qt-6.8/qrawfont.html#familyName
	@(require_results) raw_font_get_style_name :: proc(font: Raw_Font) -> cstring --- // https://doc.qt.io/qt-6.8/qrawfont.html#styleName
	@(require_results) raw_font_get_pixel_size :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#pixelSize
	@(require_results) raw_font_get_weight :: proc(font: Raw_Font) -> c.int --- // https://doc.qt.io/qt-6.8/qrawfont.html#weight
	@(require_results) raw_font_get_ascent :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#ascent
	@(require_results) raw_font_get_descent :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#descent
	@(require_results) raw_font_get_leading :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#leading
	@(require_results) raw_font_get_units_per_em :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#unitsPerEm
	@(require_results) raw_font_get_line_thickness :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#lineThickness
	@(require_results) raw_font_get_underline_position :: proc(font: Raw_Font) -> c.double --- // https://doc.qt.io/qt-6.8/qrawfont.html#underlinePosition

	/* QGlyphRun */

	@(require_results) glyph_run_create :: proc() -> Glyph_Run --- // https://doc.qt.io/qt-6.8/qglyphrun.html#QGlyphRun
	glyph_run_destroy :: proc(glyph_run: Glyph_Run) --- // https://doc.qt.io/qt-6.8/qglyphrun.html#dtor.QGlyphRun
	glyph_run_set_raw_font :: proc(glyph_run: Glyph_Run, raw_font: Raw_Font) --- // https://doc.qt.io/qt-6.8/qglyphrun.html#setRawFont
	@(require_results) glyph_run_get_raw_font :: proc(glyph_run: Glyph_Run) -> Raw_Font --- // https://doc.qt.io/qt-6.8/qglyphrun.html#rawFont
	@(require_results) glyph_run_is_empty :: proc(glyph_run: Glyph_Run) -> c.int --- // https://doc.qt.io/qt-6.8/qglyphrun.html#isEmpty
	glyph_run_get_bounding_rect :: proc(glyph_run: Glyph_Run, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qglyphrun.html#boundingRect
	glyph_run_set_flag :: proc(glyph_run: Glyph_Run, flag: c.int, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qglyphrun.html#setFlag
	@(require_results) glyph_run_get_flags :: proc(glyph_run: Glyph_Run) -> c.int --- // https://doc.qt.io/qt-6.8/qglyphrun.html#flags
	glyph_run_clear :: proc(glyph_run: Glyph_Run) --- // https://doc.qt.io/qt-6.8/qglyphrun.html#clear

	/* QOffscreenSurface */

	@(require_results) offscreen_surface_create :: proc() -> Offscreen_Surface --- // https://doc.qt.io/qt-6.8/qoffscreensurface.html#QOffscreenSurface
	offscreen_surface_destroy :: proc(surface: Offscreen_Surface) --- // https://doc.qt.io/qt-6.8/qoffscreensurface.html#dtor.QOffscreenSurface
	offscreen_surface_set_screen :: proc(surface: Offscreen_Surface, screen: rawptr) --- // https://doc.qt.io/qt-6.8/qoffscreensurface.html#setScreen
	@(require_results) offscreen_surface_get_screen :: proc(surface: Offscreen_Surface) -> rawptr --- // https://doc.qt.io/qt-6.8/qoffscreensurface.html#screen
	@(require_results) offscreen_surface_is_valid :: proc(surface: Offscreen_Surface) -> c.int --- // https://doc.qt.io/qt-6.8/qoffscreensurface.html#isValid
	offscreen_surface_create_surface :: proc(surface: Offscreen_Surface) --- // https://doc.qt.io/qt-6.8/qoffscreensurface.html#QOffscreenSurface

	/* QStyleOption (base) */

	@(require_results) style_option_create :: proc(widget: Widget) -> Style_Option --- // https://doc.qt.io/qt-6.8/qstyleoption.html#QStyleOption
	@(require_results) style_option_create_empty :: proc() -> Style_Option --- // https://doc.qt.io/qt-6.8/qstyleoption.html#QStyleOption
	style_option_destroy :: proc(option: Style_Option) --- // https://doc.qt.io/qt-6.8/qstyleoption.html#dtor.QStyleOption
	style_option_init_from :: proc(option: Style_Option, widget: Widget) --- // https://doc.qt.io/qt-6.8/qstyleoption.html#initFrom
	style_option_set_rect :: proc(option: Style_Option, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoption.html#rect-var
	style_option_get_rect :: proc(option: Style_Option, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoption.html#rect-var
	style_option_set_state :: proc(option: Style_Option, state: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoption.html#state-var
	@(require_results) style_option_get_state :: proc(option: Style_Option) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoption.html#state-var
	style_option_set_direction :: proc(option: Style_Option, direction: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoption.html#direction-var
	@(require_results) style_option_get_direction :: proc(option: Style_Option) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoption.html#direction-var

	/* QStyleOptionComplex */

	@(require_results) style_option_complex_create :: proc(widget: Widget) -> Style_Option_Complex --- // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html#QStyleOptionComplex
	style_option_complex_destroy :: proc(option: Style_Option_Complex) --- // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html
	style_option_complex_set_sub_controls :: proc(option: Style_Option_Complex, sub_controls: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html#subControls-var
	@(require_results) style_option_complex_get_sub_controls :: proc(option: Style_Option_Complex) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html#subControls-var
	style_option_complex_set_active_sub_controls :: proc(option: Style_Option_Complex, active: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html#activeSubControls-var
	@(require_results) style_option_complex_get_active_sub_controls :: proc(option: Style_Option_Complex) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptioncomplex.html#activeSubControls-var

	/* QStyleOptionButton */

	@(require_results) style_option_button_create :: proc(widget: Widget) -> Style_Option_Button --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#QStyleOptionButton
	style_option_button_destroy :: proc(option: Style_Option_Button) --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html
	style_option_button_set_text :: proc(option: Style_Option_Button, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#text-var
	@(require_results) style_option_button_get_text :: proc(option: Style_Option_Button) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#text-var
	style_option_button_set_features :: proc(option: Style_Option_Button, features: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#features-var
	@(require_results) style_option_button_get_features :: proc(option: Style_Option_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#features-var
	style_option_button_set_icon :: proc(option: Style_Option_Button, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#icon-var
	style_option_button_set_icon_size :: proc(option: Style_Option_Button, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#iconSize-var
	style_option_button_get_icon_size :: proc(option: Style_Option_Button, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionbutton.html#iconSize-var

	/* QStyleOptionFrame */

	@(require_results) style_option_frame_create :: proc(widget: Widget) -> Style_Option_Frame --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#QStyleOptionFrame
	style_option_frame_destroy :: proc(option: Style_Option_Frame) --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html
	style_option_frame_set_line_width :: proc(option: Style_Option_Frame, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#lineWidth-var
	@(require_results) style_option_frame_get_line_width :: proc(option: Style_Option_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#lineWidth-var
	style_option_frame_set_mid_line_width :: proc(option: Style_Option_Frame, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#midLineWidth-var
	@(require_results) style_option_frame_get_mid_line_width :: proc(option: Style_Option_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#midLineWidth-var
	style_option_frame_set_features :: proc(option: Style_Option_Frame, features: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#features-var
	@(require_results) style_option_frame_get_features :: proc(option: Style_Option_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#features-var
	style_option_frame_set_frame_shape :: proc(option: Style_Option_Frame, shape: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#frameShape-var
	@(require_results) style_option_frame_get_frame_shape :: proc(option: Style_Option_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionframe.html#frameShape-var

	/* QStyleOptionProgressBar */

	@(require_results) style_option_progress_bar_create :: proc(widget: Widget) -> Style_Option_Progress_Bar --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#QStyleOptionProgressBar
	style_option_progress_bar_destroy :: proc(option: Style_Option_Progress_Bar) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html
	style_option_progress_bar_set_minimum :: proc(option: Style_Option_Progress_Bar, min: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#minimum-var
	@(require_results) style_option_progress_bar_get_minimum :: proc(option: Style_Option_Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#minimum-var
	style_option_progress_bar_set_maximum :: proc(option: Style_Option_Progress_Bar, max: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#maximum-var
	@(require_results) style_option_progress_bar_get_maximum :: proc(option: Style_Option_Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#maximum-var
	style_option_progress_bar_set_progress :: proc(option: Style_Option_Progress_Bar, progress: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#progress-var
	@(require_results) style_option_progress_bar_get_progress :: proc(option: Style_Option_Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#progress-var
	style_option_progress_bar_set_text :: proc(option: Style_Option_Progress_Bar, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#text-var
	@(require_results) style_option_progress_bar_get_text :: proc(option: Style_Option_Progress_Bar) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#text-var
	style_option_progress_bar_set_text_visible :: proc(option: Style_Option_Progress_Bar, is_visible: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#textVisible-var
	@(require_results) style_option_progress_bar_is_text_visible :: proc(option: Style_Option_Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#textVisible-var
	style_option_progress_bar_set_inverted_appearance :: proc(option: Style_Option_Progress_Bar, is_inverted: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#invertedAppearance-var
	@(require_results) style_option_progress_bar_is_inverted_appearance :: proc(option: Style_Option_Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#invertedAppearance-var
	style_option_progress_bar_set_bottom_to_top :: proc(option: Style_Option_Progress_Bar, is_bottom_to_top: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#bottomToTop-var
	@(require_results) style_option_progress_bar_is_bottom_to_top :: proc(option: Style_Option_Progress_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionprogressbar.html#bottomToTop-var

	/* QStyleOptionSlider */

	@(require_results) style_option_slider_create :: proc(widget: Widget) -> Style_Option_Slider --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#QStyleOptionSlider
	style_option_slider_destroy :: proc(option: Style_Option_Slider) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html
	style_option_slider_set_orientation :: proc(option: Style_Option_Slider, orientation: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#orientation-var
	@(require_results) style_option_slider_get_orientation :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#orientation-var
	style_option_slider_set_minimum :: proc(option: Style_Option_Slider, min: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#minimum-var
	@(require_results) style_option_slider_get_minimum :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#minimum-var
	style_option_slider_set_maximum :: proc(option: Style_Option_Slider, max: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#maximum-var
	@(require_results) style_option_slider_get_maximum :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#maximum-var
	style_option_slider_set_tick_position :: proc(option: Style_Option_Slider, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#tickPosition-var
	@(require_results) style_option_slider_get_tick_position :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#tickPosition-var
	style_option_slider_set_tick_interval :: proc(option: Style_Option_Slider, interval: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#tickInterval-var
	@(require_results) style_option_slider_get_tick_interval :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#tickInterval-var
	style_option_slider_set_single_step :: proc(option: Style_Option_Slider, step: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#singleStep-var
	@(require_results) style_option_slider_get_single_step :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#singleStep-var
	style_option_slider_set_page_step :: proc(option: Style_Option_Slider, step: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#pageStep-var
	@(require_results) style_option_slider_get_page_step :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#pageStep-var
	style_option_slider_set_slider_position :: proc(option: Style_Option_Slider, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#sliderPosition-var
	@(require_results) style_option_slider_get_slider_position :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#sliderPosition-var
	style_option_slider_set_slider_value :: proc(option: Style_Option_Slider, value: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#sliderValue-var
	@(require_results) style_option_slider_get_slider_value :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#sliderValue-var
	style_option_slider_set_upsidedown :: proc(option: Style_Option_Slider, is_upsidedown: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#upsideDown-var
	@(require_results) style_option_slider_is_upsidedown :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html
	style_option_slider_set_dial_wrapping :: proc(option: Style_Option_Slider, is_wrapping: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#dialWrapping-var
	@(require_results) style_option_slider_is_dial_wrapping :: proc(option: Style_Option_Slider) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionslider.html#dialWrapping-var

	/* QStyleOptionComboBox */

	@(require_results) style_option_combo_box_create :: proc(widget: Widget) -> Style_Option_Combo_Box --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#QStyleOptionComboBox
	style_option_combo_box_destroy :: proc(option: Style_Option_Combo_Box) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html
	style_option_combo_box_set_editable :: proc(option: Style_Option_Combo_Box, is_editable: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#editable-var
	@(require_results) style_option_combo_box_is_editable :: proc(option: Style_Option_Combo_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#editable-var
	style_option_combo_box_set_current_text :: proc(option: Style_Option_Combo_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#currentText-var
	@(require_results) style_option_combo_box_get_current_text :: proc(option: Style_Option_Combo_Box) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#currentText-var
	style_option_combo_box_set_current_icon :: proc(option: Style_Option_Combo_Box, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#currentIcon-var
	style_option_combo_box_set_icon_size :: proc(option: Style_Option_Combo_Box, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#iconSize-var
	style_option_combo_box_get_icon_size :: proc(option: Style_Option_Combo_Box, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#iconSize-var
	style_option_combo_box_set_frame :: proc(option: Style_Option_Combo_Box, has_frame: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#frame-var
	@(require_results) style_option_combo_box_has_frame :: proc(option: Style_Option_Combo_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#frame-var
	style_option_combo_box_set_popup_rect :: proc(option: Style_Option_Combo_Box, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#popupRect-var
	style_option_combo_box_get_popup_rect :: proc(option: Style_Option_Combo_Box, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptioncombobox.html#popupRect-var

	/* QStyleOptionMenuItem */

	@(require_results) style_option_menu_item_create :: proc(widget: Widget) -> Style_Option_Menu_Item --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#QStyleOptionMenuItem
	style_option_menu_item_destroy :: proc(option: Style_Option_Menu_Item) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html
	style_option_menu_item_set_menu_item_type :: proc(option: Style_Option_Menu_Item, type: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#menuItemType-var
	@(require_results) style_option_menu_item_get_menu_item_type :: proc(option: Style_Option_Menu_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#menuItemType-var
	style_option_menu_item_set_check_type :: proc(option: Style_Option_Menu_Item, type: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#checkType-var
	@(require_results) style_option_menu_item_get_check_type :: proc(option: Style_Option_Menu_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#checkType-var
	style_option_menu_item_set_checked :: proc(option: Style_Option_Menu_Item, is_checked: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#checked-var
	@(require_results) style_option_menu_item_is_checked :: proc(option: Style_Option_Menu_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#checked-var
	style_option_menu_item_set_text :: proc(option: Style_Option_Menu_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#text-var
	@(require_results) style_option_menu_item_get_text :: proc(option: Style_Option_Menu_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#text-var
	style_option_menu_item_set_icon :: proc(option: Style_Option_Menu_Item, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#icon-var
	style_option_menu_item_set_max_icon_width :: proc(option: Style_Option_Menu_Item, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#maxIconWidth-var
	@(require_results) style_option_menu_item_get_max_icon_width :: proc(option: Style_Option_Menu_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#maxIconWidth-var
	style_option_menu_item_set_reserved_shortcut_width :: proc(option: Style_Option_Menu_Item, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#reservedShortcutWidth-var
	@(require_results) style_option_menu_item_get_reserved_shortcut_width :: proc(option: Style_Option_Menu_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#reservedShortcutWidth-var
	style_option_menu_item_set_font :: proc(option: Style_Option_Menu_Item, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qstyleoptionmenuitem.html#font-var

	/* QStyleOptionTab */

	@(require_results) style_option_tab_create :: proc(widget: Widget) -> Style_Option_Tab --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#QStyleOptionTab
	style_option_tab_destroy :: proc(option: Style_Option_Tab) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html
	style_option_tab_set_shape :: proc(option: Style_Option_Tab, shape: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#shape-var
	@(require_results) style_option_tab_get_shape :: proc(option: Style_Option_Tab) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#shape-var
	style_option_tab_set_text :: proc(option: Style_Option_Tab, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#text-var
	@(require_results) style_option_tab_get_text :: proc(option: Style_Option_Tab) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#text-var
	style_option_tab_set_icon :: proc(option: Style_Option_Tab, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#icon-var
	style_option_tab_set_row :: proc(option: Style_Option_Tab, row: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#row-var
	@(require_results) style_option_tab_get_row :: proc(option: Style_Option_Tab) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#row-var
	style_option_tab_set_position :: proc(option: Style_Option_Tab, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#position-var
	@(require_results) style_option_tab_get_position :: proc(option: Style_Option_Tab) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#position-var
	style_option_tab_set_selected_position :: proc(option: Style_Option_Tab, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#selectedPosition-var
	@(require_results) style_option_tab_get_selected_position :: proc(option: Style_Option_Tab) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#selectedPosition-var
	style_option_tab_set_corner_widgets :: proc(option: Style_Option_Tab, widgets: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#cornerWidgets-var
	@(require_results) style_option_tab_get_corner_widgets :: proc(option: Style_Option_Tab) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#cornerWidgets-var
	style_option_tab_set_icon_size :: proc(option: Style_Option_Tab, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#iconSize-var
	style_option_tab_get_icon_size :: proc(option: Style_Option_Tab, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#iconSize-var
	style_option_tab_set_document_mode :: proc(option: Style_Option_Tab, is_document_mode: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#documentMode-var
	@(require_results) style_option_tab_is_document_mode :: proc(option: Style_Option_Tab) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontab.html#documentMode-var

	/* QStyleOptionHeader */

	@(require_results) style_option_header_create :: proc(widget: Widget) -> Style_Option_Header --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#QStyleOptionHeader
	style_option_header_destroy :: proc(option: Style_Option_Header) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html
	style_option_header_set_section :: proc(option: Style_Option_Header, section: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#section-var
	@(require_results) style_option_header_get_section :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#section-var
	style_option_header_set_text :: proc(option: Style_Option_Header, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#text-var
	@(require_results) style_option_header_get_text :: proc(option: Style_Option_Header) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#text-var
	style_option_header_set_icon :: proc(option: Style_Option_Header, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#icon-var
	style_option_header_set_icon_alignment :: proc(option: Style_Option_Header, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#iconAlignment-var
	@(require_results) style_option_header_get_icon_alignment :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#iconAlignment-var
	style_option_header_set_position :: proc(option: Style_Option_Header, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#position-var
	@(require_results) style_option_header_get_position :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#position-var
	style_option_header_set_selected_position :: proc(option: Style_Option_Header, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#selectedPosition-var
	@(require_results) style_option_header_get_selected_position :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#selectedPosition-var
	style_option_header_set_sort_indicator :: proc(option: Style_Option_Header, indicator: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#sortIndicator-var
	@(require_results) style_option_header_get_sort_indicator :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#sortIndicator-var
	style_option_header_set_orientation :: proc(option: Style_Option_Header, orientation: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#orientation-var
	@(require_results) style_option_header_get_orientation :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#orientation-var
	style_option_header_set_text_alignment :: proc(option: Style_Option_Header, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#textAlignment-var
	@(require_results) style_option_header_get_text_alignment :: proc(option: Style_Option_Header) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionheader.html#textAlignment-var

	/* QStyleOptionToolButton */

	@(require_results) style_option_tool_button_create :: proc(widget: Widget) -> Style_Option_Tool_Button --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#QStyleOptionToolButton
	style_option_tool_button_destroy :: proc(option: Style_Option_Tool_Button) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html
	style_option_tool_button_set_features :: proc(option: Style_Option_Tool_Button, features: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#features-var
	@(require_results) style_option_tool_button_get_features :: proc(option: Style_Option_Tool_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#features-var
	style_option_tool_button_set_icon :: proc(option: Style_Option_Tool_Button, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#icon-var
	style_option_tool_button_set_icon_size :: proc(option: Style_Option_Tool_Button, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#iconSize-var
	style_option_tool_button_get_icon_size :: proc(option: Style_Option_Tool_Button, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#iconSize-var
	style_option_tool_button_set_text :: proc(option: Style_Option_Tool_Button, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#text-var
	@(require_results) style_option_tool_button_get_text :: proc(option: Style_Option_Tool_Button) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#text-var
	style_option_tool_button_set_arrow_type :: proc(option: Style_Option_Tool_Button, arrow: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#arrowType-var
	@(require_results) style_option_tool_button_get_arrow_type :: proc(option: Style_Option_Tool_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#arrowType-var
	style_option_tool_button_set_tool_button_style :: proc(option: Style_Option_Tool_Button, style: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#toolButtonStyle-var
	@(require_results) style_option_tool_button_get_tool_button_style :: proc(option: Style_Option_Tool_Button) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#toolButtonStyle-var
	style_option_tool_button_set_pos :: proc(option: Style_Option_Tool_Button, x: c.int, y: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#pos-var
	style_option_tool_button_get_pos :: proc(option: Style_Option_Tool_Button, x: ^c.int, y: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#pos-var
	style_option_tool_button_set_font :: proc(option: Style_Option_Tool_Button, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbutton.html#font-var

	/* QStyleOptionSpinBox */

	@(require_results) style_option_spin_box_create :: proc(widget: Widget) -> Style_Option_Spin_Box --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#QStyleOptionSpinBox
	style_option_spin_box_destroy :: proc(option: Style_Option_Spin_Box) --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html
	style_option_spin_box_set_button_symbols :: proc(option: Style_Option_Spin_Box, symbols: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#buttonSymbols-var
	@(require_results) style_option_spin_box_get_button_symbols :: proc(option: Style_Option_Spin_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#buttonSymbols-var
	style_option_spin_box_set_step_enabled :: proc(option: Style_Option_Spin_Box, steps: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#stepEnabled-var
	@(require_results) style_option_spin_box_get_step_enabled :: proc(option: Style_Option_Spin_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#stepEnabled-var
	style_option_spin_box_set_frame :: proc(option: Style_Option_Spin_Box, has_frame: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#frame-var
	@(require_results) style_option_spin_box_has_frame :: proc(option: Style_Option_Spin_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionspinbox.html#frame-var

	/* QStyleOptionViewItem */

	@(require_results) style_option_view_item_create :: proc(widget: Widget) -> Style_Option_View_Item --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#QStyleOptionViewItem
	style_option_view_item_destroy :: proc(option: Style_Option_View_Item) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html
	style_option_view_item_set_display_alignment :: proc(option: Style_Option_View_Item, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#displayAlignment-var
	@(require_results) style_option_view_item_get_display_alignment :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#displayAlignment-var
	style_option_view_item_set_decoration_alignment :: proc(option: Style_Option_View_Item, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#decorationAlignment-var
	@(require_results) style_option_view_item_get_decoration_alignment :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#decorationAlignment-var
	style_option_view_item_set_text_elide_mode :: proc(option: Style_Option_View_Item, mode: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#textElideMode-var
	@(require_results) style_option_view_item_get_text_elide_mode :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#textElideMode-var
	style_option_view_item_set_decoration_position :: proc(option: Style_Option_View_Item, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#decorationPosition-var
	@(require_results) style_option_view_item_get_decoration_position :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#decorationPosition-var
	style_option_view_item_set_decoration_size :: proc(option: Style_Option_View_Item, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#decorationSize-var
	style_option_view_item_get_decoration_size :: proc(option: Style_Option_View_Item, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#decorationSize-var
	style_option_view_item_set_font :: proc(option: Style_Option_View_Item, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#font-var
	style_option_view_item_set_show_decoration_selected :: proc(option: Style_Option_View_Item, is_selected: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#showDecorationSelected-var
	@(require_results) style_option_view_item_is_show_decoration_selected :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#showDecorationSelected-var
	style_option_view_item_set_features :: proc(option: Style_Option_View_Item, features: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#features-var
	@(require_results) style_option_view_item_get_features :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#features-var
	style_option_view_item_set_text :: proc(option: Style_Option_View_Item, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#text-var
	@(require_results) style_option_view_item_get_text :: proc(option: Style_Option_View_Item) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#text-var
	style_option_view_item_set_icon :: proc(option: Style_Option_View_Item, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#icon-var
	style_option_view_item_set_check_state :: proc(option: Style_Option_View_Item, state: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#checkState-var
	@(require_results) style_option_view_item_get_check_state :: proc(option: Style_Option_View_Item) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionviewitem.html#checkState-var

	/* QStyleOptionFocusRect */

	@(require_results) style_option_focus_rect_create :: proc(widget: Widget) -> Style_Option_Focus_Rect --- // https://doc.qt.io/qt-6.8/qstyleoptionfocusrect.html#QStyleOptionFocusRect
	style_option_focus_rect_destroy :: proc(option: Style_Option_Focus_Rect) --- // https://doc.qt.io/qt-6.8/qstyleoptionfocusrect.html
	style_option_focus_rect_set_background_colour :: proc(option: Style_Option_Focus_Rect, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionfocusrect.html#backgroundColor-var
	style_option_focus_rect_get_background_colour :: proc(option: Style_Option_Focus_Rect, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionfocusrect.html#backgroundColor-var

	/* QStyleOptionDockWidget */

	@(require_results) style_option_dock_widget_create :: proc(widget: Widget) -> Style_Option_Dock_Widget --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#QStyleOptionDockWidget
	style_option_dock_widget_destroy :: proc(option: Style_Option_Dock_Widget) --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html
	style_option_dock_widget_set_title :: proc(option: Style_Option_Dock_Widget, title: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#title-var
	@(require_results) style_option_dock_widget_get_title :: proc(option: Style_Option_Dock_Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#title-var
	style_option_dock_widget_set_closable :: proc(option: Style_Option_Dock_Widget, is_closable: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#closable-var
	@(require_results) style_option_dock_widget_is_closable :: proc(option: Style_Option_Dock_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#closable-var
	style_option_dock_widget_set_movable :: proc(option: Style_Option_Dock_Widget, is_movable: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#movable-var
	@(require_results) style_option_dock_widget_is_movable :: proc(option: Style_Option_Dock_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#movable-var
	style_option_dock_widget_set_floatable :: proc(option: Style_Option_Dock_Widget, is_floatable: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#floatable-var
	@(require_results) style_option_dock_widget_is_floatable :: proc(option: Style_Option_Dock_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiondockwidget.html#floatable-var

	/* QStyleOptionGroupBox */

	@(require_results) style_option_group_box_create :: proc(widget: Widget) -> Style_Option_Group_Box --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#QStyleOptionGroupBox
	style_option_group_box_destroy :: proc(option: Style_Option_Group_Box) --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html
	style_option_group_box_set_text :: proc(option: Style_Option_Group_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#text-var
	@(require_results) style_option_group_box_get_text :: proc(option: Style_Option_Group_Box) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#text-var
	style_option_group_box_set_text_alignment :: proc(option: Style_Option_Group_Box, alignment: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#textAlignment-var
	@(require_results) style_option_group_box_get_text_alignment :: proc(option: Style_Option_Group_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#textAlignment-var
	style_option_group_box_set_line_width :: proc(option: Style_Option_Group_Box, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#lineWidth-var
	@(require_results) style_option_group_box_get_line_width :: proc(option: Style_Option_Group_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#lineWidth-var
	style_option_group_box_set_mid_line_width :: proc(option: Style_Option_Group_Box, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#midLineWidth-var
	@(require_results) style_option_group_box_get_mid_line_width :: proc(option: Style_Option_Group_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#midLineWidth-var
	style_option_group_box_set_features :: proc(option: Style_Option_Group_Box, features: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#features-var
	@(require_results) style_option_group_box_get_features :: proc(option: Style_Option_Group_Box) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiongroupbox.html#features-var

	/* QStyleOptionTitleBar */

	@(require_results) style_option_title_bar_create :: proc(widget: Widget) -> Style_Option_Title_Bar --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#QStyleOptionTitleBar
	style_option_title_bar_destroy :: proc(option: Style_Option_Title_Bar) --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html
	style_option_title_bar_set_text :: proc(option: Style_Option_Title_Bar, text: cstring) --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#text-var
	@(require_results) style_option_title_bar_get_text :: proc(option: Style_Option_Title_Bar) -> cstring --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#text-var
	style_option_title_bar_set_icon :: proc(option: Style_Option_Title_Bar, icon: Icon) --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#icon-var
	style_option_title_bar_set_title_bar_flags :: proc(option: Style_Option_Title_Bar, flags: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#titleBarFlags-var
	@(require_results) style_option_title_bar_get_title_bar_flags :: proc(option: Style_Option_Title_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#titleBarFlags-var
	style_option_title_bar_set_title_bar_state :: proc(option: Style_Option_Title_Bar, state: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#titleBarState-var
	@(require_results) style_option_title_bar_get_title_bar_state :: proc(option: Style_Option_Title_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontitlebar.html#titleBarState-var

	/* QStyleOptionTabWidgetFrame */

	@(require_results) style_option_tab_widget_frame_create :: proc(widget: Widget) -> Style_Option_Tab_Widget_Frame --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#QStyleOptionTabWidgetFrame
	style_option_tab_widget_frame_destroy :: proc(option: Style_Option_Tab_Widget_Frame) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html
	style_option_tab_widget_frame_set_line_width :: proc(option: Style_Option_Tab_Widget_Frame, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#lineWidth-var
	@(require_results) style_option_tab_widget_frame_get_line_width :: proc(option: Style_Option_Tab_Widget_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#lineWidth-var
	style_option_tab_widget_frame_set_mid_line_width :: proc(option: Style_Option_Tab_Widget_Frame, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#midLineWidth-var
	@(require_results) style_option_tab_widget_frame_get_mid_line_width :: proc(option: Style_Option_Tab_Widget_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#midLineWidth-var
	style_option_tab_widget_frame_set_shape :: proc(option: Style_Option_Tab_Widget_Frame, shape: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#shape-var
	@(require_results) style_option_tab_widget_frame_get_shape :: proc(option: Style_Option_Tab_Widget_Frame) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#shape-var
	style_option_tab_widget_frame_set_tab_bar_size :: proc(option: Style_Option_Tab_Widget_Frame, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#tabBarSize-var
	style_option_tab_widget_frame_get_tab_bar_size :: proc(option: Style_Option_Tab_Widget_Frame, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#tabBarSize-var
	style_option_tab_widget_frame_set_selected_tab_rect :: proc(option: Style_Option_Tab_Widget_Frame, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#selectedTabRect-var
	style_option_tab_widget_frame_get_selected_tab_rect :: proc(option: Style_Option_Tab_Widget_Frame, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabwidgetframe.html#selectedTabRect-var

	/* QStyleOptionTabBarBase */

	@(require_results) style_option_tab_bar_base_create :: proc(widget: Widget) -> Style_Option_Tab_Bar_Base --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#QStyleOptionTabBarBase
	style_option_tab_bar_base_destroy :: proc(option: Style_Option_Tab_Bar_Base) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html
	style_option_tab_bar_base_set_shape :: proc(option: Style_Option_Tab_Bar_Base, shape: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#shape-var
	@(require_results) style_option_tab_bar_base_get_shape :: proc(option: Style_Option_Tab_Bar_Base) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#shape-var
	style_option_tab_bar_base_set_tab_bar_rect :: proc(option: Style_Option_Tab_Bar_Base, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#tabBarRect-var
	style_option_tab_bar_base_get_tab_bar_rect :: proc(option: Style_Option_Tab_Bar_Base, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#tabBarRect-var
	style_option_tab_bar_base_set_selected_tab_rect :: proc(option: Style_Option_Tab_Bar_Base, x: c.int, y: c.int, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#selectedTabRect-var
	style_option_tab_bar_base_get_selected_tab_rect :: proc(option: Style_Option_Tab_Bar_Base, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#selectedTabRect-var
	style_option_tab_bar_base_set_document_mode :: proc(option: Style_Option_Tab_Bar_Base, is_document_mode: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#documentMode-var
	@(require_results) style_option_tab_bar_base_is_document_mode :: proc(option: Style_Option_Tab_Bar_Base) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontabbarbase.html#documentMode-var

	/* QStyleOptionToolBar */

	@(require_results) style_option_tool_bar_create :: proc(widget: Widget) -> Style_Option_Tool_Bar --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#QStyleOptionToolBar
	style_option_tool_bar_destroy :: proc(option: Style_Option_Tool_Bar) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html
	style_option_tool_bar_set_position_of_line :: proc(option: Style_Option_Tool_Bar, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#positionOfLine-var
	@(require_results) style_option_tool_bar_get_position_of_line :: proc(option: Style_Option_Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#positionOfLine-var
	style_option_tool_bar_set_position_within_line :: proc(option: Style_Option_Tool_Bar, pos: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#positionWithinLine-var
	@(require_results) style_option_tool_bar_get_position_within_line :: proc(option: Style_Option_Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#positionWithinLine-var
	style_option_tool_bar_set_toolbar_area :: proc(option: Style_Option_Tool_Bar, area: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#toolBarArea-var
	@(require_results) style_option_tool_bar_get_toolbar_area :: proc(option: Style_Option_Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#toolBarArea-var
	style_option_tool_bar_set_line_width :: proc(option: Style_Option_Tool_Bar, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#lineWidth-var
	@(require_results) style_option_tool_bar_get_line_width :: proc(option: Style_Option_Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#lineWidth-var
	style_option_tool_bar_set_mid_line_width :: proc(option: Style_Option_Tool_Bar, width: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#midLineWidth-var
	@(require_results) style_option_tool_bar_get_mid_line_width :: proc(option: Style_Option_Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#midLineWidth-var
	style_option_tool_bar_set_features :: proc(option: Style_Option_Tool_Bar, features: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#features-var
	@(require_results) style_option_tool_bar_get_features :: proc(option: Style_Option_Tool_Bar) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptiontoolbar.html#features-var

	/* QStyleOptionRubberBand */

	@(require_results) style_option_rubber_band_create :: proc(widget: Widget) -> Style_Option_Rubber_Band --- // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html#QStyleOptionRubberBand
	style_option_rubber_band_destroy :: proc(option: Style_Option_Rubber_Band) --- // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html
	style_option_rubber_band_set_shape :: proc(option: Style_Option_Rubber_Band, shape: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html#shape-var
	@(require_results) style_option_rubber_band_get_shape :: proc(option: Style_Option_Rubber_Band) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html#shape-var
	style_option_rubber_band_set_opaque :: proc(option: Style_Option_Rubber_Band, is_opaque: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html#opaque-var
	@(require_results) style_option_rubber_band_is_opaque :: proc(option: Style_Option_Rubber_Band) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionrubberband.html#opaque-var

	/* QStyleOptionSizeGrip */

	@(require_results) style_option_size_grip_create :: proc(widget: Widget) -> Style_Option_Size_Grip --- // https://doc.qt.io/qt-6.8/qstyleoptionsizegrip.html#QStyleOptionSizeGrip
	style_option_size_grip_destroy :: proc(option: Style_Option_Size_Grip) --- // https://doc.qt.io/qt-6.8/qstyleoptionsizegrip.html
	style_option_size_grip_set_corner :: proc(option: Style_Option_Size_Grip, corner: c.int) --- // https://doc.qt.io/qt-6.8/qstyleoptionsizegrip.html#corner-var
	@(require_results) style_option_size_grip_get_corner :: proc(option: Style_Option_Size_Grip) -> c.int --- // https://doc.qt.io/qt-6.8/qstyleoptionsizegrip.html#corner-var

	/* QCommonStyle */

	@(require_results) common_style_create :: proc() -> Common_Style --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#QCommonStyle
	common_style_destroy :: proc(style: Common_Style) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#dtor.QCommonStyle
	common_style_draw_primitive :: proc(style: Common_Style, element: c.int, option: rawptr, painter: Painter, widget: Widget) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#drawPrimitive
	common_style_draw_control :: proc(style: Common_Style, element: c.int, option: rawptr, painter: Painter, widget: Widget) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#drawControl
	common_style_draw_complex_control :: proc(style: Common_Style, control: c.int, option: rawptr, painter: Painter, widget: Widget) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#drawComplexControl
	@(require_results) common_style_get_pixel_metric :: proc(style: Common_Style, metric: c.int, option: rawptr, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#pixelMetric
	common_style_get_sub_element_rect :: proc(style: Common_Style, element: c.int, option: rawptr, widget: Widget, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#subElementRect
	common_style_get_sub_control_rect :: proc(style: Common_Style, control: c.int, option: rawptr, sub_control: c.int, widget: Widget, x: ^c.int, y: ^c.int, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#subControlRect
	@(require_results) common_style_hit_test_complex_control :: proc(style: Common_Style, control: c.int, option: rawptr, x: c.int, y: c.int, widget: Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#hitTestComplexControl
	common_style_get_size_from_contents :: proc(style: Common_Style, type: c.int, option: rawptr, contents_w: c.int, contents_h: c.int, widget: Widget, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qcommonstyle.html#sizeFromContents
	@(require_results) common_style_get_standard_icon :: proc(style: Common_Style, standard_icon: c.int, option: rawptr, widget: Widget) -> Icon --- // https://doc.qt.io/qt-6.8/qcommonstyle.html

	/* QRhiWidget */

	@(require_results) rhi_widget_create :: proc(init_cb: Callback, render_cb: Callback, user_data: rawptr, parent: Widget) -> Rhi_Widget --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#QRhiWidget
	rhi_widget_destroy :: proc(widget: Rhi_Widget) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#dtor.QRhiWidget
	rhi_widget_request_update :: proc(widget: Rhi_Widget) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html
	rhi_widget_set_fixed_colour_buffer_size :: proc(widget: Rhi_Widget, w: c.int, h: c.int) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#fixedColorBufferSize-prop
	rhi_widget_get_fixed_colour_buffer_size :: proc(widget: Rhi_Widget, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#fixedColorBufferSize-prop
	rhi_widget_set_sample_count :: proc(widget: Rhi_Widget, count: c.int) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#sampleCount-prop
	@(require_results) rhi_widget_get_sample_count :: proc(widget: Rhi_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#sampleCount-prop
	rhi_widget_set_mirror_vertically :: proc(widget: Rhi_Widget, is_mirrored: c.int) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#mirrorVertically-prop
	@(require_results) rhi_widget_is_mirror_vertically_enabled :: proc(widget: Rhi_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qrhiwidget.html
	rhi_widget_set_auto_render_target :: proc(widget: Rhi_Widget, is_auto: c.int) --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#setAutoRenderTarget
	@(require_results) rhi_widget_is_auto_render_target_enabled :: proc(widget: Rhi_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qrhiwidget.html
	@(require_results) rhi_widget_get_rhi :: proc(widget: Rhi_Widget) -> rawptr --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#rhi
	@(require_results) rhi_widget_get_colour_texture :: proc(widget: Rhi_Widget) -> rawptr --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#colorTexture
	@(require_results) rhi_widget_get_depth_stencil_buffer :: proc(widget: Rhi_Widget) -> rawptr --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#depthStencilBuffer
	@(require_results) rhi_widget_get_render_target :: proc(widget: Rhi_Widget) -> rawptr --- // https://doc.qt.io/qt-6.8/qrhiwidget.html#renderTarget

	/* QOpenGLWindow */

	@(require_results) opengl_window_create :: proc(init_cb: Callback, paint_cb: Callback, resize_cb: proc "c" (user_data: rawptr, w: c.int, h: c.int), user_data: rawptr) -> Opengl_Window --- // https://doc.qt.io/qt-6.8/qopenglwindow.html#QOpenGLWindow
	opengl_window_destroy :: proc(window: Opengl_Window) --- // https://doc.qt.io/qt-6.8/qopenglwindow.html#dtor.QOpenGLWindow
	opengl_window_request_update :: proc(window: Opengl_Window) --- // https://doc.qt.io/qt-6.8/qopenglwindow.html
	@(require_results) opengl_window_get_context :: proc(window: Opengl_Window) -> rawptr --- // https://doc.qt.io/qt-6.8/qopenglwindow.html#context
	opengl_window_make_current :: proc(window: Opengl_Window) --- // https://doc.qt.io/qt-6.8/qopenglwindow.html#makeCurrent
	opengl_window_done_current :: proc(window: Opengl_Window) --- // https://doc.qt.io/qt-6.8/qopenglwindow.html#doneCurrent
	@(require_results) opengl_window_get_device_pixel_ratio :: proc(window: Opengl_Window) -> c.double --- // https://doc.qt.io/qt-6.8/qopenglwindow.html

	/* QOpenGLShaderProgram */

	@(require_results) opengl_shader_program_create :: proc() -> Opengl_Shader_Program --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#QOpenGLShaderProgram
	opengl_shader_program_destroy :: proc(program: Opengl_Shader_Program) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#dtor.QOpenGLShaderProgram
	@(require_results) opengl_shader_program_add_shader_from_source :: proc(program: Opengl_Shader_Program, type: c.int, source: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html
	@(require_results) opengl_shader_program_link :: proc(program: Opengl_Shader_Program) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#link
	@(require_results) opengl_shader_program_bind :: proc(program: Opengl_Shader_Program) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#bind
	opengl_shader_program_release :: proc(program: Opengl_Shader_Program) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#release
	@(require_results) opengl_shader_program_get_log :: proc(program: Opengl_Shader_Program) -> cstring --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#log
	@(require_results) opengl_shader_program_get_attribute_location :: proc(program: Opengl_Shader_Program, name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#attributeLocation
	@(require_results) opengl_shader_program_get_uniform_location :: proc(program: Opengl_Shader_Program, name: cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#uniformLocation
	opengl_shader_program_set_uniform_int :: proc(program: Opengl_Shader_Program, location: c.int, value: c.int) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setUniformValue
	opengl_shader_program_set_uniform_float :: proc(program: Opengl_Shader_Program, location: c.int, value: c.float) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setUniformValue
	opengl_shader_program_set_uniform_vec2 :: proc(program: Opengl_Shader_Program, location: c.int, x: c.float, y: c.float) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setUniformValue
	opengl_shader_program_set_uniform_vec3 :: proc(program: Opengl_Shader_Program, location: c.int, x: c.float, y: c.float, z: c.float) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setUniformValue
	opengl_shader_program_set_uniform_vec4 :: proc(program: Opengl_Shader_Program, location: c.int, x: c.float, y: c.float, z: c.float, w: c.float) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setUniformValue
	opengl_shader_program_set_uniform_mat4 :: proc(program: Opengl_Shader_Program, location: c.int, value: [^]c.float) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setUniformValue
	opengl_shader_program_enable_attribute_array :: proc(program: Opengl_Shader_Program, location: c.int) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#enableAttributeArray
	opengl_shader_program_disable_attribute_array :: proc(program: Opengl_Shader_Program, location: c.int) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#disableAttributeArray
	opengl_shader_program_set_attribute_buffer :: proc(program: Opengl_Shader_Program, location: c.int, type: c.int, offset: c.int, tuple_size: c.int, stride: c.int) --- // https://doc.qt.io/qt-6.8/qopenglshaderprogram.html#setAttributeBuffer

	/* QOpenGLBuffer */

	@(require_results) opengl_buffer_create :: proc(type: c.int) -> Opengl_Buffer --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#QOpenGLBuffer
	opengl_buffer_destroy :: proc(buffer: Opengl_Buffer) --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#dtor.QOpenGLBuffer
	@(require_results) opengl_buffer_create_buffer :: proc(buffer: Opengl_Buffer) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#QOpenGLBuffer
	@(require_results) opengl_buffer_bind :: proc(buffer: Opengl_Buffer) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#bind
	opengl_buffer_release :: proc(buffer: Opengl_Buffer) --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#release
	opengl_buffer_allocate :: proc(buffer: Opengl_Buffer, data: rawptr, count: c.int) --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#allocate
	opengl_buffer_write :: proc(buffer: Opengl_Buffer, offset: c.int, data: rawptr, count: c.int) --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#write
	@(require_results) opengl_buffer_get_size :: proc(buffer: Opengl_Buffer) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#size
	opengl_buffer_set_usage_pattern :: proc(buffer: Opengl_Buffer, pattern: c.int) --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#setUsagePattern
	@(require_results) opengl_buffer_get_usage_pattern :: proc(buffer: Opengl_Buffer) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglbuffer.html#usagePattern

	/* QOpenGLVertexArrayObject */

	@(require_results) opengl_vao_create :: proc() -> Opengl_Vao --- // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html#QOpenGLVertexArrayObject
	opengl_vao_destroy :: proc(vao: Opengl_Vao) --- // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html#dtor.QOpenGLVertexArrayObject
	@(require_results) opengl_vao_create_vao :: proc(vao: Opengl_Vao) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html#QOpenGLVertexArrayObject
	opengl_vao_bind :: proc(vao: Opengl_Vao) --- // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html#bind
	opengl_vao_release :: proc(vao: Opengl_Vao) --- // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html#release
	@(require_results) opengl_vao_is_created :: proc(vao: Opengl_Vao) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglvertexarrayobject.html#isCreated

	/* QOpenGLFramebufferObject */

	@(require_results) opengl_fbo_create :: proc(width: c.int, height: c.int) -> Opengl_Fbo --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#QOpenGLFramebufferObject
	opengl_fbo_destroy :: proc(fbo: Opengl_Fbo) --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#dtor.QOpenGLFramebufferObject
	@(require_results) opengl_fbo_bind :: proc(fbo: Opengl_Fbo) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#bind
	@(require_results) opengl_fbo_release :: proc(fbo: Opengl_Fbo) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#release
	@(require_results) opengl_fbo_is_valid :: proc(fbo: Opengl_Fbo) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#isValid
	@(require_results) opengl_fbo_is_bound :: proc(fbo: Opengl_Fbo) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#isBound
	opengl_fbo_get_size :: proc(fbo: Opengl_Fbo, w: ^c.int, h: ^c.int) --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#size
	@(require_results) opengl_fbo_get_texture :: proc(fbo: Opengl_Fbo) -> c.int --- // https://doc.qt.io/qt-6.8/qopenglframebufferobject.html#texture

	/* QOpenGLTexture */

	@(require_results) opengl_texture_create :: proc(target: c.int) -> Opengl_Texture --- // https://doc.qt.io/qt-6.8/qopengltexture.html#QOpenGLTexture
	opengl_texture_destroy :: proc(texture: Opengl_Texture) --- // https://doc.qt.io/qt-6.8/qopengltexture.html
	@(require_results) opengl_texture_create_texture :: proc(texture: Opengl_Texture) -> c.int --- // https://doc.qt.io/qt-6.8/qopengltexture.html#QOpenGLTexture
	opengl_texture_bind :: proc(texture: Opengl_Texture) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#bind
	opengl_texture_release :: proc(texture: Opengl_Texture) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#release
	@(require_results) opengl_texture_is_created :: proc(texture: Opengl_Texture) -> c.int --- // https://doc.qt.io/qt-6.8/qopengltexture.html#isCreated
	@(require_results) opengl_texture_get_texture_id :: proc(texture: Opengl_Texture) -> c.int --- // https://doc.qt.io/qt-6.8/qopengltexture.html#textureId
	opengl_texture_set_size :: proc(texture: Opengl_Texture, width: c.int, height: c.int, depth: c.int) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#setSize
	opengl_texture_set_format :: proc(texture: Opengl_Texture, format: c.int) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#setFormat
	opengl_texture_allocate_storage :: proc(texture: Opengl_Texture) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#allocateStorage
	opengl_texture_set_data_2d :: proc(texture: Opengl_Texture, level: c.int, pixel_format: c.int, pixel_type: c.int, data: rawptr) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#setData
	opengl_texture_generate_mip_maps :: proc(texture: Opengl_Texture) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#generateMipMaps
	opengl_texture_set_min_mag_filters :: proc(texture: Opengl_Texture, min_filter: c.int, mag_filter: c.int) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#setMinMagFilters
	opengl_texture_set_wrap_mode :: proc(texture: Opengl_Texture, wrap_mode: c.int) --- // https://doc.qt.io/qt-6.8/qopengltexture.html#setWrapMode

	/* ══════════════════════════════════════════════════════════════════
	   TODO Gap Implementations
	   ══════════════════════════════════════════════════════════════════ */

	/* Event filter: Wheel */

	@(require_results) wheel_event_filter_create :: proc(callback: Wheel_Event_Callback, user_data: rawptr) -> Event_Filter ---

	/* Event filter: Resize */

	@(require_results) resize_event_filter_create :: proc(callback: Resize_Event_Callback, user_data: rawptr) -> Event_Filter ---

	/* Event filter: Focus */

	@(require_results) focus_event_filter_create :: proc(callback: Focus_Event_Callback, user_data: rawptr) -> Event_Filter ---

	/* Event filter: Hover */

	@(require_results) hover_event_filter_create :: proc(callback: Hover_Event_Callback, user_data: rawptr) -> Event_Filter ---

	/* Widget Accessors */

	@(require_results) tab_widget_get_tab_bar :: proc(tab_widget: Tab_Widget) -> Tab_Bar --- // https://doc.qt.io/qt-6.8/qtabwidget.html#tabBar
	widget_set_whats_this :: proc(widget: Widget, text: cstring) --- // https://doc.qt.io/qt-6.8/qwidget.html#whatsThis-prop
	@(require_results) widget_get_whats_this :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qwidget.html#whatsThis-prop
	widget_set_accessible_name :: proc(widget: Widget, name: cstring) --- // https://doc.qt.io/qt-6.8/qwidget.html#accessibleName-prop
	@(require_results) widget_get_accessible_name :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qwidget.html#accessibleName-prop
	widget_set_accessible_description :: proc(widget: Widget, description: cstring) --- // https://doc.qt.io/qt-6.8/qwidget.html#accessibleDescription-prop
	@(require_results) widget_get_accessible_description :: proc(widget: Widget) -> cstring --- // https://doc.qt.io/qt-6.8/qwidget.html#accessibleDescription-prop
	@(require_results) widget_child_at :: proc(widget: Widget, x: c.int, y: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qwidget.html#childAt
	@(require_results) widget_get_window :: proc(widget: Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qwidget.html#window
	@(require_results) widget_get_native_parent_widget :: proc(widget: Widget) -> Widget --- // https://doc.qt.io/qt-6.8/qwidget.html#nativeParentWidget
	widget_get_actions :: proc(widget: Widget, out_actions: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qwidget.html#actions
	widget_set_graphics_effect :: proc(widget: Widget, effect: Graphics_Effect) --- // https://doc.qt.io/qt-6.8/qwidget.html#setGraphicsEffect
	@(require_results) widget_get_font :: proc(widget: Widget) -> Font_Handle --- // https://doc.qt.io/qt-6.8/qwidget.html#font-prop

	/* Application-Level */

	application_set_override_cursor :: proc(cursor_shape: c.int) --- // https://doc.qt.io/qt-6.8/qguiapplication.html#setOverrideCursor
	application_restore_override_cursor :: proc() --- // https://doc.qt.io/qt-6.8/qapplication.html
	@(require_results) application_get_screen_count :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qapplication.html
	application_get_screen_geometry :: proc(screen_index: c.int, x: ^c.int, y: ^c.int, width: ^c.int, height: ^c.int) --- // https://doc.qt.io/qt-6.8/qapplication.html
	@(require_results) application_get_screen_name :: proc(screen_index: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qapplication.html
	@(require_results) application_get_screen_device_pixel_ratio :: proc(screen_index: c.int) -> c.double --- // https://doc.qt.io/qt-6.8/qapplication.html
	clipboard_set_pixmap :: proc(pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qclipboard.html#setPixmap
	@(require_results) clipboard_get_pixmap :: proc() -> Pixmap --- // https://doc.qt.io/qt-6.8/qclipboard.html#pixmap
	@(require_results) clipboard_has_image :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qclipboard.html
	application_beep :: proc() --- // https://doc.qt.io/qt-6.8/qapplication.html#beep
	application_about_qt :: proc() --- // https://doc.qt.io/qt-6.8/qapplication.html#aboutQt
	@(require_results) application_get_top_level_widget_count :: proc() -> c.int --- // https://doc.qt.io/qt-6.8/qapplication.html
	application_get_top_level_widgets :: proc(out_widgets: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qapplication.html#topLevelWidgets

	/* Missing Constructors / Factories */

	@(require_results) pixmap_create :: proc(width: c.int, height: c.int) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#QPixmap
	@(require_results) pixmap_create_from_data :: proc(data: [^]u8, size: c.int) -> Pixmap --- // https://doc.qt.io/qt-6.8/qpixmap.html#QPixmap
	@(require_results) action_create :: proc(parent: rawptr) -> Action --- // https://doc.qt.io/qt-6.8/qaction.html#QAction
	@(require_results) action_create_with_text :: proc(text: cstring, parent: rawptr) -> Action --- // https://doc.qt.io/qt-6.8/qaction.html#QAction

	/* Style System */

	@(require_results) style_get_standard_icon :: proc(style: Style, standard_icon: c.int) -> Icon --- // https://doc.qt.io/qt-6.8/qstyle.html#standardIcon
	@(require_results) style_get_standard_pixmap :: proc(style: Style, standard_pixmap: c.int) -> Pixmap --- // https://doc.qt.io/qt-6.8/qstyle.html
	@(require_results) style_factory_get_keys :: proc(out_keys: ^[^]cstring, out_count: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qstylefactory.html#keys
	@(require_results) widget_get_style :: proc(widget: Widget) -> Style --- // https://doc.qt.io/qt-6.8/qwidget.html#style

	/* Configurable Dialog Objects */

	/* QFileDialog as object */
	@(require_results) file_dialog_create :: proc(parent: Widget) -> File_Dialog --- // https://doc.qt.io/qt-6.8/qfiledialog.html#QFileDialog
	file_dialog_set_accept_mode :: proc(dialog: File_Dialog, mode: c.int) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#acceptMode-prop
	file_dialog_set_file_mode :: proc(dialog: File_Dialog, mode: c.int) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#fileMode-prop
	file_dialog_set_name_filter :: proc(dialog: File_Dialog, filter: cstring) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#setNameFilter
	file_dialog_set_name_filters :: proc(dialog: File_Dialog, filters: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#setNameFilters
	file_dialog_set_directory :: proc(dialog: File_Dialog, dir: cstring) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#setDirectory
	@(require_results) file_dialog_get_directory :: proc(dialog: File_Dialog) -> cstring --- // https://doc.qt.io/qt-6.8/qfiledialog.html#directory
	file_dialog_set_default_suffix :: proc(dialog: File_Dialog, suffix: cstring) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#defaultSuffix-prop
	@(require_results) file_dialog_get_selected_files :: proc(dialog: File_Dialog, out_files: ^[^]cstring, out_count: ^c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qfiledialog.html#selectedFiles
	file_dialog_set_view_mode :: proc(dialog: File_Dialog, mode: c.int) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#viewMode-prop
	file_dialog_set_option :: proc(dialog: File_Dialog, option: c.int, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qfiledialog.html#setOption

	/* QMessageBox as object */
	@(require_results) message_box_create :: proc(parent: Widget) -> Message_Box --- // https://doc.qt.io/qt-6.8/qmessagebox.html#QMessageBox
	message_box_set_text :: proc(msg_box: Message_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#text-prop
	message_box_set_informative_text :: proc(msg_box: Message_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#informativeText-prop
	message_box_set_detailed_text :: proc(msg_box: Message_Box, text: cstring) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#detailedText-prop
	message_box_set_icon :: proc(msg_box: Message_Box, icon: c.int) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#icon-prop
	message_box_set_standard_buttons :: proc(msg_box: Message_Box, buttons: c.int) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#standardButtons-prop
	message_box_set_default_button :: proc(msg_box: Message_Box, button: c.int) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#setDefaultButton
	message_box_set_window_title :: proc(msg_box: Message_Box, title: cstring) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#setWindowTitle
	message_box_set_icon_pixmap :: proc(msg_box: Message_Box, pixmap: Pixmap) --- // https://doc.qt.io/qt-6.8/qmessagebox.html#iconPixmap-prop

	/* QColorDialog as object */
	@(require_results) colour_dialog_create :: proc(parent: Widget) -> Colour_Dialog --- // https://doc.qt.io/qt-6.8/qcolordialog.html#QColorDialog
	colour_dialog_set_current_colour :: proc(dialog: Colour_Dialog, r: c.int, g: c.int, b: c.int, a: c.int) --- // https://doc.qt.io/qt-6.8/qcolordialog.html#currentColor-prop
	colour_dialog_get_current_colour :: proc(dialog: Colour_Dialog, r: ^c.int, g: ^c.int, b: ^c.int, a: ^c.int) --- // https://doc.qt.io/qt-6.8/qcolordialog.html#currentColor-prop
	colour_dialog_set_option :: proc(dialog: Colour_Dialog, option: c.int, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qcolordialog.html#setOption

	/* QFontDialog as object */
	@(require_results) font_dialog_create :: proc(parent: Widget) -> Font_Dialog --- // https://doc.qt.io/qt-6.8/qfontdialog.html#QFontDialog
	font_dialog_set_current_font :: proc(dialog: Font_Dialog, font: Font_Handle) --- // https://doc.qt.io/qt-6.8/qfontdialog.html#setCurrentFont
	@(require_results) font_dialog_get_current_font :: proc(dialog: Font_Dialog) -> Font_Handle --- // https://doc.qt.io/qt-6.8/qfontdialog.html#currentFont
	font_dialog_set_option :: proc(dialog: Font_Dialog, option: c.int, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qfontdialog.html#setOption

	/* Abstract View Properties */

	abstract_item_view_set_item_delegate :: proc(view: rawptr, delegate: rawptr) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#setItemDelegate
	abstract_item_view_set_selection_model :: proc(view: rawptr, selection_model: Item_Selection_Model) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#setSelectionModel
	@(require_results) abstract_item_view_get_selection_model :: proc(view: rawptr) -> Item_Selection_Model --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#selectionModel
	@(require_results) abstract_item_view_get_current_index :: proc(view: rawptr) -> Model_Index --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#currentIndex
	abstract_item_view_set_current_index :: proc(view: rawptr, index: Model_Index) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#setCurrentIndex
	abstract_item_view_set_drag_enabled :: proc(view: rawptr, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#dragEnabled-prop
	abstract_item_view_set_drag_drop_mode :: proc(view: rawptr, mode: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#dragDropMode-prop
	abstract_item_view_set_edit_triggers :: proc(view: rawptr, triggers: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#editTriggers-prop
	abstract_item_view_scroll_to :: proc(view: rawptr, index: Model_Index, scroll_hint: c.int) --- // https://doc.qt.io/qt-6.8/qabstractitemview.html#scrollTo

	/* Model/View Signal Gaps */

	@(require_results) standard_item_model_connect_item_changed :: proc(model: Standard_Item_Model, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#itemChanged
	standard_item_model_find_items :: proc(model: Standard_Item_Model, text: cstring, flags: c.int, column: c.int, out_items: ^[^]rawptr, out_count: ^c.int) --- // https://doc.qt.io/qt-6.8/qstandarditemmodel.html#findItems

	/* Missing Signals on Existing Widgets */

	@(require_results) check_box_connect_state_changed :: proc(check_box: Check_Box, callback: Int_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qcheckbox.html#stateChanged
	@(require_results) spin_box_connect_text_changed :: proc(spin_box: Spin_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qspinbox.html#textChanged
	@(require_results) double_spin_box_connect_text_changed :: proc(spin_box: Double_Spin_Box, callback: String_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qdoublespinbox.html#textChanged
	@(require_results) line_edit_connect_selection_changed :: proc(line_edit: Line_Edit, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlineedit.html#selectionChanged
	@(require_results) line_edit_connect_cursor_position_changed :: proc(line_edit: Line_Edit, callback: Cell_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qlineedit.html#cursorPositionChanged

	/* Miscellaneous */

	@(require_results) splitter_get_handle :: proc(splitter: Splitter, index: c.int) -> Splitter_Handle --- // https://doc.qt.io/qt-6.8/qsplitter.html#handle
	tab_bar_set_tab_button :: proc(tab_bar: Tab_Bar, index: c.int, position: c.int, widget: Widget) --- // https://doc.qt.io/qt-6.8/qtabbar.html#setTabButton
	@(require_results) tab_bar_get_tab_button :: proc(tab_bar: Tab_Bar, index: c.int, position: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qtabbar.html#tabButton
	@(require_results) object_find_child :: proc(object: rawptr, name: cstring, options: c.int) -> Widget --- // https://doc.qt.io/qt-6.8/qobject.html#findChild

	/* QMdiArea sub-window activated with pointer */

	@(require_results) mdi_area_connect_sub_window_activated_with_ptr :: proc(mdi_area: Mdi_Area, callback: Item_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qmdiarea.html#subWindowActivated

	/* QToolTip appearance */

	@(require_results) tooltip_get_font :: proc() -> Font_Handle --- // https://doc.qt.io/qt-6.8/qtooltip.html#font
	tooltip_set_palette :: proc(palette: Palette) --- // https://doc.qt.io/qt-6.8/qtooltip.html#setPalette

	/* QLabel scaled pixmap convenience */

	label_set_pixmap_scaled :: proc(label: Label, pixmap: Pixmap, w: c.int, h: c.int, aspect_mode: c.int, transform_mode: c.int) --- // https://doc.qt.io/qt-6.8/qlabel.html#pixmap-prop

	/* QRegularExpressionMatch */

	@(require_results) regex_match_create :: proc(regex: Regex, subject: cstring) -> Regex_Match --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#QRegularExpressionMatch
	@(require_results) regex_match_create_with_offset :: proc(regex: Regex, subject: cstring, offset: c.int) -> Regex_Match --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#QRegularExpressionMatch
	regex_match_destroy :: proc(match: Regex_Match) --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#dtor.QRegularExpressionMatch
	@(require_results) regex_match_has_match :: proc(match: Regex_Match) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#hasMatch
	@(require_results) regex_match_get_captured :: proc(match: Regex_Match, group: c.int) -> cstring --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#captured
	@(require_results) regex_match_get_captured_by_name :: proc(match: Regex_Match, name: cstring) -> cstring --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html
	@(require_results) regex_match_get_captured_start :: proc(match: Regex_Match, group: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#capturedStart
	@(require_results) regex_match_get_captured_end :: proc(match: Regex_Match, group: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#capturedEnd
	@(require_results) regex_match_get_captured_length :: proc(match: Regex_Match, group: c.int) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#capturedLength
	@(require_results) regex_match_get_captured_count :: proc(match: Regex_Match) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html
	@(require_results) regex_match_get_last_captured_index :: proc(match: Regex_Match) -> c.int --- // https://doc.qt.io/qt-6.8/qregularexpressionmatch.html#lastCapturedIndex

	/* QAbstractItemModel signals */

	@(require_results) model_connect_data_changed :: proc(model: rawptr, callback: Model_Data_Changed_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractitemmodel.html#dataChanged
	@(require_results) model_connect_rows_inserted :: proc(model: rawptr, callback: Model_Rows_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractitemmodel.html#rowsInserted
	@(require_results) model_connect_rows_removed :: proc(model: rawptr, callback: Model_Rows_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qabstractitemmodel.html#rowsRemoved

	/* QPrinter */

	@(require_results) printer_create :: proc(mode: Printer_Mode) -> Printer --- // https://doc.qt.io/qt-6.8/qprinter.html#QPrinter
	@(require_results) printer_create_with_info :: proc(printer_info: Printer_Info, mode: Printer_Mode) -> Printer --- // https://doc.qt.io/qt-6.8/qprinter.html#QPrinter
	printer_destroy :: proc(printer: Printer) --- // https://doc.qt.io/qt-6.8/qprinter.html#dtor.QPrinter
	printer_set_output_format :: proc(printer: Printer, format: Printer_Output_Format) --- // https://doc.qt.io/qt-6.8/qprinter.html#setOutputFormat
	@(require_results) printer_get_output_format :: proc(printer: Printer) -> Printer_Output_Format --- // https://doc.qt.io/qt-6.8/qprinter.html#outputFormat
	printer_set_pdf_version :: proc(printer: Printer, version: Pdf_Version) --- // https://doc.qt.io/qt-6.8/qprinter.html#setPdfVersion
	@(require_results) printer_get_pdf_version :: proc(printer: Printer) -> Pdf_Version --- // https://doc.qt.io/qt-6.8/qprinter.html#pdfVersion
	printer_set_printer_name :: proc(printer: Printer, name: cstring) --- // https://doc.qt.io/qt-6.8/qprinter.html#setPrinterName
	@(require_results) printer_get_printer_name :: proc(printer: Printer) -> cstring --- // https://doc.qt.io/qt-6.8/qprinter.html#printerName
	@(require_results) printer_is_valid :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#isValid
	printer_set_output_file_name :: proc(printer: Printer, filename: cstring) --- // https://doc.qt.io/qt-6.8/qprinter.html#setOutputFileName
	@(require_results) printer_get_output_file_name :: proc(printer: Printer) -> cstring --- // https://doc.qt.io/qt-6.8/qprinter.html#outputFileName
	printer_set_doc_name :: proc(printer: Printer, name: cstring) --- // https://doc.qt.io/qt-6.8/qprinter.html#setDocName
	@(require_results) printer_get_doc_name :: proc(printer: Printer) -> cstring --- // https://doc.qt.io/qt-6.8/qprinter.html#docName
	printer_set_creator :: proc(printer: Printer, creator: cstring) --- // https://doc.qt.io/qt-6.8/qprinter.html#setCreator
	@(require_results) printer_get_creator :: proc(printer: Printer) -> cstring --- // https://doc.qt.io/qt-6.8/qprinter.html#creator
	printer_set_page_order :: proc(printer: Printer, order: Printer_Page_Order) --- // https://doc.qt.io/qt-6.8/qprinter.html#setPageOrder
	@(require_results) printer_get_page_order :: proc(printer: Printer) -> Printer_Page_Order --- // https://doc.qt.io/qt-6.8/qprinter.html#pageOrder
	printer_set_resolution :: proc(printer: Printer, dpi: c.int) --- // https://doc.qt.io/qt-6.8/qprinter.html#setResolution
	@(require_results) printer_get_resolution :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#resolution
	printer_set_colour_mode :: proc(printer: Printer, mode: Printer_Colour_Mode) --- // https://doc.qt.io/qt-6.8/qprinter.html#setColorMode
	@(require_results) printer_get_colour_mode :: proc(printer: Printer) -> Printer_Colour_Mode --- // https://doc.qt.io/qt-6.8/qprinter.html#colorMode
	printer_set_collate_copies :: proc(printer: Printer, is_collate: c.int) --- // https://doc.qt.io/qt-6.8/qprinter.html#setCollateCopies
	@(require_results) printer_get_collate_copies :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#collateCopies
	printer_set_is_full_page :: proc(printer: Printer, is_full_page: c.int) --- // https://doc.qt.io/qt-6.8/qprinter.html#setFullPage
	@(require_results) printer_get_is_full_page :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html
	printer_set_copy_count :: proc(printer: Printer, count: c.int) --- // https://doc.qt.io/qt-6.8/qprinter.html#setCopyCount
	@(require_results) printer_get_copy_count :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#copyCount
	@(require_results) printer_does_support_multiple_copies :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html
	printer_set_paper_source :: proc(printer: Printer, source: Printer_Paper_Source) --- // https://doc.qt.io/qt-6.8/qprinter.html#setPaperSource
	@(require_results) printer_get_paper_source :: proc(printer: Printer) -> Printer_Paper_Source --- // https://doc.qt.io/qt-6.8/qprinter.html#paperSource
	printer_set_duplex :: proc(printer: Printer, mode: Printer_Duplex_Mode) --- // https://doc.qt.io/qt-6.8/qprinter.html#setDuplex
	@(require_results) printer_get_duplex :: proc(printer: Printer) -> Printer_Duplex_Mode --- // https://doc.qt.io/qt-6.8/qprinter.html#duplex
	printer_set_is_font_embedding_enabled :: proc(printer: Printer, is_enabled: c.int) --- // https://doc.qt.io/qt-6.8/qprinter.html#setFontEmbeddingEnabled
	@(require_results) printer_is_font_embedding_enabled :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html
	printer_get_paper_rect :: proc(printer: Printer, unit: Printer_Unit, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qprinter.html#paperRect
	printer_get_page_rect :: proc(printer: Printer, unit: Printer_Unit, x: ^c.double, y: ^c.double, w: ^c.double, h: ^c.double) --- // https://doc.qt.io/qt-6.8/qprinter.html#pageRect
	@(require_results) printer_new_page :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#newPage
	@(require_results) printer_abort :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#abort
	@(require_results) printer_get_printer_state :: proc(printer: Printer) -> Printer_State --- // https://doc.qt.io/qt-6.8/qprinter.html#printerState
	printer_set_from_to :: proc(printer: Printer, from_page: c.int, to_page: c.int) --- // https://doc.qt.io/qt-6.8/qprinter.html#setFromTo
	@(require_results) printer_get_from_page :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#fromPage
	@(require_results) printer_get_to_page :: proc(printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qprinter.html#toPage
	printer_set_print_range :: proc(printer: Printer, range: Printer_Print_Range) --- // https://doc.qt.io/qt-6.8/qprinter.html#setPrintRange
	@(require_results) printer_get_print_range :: proc(printer: Printer) -> Printer_Print_Range --- // https://doc.qt.io/qt-6.8/qprinter.html#printRange
	printer_set_page_size :: proc(printer: Printer, page_size_id: c.int) --- // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#setPageSize
	printer_set_page_orientation :: proc(printer: Printer, orientation: c.int) --- // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#setPageOrientation
	printer_set_page_margins :: proc(printer: Printer, left: c.double, top: c.double, right: c.double, bottom: c.double, unit: c.int) --- // https://doc.qt.io/qt-6.8/qpagedpaintdevice.html#setPageMargins
	@(require_results) painter_begin_printer :: proc(painter: Painter, printer: Printer) -> c.int --- // https://doc.qt.io/qt-6.8/qpainter.html

	/* QPrinterInfo */

	@(require_results) printer_info_create :: proc() -> Printer_Info --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#QPrinterInfo
	@(require_results) printer_info_create_from_printer :: proc(printer: Printer) -> Printer_Info --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#QPrinterInfo
	printer_info_destroy :: proc(info: Printer_Info) --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#dtor.QPrinterInfo
	@(require_results) printer_info_get_printer_name :: proc(info: Printer_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#printerName
	@(require_results) printer_info_get_description :: proc(info: Printer_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#description
	@(require_results) printer_info_get_location :: proc(info: Printer_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#location
	@(require_results) printer_info_get_make_and_model :: proc(info: Printer_Info) -> cstring --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#makeAndModel
	@(require_results) printer_info_is_null :: proc(info: Printer_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#isNull
	@(require_results) printer_info_is_default :: proc(info: Printer_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#isDefault
	@(require_results) printer_info_is_remote :: proc(info: Printer_Info) -> c.int --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#isRemote
	@(require_results) printer_info_get_state :: proc(info: Printer_Info) -> Printer_State --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#state
	@(require_results) printer_info_get_default_duplex_mode :: proc(info: Printer_Info) -> Printer_Duplex_Mode --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#defaultDuplexMode
	@(require_results) printer_info_get_default_colour_mode :: proc(info: Printer_Info) -> Printer_Colour_Mode --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#defaultColorMode
	@(require_results) printer_info_get_default_printer_name :: proc() -> cstring --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#defaultPrinterName
	@(require_results) printer_info_get_available_printer_names :: proc(names_out: ^[^]cstring) -> c.int --- // https://doc.qt.io/qt-6.8/qprinterinfo.html#availablePrinterNames
	printer_info_free_string_array :: proc(names: [^]cstring, count: c.int) --- // https://doc.qt.io/qt-6.8/qprinterinfo.html

	/* QPrintDialog */

	@(require_results) print_dialog_create :: proc(printer: Printer, parent: Widget) -> Print_Dialog --- // https://doc.qt.io/qt-6.8/qprintdialog.html#QPrintDialog
	print_dialog_destroy :: proc(dialog: Print_Dialog) --- // https://doc.qt.io/qt-6.8/qprintdialog.html#dtor.QPrintDialog
	@(require_results) print_dialog_exec :: proc(dialog: Print_Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qprintdialog.html#exec
	print_dialog_set_option :: proc(dialog: Print_Dialog, option: Print_Dialog_Option, is_on: c.int) --- // https://doc.qt.io/qt-6.8/qprintdialog.html#setOption
	@(require_results) print_dialog_has_option :: proc(dialog: Print_Dialog, option: Print_Dialog_Option) -> c.int --- // https://doc.qt.io/qt-6.8/qprintdialog.html
	print_dialog_set_options :: proc(dialog: Print_Dialog, options: c.int) --- // https://doc.qt.io/qt-6.8/qprintdialog.html#options-prop
	@(require_results) print_dialog_get_options :: proc(dialog: Print_Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qprintdialog.html#options-prop

	/* QPageSetupDialog */

	@(require_results) page_setup_dialog_create :: proc(printer: Printer, parent: Widget) -> Page_Setup_Dialog --- // https://doc.qt.io/qt-6.8/qpagesetupdialog.html#QPageSetupDialog
	page_setup_dialog_destroy :: proc(dialog: Page_Setup_Dialog) --- // https://doc.qt.io/qt-6.8/qpagesetupdialog.html#dtor.QPageSetupDialog
	@(require_results) page_setup_dialog_exec :: proc(dialog: Page_Setup_Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qpagesetupdialog.html#exec

	/* QPrintPreviewDialog */

	@(require_results) print_preview_dialog_create :: proc(printer: Printer, parent: Widget) -> Print_Preview_Dialog --- // https://doc.qt.io/qt-6.8/qprintpreviewdialog.html#QPrintPreviewDialog
	print_preview_dialog_destroy :: proc(dialog: Print_Preview_Dialog) --- // https://doc.qt.io/qt-6.8/qprintpreviewdialog.html#dtor.QPrintPreviewDialog
	@(require_results) print_preview_dialog_exec :: proc(dialog: Print_Preview_Dialog) -> c.int --- // https://doc.qt.io/qt-6.8/qprintpreviewdialog.html
	@(require_results) print_preview_dialog_connect_paint_requested :: proc(dialog: Print_Preview_Dialog, callback: Printer_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprintpreviewdialog.html#paintRequested

	/* QPrintPreviewWidget */

	@(require_results) print_preview_widget_create :: proc(printer: Printer, parent: Widget) -> Print_Preview_Widget --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#QPrintPreviewWidget
	print_preview_widget_destroy :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#dtor.QPrintPreviewWidget
	@(require_results) print_preview_widget_get_zoom_factor :: proc(widget: Print_Preview_Widget) -> c.double --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#zoomFactor
	@(require_results) print_preview_widget_get_orientation :: proc(widget: Print_Preview_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#orientation
	@(require_results) print_preview_widget_get_view_mode :: proc(widget: Print_Preview_Widget) -> Print_Preview_View_Mode --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#viewMode
	@(require_results) print_preview_widget_get_zoom_mode :: proc(widget: Print_Preview_Widget) -> Print_Preview_Zoom_Mode --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#zoomMode
	@(require_results) print_preview_widget_get_current_page :: proc(widget: Print_Preview_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#currentPage
	@(require_results) print_preview_widget_get_page_count :: proc(widget: Print_Preview_Widget) -> c.int --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#pageCount
	print_preview_widget_print :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#print
	print_preview_widget_zoom_in :: proc(widget: Print_Preview_Widget, factor: c.double) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#zoomIn
	print_preview_widget_zoom_out :: proc(widget: Print_Preview_Widget, factor: c.double) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#zoomOut
	print_preview_widget_set_zoom_factor :: proc(widget: Print_Preview_Widget, factor: c.double) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setZoomFactor
	print_preview_widget_set_orientation :: proc(widget: Print_Preview_Widget, orientation: c.int) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setOrientation
	print_preview_widget_set_view_mode :: proc(widget: Print_Preview_Widget, mode: Print_Preview_View_Mode) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setViewMode
	print_preview_widget_set_zoom_mode :: proc(widget: Print_Preview_Widget, mode: Print_Preview_Zoom_Mode) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setZoomMode
	print_preview_widget_set_current_page :: proc(widget: Print_Preview_Widget, page: c.int) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setCurrentPage
	print_preview_widget_fit_to_width :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#fitToWidth
	print_preview_widget_fit_in_view :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#fitInView
	print_preview_widget_set_landscape_orientation :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setLandscapeOrientation
	print_preview_widget_set_portrait_orientation :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setPortraitOrientation
	print_preview_widget_set_single_page_view_mode :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setSinglePageViewMode
	print_preview_widget_set_facing_pages_view_mode :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setFacingPagesViewMode
	print_preview_widget_set_all_pages_view_mode :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#setAllPagesViewMode
	print_preview_widget_update_preview :: proc(widget: Print_Preview_Widget) --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#updatePreview
	@(require_results) print_preview_widget_connect_paint_requested :: proc(widget: Print_Preview_Widget, callback: Printer_Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#paintRequested
	@(require_results) print_preview_widget_connect_preview_changed :: proc(widget: Print_Preview_Widget, callback: Callback, user_data: rawptr) -> Connection_Id --- // https://doc.qt.io/qt-6.8/qprintpreviewwidget.html#previewChanged
}
