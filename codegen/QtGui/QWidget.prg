%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO: WId in others OS's

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QRECT
REQUEST QREGION
REQUEST QMARGINS
REQUEST QCURSOR
REQUEST QFONT
REQUEST QFONTINFO
REQUEST QFONTMETRICS
REQUEST QGRAPHICSEFFECT
REQUEST QGRAPHICSPROXYWIDGET
REQUEST QINPUTCONTEXT
REQUEST QVARIANT
REQUEST QLAYOUT
REQUEST QLOCALE
REQUEST QPOINT
REQUEST QPALETTE
REQUEST QBYTEARRAY
REQUEST QSIZEPOLICY
REQUEST QSTYLE
REQUEST QICON
REQUEST QPAINTENGINE
REQUEST QACCESSIBLEEVENT
REQUEST QACTIONEVENT
REQUEST QCLIPBOARDEVENT
REQUEST QCLOSEEVENT
REQUEST QCONTEXTMENUEVENT
REQUEST QDRAGENTEREVENT
REQUEST QDRAGLEAVEEVENT
REQUEST QDRAGMOVEEVENT
REQUEST QDROPEVENT
REQUEST QFILEOPENEVENT
REQUEST QFOCUSEVENT
REQUEST QGESTUREEVENT
REQUEST QGRAPHICSSCENECONTEXTMENUEVENT
REQUEST QGRAPHICSSCENEDRAGDROPEVENT
REQUEST QGRAPHICSSCENEEVENT
REQUEST QGRAPHICSSCENEHELPEVENT
REQUEST QGRAPHICSSCENEHOVEREVENT
REQUEST QGRAPHICSSCENEMOUSEEVENT
REQUEST QGRAPHICSSCENEMOVEEVENT
REQUEST QGRAPHICSSCENERESIZEEVENT
REQUEST QGRAPHICSSCENEWHEELEVENT
REQUEST QHELPEVENT
REQUEST QHIDEEVENT
REQUEST QHOVEREVENT
REQUEST QICONDRAGEVENT
REQUEST QINPUTEVENT
REQUEST QINPUTMETHODEVENT
REQUEST QKEYEVENT
REQUEST QMOUSEEVENT
REQUEST QMOVEEVENT
REQUEST QPAINTEVENT
REQUEST QRESIZEEVENT
REQUEST QSHORTCUTEVENT
REQUEST QSHOWEVENT
REQUEST QSTATUSTIPEVENT
REQUEST QTABLETEVENT
REQUEST QTOOLBARCHANGEEVENT
REQUEST QTOUCHEVENT
REQUEST QWHATSTHISCLICKEDEVENT
REQUEST QWHEELEVENT
REQUEST QWINDOWSTATECHANGEEVENT
#endif

