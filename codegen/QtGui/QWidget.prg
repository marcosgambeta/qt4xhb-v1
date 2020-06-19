%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

%% TODO: WId in others OS's

#include "hbclass.ch"

$addRequests
$addRequest=QAccessibleEvent
$addRequest=QActionEvent
$addRequest=QClipboardEvent
$addRequest=QCloseEvent
$addRequest=QContextMenuEvent
$addRequest=QDragEnterEvent
$addRequest=QDragLeaveEvent
$addRequest=QDragMoveEvent
$addRequest=QDropEvent
$addRequest=QFileOpenEvent
$addRequest=QFocusEvent
$addRequest=QGestureEvent
$addRequest=QGraphicsSceneContextMenuEvent
$addRequest=QGraphicsSceneDragDropEvent
$addRequest=QGraphicsSceneEvent
$addRequest=QGraphicsSceneHelpEvent
$addRequest=QGraphicsSceneHoverEvent
$addRequest=QGraphicsSceneMouseEvent
$addRequest=QgraphicsSceneMoveEvent
$addRequest=QGraphicsSceneResizeEvent
$addRequest=QGraphicsSceneWheelEvent
$addRequest=QHelpEvent
$addRequest=QHideEvent
$addRequest=QHoverEvent
$addRequest=QIconDragEvent
$addRequest=QInputEvent
$addRequest=QInputMethodEvent
$addRequest=QKeyEvent
$addRequest=QMouseEvent
$addRequest=QMoveEvent
$addRequest=QPaintEvent
$addRequest=QResizeEvent
$addRequest=QShortcutEvent
$addRequest=QShowEvent
$addRequest=QStatusTipEvent
$addRequest=QTabletEvent
$addRequest=QToolBarChangeEvent
$addRequest=QTouchEvent
$addRequest=QWhatsThisClickedEvent
$addRequest=QWheelEvent
$addRequest=QWindowStateChangeEvent

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QIcon>
#include <QtCore/QVariant>
#include <QtCore/QLocale>
#include <QtGui/QGraphicsEffect>
#include <QtGui/QGraphicsProxyWidget>
#include <QtGui/QInputContext>
#include <QtGui/QLayout>
#include <QtGui/QStyle>

$prototype=QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=bool acceptDrops() const

$prototypeV2=QString accessibleDescription() const

$prototypeV2=QString accessibleName() const

$prototypeV2=QList<QAction *> actions() const

$prototypeV2=void activateWindow()

$prototype=void addAction ( QAction * action )
$method=|void|addAction|QAction *

$prototype=void addActions ( QList<QAction *> actions )
$method=|void|addActions|QList<QAction *>

$prototypeV2=void adjustSize()

$prototypeV2=bool autoFillBackground() const

$prototypeV2=QPalette::ColorRole backgroundRole() const

$prototypeV2=QSize baseSize() const

$prototype=QWidget * childAt ( int x, int y ) const
$internalMethod=|QWidget *|childAt,childAt1|int,int

$prototype=QWidget * childAt ( const QPoint & p ) const
$internalMethod=|QWidget *|childAt,childAt2|const QPoint &

/*
[1]QWidget * childAt ( int x, int y ) const
[2]QWidget * childAt ( const QPoint & p ) const
*/

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
$addMethod=childAt

$prototypeV2=QRect childrenRect() const

$prototypeV2=QRegion childrenRegion() const

$prototypeV2=void clearFocus()

$prototypeV2=void clearMask()

$prototypeV2=QMargins contentsMargins() const

$prototypeV2=QRect contentsRect() const

$prototypeV2=Qt::ContextMenuPolicy contextMenuPolicy() const

$prototypeV2=QCursor cursor() const

$prototype=WId effectiveWinId () const
$method=|WId|effectiveWinId||#ifdef Q_OS_WIN

$prototypeV2=void ensurePolished() const

$prototypeV2=Qt::FocusPolicy focusPolicy() const

$prototypeV2=QWidget * focusProxy() const

$prototypeV2=QWidget * focusWidget() const

$prototypeV2=const QFont & font() const

$prototypeV2=QFontInfo fontInfo() const

$prototypeV2=QFontMetrics fontMetrics() const

$prototypeV2=QPalette::ColorRole foregroundRole() const

