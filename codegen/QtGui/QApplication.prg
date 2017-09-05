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
HB_FUNC_STATIC( QAPPLICATION_SESSIONID )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->sessionId () );
  }
}

/*
QString sessionKey () const
*/
HB_FUNC_STATIC( QAPPLICATION_SESSIONKEY )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->sessionKey () );
  }
}

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
HB_FUNC_STATIC( QAPPLICATION_STYLESHEET )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->styleSheet () );
  }
}

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
HB_FUNC_STATIC( QAPPLICATION_SETSTYLESHEET )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStyleSheet ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// Static Public Members

/*
QWidget * activeModalWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEMODALWIDGET )
{
  QWidget * ptr = QApplication::activeModalWidget ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QWidget * activePopupWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEPOPUPWIDGET )
{
  QWidget * ptr = QApplication::activePopupWidget ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QWidget * activeWindow ()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEWINDOW )
{
  QWidget * ptr = QApplication::activeWindow ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
void alert ( QWidget * widget, int msec = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_ALERT )
{
  QApplication::alert ( PQWIDGET(1), OPINT(2,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidgetList allWidgets ()
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
void beep ()
*/
HB_FUNC_STATIC( QAPPLICATION_BEEP )
{
  QApplication::beep ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void changeOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_CHANGEOVERRIDECURSOR )
{
  QApplication::changeOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QClipboard * clipboard ()
*/
HB_FUNC_STATIC( QAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QApplication::clipboard ();
  _qt4xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}

/*
int colorSpec ()
*/
HB_FUNC_STATIC( QAPPLICATION_COLORSPEC )
{
  RINT( QApplication::colorSpec () );
}

/*
int cursorFlashTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_CURSORFLASHTIME )
{
  RINT( QApplication::cursorFlashTime () );
}

/*
QDesktopWidget * desktop ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOP )
{
  QDesktopWidget * ptr = QApplication::desktop ();
  _qt4xhb_createReturnClass ( ptr, "QDESKTOPWIDGET" );
}

/*
bool desktopSettingsAware ()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOPSETTINGSAWARE )
{
  RBOOL( QApplication::desktopSettingsAware () );
}

/*
int doubleClickInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_DOUBLECLICKINTERVAL )
{
  RINT( QApplication::doubleClickInterval () );
}

/*
int exec ()
*/
HB_FUNC_STATIC( QAPPLICATION_EXEC )
{
  RINT( QApplication::exec () );
}

/*
QWidget * focusWidget ()
*/
HB_FUNC_STATIC( QAPPLICATION_FOCUSWIDGET )
{
  QWidget * ptr = QApplication::focusWidget ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QFont font ()
*/
HB_FUNC_STATIC( QAPPLICATION_FONT1 )
{
  QFont * ptr = new QFont( QApplication::font () );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
QFont font ( const QWidget * widget )
*/
HB_FUNC_STATIC( QAPPLICATION_FONT2 )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QFont * ptr = new QFont( QApplication::font ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QFONT", true );
}

/*
QFont font ( const char * className )
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
QFontMetrics fontMetrics ()
*/
HB_FUNC_STATIC( QAPPLICATION_FONTMETRICS )
{
  QFontMetrics * ptr = new QFontMetrics( QApplication::fontMetrics () );
  _qt4xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
}

/*
QSize globalStrut ()
*/
HB_FUNC_STATIC( QAPPLICATION_GLOBALSTRUT )
{
  QSize * ptr = new QSize( QApplication::globalStrut () );
  _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
}

/*
bool isEffectEnabled ( Qt::UIEffect effect )
*/
HB_FUNC_STATIC( QAPPLICATION_ISEFFECTENABLED )
{
  int par1 = hb_parni(1);
  RBOOL( QApplication::isEffectEnabled ( (Qt::UIEffect) par1 ) );
}

/*
bool isLeftToRight ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISLEFTTORIGHT )
{
  RBOOL( QApplication::isLeftToRight () );
}

/*
bool isRightToLeft ()
*/
HB_FUNC_STATIC( QAPPLICATION_ISRIGHTTOLEFT )
{
  RBOOL( QApplication::isRightToLeft () );
}

/*
Qt::LayoutDirection keyboardInputDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTDIRECTION )
{
  hb_retni( (int) QApplication::keyboardInputDirection () );
}

/*
int keyboardInputInterval ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTINTERVAL )
{
  RINT( QApplication::keyboardInputInterval () );
}

/*
QLocale keyboardInputLocale ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTLOCALE )
{
  QLocale * ptr = new QLocale( QApplication::keyboardInputLocale () );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
}

/*
Qt::KeyboardModifiers keyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDMODIFIERS )
{
  hb_retni( (int) QApplication::keyboardModifiers () );
}

/*
Qt::LayoutDirection layoutDirection ()
*/
HB_FUNC_STATIC( QAPPLICATION_LAYOUTDIRECTION )
{
  hb_retni( (int) QApplication::layoutDirection () );
}

/*
Qt::MouseButtons mouseButtons ()
*/
HB_FUNC_STATIC( QAPPLICATION_MOUSEBUTTONS )
{
  hb_retni( (int) QApplication::mouseButtons () );
}

/*
QCursor * overrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QApplication::overrideCursor ();
  _qt4xhb_createReturnClass ( ptr, "QCURSOR" );
}

/*
QPalette palette ()
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE1 )
{
  QPalette * ptr = new QPalette( QApplication::palette () );
  _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
QPalette palette ( const QWidget * widget )
*/
HB_FUNC_STATIC( QAPPLICATION_PALETTE2 )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPalette * ptr = new QPalette( QApplication::palette ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
}

/*
QPalette palette ( const char * className )
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
Qt::KeyboardModifiers queryKeyboardModifiers ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
  hb_retni( (int) QApplication::queryKeyboardModifiers () );
}

/*
bool quitOnLastWindowClosed ()
*/
HB_FUNC_STATIC( QAPPLICATION_QUITONLASTWINDOWCLOSED )
{
  RBOOL( QApplication::quitOnLastWindowClosed () );
}

/*
void restoreOverrideCursor ()
*/
HB_FUNC_STATIC( QAPPLICATION_RESTOREOVERRIDECURSOR )
{
  QApplication::restoreOverrideCursor ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setActiveWindow ( QWidget * active )
*/
HB_FUNC_STATIC( QAPPLICATION_SETACTIVEWINDOW )
{
  QApplication::setActiveWindow ( PQWIDGET(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColorSpec ( int spec )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCOLORSPEC )
{
  QApplication::setColorSpec ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursorFlashTime ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCURSORFLASHTIME )
{
  QApplication::setCursorFlashTime ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDesktopSettingsAware ( bool on )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
  QApplication::setDesktopSettingsAware ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleClickInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDOUBLECLICKINTERVAL )
{
  QApplication::setDoubleClickInterval ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
*/
HB_FUNC_STATIC( QAPPLICATION_SETEFFECTENABLED )
{
  int par1 = hb_parni(1);
  QApplication::setEffectEnabled ( (Qt::UIEffect) par1, OPBOOL(2,true) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETFONT )
{
  QApplication::setFont ( *PQFONT(1), (const char *) ISNIL(2)? 0 : hb_parc(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGlobalStrut ( const QSize & )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGLOBALSTRUT )
{
  QApplication::setGlobalStrut ( *PQSIZE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGraphicsSystem ( const QString & system )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGRAPHICSSYSTEM )
{
  QApplication::setGraphicsSystem ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKeyboardInputInterval ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETKEYBOARDINPUTINTERVAL )
{
  QApplication::setKeyboardInputInterval ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QAPPLICATION_SETLAYOUTDIRECTION )
{
  int par1 = hb_parni(1);
  QApplication::setLayoutDirection ( (Qt::LayoutDirection) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOverrideCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_SETOVERRIDECURSOR )
{
  QApplication::setOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPalette ( const QPalette & palette, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETPALETTE )
{
  QApplication::setPalette ( *PQPALETTE(1), (const char *) ISNIL(2)? 0 : hb_parc(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuitOnLastWindowClosed ( bool quit )
*/
HB_FUNC_STATIC( QAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
  QApplication::setQuitOnLastWindowClosed ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartDragDistance ( int l )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGDISTANCE )
{
  QApplication::setStartDragDistance ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartDragTime ( int ms )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGTIME )
{
  QApplication::setStartDragTime ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLE1 )
{
  QStyle * par1 = (QStyle *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QApplication::setStyle ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStyle * setStyle ( const QString & style )
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
void setWheelScrollLines ( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWHEELSCROLLLINES )
{
  QApplication::setWheelScrollLines ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWINDOWICON )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QApplication::setWindowIcon ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int startDragDistance ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGDISTANCE )
{
  RINT( QApplication::startDragDistance () );
}

/*
int startDragTime ()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGTIME )
{
  RINT( QApplication::startDragTime () );
}

/*
QStyle * style ()
*/
HB_FUNC_STATIC( QAPPLICATION_STYLE )
{
  QStyle * ptr = QApplication::style ();
  _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
}

/*
void syncX ()
*/
HB_FUNC_STATIC( QAPPLICATION_SYNCX )
{
  QApplication::syncX ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * topLevelAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT1 )
{
  QWidget * ptr = QApplication::topLevelAt ( *PQPOINT(1) );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QWidget * topLevelAt ( int x, int y )
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
QWidgetList topLevelWidgets ()
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
QApplication::Type type ()
*/
HB_FUNC_STATIC( QAPPLICATION_TYPE )
{
  hb_retni( (int) QApplication::type () );
}

/*
int wheelScrollLines ()
*/
HB_FUNC_STATIC( QAPPLICATION_WHEELSCROLLLINES )
{
  RINT( QApplication::wheelScrollLines () );
}

/*
QWidget * widgetAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QAPPLICATION_WIDGETAT1 )
{
  QWidget * ptr = QApplication::widgetAt ( *PQPOINT(1) );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QWidget * widgetAt ( int x, int y )
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
QIcon windowIcon ()
*/
HB_FUNC_STATIC( QAPPLICATION_WINDOWICON )
{
  QIcon * ptr = new QIcon( QApplication::windowIcon () );
  _qt4xhb_createReturnClass ( ptr, "QICON", true );
}

// Signals

#pragma ENDDUMP