CLASS QWidget INHERIT QObject

   METHOD new
   METHOD delete
   METHOD acceptDrops
   METHOD accessibleDescription
   METHOD accessibleName
   METHOD actions
   METHOD activateWindow
   METHOD addAction
   METHOD addActions
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD backgroundRole
   METHOD baseSize
   METHOD childAt
   METHOD childrenRect
   METHOD childrenRegion
   METHOD clearFocus
   METHOD clearMask
   METHOD contentsMargins
   METHOD contentsRect
   METHOD contextMenuPolicy
   METHOD cursor
   METHOD effectiveWinId
   METHOD ensurePolished
   METHOD focusPolicy
   METHOD focusProxy
   METHOD focusWidget
   METHOD font
   METHOD fontInfo
   METHOD fontMetrics
   METHOD foregroundRole
   METHOD frameGeometry
   METHOD frameSize
   METHOD geometry
   METHOD getContentsMargins
   METHOD grabGesture
   METHOD grabKeyboard
   METHOD grabMouse
   METHOD grabShortcut
   METHOD graphicsEffect
   METHOD graphicsProxyWidget
   METHOD hasFocus
   METHOD hasMouseTracking
   METHOD height
   METHOD heightForWidth
   METHOD inputContext
   METHOD inputMethodHints
   METHOD inputMethodQuery
   METHOD insertAction
   METHOD insertActions
   METHOD isActiveWindow
   METHOD isAncestorOf
   METHOD isEnabled
   METHOD isEnabledTo
   METHOD isFullScreen
   METHOD isHidden
   METHOD isMaximized
   METHOD isMinimized
   METHOD isModal
   METHOD isVisible
   METHOD isVisibleTo
   METHOD isWindow
   METHOD isWindowModified
   METHOD layout
   METHOD layoutDirection
   METHOD locale
   METHOD mapFrom
   METHOD mapFromGlobal
   METHOD mapFromParent
   METHOD mapTo
   METHOD mapToGlobal
   METHOD mapToParent
   METHOD mask
   METHOD maximumHeight
   METHOD maximumSize
   METHOD maximumWidth
   METHOD minimumHeight
   METHOD minimumSize
   METHOD minimumSizeHint
   METHOD minimumWidth
   METHOD move
   METHOD nativeParentWidget
   METHOD nextInFocusChain
   METHOD normalGeometry
   METHOD overrideWindowFlags
   METHOD palette
   METHOD parentWidget
   METHOD pos
   METHOD previousInFocusChain
   METHOD rect
   METHOD releaseKeyboard
   METHOD releaseMouse
   METHOD releaseShortcut
   METHOD removeAction
   METHOD render
   METHOD repaint
   METHOD resize
   METHOD restoreGeometry
   METHOD saveGeometry
   METHOD scroll
   METHOD setAcceptDrops
   METHOD setAccessibleDescription
   METHOD setAccessibleName
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setBackgroundRole
   METHOD setBaseSize
   METHOD setContentsMargins
   METHOD setContextMenuPolicy
   METHOD setCursor
   METHOD setFixedHeight
   METHOD setFixedSize
   METHOD setFixedWidth
   METHOD setFocus
   METHOD setFocusPolicy
   METHOD setFocusProxy
   METHOD setFont
   METHOD setForegroundRole
   METHOD setGeometry
   METHOD setGraphicsEffect
   METHOD setInputContext
   METHOD setInputMethodHints
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setLocale
   METHOD setMask
   METHOD setMaximumHeight
   METHOD setMaximumSize
   METHOD setMaximumWidth
   METHOD setMinimumHeight
   METHOD setMinimumSize
   METHOD setMinimumWidth
   METHOD setMouseTracking
   METHOD setPalette
   METHOD setParent
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setSizeIncrement
   METHOD setSizePolicy
   METHOD setStatusTip
   METHOD setStyle
   METHOD setToolTip
   METHOD setUpdatesEnabled
   METHOD setWhatsThis
   METHOD setWindowFilePath
   METHOD setWindowFlags
   METHOD setWindowIcon
   METHOD setWindowIconText
   METHOD setWindowModality
   METHOD setWindowOpacity
   METHOD setWindowRole
   METHOD setWindowState
   METHOD size
   METHOD sizeHint
   METHOD sizeIncrement
   METHOD sizePolicy
   METHOD stackUnder
   METHOD statusTip
   METHOD style
   METHOD styleSheet
   METHOD testAttribute
   METHOD toolTip
   METHOD underMouse
   METHOD ungrabGesture
   METHOD unsetCursor
   METHOD unsetLayoutDirection
   METHOD unsetLocale
   METHOD update
   METHOD updateGeometry
   METHOD updatesEnabled
   METHOD visibleRegion
   METHOD whatsThis
   METHOD width
   METHOD winId
   METHOD window
   METHOD windowFilePath
   METHOD windowFlags
   METHOD windowIcon
   METHOD windowIconText
   METHOD windowModality
   METHOD windowOpacity
   METHOD windowRole
   METHOD windowState
   METHOD windowTitle
   METHOD windowType
   METHOD x
   METHOD y
   METHOD paintEngine
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setDisabled
   METHOD setEnabled
   METHOD setHidden
   METHOD setStyleSheet
   METHOD setVisible
   METHOD setWindowModified
   METHOD setWindowTitle
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal
   METHOD colorCount
   METHOD depth
   METHOD heightMM
   METHOD logicalDpiX
   METHOD logicalDpiY
   METHOD numColors
   METHOD paintingActive
   METHOD physicalDpiX
   METHOD physicalDpiY
   METHOD widthMM
   METHOD find
   METHOD keyboardGrabber
   METHOD mouseGrabber
   METHOD setTabOrder

   METHOD onCustomContextMenuRequested

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QIcon>
#include <QVariant>
#include <QLocale>
#include <QGraphicsEffect>
#include <QGraphicsProxyWidget>
#include <QInputContext>
#include <QLayout>
#include <QStyle>

