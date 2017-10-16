$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
REQUEST QWIDGET
REQUEST QCLIPBOARD
REQUEST QDESKTOPWIDGET
REQUEST QFONT
REQUEST QFONTMETRICS
REQUEST QSIZE
REQUEST QLOCALE
REQUEST QCURSOR
REQUEST QPALETTE
REQUEST QSTYLE
REQUEST QICON
#endif

CLASS QApplication INHERIT QCoreApplication

   METHOD new
   METHOD delete
   METHOD commitData
   METHOD inputContext
   METHOD isSessionRestored
   METHOD saveState
   METHOD sessionId
   METHOD sessionKey
   METHOD setInputContext
   METHOD styleSheet
   METHOD notify
   METHOD aboutQt
   METHOD closeAllWindows
   METHOD setStyleSheet
   METHOD activeModalWidget
   METHOD activePopupWidget
   METHOD activeWindow
   METHOD alert
   METHOD allWidgets
   METHOD beep
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD colorSpec
   METHOD cursorFlashTime
   METHOD desktop
   METHOD desktopSettingsAware
   METHOD doubleClickInterval
   METHOD exec
   METHOD focusWidget
   METHOD font1
   METHOD font2
   METHOD font3
   METHOD font
   METHOD fontMetrics
   METHOD globalStrut
   METHOD isEffectEnabled
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardInputDirection
   METHOD keyboardInputInterval
   METHOD keyboardInputLocale
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette1
   METHOD palette2
   METHOD palette3
   METHOD palette
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD setActiveWindow
   METHOD setColorSpec
   METHOD setCursorFlashTime
   METHOD setDesktopSettingsAware
   METHOD setDoubleClickInterval
   METHOD setEffectEnabled
   METHOD setFont
   METHOD setGlobalStrut
   METHOD setGraphicsSystem
   METHOD setKeyboardInputInterval
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD setStartDragDistance
   METHOD setStartDragTime
   METHOD setStyle1
   METHOD setStyle2
   METHOD setStyle
   METHOD setWheelScrollLines
   METHOD setWindowIcon
   METHOD startDragDistance
   METHOD startDragTime
   METHOD style
   METHOD syncX
   METHOD topLevelAt1
   METHOD topLevelAt2
   METHOD topLevelAt
   METHOD topLevelWidgets
   METHOD type
   METHOD wheelScrollLines
   METHOD widgetAt1
   METHOD widgetAt2
   METHOD widgetAt
   METHOD windowIcon
   METHOD aboutToReleaseGpuResources
   METHOD aboutToUseGpuResources
   METHOD commitDataRequest
   METHOD focusChanged
   METHOD fontDatabaseChanged
   METHOD lastWindowClosed
   METHOD saveStateRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QApplication>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QFont>
#include <QLocale>
#include <QIcon>
#include <QSessionManager>
#include <QFontMetrics>
#include <QPalette>

//QApplication ( int & argc, char ** argv )
//QApplication ( int & argc, char ** argv, bool GUIenabled )
//QApplication ( int & argc, char ** argv, Type type )
//QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )

/*
QApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QApplication * o = new QApplication( argc, argv );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual void commitData ( QSessionManager & manager )
*/
$virtualMethod=|void|commitData|QSessionManager &

/*
QInputContext * inputContext () const
*/
$method=|QInputContext *|inputContext|

/*
bool isSessionRestored () const
*/
$method=|bool|isSessionRestored|

/*
virtual void saveState ( QSessionManager & manager )
*/
$virtualMethod=|void|saveState|QSessionManager &

/*
QString sessionId () const
*/
$method=|QString|sessionId|

/*
QString sessionKey () const
*/
$method=|QString|sessionKey|

/*
void setInputContext ( QInputContext * inputContext )
*/
$method=|void|setInputContext|QInputContext *

/*
QString styleSheet () const
*/
$method=|QString|styleSheet|

/*
virtual bool notify ( QObject * receiver, QEvent * e )
*/
$virtualMethod=|bool|notify|QObject *,QEvent *

/*
void aboutQt ()
*/
$method=|void|aboutQt|

/*
void closeAllWindows ()
*/
$method=|void|closeAllWindows|

/*
void setStyleSheet ( const QString & sheet )
*/
$method=|void|setStyleSheet|const QString &

/*
static QWidget * activeModalWidget ()
*/
$staticMethod=|QWidget *|activeModalWidget|

/*
static QWidget * activePopupWidget ()
*/
$staticMethod=|QWidget *|activePopupWidget|

