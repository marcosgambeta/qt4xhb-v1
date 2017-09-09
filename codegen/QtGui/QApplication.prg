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

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QAPPLICATION_COMMITDATA )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSessionManager * par1 = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->commitData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QInputContext * inputContext () const
*/
HB_FUNC_STATIC( QAPPLICATION_INPUTCONTEXT )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QInputContext * ptr = obj->inputContext ();
    _qt4xhb_createReturnClass ( ptr, "QINPUTCONTEXT" );
  }
}

/*
bool isSessionRestored () const
*/
HB_FUNC_STATIC( QAPPLICATION_ISSESSIONRESTORED )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSessionRestored () );
  }
}

/*
virtual void saveState ( QSessionManager & manager )
*/
HB_FUNC_STATIC( QAPPLICATION_SAVESTATE )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSessionManager * par1 = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->saveState ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QAPPLICATION_SETINPUTCONTEXT )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QInputContext * par1 = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setInputContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString styleSheet () const
*/
$method=|QString|styleSheet|

// Reimplemented Public Functions

/*
virtual bool notify ( QObject * receiver, QEvent * e )
*/
HB_FUNC_STATIC( QAPPLICATION_NOTIFY )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->notify ( PQOBJECT(1), PQEVENT(2) ) );
  }
}

// Public Slots

/*
void aboutQt ()
*/
HB_FUNC_STATIC( QAPPLICATION_ABOUTQT )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->aboutQt ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void closeAllWindows ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLOSEALLWINDOWS )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeAllWindows ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyleSheet ( const QString & sheet )
*/
$method=|void|setStyleSheet|const QString &

/*
static QWidget * activeModalWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEMODALWIDGET )
{
  QWidget * ptr = QApplication::activeModalWidget ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * activePopupWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEPOPUPWIDGET )
{
  QWidget * ptr = QApplication::activePopupWidget ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * activeWindow ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEWINDOW )
{
  QWidget * ptr = QApplication::activeWindow ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static void alert ( QWidget * widget, int msec = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_ALERT )
{
  QApplication::alert ( PQWIDGET(1), OPINT(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QAPPLICATION_BEEP )
{
  QApplication::beep ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void changeOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_CHANGEOVERRIDECURSOR )
{
  QApplication::changeOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QClipboard * clipboard ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QApplication::clipboard ();
  _qt4xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}

/*
static int colorSpec ()
*/
HB_FUNC_STATIC( QAPPLICATION_COLORSPEC )
{
  RINT( QApplication::colorSpec () );
}

/*
static int cursorFlashTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_CURSORFLASHTIME )
{
  RINT( QApplication::cursorFlashTime () );
}

/*
static QDesktopWidget * desktop ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOP )
{
  QDesktopWidget * ptr = QApplication::desktop ();
  _qt4xhb_createReturnClass ( ptr, "QDESKTOPWIDGET" );
}

/*
static bool desktopSettingsAware ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOPSETTINGSAWARE )
{
  RBOOL( QApplication::desktopSettingsAware () );
}

/*
static int doubleClickInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_DOUBLECLICKINTERVAL )
{
  RINT( QApplication::doubleClickInterval () );
}

/*
static int exec ()
*/
HB_FUNC_STATIC( QAPPLICATION_EXEC )
{
  RINT( QApplication::exec () );
}

/*
static QWidget * focusWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_FOCUSWIDGET )
{
  QWidget * ptr = QApplication::focusWidget ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QFont font ()
*/
HB_FUNC_STATIC( QAPPLICATION_FONT1 )
{
  QFont * ptr = new QFont( QApplication::font () );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const QWidget * widget )