$prototype=QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=bool acceptDrops () const
$method=|bool|acceptDrops|

$prototype=QString accessibleDescription () const
$method=|QString|accessibleDescription|

$prototype=QString accessibleName () const
$method=|QString|accessibleName|

$prototype=QList<QAction *> actions () const
$method=|QList<QAction *>|actions|

$prototype=void activateWindow ()
$method=|void|activateWindow|

$prototype=void addAction ( QAction * action )
$method=|void|addAction|QAction *

$prototype=void addActions ( QList<QAction *> actions )
$method=|void|addActions|QList<QAction *>

$prototype=void adjustSize ()
$method=|void|adjustSize|

$prototype=bool autoFillBackground () const
$method=|bool|autoFillBackground|

$prototype=QPalette::ColorRole backgroundRole () const
$method=|QPalette::ColorRole|backgroundRole|

$prototype=QSize baseSize () const
$method=|QSize|baseSize|

$prototype=QWidget * childAt ( int x, int y ) const
$internalMethod=|QWidget *|childAt,childAt1|int,int

$prototype=QWidget * childAt ( const QPoint & p ) const
$internalMethod=|QWidget *|childAt,childAt2|const QPoint &

//[1]QWidget * childAt ( int x, int y ) const
//[2]QWidget * childAt ( const QPoint & p ) const