/*
static QWidget * activeWindow ()
*/
$staticMethod=|QWidget *|activeWindow|

/*
static void alert ( QWidget * widget, int msec = 0 )
*/
$staticMethod=|void|alert|QWidget *,int=0

/*
static QWidgetList allWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_ALLWIDGETS )
{
  QWidgetList list = QApplication::allWidgets ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWIDGET" );
  #else
  pDynSym = hb_dynsymFindName( "QWIDGET" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QWidget *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static void beep ()
*/
$staticMethod=|void|beep|

/*
static void changeOverrideCursor ( const QCursor & cursor )
*/
$staticMethod=|void|changeOverrideCursor|const QCursor &

/*
static QClipboard * clipboard ()
*/
$staticMethod=|QClipboard *|clipboard|

/*
static int colorSpec ()
*/
$staticMethod=|int|colorSpec|

/*
static int cursorFlashTime ()
*/
$staticMethod=|int|cursorFlashTime|

/*
static QDesktopWidget * desktop ()
*/
$staticMethod=|QDesktopWidget *|desktop|

/*
static bool desktopSettingsAware ()
*/
$staticMethod=|bool|desktopSettingsAware|

/*
static int doubleClickInterval ()
*/
$staticMethod=|int|doubleClickInterval|

/*
static int exec ()
*/
$staticMethod=|int|exec|

/*
static QWidget * focusWidget ()
*/
$staticMethod=|QWidget *|focusWidget|

/*
static QFont font ()
*/
$staticMethod=|QFont|font,font1|

/*
static QFont font ( const QWidget * widget )
*/
$staticMethod=|QFont|font,font2|const QWidget *

/*
static QFont font ( const char * className )
*/
$staticMethod=|QFont|font,font3|const char *

//[1]QFont font ()
//[2]QFont font ( const QWidget * widget )
//[3]QFont font ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAPPLICATION_FONT1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_FONT2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_FONT3 );
  }
}

/*
static QFontMetrics fontMetrics ()
*/
$staticMethod=|QFontMetrics|fontMetrics|

/*
static QSize globalStrut ()
*/
$staticMethod=|QSize|globalStrut|

/*
static bool isEffectEnabled ( Qt::UIEffect effect )
*/
$staticMethod=|bool|isEffectEnabled|Qt::UIEffect

/*
static bool isLeftToRight ()
*/
$staticMethod=|bool|isLeftToRight|

/*
static bool isRightToLeft ()
*/
$staticMethod=|bool|isRightToLeft|

/*
static Qt::LayoutDirection keyboardInputDirection ()
*/
$staticMethod=|Qt::LayoutDirection|keyboardInputDirection|

/*
static int keyboardInputInterval ()
*/
$staticMethod=|int|keyboardInputInterval|

/*
static QLocale keyboardInputLocale ()
*/
$staticMethod=|QLocale|keyboardInputLocale|

/*
static Qt::KeyboardModifiers keyboardModifiers ()
*/
$staticMethod=|Qt::KeyboardModifiers|keyboardModifiers|

/*
static Qt::LayoutDirection layoutDirection ()
*/
$staticMethod=|Qt::LayoutDirection|layoutDirection|

/*
static Qt::MouseButtons mouseButtons ()
*/
$staticMethod=|Qt::MouseButtons|mouseButtons|

/*
static QCursor * overrideCursor ()
*/
$staticMethod=|QCursor *|overrideCursor|

/*
static QPalette palette ()
*/
$staticMethod=|QPalette|palette,palette1|

/*
static QPalette palette ( const QWidget * widget )
*/
$staticMethod=|QPalette|palette,palette2|const QWidget *

/*
static QPalette palette ( const char * className )
*/
$staticMethod=|QPalette|palette,palette3|const char *

//[1]QPalette palette ()
//[2]QPalette palette ( const QWidget * widget )
//[3]QPalette palette ( const char * className )

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAPPLICATION_PALETTE1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_PALETTE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_PALETTE3 );
  }
}

/*
static Qt::KeyboardModifiers queryKeyboardModifiers ()
*/
$staticMethod=|Qt::KeyboardModifiers|queryKeyboardModifiers|

/*
static bool quitOnLastWindowClosed ()
*/
$staticMethod=|bool|quitOnLastWindowClosed|

/*
static void restoreOverrideCursor ()
*/
$staticMethod=|void|restoreOverrideCursor|

