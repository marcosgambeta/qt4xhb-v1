%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCoreApplication

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QFont>
#include <QtCore/QLocale>
#include <QtGui/QIcon>
#include <QtGui/QSessionManager>
#include <QtGui/QFontMetrics>
#include <QtGui/QPalette>
#include <QtGui/QInputContext>
#include <QtGui/QClipboard>
#include <QtGui/QDesktopWidget>
#include <QtGui/QStyle>

/*
QApplication ( int & argc, char ** argv )
QApplication ( int & argc, char ** argv, bool GUIenabled )
QApplication ( int & argc, char ** argv, Type type )
QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )
*/

%% TODO: implementar outros construtores

$prototype=QApplication ( int & argc, char ** argv )
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QApplication * o = new QApplication( argc, argv );
  Qt4xHb::storePointerAndFlag ( o, false );
}
$addMethod=new

$deleteMethod

$prototypeV2=virtual void commitData( QSessionManager & manager )

$prototypeV2=QInputContext * inputContext() const

$prototypeV2=bool isSessionRestored() const

$prototypeV2=virtual void saveState( QSessionManager & manager )

$prototypeV2=QString sessionId() const

$prototypeV2=QString sessionKey() const

$prototypeV2=void setInputContext( QInputContext * inputContext )

$prototypeV2=QString styleSheet() const

$prototype=virtual bool notify ( QObject * receiver, QEvent * e )
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototypeV2=void aboutQt()

$prototypeV2=void closeAllWindows()

$prototypeV2=void setStyleSheet( const QString & sheet )

$prototypeV2=static QWidget * activeModalWidget()

$prototypeV2=static QWidget * activePopupWidget()

$prototypeV2=static QWidget * activeWindow()

$prototype=static void alert ( QWidget * widget, int msec = 0 )
$staticMethod=|void|alert|QWidget *,int=0

$prototypeV2=static QWidgetList allWidgets()

$prototypeV2=static void beep()

$prototypeV2=static void changeOverrideCursor( const QCursor & cursor )

$prototypeV2=static QClipboard * clipboard()

$prototypeV2=static int colorSpec()

$prototypeV2=static int cursorFlashTime()

$prototypeV2=static QDesktopWidget * desktop()

$prototypeV2=static bool desktopSettingsAware()

$prototypeV2=static int doubleClickInterval()

$prototypeV2=static int exec()

$prototypeV2=static QWidget * focusWidget()

$prototype=static QFont font ()
$internalStaticMethod=|QFont|font,font1|

$prototype=static QFont font ( const QWidget * widget )
$internalStaticMethod=|QFont|font,font2|const QWidget *

$prototype=static QFont font ( const char * className )
$internalStaticMethod=|QFont|font,font3|const char *

/*
[1]QFont font ()
[2]QFont font ( const QWidget * widget )
[3]QFont font ( const char * className )
*/

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    QApplication_font1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_font2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_font3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=font

$prototypeV2=static QFontMetrics fontMetrics()

$prototypeV2=static QSize globalStrut()

$prototypeV2=static bool isEffectEnabled( Qt::UIEffect effect )

$prototypeV2=static bool isLeftToRight()

$prototypeV2=static bool isRightToLeft()

$prototypeV2=static Qt::LayoutDirection keyboardInputDirection()

$prototypeV2=static int keyboardInputInterval()

$prototypeV2=static QLocale keyboardInputLocale()

$prototypeV2=static Qt::KeyboardModifiers keyboardModifiers()

$prototypeV2=static Qt::LayoutDirection layoutDirection()

$prototypeV2=static Qt::MouseButtons mouseButtons()

$prototypeV2=static QCursor * overrideCursor()

$prototype=static QPalette palette ()
$internalStaticMethod=|QPalette|palette,palette1|

$prototype=static QPalette palette ( const QWidget * widget )
$internalStaticMethod=|QPalette|palette,palette2|const QWidget *

$prototype=static QPalette palette ( const char * className )
$internalStaticMethod=|QPalette|palette,palette3|const char *