*/
HB_FUNC_STATIC( QAPPLICATION_FONT2 )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QFont * ptr = new QFont( QApplication::font ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
static QFont font ( const char * className )
*/
HB_FUNC_STATIC( QAPPLICATION_FONT3 )
{
  QFont * ptr = new QFont( QApplication::font ( (const char *) hb_parc(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
}

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
HB_FUNC_STATIC( QAPPLICATION_FONTMETRICS )
{
  QFontMetrics * ptr = new QFontMetrics( QApplication::fontMetrics () );
  _qt4xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
}

/*
static QSize globalStrut ()
*/
HB_FUNC_STATIC( QAPPLICATION_GLOBALSTRUT )
{
  QSize * ptr = new QSize( QApplication::globalStrut () );
  _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
}

/*
static bool isEffectEnabled ( Qt::UIEffect effect )
*/
HB_FUNC_STATIC( QAPPLICATION_ISEFFECTENABLED )
{
  int par1 = hb_parni(1);
  RBOOL( QApplication::isEffectEnabled ( (Qt::UIEffect) par1 ) );
}

/*
static bool isLeftToRight ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISLEFTTORIGHT )
{
  RBOOL( QApplication::isLeftToRight () );
}

/*
static bool isRightToLeft ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISRIGHTTOLEFT )
{
  RBOOL( QApplication::isRightToLeft () );
}

/*
static Qt::LayoutDirection keyboardInputDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTDIRECTION )
{
  hb_retni( (int) QApplication::keyboardInputDirection () );
}

/*
static int keyboardInputInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTINTERVAL )
{
  RINT( QApplication::keyboardInputInterval () );
}

/*
static QLocale keyboardInputLocale ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTLOCALE )
{
  QLocale * ptr = new QLocale( QApplication::keyboardInputLocale () );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
}

/*
static Qt::KeyboardModifiers keyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDMODIFIERS )
{
  hb_retni( (int) QApplication::keyboardModifiers () );
}

/*
static Qt::LayoutDirection layoutDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_LAYOUTDIRECTION )
{
  hb_retni( (int) QApplication::layoutDirection () );
}

/*
static Qt::MouseButtons mouseButtons ()
*/
HB_FUNC_STATIC( QAPPLICATION_MOUSEBUTTONS )
{
  hb_retni( (int) QApplication::mouseButtons () );
}

/*
static QCursor * overrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QApplication::overrideCursor ();
  _qt4xhb_createReturnClass ( ptr, "QCURSOR" );
}

/*
static QPalette palette ()
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE1 )
{
  QPalette * ptr = new QPalette( QApplication::palette () );
  _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const QWidget * widget )
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE2 )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPalette * ptr = new QPalette( QApplication::palette ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
static QPalette palette ( const char * className )
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE3 )
{
  QPalette * ptr = new QPalette( QApplication::palette ( (const char *) hb_parc(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
}

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
HB_FUNC_STATIC( QAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
  hb_retni( (int) QApplication::queryKeyboardModifiers () );
}

/*
static bool quitOnLastWindowClosed ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUITONLASTWINDOWCLOSED )
{
  RBOOL( QApplication::quitOnLastWindowClosed () );
}

/*
static void restoreOverrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_RESTOREOVERRIDECURSOR )
{
  QApplication::restoreOverrideCursor ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setActiveWindow ( QWidget * active )
*/
HB_FUNC_STATIC( QAPPLICATION_SETACTIVEWINDOW )
{
  QApplication::setActiveWindow ( PQWIDGET(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setColorSpec ( int spec )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCOLORSPEC )
{
  QApplication::setColorSpec ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setCursorFlashTime ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCURSORFLASHTIME )
{
  QApplication::setCursorFlashTime ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setDesktopSettingsAware ( bool on )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
  QApplication::setDesktopSettingsAware ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setDoubleClickInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDOUBLECLICKINTERVAL )
{
  QApplication::setDoubleClickInterval ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
*/
HB_FUNC_STATIC( QAPPLICATION_SETEFFECTENABLED )
{
  int par1 = hb_parni(1);
  QApplication::setEffectEnabled ( (Qt::UIEffect) par1, OPBOOL(2,true) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setFont ( const QFont & font, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETFONT )
{
  QApplication::setFont ( *PQFONT(1), (const char *) ISNIL(2)? 0 : hb_parc(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setGlobalStrut ( const QSize & )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGLOBALSTRUT )
{
  QApplication::setGlobalStrut ( *PQSIZE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setGraphicsSystem ( const QString & system )
*/
$staticMethod=|void|setGraphicsSystem|const QString &

/*
static void setKeyboardInputInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETKEYBOARDINPUTINTERVAL )
{
  QApplication::setKeyboardInputInterval ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QAPPLICATION_SETLAYOUTDIRECTION )
{
  int par1 = hb_parni(1);
  QApplication::setLayoutDirection ( (Qt::LayoutDirection) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_SETOVERRIDECURSOR )
{
  QApplication::setOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setPalette ( const QPalette & palette, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETPALETTE )
{
  QApplication::setPalette ( *PQPALETTE(1), (const char *) ISNIL(2)? 0 : hb_parc(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setQuitOnLastWindowClosed ( bool quit )
*/
HB_FUNC_STATIC( QAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
  QApplication::setQuitOnLastWindowClosed ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setStartDragDistance ( int l )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGDISTANCE )
{
  QApplication::setStartDragDistance ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setStartDragTime ( int ms )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGTIME )
{
  QApplication::setStartDragTime ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLE1 )
{
  QStyle * par1 = (QStyle *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QApplication::setStyle ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QStyle * setStyle ( const QString & style )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLE2 )
{
  QStyle * ptr = QApplication::setStyle ( PQSTRING(1) );
  _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
}

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
HB_FUNC_STATIC( QAPPLICATION_SETWHEELSCROLLLINES )
{
  QApplication::setWheelScrollLines ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWINDOWICON )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QApplication::setWindowIcon ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int startDragDistance ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGDISTANCE )
{
  RINT( QApplication::startDragDistance () );
}

/*
static int startDragTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGTIME )
{
  RINT( QApplication::startDragTime () );
}

/*
static QStyle * style ()
*/
HB_FUNC_STATIC( QAPPLICATION_STYLE )
{
  QStyle * ptr = QApplication::style ();
  _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
}

/*
static void syncX ()
*/
HB_FUNC_STATIC( QAPPLICATION_SYNCX )
{
  QApplication::syncX ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QWidget * topLevelAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT1 )
{
  QWidget * ptr = QApplication::topLevelAt ( *PQPOINT(1) );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * topLevelAt ( int x, int y )
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT2 )
{
  QWidget * ptr = QApplication::topLevelAt ( PINT(1), PINT(2) );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

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
HB_FUNC_STATIC( QAPPLICATION_TYPE )
{
  hb_retni( (int) QApplication::type () );
}

/*
static int wheelScrollLines ()
*/
HB_FUNC_STATIC( QAPPLICATION_WHEELSCROLLLINES )
{
  RINT( QApplication::wheelScrollLines () );
}

/*
static QWidget * widgetAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QAPPLICATION_WIDGETAT1 )
{
  QWidget * ptr = QApplication::widgetAt ( *PQPOINT(1) );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * widgetAt ( int x, int y )
*/
HB_FUNC_STATIC( QAPPLICATION_WIDGETAT2 )
{
  QWidget * ptr = QApplication::widgetAt ( PINT(1), PINT(2) );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

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
HB_FUNC_STATIC( QAPPLICATION_WINDOWICON )
{
  QIcon * ptr = new QIcon( QApplication::windowIcon () );
  _qt4xhb_createReturnClass ( ptr, "QICON", true );
}

// Signals

#pragma ENDDUMP