/*
static void setActiveWindow ( QWidget * active )
*/
$staticMethod=|void|setActiveWindow|QWidget *

/*
static void setColorSpec ( int spec )
*/
$staticMethod=|void|setColorSpec|int

/*
static void setCursorFlashTime ( int )
*/
$staticMethod=|void|setCursorFlashTime|int

/*
static void setDesktopSettingsAware ( bool on )
*/
$staticMethod=|void|setDesktopSettingsAware|bool

/*
static void setDoubleClickInterval ( int )
*/
$staticMethod=|void|setDoubleClickInterval|int

/*
static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
*/
$staticMethod=|void|setEffectEnabled|Qt::UIEffect,bool=true

/*
static void setFont ( const QFont & font, const char * className = 0 )
*/
$staticMethod=|void|setFont|const QFont &,const char *=0

/*
static void setGlobalStrut ( const QSize & )
*/
$staticMethod=|void|setGlobalStrut|const QSize &

/*
static void setGraphicsSystem ( const QString & system )
*/
$staticMethod=|void|setGraphicsSystem|const QString &

/*
static void setKeyboardInputInterval ( int )
*/
$staticMethod=|void|setKeyboardInputInterval|int

/*
static void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

/*
static void setOverrideCursor ( const QCursor & cursor )
*/
$staticMethod=|void|setOverrideCursor|const QCursor &

/*
static void setPalette ( const QPalette & palette, const char * className = 0 )
*/
$staticMethod=|void|setPalette|const QPalette &,const char *=0

/*
static void setQuitOnLastWindowClosed ( bool quit )
*/
$staticMethod=|void|setQuitOnLastWindowClosed|bool

/*
static void setStartDragDistance ( int l )
*/
$staticMethod=|void|setStartDragDistance|int

/*
static void setStartDragTime ( int ms )
*/
$staticMethod=|void|setStartDragTime|int

/*
static void setStyle ( QStyle * style )
*/
$staticMethod=|void|setStyle,setStyle1|QStyle *

/*
static QStyle * setStyle ( const QString & style )
*/
$staticMethod=|QStyle *|setStyle,setStyle2|const QString &

//[1]void setStyle ( QStyle * style )
//[2]QStyle * setStyle ( const QString & style )

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && ISQSTYLE(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_SETSTYLE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_SETSTYLE2 );
  }
}

/*
static void setWheelScrollLines ( int )
*/
$staticMethod=|void|setWheelScrollLines|int

/*
static void setWindowIcon ( const QIcon & icon )
*/
$staticMethod=|void|setWindowIcon|const QIcon &

/*
static int startDragDistance ()
*/
$staticMethod=|int|startDragDistance|

/*
static int startDragTime ()
*/
$staticMethod=|int|startDragTime|

/*
static QStyle * style ()
*/
$staticMethod=|QStyle *|style|

/*
static void syncX ()
*/
$staticMethod=|void|syncX|

/*
static QWidget * topLevelAt ( const QPoint & point )
*/
$staticMethod=|QWidget *|topLevelAt,topLevelAt1|const QPoint &

/*
static QWidget * topLevelAt ( int x, int y )
*/
$staticMethod=|QWidget *|topLevelAt,topLevelAt2|int,int

//[1]QWidget * topLevelAt ( const QPoint & point )
//[2]QWidget * topLevelAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_TOPLEVELAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QAPPLICATION_TOPLEVELAT2 );
  }
}

/*
static QWidgetList topLevelWidgets ()
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELWIDGETS )
{
  QWidgetList list = QApplication::topLevelWidgets ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWIDGET" );
  #else
  pDynSym = hb_dynsymFindName( "QWIDGET" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QWidget *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QApplication::Type type ()
*/
$staticMethod=|QApplication::Type|type|

/*
static int wheelScrollLines ()
*/
$staticMethod=|int|wheelScrollLines|

/*
static QWidget * widgetAt ( const QPoint & point )
*/
$staticMethod=|QWidget *|widgetAt,widgetAt1|const QPoint &

/*
static QWidget * widgetAt ( int x, int y )
*/
$staticMethod=|QWidget *|widgetAt,widgetAt2|int,int

//[1]QWidget * widgetAt ( const QPoint & point )
//[2]QWidget * widgetAt ( int x, int y )

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QAPPLICATION_WIDGETAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QAPPLICATION_WIDGETAT2 );
  }
}

/*
static QIcon windowIcon ()
*/
$staticMethod=|QIcon|windowIcon|

#pragma ENDDUMP