/*
[1]QPalette palette ()
[2]QPalette palette ( const QWidget * widget )
[3]QPalette palette ( const char * className )
*/

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    QApplication_palette1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_palette2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_palette3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=palette

$prototypeV2=static Qt::KeyboardModifiers queryKeyboardModifiers()

$prototypeV2=static bool quitOnLastWindowClosed()

$prototypeV2=static void restoreOverrideCursor()

$prototypeV2=static void setActiveWindow( QWidget * active )

$prototypeV2=static void setColorSpec( int spec )

$prototypeV2=static void setCursorFlashTime( int )

$prototypeV2=static void setDesktopSettingsAware( bool on )

$prototypeV2=static void setDoubleClickInterval( int )

$prototype=static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
$staticMethod=|void|setEffectEnabled|Qt::UIEffect,bool=true

$prototype=static void setFont ( const QFont & font, const char * className = 0 )
$staticMethod=|void|setFont|const QFont &,const char *=0

$prototypeV2=static void setGlobalStrut( const QSize & )

$prototypeV2=static void setGraphicsSystem( const QString & system )

$prototypeV2=static void setKeyboardInputInterval( int )

$prototypeV2=static void setLayoutDirection( Qt::LayoutDirection direction )

$prototypeV2=static void setOverrideCursor( const QCursor & cursor )

$prototype=static void setPalette ( const QPalette & palette, const char * className = 0 )
$staticMethod=|void|setPalette|const QPalette &,const char *=0

$prototypeV2=static void setQuitOnLastWindowClosed( bool quit )

$prototypeV2=static void setStartDragDistance( int l )

$prototypeV2=static void setStartDragTime( int ms )

$prototype=static void setStyle ( QStyle * style )
$internalStaticMethod=|void|setStyle,setStyle1|QStyle *

$prototype=static QStyle * setStyle ( const QString & style )
$internalStaticMethod=|QStyle *|setStyle,setStyle2|const QString &

/*
[1]void setStyle ( QStyle * style )
[2]QStyle * setStyle ( const QString & style )
*/

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && ISQSTYLE(1) )
  {
    QApplication_setStyle1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_setStyle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setStyle

$prototypeV2=static void setWheelScrollLines( int )

$prototypeV2=static void setWindowIcon( const QIcon & icon )

$prototypeV2=static int startDragDistance()

$prototypeV2=static int startDragTime()

$prototypeV2=static QStyle * style()

$prototypeV2=static void syncX()

$prototype=static QWidget * topLevelAt ( const QPoint & point )
$internalStaticMethod=|QWidget *|topLevelAt,topLevelAt1|const QPoint &

$prototype=static QWidget * topLevelAt ( int x, int y )
$internalStaticMethod=|QWidget *|topLevelAt,topLevelAt2|int,int

/*
[1]QWidget * topLevelAt ( const QPoint & point )
[2]QWidget * topLevelAt ( int x, int y )
*/

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_topLevelAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_topLevelAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=topLevelAt

$prototypeV2=static QWidgetList topLevelWidgets()

$prototypeV2=static QApplication::Type type()

$prototypeV2=static int wheelScrollLines()

$prototype=static QWidget * widgetAt ( const QPoint & point )
$internalStaticMethod=|QWidget *|widgetAt,widgetAt1|const QPoint &

$prototype=static QWidget * widgetAt ( int x, int y )
$internalStaticMethod=|QWidget *|widgetAt,widgetAt2|int,int

/*
[1]QWidget * widgetAt ( const QPoint & point )
[2]QWidget * widgetAt ( int x, int y )
*/

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_widgetAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_widgetAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=widgetAt

$prototypeV2=static QIcon windowIcon()

$beginSignals
$signal=|aboutToReleaseGpuResources()
$signal=|aboutToUseGpuResources()
$signal=|commitDataRequest(QSessionManager)
$signal=|focusChanged(QWidget*,QWidget*)
$signal=|fontDatabaseChanged()
$signal=|lastWindowClosed()
$signal=|saveStateRequest(QSessionManager)
$endSignals

#pragma ENDDUMP