HB_FUNC_STATIC( QWIDGET_CHILDAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_childAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_childAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect childrenRect () const
$method=|QRect|childrenRect|

$prototype=QRegion childrenRegion () const
$method=|QRegion|childrenRegion|

$prototype=void clearFocus ()
$method=|void|clearFocus|

$prototype=void clearMask ()
$method=|void|clearMask|

$prototype=QMargins contentsMargins () const
$method=|QMargins|contentsMargins|

$prototype=QRect contentsRect () const
$method=|QRect|contentsRect|

$prototype=Qt::ContextMenuPolicy contextMenuPolicy () const
$method=|Qt::ContextMenuPolicy|contextMenuPolicy|

$prototype=QCursor cursor () const
$method=|QCursor|cursor|

$prototype=WId effectiveWinId () const
$method=|WId|effectiveWinId||#ifdef Q_OS_WIN

$prototype=void ensurePolished () const
$method=|void|ensurePolished|

$prototype=Qt::FocusPolicy focusPolicy () const
$method=|Qt::FocusPolicy|focusPolicy|

$prototype=QWidget * focusProxy () const
$method=|QWidget *|focusProxy|

$prototype=QWidget * focusWidget () const
$method=|QWidget *|focusWidget|

$prototype=const QFont & font () const
$method=|const QFont &|font|

$prototype=QFontInfo fontInfo () const
$method=|QFontInfo|fontInfo|

$prototype=QFontMetrics fontMetrics () const
$method=|QFontMetrics|fontMetrics|

$prototype=QPalette::ColorRole foregroundRole () const
$method=|QPalette::ColorRole|foregroundRole|

$prototype=QRect frameGeometry () const
$method=|QRect|frameGeometry|

$prototype=QSize frameSize () const
$method=|QSize|frameSize|

$prototype=const QRect & geometry () const
$method=|const QRect &|geometry|

$prototype=void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getContentsMargins|int *,int *,int *,int *

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototype=void grabKeyboard ()
$method=|void|grabKeyboard|

$prototype=void grabMouse ()
$internalMethod=|void|grabMouse,grabMouse1|

$prototype=void grabMouse ( const QCursor & cursor )
$internalMethod=|void|grabMouse,grabMouse2|const QCursor &

//[1]void grabMouse ()
//[2]void grabMouse ( const QCursor & cursor )

HB_FUNC_STATIC( QWIDGET_GRABMOUSE )
{
  if( ISNUMPAR(0) )
  {
    QWidget_grabMouse1();
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    QWidget_grabMouse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut

$prototype=QGraphicsEffect * graphicsEffect () const
$method=|QGraphicsEffect *|graphicsEffect|

$prototype=QGraphicsProxyWidget * graphicsProxyWidget () const
$method=|QGraphicsProxyWidget *|graphicsProxyWidget|

$prototype=bool hasFocus () const
$method=|bool|hasFocus|

$prototype=bool hasMouseTracking () const
$method=|bool|hasMouseTracking|

$prototype=int height () const
$method=|int|height|

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=QInputContext * inputContext ()
$method=|QInputContext *|inputContext|

$prototype=Qt::InputMethodHints inputMethodHints () const
$method=|Qt::InputMethodHints|inputMethodHints|

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void insertAction ( QAction * before, QAction * action )
$method=|void|insertAction|QAction *,QAction *

$prototype=void insertActions ( QAction * before, QList<QAction *> actions )
$method=|void|insertActions|QAction *,QList<QAction *>

$prototype=bool isActiveWindow () const
$method=|bool|isActiveWindow|

$prototype=bool isAncestorOf ( const QWidget * child ) const
$method=|bool|isAncestorOf|const QWidget *

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=bool isEnabledTo ( QWidget * ancestor ) const
$method=|bool|isEnabledTo|QWidget *

$prototype=bool isFullScreen () const
$method=|bool|isFullScreen|

$prototype=bool isHidden () const
$method=|bool|isHidden|

$prototype=bool isMaximized () const
$method=|bool|isMaximized|

$prototype=bool isMinimized () const
$method=|bool|isMinimized|

$prototype=bool isModal () const
$method=|bool|isModal|

$prototype=bool isVisible () const
$method=|bool|isVisible|

$prototype=bool isVisibleTo ( QWidget * ancestor ) const
$method=|bool|isVisibleTo|QWidget *

$prototype=bool isWindow () const
$method=|bool|isWindow|

$prototype=bool isWindowModified () const
$method=|bool|isWindowModified|

$prototype=QLayout * layout () const
$method=|QLayout *|layout|

$prototype=Qt::LayoutDirection layoutDirection () const
$method=|Qt::LayoutDirection|layoutDirection|

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
$method=|QPoint|mapFrom|QWidget *,const QPoint &

$prototype=QPoint mapFromGlobal ( const QPoint & pos ) const
$method=|QPoint|mapFromGlobal|const QPoint &

$prototype=QPoint mapFromParent ( const QPoint & pos ) const
$method=|QPoint|mapFromParent|const QPoint &

$prototype=QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
$method=|QPoint|mapTo|QWidget *,const QPoint &

$prototype=QPoint mapToGlobal ( const QPoint & pos ) const
$method=|QPoint|mapToGlobal|const QPoint &

$prototype=QPoint mapToParent ( const QPoint & pos ) const
$method=|QPoint|mapToParent|const QPoint &

$prototype=QRegion mask () const
$method=|QRegion|mask|

$prototype=int maximumHeight () const
$method=|int|maximumHeight|

$prototype=QSize maximumSize () const
$method=|QSize|maximumSize|

$prototype=int maximumWidth () const
$method=|int|maximumWidth|

$prototype=int minimumHeight () const
$method=|int|minimumHeight|

$prototype=QSize minimumSize () const
$method=|QSize|minimumSize|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=int minimumWidth () const
$method=|int|minimumWidth|

$prototype=void move ( const QPoint & )
$internalMethod=|void|move,move1|const QPoint &

$prototype=void move ( int x, int y )
$internalMethod=|void|move,move2|int,int

//[1]void move ( const QPoint & )
//[2]void move ( int x, int y )

HB_FUNC_STATIC( QWIDGET_MOVE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_move1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_move2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QWidget * nativeParentWidget () const
$method=|QWidget *|nativeParentWidget|

$prototype=QWidget * nextInFocusChain () const
$method=|QWidget *|nextInFocusChain|

$prototype=QRect normalGeometry () const
$method=|QRect|normalGeometry|

$prototype=void overrideWindowFlags ( Qt::WindowFlags flags )
$method=|void|overrideWindowFlags|Qt::WindowFlags

$prototype=const QPalette & palette () const
$method=|const QPalette &|palette|

$prototype=QWidget * parentWidget () const
$method=|QWidget *|parentWidget|

$prototype=QPoint pos () const
$method=|QPoint|pos|

$prototype=QWidget * previousInFocusChain () const
$method=|QWidget *|previousInFocusChain|

$prototype=QRect rect () const
$method=|QRect|rect|

$prototype=void releaseKeyboard ()
$method=|void|releaseKeyboard|

$prototype=void releaseMouse ()
$method=|void|releaseMouse|

$prototype=void releaseShortcut ( int id )
$method=|void|releaseShortcut|int

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *

$prototype=void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
$internalMethod=|void|render,render1|QPaintDevice *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags( QWidget::DrawWindowBackground OR QWidget::DrawChildren )

$prototype=void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
$internalMethod=|void|render,render2|QPainter *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags( QWidget::DrawWindowBackground OR QWidget::DrawChildren )

//[1]void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
//[2]void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )

%% TOCHECK: reconhecimento de QPaintDevice e QPainter

HB_FUNC_STATIC( QWIDGET_RENDER )
{
  if( ISBETWEEN(1,4) && ISQPAINTDEVICE(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QWidget_render1();
  }
  else if( ISBETWEEN(1,4) && ISQPAINTER(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QWidget_render2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void repaint ( int x, int y, int w, int h )
$internalMethod=|void|repaint,repaint1|int,int,int,int

$prototype=void repaint ( const QRect & rect )
$internalMethod=|void|repaint,repaint2|const QRect &

$prototype=void repaint ( const QRegion & rgn )
$internalMethod=|void|repaint,repaint3|const QRegion &

//[1]void repaint ( int x, int y, int w, int h )
//[2]void repaint ( const QRect & rect )
//[3]void repaint ( const QRegion & rgn )

HB_FUNC_STATIC( QWIDGET_REPAINT )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_repaint1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_repaint2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_repaint3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void resize ( const QSize & )
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize ( int w, int h )
$internalMethod=|void|resize,resize2|int,int

//[1]void resize ( const QSize & )
//[2]void resize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool restoreGeometry ( const QByteArray & geometry )
$method=|bool|restoreGeometry|const QByteArray &

$prototype=QByteArray saveGeometry () const
$method=|QByteArray|saveGeometry|

$prototype=void scroll ( int dx, int dy )
$internalMethod=|void|scroll,scroll1|int,int

$prototype=void scroll ( int dx, int dy, const QRect & r )
$internalMethod=|void|scroll,scroll2|int,int,const QRect &

//[1]void scroll ( int dx, int dy )
//[2]void scroll ( int dx, int dy, const QRect & r )

HB_FUNC_STATIC( QWIDGET_SCROLL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_scroll1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
  {
    QWidget_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setAcceptDrops ( bool on )
$method=|void|setAcceptDrops|bool

$prototype=void setAccessibleDescription ( const QString & description )
$method=|void|setAccessibleDescription|const QString &

$prototype=void setAccessibleName ( const QString & name )
$method=|void|setAccessibleName|const QString &

$prototype=void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

$prototype=void setAutoFillBackground ( bool enabled )
$method=|void|setAutoFillBackground|bool

$prototype=void setBackgroundRole ( QPalette::ColorRole role )
$method=|void|setBackgroundRole|QPalette::ColorRole

$prototype=void setBaseSize ( const QSize & )
$internalMethod=|void|setBaseSize,setBaseSize1|const QSize &

$prototype=void setBaseSize ( int basew, int baseh )
$internalMethod=|void|setBaseSize,setBaseSize2|int,int

//[1]void setBaseSize ( const QSize & )
//[2]void setBaseSize ( int basew, int baseh )

HB_FUNC_STATIC( QWIDGET_SETBASESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setBaseSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setBaseSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setContentsMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

$prototype=void setContentsMargins ( const QMargins & margins )
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QWidget_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
$method=|void|setContextMenuPolicy|Qt::ContextMenuPolicy

$prototype=void setCursor ( const QCursor & )
$method=|void|setCursor|const QCursor &

$prototype=void setFixedHeight ( int h )
$method=|void|setFixedHeight|int

$prototype=void setFixedSize ( const QSize & s )
$internalMethod=|void|setFixedSize,setFixedSize1|const QSize &

$prototype=void setFixedSize ( int w, int h )
$internalMethod=|void|setFixedSize,setFixedSize2|int,int

//[1]void setFixedSize ( const QSize & s )
//[2]void setFixedSize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setFixedSize1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setFixedSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFixedWidth ( int w )
$method=|void|setFixedWidth|int

$prototype=void setFocus ( Qt::FocusReason reason )
$internalMethod=|void|setFocus,setFocus1|Qt::FocusReason

$prototype=void setFocus ()
$internalMethod=|void|setFocus,setFocus2|

//[1]void setFocus ( Qt::FocusReason reason )
//[2]void setFocus ()

HB_FUNC_STATIC( QWIDGET_SETFOCUS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QWidget_setFocus1();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_setFocus2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFocusPolicy ( Qt::FocusPolicy policy )
$method=|void|setFocusPolicy|Qt::FocusPolicy

$prototype=void setFocusProxy ( QWidget * w )
$method=|void|setFocusProxy|QWidget *

$prototype=void setFont ( const QFont & )
$method=|void|setFont|const QFont &

$prototype=void setForegroundRole ( QPalette::ColorRole role )
$method=|void|setForegroundRole|QPalette::ColorRole

$prototype=void setGeometry ( const QRect & )
$internalMethod=|void|setGeometry,setGeometry1|const QRect &

$prototype=void setGeometry ( int x, int y, int w, int h )
$internalMethod=|void|setGeometry,setGeometry2|int,int,int,int

//[1]void setGeometry ( const QRect & )
//[2]void setGeometry ( int x, int y, int w, int h )

HB_FUNC_STATIC( QWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_setGeometry1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setGraphicsEffect ( QGraphicsEffect * effect )
$method=|void|setGraphicsEffect|QGraphicsEffect *

$prototype=void setInputContext ( QInputContext * context )
$method=|void|setInputContext|QInputContext *

$prototype=void setInputMethodHints ( Qt::InputMethodHints hints )
$method=|void|setInputMethodHints|Qt::InputMethodHints

$prototype=void setLayout ( QLayout * layout )
$method=|void|setLayout|QLayout *

$prototype=void setLayoutDirection ( Qt::LayoutDirection direction )
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=void setMask ( const QBitmap & bitmap )
$internalMethod=|void|setMask,setMask1|const QBitmap &

$prototype=void setMask ( const QRegion & region )
$internalMethod=|void|setMask,setMask2|const QRegion &

//[1]void setMask ( const QBitmap & bitmap )
//[2]void setMask ( const QRegion & region )

HB_FUNC_STATIC( QWIDGET_SETMASK )
{
  if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QWidget_setMask1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_setMask2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setMaximumHeight ( int maxh )
$method=|void|setMaximumHeight|int

$prototype=void setMaximumSize ( const QSize & )
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSize &

$prototype=void setMaximumSize ( int maxw, int maxh )
$internalMethod=|void|setMaximumSize,setMaximumSize2|int,int

//[1]void setMaximumSize ( const QSize & )
//[2]void setMaximumSize ( int maxw, int maxh )

HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setMaximumWidth ( int maxw )
$method=|void|setMaximumWidth|int

$prototype=void setMinimumHeight ( int minh )
$method=|void|setMinimumHeight|int

$prototype=void setMinimumSize ( const QSize & )
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSize &

$prototype=void setMinimumSize ( int minw, int minh )
$internalMethod=|void|setMinimumSize,setMinimumSize2|int,int

//[1]void setMinimumSize ( const QSize & )
//[2]void setMinimumSize ( int minw, int minh )

HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setMinimumWidth ( int minw )
$method=|void|setMinimumWidth|int

$prototype=void setMouseTracking ( bool enable )
$method=|void|setMouseTracking|bool

$prototype=void setPalette ( const QPalette & )
$method=|void|setPalette|const QPalette &

$prototype=void setParent ( QWidget * parent )
$internalMethod=|void|setParent,setParent1|QWidget *

$prototype=void setParent ( QWidget * parent, Qt::WindowFlags f )
$internalMethod=|void|setParent,setParent2|QWidget *,Qt::WindowFlags

//[1]void setParent ( QWidget * parent )
//[2]void setParent ( QWidget * parent, Qt::WindowFlags f )

HB_FUNC_STATIC( QWIDGET_SETPARENT )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWidget_setParent1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QWidget_setParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setShortcutAutoRepeat ( int id, bool enable = true )
$method=|void|setShortcutAutoRepeat|int,bool=true

$prototype=void setShortcutEnabled ( int id, bool enable = true )
$method=|void|setShortcutEnabled|int,bool=true

$prototype=void setSizeIncrement ( const QSize & )
$internalMethod=|void|setSizeIncrement,setSizeIncrement1|const QSize &

$prototype=void setSizeIncrement ( int w, int h )
$internalMethod=|void|setSizeIncrement,setSizeIncrement2|int,int

//[1]void setSizeIncrement ( const QSize & )
//[2]void setSizeIncrement ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setSizeIncrement1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizeIncrement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setSizePolicy ( QSizePolicy & )
$internalMethod=|void|setSizePolicy,setSizePolicy1|QSizePolicy &

$prototype=void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy

//[1]void setSizePolicy ( QSizePolicy & )
//[2]void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )

HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QWidget_setSizePolicy1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setStatusTip ( const QString & )
$method=|void|setStatusTip|const QString &

$prototype=void setStyle ( QStyle * style )
$method=|void|setStyle|QStyle *

$prototype=void setToolTip ( const QString & )
$method=|void|setToolTip|const QString &

$prototype=void setUpdatesEnabled ( bool enable )
$method=|void|setUpdatesEnabled|bool

$prototype=void setWhatsThis ( const QString & )
$method=|void|setWhatsThis|const QString &

$prototype=void setWindowFilePath ( const QString & filePath )
$method=|void|setWindowFilePath|const QString &

$prototype=void setWindowFlags ( Qt::WindowFlags type )
$method=|void|setWindowFlags|Qt::WindowFlags

$prototype=void setWindowIcon ( const QIcon & icon )
$method=|void|setWindowIcon|const QIcon &

$prototype=void setWindowIconText ( const QString & )
$method=|void|setWindowIconText|const QString &

$prototype=void setWindowModality ( Qt::WindowModality windowModality )
$method=|void|setWindowModality|Qt::WindowModality

$prototype=void setWindowOpacity ( qreal level )
$method=|void|setWindowOpacity|qreal

$prototype=void setWindowRole ( const QString & role )
$method=|void|setWindowRole|const QString &

$prototype=void setWindowState ( Qt::WindowStates windowState )
$method=|void|setWindowState|Qt::WindowStates

$prototype=QSize size () const
$method=|QSize|size|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=QSize sizeIncrement () const
$method=|QSize|sizeIncrement|

$prototype=QSizePolicy sizePolicy () const
$method=|QSizePolicy|sizePolicy|

$prototype=void stackUnder ( QWidget * w )
$method=|void|stackUnder|QWidget *

$prototype=QString statusTip () const
$method=|QString|statusTip|

$prototype=QStyle * style () const
$method=|QStyle *|style|

$prototype=QString styleSheet () const
$method=|QString|styleSheet|

$prototype=bool testAttribute ( Qt::WidgetAttribute attribute ) const
$method=|bool|testAttribute|Qt::WidgetAttribute

$prototype=QString toolTip () const
$method=|QString|toolTip|

$prototype=bool underMouse () const
$method=|bool|underMouse|

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType

$prototype=void unsetCursor ()
$method=|void|unsetCursor|

$prototype=void unsetLayoutDirection ()
$method=|void|unsetLayoutDirection|

$prototype=void unsetLocale ()
$method=|void|unsetLocale|

$prototype=void update ( int x, int y, int w, int h )
$internalMethod=|void|update,update1|int,int,int,int

$prototype=void update ( const QRect & rect )
$internalMethod=|void|update,update2|const QRect &

$prototype=void update ( const QRegion & rgn )
$internalMethod=|void|update,update3|const QRegion &

$prototype=void update ()
$internalMethod=|void|update,update4|

//[1]void update ( int x, int y, int w, int h )
//[2]void update ( const QRect & rect )
//[3]void update ( const QRegion & rgn )
//[4]void update ()

HB_FUNC_STATIC( QWIDGET_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_update1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_update2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_update3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_update4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void updateGeometry ()
$method=|void|updateGeometry|

$prototype=bool updatesEnabled () const
$method=|bool|updatesEnabled|

$prototype=QRegion visibleRegion () const
$method=|QRegion|visibleRegion|

$prototype=QString whatsThis () const
$method=|QString|whatsThis|

$prototype=int width () const
$method=|int|width|

$prototype=WId winId () const
$method=|WId|winId||#ifdef Q_OS_WIN

$prototype=QWidget * window () const
$method=|QWidget *|window|

$prototype=QString windowFilePath () const
$method=|QString|windowFilePath|

$prototype=Qt::WindowFlags windowFlags () const
$method=|Qt::WindowFlags|windowFlags|

$prototype=QIcon windowIcon () const
$method=|QIcon|windowIcon|

$prototype=QString windowIconText () const
$method=|QString|windowIconText|

$prototype=Qt::WindowModality windowModality () const
$method=|Qt::WindowModality|windowModality|

$prototype=qreal windowOpacity () const
$method=|qreal|windowOpacity|

$prototype=QString windowRole () const
$method=|QString|windowRole|

$prototype=Qt::WindowStates windowState () const
$method=|Qt::WindowStates|windowState|

$prototype=QString windowTitle () const
$method=|QString|windowTitle|

$prototype=Qt::WindowType windowType () const
$method=|Qt::WindowType|windowType|

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

$prototype=virtual QPaintEngine * paintEngine () const
$virtualMethod=|QPaintEngine *|paintEngine|

$prototype=bool close ()
$method=|bool|close|

$prototype=void hide ()
$method=|void|hide|

$prototype=void lower ()
$method=|void|lower|

$prototype=void raise ()
$method=|void|raise|

$prototype=void setDisabled ( bool disable )
$method=|void|setDisabled|bool

$prototype=void setEnabled ( bool )
$method=|void|setEnabled|bool

$prototype=void setHidden ( bool hidden )
$method=|void|setHidden|bool

$prototype=void setStyleSheet ( const QString & styleSheet )
$method=|void|setStyleSheet|const QString &

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=void setWindowModified ( bool )
$method=|void|setWindowModified|bool

$prototype=void setWindowTitle ( const QString & )
$method=|void|setWindowTitle|const QString &

$prototype=void show ()
$method=|void|show|

$prototype=void showFullScreen ()
$method=|void|showFullScreen|

$prototype=void showMaximized ()
$method=|void|showMaximized|

$prototype=void showMinimized ()
$method=|void|showMinimized|

$prototype=void showNormal ()
$method=|void|showNormal|

//=============================================================================
// QPaintDevice methods - begin
//=============================================================================

$prototype=int colorCount () const
$method=|int|colorCount|

$prototype=int depth () const
$method=|int|depth|

$prototype=int heightMM () const
$method=|int|heightMM|

$prototype=int logicalDpiX () const
$method=|int|logicalDpiX|

$prototype=int logicalDpiY () const
$method=|int|logicalDpiY|

$prototype=int numColors () const (deprecated)
$method=|int|numColors|

$prototype=bool paintingActive () const
$method=|bool|paintingActive|

$prototype=int physicalDpiX () const
$method=|int|physicalDpiX|

$prototype=int physicalDpiY () const
$method=|int|physicalDpiY|

$prototype=int widthMM () const
$method=|int|widthMM|

//=============================================================================
// QPaintDevice methods - end
//=============================================================================

$prototype=static QWidget * find ( WId id )
$staticMethod=|QWidget *|find|WId|#ifdef Q_OS_WIN

$prototype=static QWidget * keyboardGrabber ()
$staticMethod=|QWidget *|keyboardGrabber|

$prototype=static QWidget * mouseGrabber ()
$staticMethod=|QWidget *|mouseGrabber|

$prototype=static void setTabOrder ( QWidget * first, QWidget * second )
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

$beginSignals
$signal=|customContextMenuRequested(QPoint)
$endSignals

#pragma ENDDUMP