$prototypeV2=QRect frameGeometry() const

$prototypeV2=QSize frameSize() const

$prototypeV2=const QRect & geometry() const

$prototype=void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getContentsMargins|int *,int *,int *,int *

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototypeV2=void grabKeyboard()

$prototype=void grabMouse ()
$internalMethod=|void|grabMouse,grabMouse1|

$prototype=void grabMouse ( const QCursor & cursor )
$internalMethod=|void|grabMouse,grabMouse2|const QCursor &

/*
[1]void grabMouse ()
[2]void grabMouse ( const QCursor & cursor )
*/

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
$addMethod=grabMouse

$prototype=int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut

$prototypeV2=QGraphicsEffect * graphicsEffect() const

$prototypeV2=QGraphicsProxyWidget * graphicsProxyWidget() const

$prototypeV2=bool hasFocus() const

$prototypeV2=bool hasMouseTracking() const

$prototypeV2=int height() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=QInputContext * inputContext()

$prototypeV2=Qt::InputMethodHints inputMethodHints() const

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void insertAction ( QAction * before, QAction * action )
$method=|void|insertAction|QAction *,QAction *

$prototype=void insertActions ( QAction * before, QList<QAction *> actions )
$method=|void|insertActions|QAction *,QList<QAction *>

$prototypeV2=bool isActiveWindow() const

$prototype=bool isAncestorOf ( const QWidget * child ) const
$method=|bool|isAncestorOf|const QWidget *

$prototypeV2=bool isEnabled() const

$prototype=bool isEnabledTo ( QWidget * ancestor ) const
$method=|bool|isEnabledTo|QWidget *

$prototypeV2=bool isFullScreen() const

$prototypeV2=bool isHidden() const

$prototypeV2=bool isMaximized() const

$prototypeV2=bool isMinimized() const

$prototypeV2=bool isModal() const

$prototypeV2=bool isVisible() const

$prototype=bool isVisibleTo ( QWidget * ancestor ) const
$method=|bool|isVisibleTo|QWidget *

$prototypeV2=bool isWindow() const

$prototypeV2=bool isWindowModified() const

$prototypeV2=QLayout * layout() const

$prototypeV2=Qt::LayoutDirection layoutDirection() const

$prototypeV2=QLocale locale() const

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

$prototypeV2=QRegion mask() const

$prototypeV2=int maximumHeight() const

$prototypeV2=QSize maximumSize() const

$prototypeV2=int maximumWidth() const

$prototypeV2=int minimumHeight() const

$prototypeV2=QSize minimumSize() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=int minimumWidth() const

$prototype=void move ( const QPoint & )
$internalMethod=|void|move,move1|const QPoint &

$prototype=void move ( int x, int y )
$internalMethod=|void|move,move2|int,int

/*
[1]void move ( const QPoint & )
[2]void move ( int x, int y )
*/

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
$addMethod=move

$prototypeV2=QWidget * nativeParentWidget() const

$prototypeV2=QWidget * nextInFocusChain() const

$prototypeV2=QRect normalGeometry() const

$prototype=void overrideWindowFlags ( Qt::WindowFlags flags )
$method=|void|overrideWindowFlags|Qt::WindowFlags

$prototypeV2=const QPalette & palette() const

$prototypeV2=QWidget * parentWidget() const

$prototypeV2=QPoint pos() const

$prototypeV2=QWidget * previousInFocusChain() const

$prototypeV2=QRect rect() const

$prototypeV2=void releaseKeyboard()

$prototypeV2=void releaseMouse()

$prototype=void releaseShortcut ( int id )
$method=|void|releaseShortcut|int

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *

$prototype=void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
$internalMethod=|void|render,render1|QPaintDevice *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags( QWidget::DrawWindowBackground OR QWidget::DrawChildren )

$prototype=void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
$internalMethod=|void|render,render2|QPainter *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags( QWidget::DrawWindowBackground OR QWidget::DrawChildren )

/*
[1]void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
[2]void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
*/

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
$addMethod=render

$prototype=void repaint ( int x, int y, int w, int h )
$internalMethod=|void|repaint,repaint1|int,int,int,int

$prototype=void repaint ( const QRect & rect )
$internalMethod=|void|repaint,repaint2|const QRect &

$prototype=void repaint ( const QRegion & rgn )
$internalMethod=|void|repaint,repaint3|const QRegion &

/*
[1]void repaint ( int x, int y, int w, int h )
[2]void repaint ( const QRect & rect )
[3]void repaint ( const QRegion & rgn )
*/

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
$addMethod=repaint

$prototype=void resize ( const QSize & )
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize ( int w, int h )
$internalMethod=|void|resize,resize2|int,int

/*
[1]void resize ( const QSize & )
[2]void resize ( int w, int h )
*/

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
$addMethod=resize

$prototype=bool restoreGeometry ( const QByteArray & geometry )
$method=|bool|restoreGeometry|const QByteArray &

$prototypeV2=QByteArray saveGeometry() const

$prototype=void scroll ( int dx, int dy )
$internalMethod=|void|scroll,scroll1|int,int

$prototype=void scroll ( int dx, int dy, const QRect & r )
$internalMethod=|void|scroll,scroll2|int,int,const QRect &

/*
[1]void scroll ( int dx, int dy )
[2]void scroll ( int dx, int dy, const QRect & r )
*/

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
$addMethod=scroll

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

/*
[1]void setBaseSize ( const QSize & )
[2]void setBaseSize ( int basew, int baseh )
*/

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
$addMethod=setBaseSize

$prototype=void setContentsMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

$prototype=void setContentsMargins ( const QMargins & margins )
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

/*
[1]void setContentsMargins ( int left, int top, int right, int bottom )
[2]void setContentsMargins ( const QMargins & margins )
*/

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
$addMethod=setContentsMargins

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

/*
[1]void setFixedSize ( const QSize & s )
[2]void setFixedSize ( int w, int h )
*/

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
$addMethod=setFixedSize

$prototype=void setFixedWidth ( int w )
$method=|void|setFixedWidth|int

$prototype=void setFocus ( Qt::FocusReason reason )
$internalMethod=|void|setFocus,setFocus1|Qt::FocusReason

$prototype=void setFocus ()
$internalMethod=|void|setFocus,setFocus2|

/*
[1]void setFocus ( Qt::FocusReason reason )
[2]void setFocus ()
*/

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
$addMethod=setFocus

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

/*
[1]void setGeometry ( const QRect & )
[2]void setGeometry ( int x, int y, int w, int h )
*/

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
$addMethod=setGeometry

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

/*
[1]void setMask ( const QBitmap & bitmap )
[2]void setMask ( const QRegion & region )
*/

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
$addMethod=setMask

$prototype=void setMaximumHeight ( int maxh )
$method=|void|setMaximumHeight|int

$prototype=void setMaximumSize ( const QSize & )
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSize &

$prototype=void setMaximumSize ( int maxw, int maxh )
$internalMethod=|void|setMaximumSize,setMaximumSize2|int,int

/*
[1]void setMaximumSize ( const QSize & )
[2]void setMaximumSize ( int maxw, int maxh )
*/

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
$addMethod=setMaximumSize

$prototype=void setMaximumWidth ( int maxw )
$method=|void|setMaximumWidth|int

$prototype=void setMinimumHeight ( int minh )
$method=|void|setMinimumHeight|int

$prototype=void setMinimumSize ( const QSize & )
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSize &

$prototype=void setMinimumSize ( int minw, int minh )
$internalMethod=|void|setMinimumSize,setMinimumSize2|int,int

/*
[1]void setMinimumSize ( const QSize & )
[2]void setMinimumSize ( int minw, int minh )
*/

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
$addMethod=setMinimumSize

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

/*
[1]void setParent ( QWidget * parent )
[2]void setParent ( QWidget * parent, Qt::WindowFlags f )
*/

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
$addMethod=setParent

$prototype=void setShortcutAutoRepeat ( int id, bool enable = true )
$method=|void|setShortcutAutoRepeat|int,bool=true

$prototype=void setShortcutEnabled ( int id, bool enable = true )
$method=|void|setShortcutEnabled|int,bool=true

$prototype=void setSizeIncrement ( const QSize & )
$internalMethod=|void|setSizeIncrement,setSizeIncrement1|const QSize &

$prototype=void setSizeIncrement ( int w, int h )
$internalMethod=|void|setSizeIncrement,setSizeIncrement2|int,int

/*
[1]void setSizeIncrement ( const QSize & )
[2]void setSizeIncrement ( int w, int h )
*/

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
$addMethod=setSizeIncrement

$prototype=void setSizePolicy ( QSizePolicy & )
$internalMethod=|void|setSizePolicy,setSizePolicy1|QSizePolicy &

$prototype=void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy

/*
[1]void setSizePolicy ( QSizePolicy & )
[2]void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/

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
$addMethod=setSizePolicy

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

$prototypeV2=QSize size() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=QSize sizeIncrement() const

$prototypeV2=QSizePolicy sizePolicy() const

$prototype=void stackUnder ( QWidget * w )
$method=|void|stackUnder|QWidget *

$prototypeV2=QString statusTip() const

$prototypeV2=QStyle * style() const

$prototypeV2=QString styleSheet() const

$prototype=bool testAttribute ( Qt::WidgetAttribute attribute ) const
$method=|bool|testAttribute|Qt::WidgetAttribute

$prototypeV2=QString toolTip() const

$prototypeV2=bool underMouse() const

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType

$prototypeV2=void unsetCursor()

$prototypeV2=void unsetLayoutDirection()

$prototypeV2=void unsetLocale()

$prototype=void update ( int x, int y, int w, int h )
$internalMethod=|void|update,update1|int,int,int,int

$prototype=void update ( const QRect & rect )
$internalMethod=|void|update,update2|const QRect &

$prototype=void update ( const QRegion & rgn )
$internalMethod=|void|update,update3|const QRegion &

$prototype=void update ()
$internalMethod=|void|update,update4|

/*
[1]void update ( int x, int y, int w, int h )
[2]void update ( const QRect & rect )
[3]void update ( const QRegion & rgn )
[4]void update ()
*/

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
$addMethod=update

$prototypeV2=void updateGeometry()

$prototypeV2=bool updatesEnabled() const

$prototypeV2=QRegion visibleRegion() const

$prototypeV2=QString whatsThis() const

$prototypeV2=int width() const

$prototype=WId winId () const
$method=|WId|winId||#ifdef Q_OS_WIN

$prototypeV2=QWidget * window() const

$prototypeV2=QString windowFilePath() const

$prototypeV2=Qt::WindowFlags windowFlags() const

$prototypeV2=QIcon windowIcon() const

$prototypeV2=QString windowIconText() const

$prototypeV2=Qt::WindowModality windowModality() const

$prototypeV2=qreal windowOpacity() const

$prototypeV2=QString windowRole() const

$prototypeV2=Qt::WindowStates windowState() const

$prototypeV2=QString windowTitle() const

$prototypeV2=Qt::WindowType windowType() const

$prototypeV2=int x() const

$prototypeV2=int y() const

$prototypeV2=virtual QPaintEngine * paintEngine() const

$prototypeV2=bool close()

$prototypeV2=void hide()

$prototypeV2=void lower()

$prototypeV2=void raise()

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

$prototypeV2=void show()

$prototypeV2=void showFullScreen()

$prototypeV2=void showMaximized()

$prototypeV2=void showMinimized()

$prototypeV2=void showNormal()

//=============================================================================
// QPaintDevice methods - begin
//=============================================================================

$prototypeV2=int colorCount() const

$prototypeV2=int depth() const

$prototypeV2=int heightMM() const

$prototypeV2=int logicalDpiX() const

$prototypeV2=int logicalDpiY() const

%% deprecated
$prototypeV2=int numColors() const

$prototypeV2=bool paintingActive() const

$prototypeV2=int physicalDpiX() const

$prototypeV2=int physicalDpiY() const

$prototypeV2=int widthMM() const

//=============================================================================
// QPaintDevice methods - end
//=============================================================================

$prototype=static QWidget * find ( WId id )
$staticMethod=|QWidget *|find|WId|#ifdef Q_OS_WIN

$prototypeV2=static QWidget * keyboardGrabber()

$prototypeV2=static QWidget * mouseGrabber()

$prototype=static void setTabOrder ( QWidget * first, QWidget * second )
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

$beginSignals
$signal=|customContextMenuRequested(QPoint)
$endSignals

#pragma ENDDUMP
