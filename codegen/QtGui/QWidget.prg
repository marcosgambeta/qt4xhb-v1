$header

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
   METHOD childAt1
   METHOD childAt2
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
   METHOD grabMouse1
   METHOD grabMouse2
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
   METHOD move1
   METHOD move2
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
   METHOD render1
   METHOD render2
   METHOD render
   METHOD repaint1
   METHOD repaint2
   METHOD repaint3
   METHOD repaint
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD restoreGeometry
   METHOD saveGeometry
   METHOD scroll1
   METHOD scroll2
   METHOD scroll
   METHOD setAcceptDrops
   METHOD setAccessibleDescription
   METHOD setAccessibleName
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setBackgroundRole
   METHOD setBaseSize1
   METHOD setBaseSize2
   METHOD setBaseSize
   METHOD setContentsMargins1
   METHOD setContentsMargins2
   METHOD setContentsMargins
   METHOD setContextMenuPolicy
   METHOD setCursor
   METHOD setFixedHeight
   METHOD setFixedSize1
   METHOD setFixedSize2
   METHOD setFixedSize
   METHOD setFixedWidth
   METHOD setFocus1
   METHOD setFocus2
   METHOD setFocus
   METHOD setFocusPolicy
   METHOD setFocusProxy
   METHOD setFont
   METHOD setForegroundRole
   METHOD setGeometry1
   METHOD setGeometry2
   METHOD setGeometry
   METHOD setGraphicsEffect
   METHOD setInputContext
   METHOD setInputMethodHints
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setLocale
   METHOD setMask1
   METHOD setMask2
   METHOD setMask
   METHOD setMaximumHeight
   METHOD setMaximumSize1
   METHOD setMaximumSize2
   METHOD setMaximumSize
   METHOD setMaximumWidth
   METHOD setMinimumHeight
   METHOD setMinimumSize1
   METHOD setMinimumSize2
   METHOD setMinimumSize
   METHOD setMinimumWidth
   METHOD setMouseTracking
   METHOD setPalette
   METHOD setParent1
   METHOD setParent2
   METHOD setParent
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setSizeIncrement1
   METHOD setSizeIncrement2
   METHOD setSizeIncrement
   METHOD setSizePolicy1
   METHOD setSizePolicy2
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
   METHOD update1
   METHOD update2
   METHOD update3
   METHOD update4
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

#include <QWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QIcon>
#include <QVariant>
#include <QLocale>

/*
QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
bool acceptDrops () const
*/
$method=|bool|acceptDrops|

/*
QString accessibleDescription () const
*/
$method=|QString|accessibleDescription|

/*
QString accessibleName () const
*/
$method=|QString|accessibleName|

/*
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QWIDGET_ACTIONS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QACTION" );
    #else
    pDynSym = hb_dynsymFindName( "QACTION" );
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
        hb_itemPutPtr( pItem, (QAction *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
void activateWindow ()
*/
$method=|void|activateWindow|

/*
void addAction ( QAction * action )
*/
$method=|void|addAction|QAction *

/*
void addActions ( QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTIONS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->addActions ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void adjustSize ()
*/
$method=|void|adjustSize|

/*
bool autoFillBackground () const
*/
$method=|bool|autoFillBackground|

/*
QPalette::ColorRole backgroundRole () const
*/
$method=|QPalette::ColorRole|backgroundRole|

/*
QSize baseSize () const
*/
$method=|QSize|baseSize|

/*
QWidget * childAt ( int x, int y ) const
*/
$method=|QWidget *|childAt,childAt1|int,int

/*
QWidget * childAt ( const QPoint & p ) const
*/
$method=|QWidget *|childAt,childAt2|const QPoint &

//[1]QWidget * childAt ( int x, int y ) const
//[2]QWidget * childAt ( const QPoint & p ) const

HB_FUNC_STATIC( QWIDGET_CHILDAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_CHILDAT1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QWIDGET_CHILDAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect childrenRect () const
*/
$method=|QRect|childrenRect|

/*
QRegion childrenRegion () const
*/
$method=|QRegion|childrenRegion|

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
void clearMask ()
*/
$method=|void|clearMask|

/*
QMargins contentsMargins () const
*/
$method=|QMargins|contentsMargins|

/*
QRect contentsRect () const
*/
$method=|QRect|contentsRect|

/*
Qt::ContextMenuPolicy contextMenuPolicy () const
*/
$method=|Qt::ContextMenuPolicy|contextMenuPolicy|

/*
QCursor cursor () const
*/
$method=|QCursor|cursor|

/*
WId effectiveWinId () const
*/
HB_FUNC_STATIC( QWIDGET_EFFECTIVEWINID )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    WId r = obj->effectiveWinId ();
    hb_retptr( r );
  }
}

/*
void ensurePolished () const
*/
$method=|void|ensurePolished|

/*
Qt::FocusPolicy focusPolicy () const
*/
$method=|Qt::FocusPolicy|focusPolicy|

/*
QWidget * focusProxy () const
*/
$method=|QWidget *|focusProxy|

/*
QWidget * focusWidget () const
*/
$method=|QWidget *|focusWidget|

/*
const QFont & font () const
*/
$method=|const QFont &|font|

/*
QFontInfo fontInfo () const
*/
$method=|QFontInfo|fontInfo|

/*
QFontMetrics fontMetrics () const
*/
$method=|QFontMetrics|fontMetrics|

/*
QPalette::ColorRole foregroundRole () const
*/
$method=|QPalette::ColorRole|foregroundRole|

/*
QRect frameGeometry () const
*/
$method=|QRect|frameGeometry|

/*
QSize frameSize () const
*/
$method=|QSize|frameSize|

/*
const QRect & geometry () const
*/
$method=|const QRect &|geometry|

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
$method=|void|getContentsMargins|int *,int *,int *,int *

/*
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

/*
void grabKeyboard ()
*/
$method=|void|grabKeyboard|

/*
void grabMouse ()
*/
$method=|void|grabMouse,grabMouse1|

/*
void grabMouse ( const QCursor & cursor )
*/
$method=|void|grabMouse,grabMouse2|const QCursor &

//[1]void grabMouse ()
//[2]void grabMouse ( const QCursor & cursor )

HB_FUNC_STATIC( QWIDGET_GRABMOUSE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWIDGET_GRABMOUSE1 );
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    HB_FUNC_EXEC( QWIDGET_GRABMOUSE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut

/*
QGraphicsEffect * graphicsEffect () const
*/
$method=|QGraphicsEffect *|graphicsEffect|

/*
QGraphicsProxyWidget * graphicsProxyWidget () const
*/
$method=|QGraphicsProxyWidget *|graphicsProxyWidget|

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
bool hasMouseTracking () const
*/
$method=|bool|hasMouseTracking|

/*
int height () const
*/
$method=|int|height|

/*
virtual int heightForWidth ( int w ) const
*/
$virtualMethod=|int|heightForWidth|int

/*
QInputContext * inputContext ()
*/
$method=|QInputContext *|inputContext|

/*
Qt::InputMethodHints inputMethodHints () const
*/
$method=|Qt::InputMethodHints|inputMethodHints|

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void insertAction ( QAction * before, QAction * action )
*/
$method=|void|insertAction|QAction *,QAction *

/*
void insertActions ( QAction * before, QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTIONS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertActions ( PQACTION(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isActiveWindow () const
*/
$method=|bool|isActiveWindow|

/*
bool isAncestorOf ( const QWidget * child ) const
*/
$method=|bool|isAncestorOf|const QWidget *

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isEnabledTo ( QWidget * ancestor ) const
*/
$method=|bool|isEnabledTo|QWidget *

/*
bool isFullScreen () const
*/
$method=|bool|isFullScreen|

/*
bool isHidden () const
*/
$method=|bool|isHidden|

/*
bool isMaximized () const
*/
$method=|bool|isMaximized|

/*
bool isMinimized () const
*/
$method=|bool|isMinimized|

/*
bool isModal () const
*/
$method=|bool|isModal|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
bool isVisibleTo ( QWidget * ancestor ) const
*/
$method=|bool|isVisibleTo|QWidget *

/*
bool isWindow () const
*/
$method=|bool|isWindow|

/*
bool isWindowModified () const
*/
$method=|bool|isWindowModified|

/*
QLayout * layout () const
*/
$method=|QLayout *|layout|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
QLocale locale () const
*/
$method=|QLocale|locale|

/*
QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
*/
$method=|QPoint|mapFrom|QWidget *,const QPoint &

/*
QPoint mapFromGlobal ( const QPoint & pos ) const
*/
$method=|QPoint|mapFromGlobal|const QPoint &

/*
QPoint mapFromParent ( const QPoint & pos ) const
*/
$method=|QPoint|mapFromParent|const QPoint &

/*
QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
*/
$method=|QPoint|mapTo|QWidget *,const QPoint &

/*
QPoint mapToGlobal ( const QPoint & pos ) const
*/
$method=|QPoint|mapToGlobal|const QPoint &

/*
QPoint mapToParent ( const QPoint & pos ) const
*/
$method=|QPoint|mapToParent|const QPoint &

/*
QRegion mask () const
*/
$method=|QRegion|mask|

/*
int maximumHeight () const
*/
$method=|int|maximumHeight|

/*
QSize maximumSize () const
*/
$method=|QSize|maximumSize|

/*
int maximumWidth () const
*/
$method=|int|maximumWidth|

/*
int minimumHeight () const
*/
$method=|int|minimumHeight|

/*
QSize minimumSize () const
*/
$method=|QSize|minimumSize|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
int minimumWidth () const
*/
$method=|int|minimumWidth|

/*
void move ( const QPoint & )
*/
$method=|void|move,move1|const QPoint &

/*
void move ( int x, int y )
*/
$method=|void|move,move2|int,int

//[1]void move ( const QPoint & )
//[2]void move ( int x, int y )

HB_FUNC_STATIC( QWIDGET_MOVE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QWIDGET_MOVE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_MOVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * nativeParentWidget () const
*/
$method=|QWidget *|nativeParentWidget|

/*
QWidget * nextInFocusChain () const
*/
$method=|QWidget *|nextInFocusChain|

/*
QRect normalGeometry () const
*/
$method=|QRect|normalGeometry|

/*
void overrideWindowFlags ( Qt::WindowFlags flags )
*/
$method=|void|overrideWindowFlags|Qt::WindowFlags

/*
const QPalette & palette () const
*/
$method=|const QPalette &|palette|

/*
QWidget * parentWidget () const
*/
$method=|QWidget *|parentWidget|

/*
QPoint pos () const
*/
$method=|QPoint|pos|

/*
QWidget * previousInFocusChain () const
*/
$method=|QWidget *|previousInFocusChain|

/*
QRect rect () const
*/
$method=|QRect|rect|

/*
void releaseKeyboard ()
*/
$method=|void|releaseKeyboard|

/*
void releaseMouse ()
*/
$method=|void|releaseMouse|

/*
void releaseShortcut ( int id )
*/
$method=|void|releaseShortcut|int

/*
void removeAction ( QAction * action )
*/
$method=|void|removeAction|QAction *

/*
void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
*/
$method=|void|render,render1|QPaintDevice *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags( QWidget::DrawWindowBackground OR QWidget::DrawChildren )

/*
void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
*/
$method=|void|render,render2|QPainter *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags( QWidget::DrawWindowBackground OR QWidget::DrawChildren )

//[1]void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
//[2]void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )

%% TODO: implementar reconhecimento de QPaintDevice

HB_FUNC_STATIC( QWIDGET_RENDER )
{
  if( ISBETWEEN(1,4) && ISQPAINTER(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER2 );
  }
  else if( ISBETWEEN(1,4) && ISOBJECT(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void repaint ( int x, int y, int w, int h )
*/
$method=|void|repaint,repaint1|int,int,int,int

/*
void repaint ( const QRect & rect )
*/
$method=|void|repaint,repaint2|const QRect &

/*
void repaint ( const QRegion & rgn )
*/
$method=|void|repaint,repaint3|const QRegion &

//[1]void repaint ( int x, int y, int w, int h )
//[2]void repaint ( const QRect & rect )
//[3]void repaint ( const QRegion & rgn )

HB_FUNC_STATIC( QWIDGET_REPAINT )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_REPAINT1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QWIDGET_REPAINT2 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QWIDGET_REPAINT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resize ( const QSize & )
*/
$method=|void|resize,resize1|const QSize &

/*
void resize ( int w, int h )
*/
$method=|void|resize,resize2|int,int

//[1]void resize ( const QSize & )
//[2]void resize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWIDGET_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool restoreGeometry ( const QByteArray & geometry )
*/
$method=|bool|restoreGeometry|const QByteArray &

/*
QByteArray saveGeometry () const
*/
$method=|QByteArray|saveGeometry|

/*
void scroll ( int dx, int dy )
*/
$method=|void|scroll,scroll1|int,int

/*
void scroll ( int dx, int dy, const QRect & r )
*/
$method=|void|scroll,scroll2|int,int,const QRect &

//[1]void scroll ( int dx, int dy )
//[2]void scroll ( int dx, int dy, const QRect & r )

HB_FUNC_STATIC( QWIDGET_SCROLL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SCROLL1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
  {
    HB_FUNC_EXEC( QWIDGET_SCROLL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAcceptDrops ( bool on )
*/
$method=|void|setAcceptDrops|bool

/*
void setAccessibleDescription ( const QString & description )
*/
$method=|void|setAccessibleDescription|const QString &

/*
void setAccessibleName ( const QString & name )
*/
$method=|void|setAccessibleName|const QString &

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

/*
void setAutoFillBackground ( bool enabled )
*/
$method=|void|setAutoFillBackground|bool

/*
void setBackgroundRole ( QPalette::ColorRole role )
*/
$method=|void|setBackgroundRole|QPalette::ColorRole

/*
void setBaseSize ( const QSize & )
*/
$method=|void|setBaseSize,setBaseSize1|const QSize &

/*
void setBaseSize ( int basew, int baseh )
*/
$method=|void|setBaseSize,setBaseSize2|int,int

//[1]void setBaseSize ( const QSize & )
//[2]void setBaseSize ( int basew, int baseh )

HB_FUNC_STATIC( QWIDGET_SETBASESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETBASESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETBASESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
$method=|void|setContentsMargins,setContentsMargins1|int,int,int,int

/*
void setContentsMargins ( const QMargins & margins )
*/
$method=|void|setContentsMargins,setContentsMargins2|const QMargins &

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_SETCONTENTSMARGINS1 );
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETCONTENTSMARGINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
*/
$method=|void|setContextMenuPolicy|Qt::ContextMenuPolicy

/*
void setCursor ( const QCursor & )
*/
$method=|void|setCursor|const QCursor &

/*
void setFixedHeight ( int h )
*/
$method=|void|setFixedHeight|int

/*
void setFixedSize ( const QSize & s )
*/
$method=|void|setFixedSize,setFixedSize1|const QSize &

/*
void setFixedSize ( int w, int h )
*/
$method=|void|setFixedSize,setFixedSize2|int,int

//[1]void setFixedSize ( const QSize & s )
//[2]void setFixedSize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETFIXEDSIZE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETFIXEDSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFixedWidth ( int w )
*/
$method=|void|setFixedWidth|int

/*
void setFocus ( Qt::FocusReason reason )
*/
$method=|void|setFocus|Qt::FocusReason

/*
void setFocus ()
*/
$method=|void|setFocus,setFocus2|

//[1]void setFocus ( Qt::FocusReason reason )
//[2]void setFocus ()

HB_FUNC_STATIC( QWIDGET_SETFOCUS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETFOCUS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWIDGET_SETFOCUS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
$method=|void|setFocusPolicy|Qt::FocusPolicy

/*
void setFocusProxy ( QWidget * w )
*/
$method=|void|setFocusProxy|QWidget *

/*
void setFont ( const QFont & )
*/
$method=|void|setFont|const QFont &

/*
void setForegroundRole ( QPalette::ColorRole role )
*/
$method=|void|setForegroundRole|QPalette::ColorRole

/*
void setGeometry ( const QRect & )
*/
$method=|void|setGeometry,setGeometry1|const QRect &

/*
void setGeometry ( int x, int y, int w, int h )
*/
$method=|void|setGeometry,setGeometry2|int,int,int,int

//[1]void setGeometry ( const QRect & )
//[2]void setGeometry ( int x, int y, int w, int h )

HB_FUNC_STATIC( QWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETGEOMETRY1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_SETGEOMETRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
$method=|void|setGraphicsEffect|QGraphicsEffect *

/*
void setInputContext ( QInputContext * context )
*/
$method=|void|setInputContext|QInputContext *

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
$method=|void|setInputMethodHints|Qt::InputMethodHints

/*
void setLayout ( QLayout * layout )
*/
$method=|void|setLayout|QLayout *

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void setLocale ( const QLocale & locale )
*/
$method=|void|setLocale|const QLocale &

/*
void setMask ( const QBitmap & bitmap )
*/
$method=|void|setMask,setMask1|const QBitmap &

/*
void setMask ( const QRegion & region )
*/
$method=|void|setMask,setMask2|const QRegion &

//[1]void setMask ( const QBitmap & bitmap )
//[2]void setMask ( const QRegion & region )

HB_FUNC_STATIC( QWIDGET_SETMASK )
{
  if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETMASK1 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETMASK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMaximumHeight ( int maxh )
*/
$method=|void|setMaximumHeight|int

/*
void setMaximumSize ( const QSize & )
*/
$method=|void|setMaximumSize,setMaximumSize1|const QSize &

/*
void setMaximumSize ( int maxw, int maxh )
*/
$method=|void|setMaximumSize,setMaximumSize2|int,int

//[1]void setMaximumSize ( const QSize & )
//[2]void setMaximumSize ( int maxw, int maxh )

HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETMAXIMUMSIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETMAXIMUMSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMaximumWidth ( int maxw )
*/
$method=|void|setMaximumWidth|int

/*
void setMinimumHeight ( int minh )
*/
$method=|void|setMinimumHeight|int

/*
void setMinimumSize ( const QSize & )
*/
$method=|void|setMinimumSize,setMinimumSize1|const QSize &

/*
void setMinimumSize ( int minw, int minh )
*/
$method=|void|setMinimumSize,setMinimumSize2|int,int

//[1]void setMinimumSize ( const QSize & )
//[2]void setMinimumSize ( int minw, int minh )

HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETMINIMUMSIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETMINIMUMSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMinimumWidth ( int minw )
*/
$method=|void|setMinimumWidth|int

/*
void setMouseTracking ( bool enable )
*/
$method=|void|setMouseTracking|bool

/*
void setPalette ( const QPalette & )
*/
$method=|void|setPalette|const QPalette &

/*
void setParent ( QWidget * parent )
*/
$method=|void|setParent,setParent1|QWidget *

/*
void setParent ( QWidget * parent, Qt::WindowFlags f )
*/
$method=|void|setParent,setParent2|QWidget *,Qt::WindowFlags

//[1]void setParent ( QWidget * parent )
//[2]void setParent ( QWidget * parent, Qt::WindowFlags f )

HB_FUNC_STATIC( QWIDGET_SETPARENT )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETPARENT1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETPARENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setShortcutAutoRepeat ( int id, bool enable = true )
*/
$method=|void|setShortcutAutoRepeat|int,bool=true

/*
void setShortcutEnabled ( int id, bool enable = true )
*/
$method=|void|setShortcutEnabled|int,bool=true

/*
void setSizeIncrement ( const QSize & )
*/
$method=|void|setSizeIncrement,setSizeIncrement1|const QSize &

/*
void setSizeIncrement ( int w, int h )
*/
$method=|void|setSizeIncrement,setSizeIncrement2|int,int

//[1]void setSizeIncrement ( const QSize & )
//[2]void setSizeIncrement ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETSIZEINCREMENT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETSIZEINCREMENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSizePolicy ( QSizePolicy & )
*/
$method=|void|setSizePolicy,setSizePolicy1|QSizePolicy &

/*
void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/
$method=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy

//[1]void setSizePolicy ( QSizePolicy & )
//[2]void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )

HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    HB_FUNC_EXEC( QWIDGET_SETSIZEPOLICY1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWIDGET_SETSIZEPOLICY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStatusTip ( const QString & )
*/
$method=|void|setStatusTip|const QString &

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
void setToolTip ( const QString & )
*/
$method=|void|setToolTip|const QString &

/*
void setUpdatesEnabled ( bool enable )
*/
$method=|void|setUpdatesEnabled|bool

/*
void setWhatsThis ( const QString & )
*/
$method=|void|setWhatsThis|const QString &

/*
void setWindowFilePath ( const QString & filePath )
*/
$method=|void|setWindowFilePath|const QString &

/*
void setWindowFlags ( Qt::WindowFlags type )
*/
$method=|void|setWindowFlags|Qt::WindowFlags

/*
void setWindowIcon ( const QIcon & icon )
*/
$method=|void|setWindowIcon|const QIcon &

/*
void setWindowIconText ( const QString & )
*/
$method=|void|setWindowIconText|const QString &

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
$method=|void|setWindowModality|Qt::WindowModality

/*
void setWindowOpacity ( qreal level )
*/
$method=|void|setWindowOpacity|

/*
void setWindowRole ( const QString & role )
*/
$method=|void|setWindowRole|const QString &

/*
void setWindowState ( Qt::WindowStates windowState )
*/
$method=|void|setWindowState|Qt::WindowStates

/*
QSize size () const
*/
$method=|QSize|size|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
QSize sizeIncrement () const
*/
$method=|QSize|sizeIncrement|

/*
QSizePolicy sizePolicy () const
*/
$method=|QSizePolicy|sizePolicy|

/*
void stackUnder ( QWidget * w )
*/
$method=|void|stackUnder|QWidget *

/*
QString statusTip () const
*/
$method=|QString|statusTip|

/*
QStyle * style () const
*/
$method=|QStyle *|style|

/*
QString styleSheet () const
*/
$method=|QString|styleSheet|

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
$method=|bool|testAttribute|Qt::WidgetAttribute

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
bool underMouse () const
*/
$method=|bool|underMouse|

/*
void ungrabGesture ( Qt::GestureType gesture )
*/
$method=|void|ungrabGesture|Qt::GestureType

/*
void unsetCursor ()
*/
$method=|void|unsetCursor|

/*
void unsetLayoutDirection ()
*/
$method=|void|unsetLayoutDirection|

/*
void unsetLocale ()
*/
$method=|void|unsetLocale|

/*
void update ( int x, int y, int w, int h )
*/
$method=|void|update,update1|int,int,int,int

/*
void update ( const QRect & rect )
*/
$method=|void|update,update2|const QRect &

/*
void update ( const QRegion & rgn )
*/
$method=|void|update,update3|const QRegion &

/*
void update ()
*/
$method=|void|update,update4|

//[1]void update ( int x, int y, int w, int h )
//[2]void update ( const QRect & rect )
//[3]void update ( const QRegion & rgn )
//[4]void update ()

HB_FUNC_STATIC( QWIDGET_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_UPDATE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QWIDGET_UPDATE2 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QWIDGET_UPDATE3 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWIDGET_UPDATE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void updateGeometry ()
*/
$method=|void|updateGeometry|

/*
bool updatesEnabled () const
*/
$method=|bool|updatesEnabled|

/*
QRegion visibleRegion () const
*/
$method=|QRegion|visibleRegion|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
int width () const
*/
$method=|int|width|

/*
WId winId () const
*/
HB_FUNC_STATIC( QWIDGET_WINID )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    WId r = obj->winId ();
    hb_retptr( r );
  }
}

/*
QWidget * window () const
*/
$method=|QWidget *|window|

/*
QString windowFilePath () const
*/
$method=|QString|windowFilePath|

/*
Qt::WindowFlags windowFlags () const
*/
$method=|Qt::WindowFlags|windowFlags|

/*
QIcon windowIcon () const
*/
$method=|QIcon|windowIcon|

/*
QString windowIconText () const
*/
$method=|QString|windowIconText|

/*
Qt::WindowModality windowModality () const
*/
$method=|Qt::WindowModality|windowModality|

/*
qreal windowOpacity () const
*/
$method=|qreal|windowOpacity|

/*
QString windowRole () const
*/
$method=|QString|windowRole|

/*
Qt::WindowStates windowState () const
*/
$method=|Qt::WindowStates|windowState|

/*
QString windowTitle () const
*/
$method=|QString|windowTitle|

/*
Qt::WindowType windowType () const
*/
$method=|Qt::WindowType|windowType|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

/*
virtual QPaintEngine * paintEngine () const
*/
$virtualMethod=|QPaintEngine *|paintEngine|

/*
bool close ()
*/
$method=|bool|close|

/*
void hide ()
*/
$method=|void|hide|

/*
void lower ()
*/
$method=|void|lower|

/*
void raise ()
*/
$method=|void|raise|

/*
void setDisabled ( bool disable )
*/
$method=|void|setDisabled|bool

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setHidden ( bool hidden )
*/
$method=|void|setHidden|bool

/*
void setStyleSheet ( const QString & styleSheet )
*/
$method=|void|setStyleSheet|const QString &

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
void setWindowModified ( bool )
*/
$method=|void|setWindowModified|bool

/*
void setWindowTitle ( const QString & )
*/
$method=|void|setWindowTitle|const QString &

/*
void show ()
*/
$method=|void|show|

/*
void showFullScreen ()
*/
$method=|void|showFullScreen|

/*
void showMaximized ()
*/
$method=|void|showMaximized|

/*
void showMinimized ()
*/
$method=|void|showMinimized|

/*
void showNormal ()
*/
$method=|void|showNormal|

//=============================================================================
// QPaintDevice methods - begin
//=============================================================================

/*
int colorCount () const
*/
$method=|int|colorCount|

/*
int depth () const
*/
$method=|int|depth|

/*
int heightMM () const
*/
$method=|int|heightMM|

/*
int logicalDpiX () const
*/
$method=|int|logicalDpiX|

/*
int logicalDpiY () const
*/
$method=|int|logicalDpiY|

/*
int numColors () const (deprecated)
*/
$method=|int|numColors|

/*
bool paintingActive () const
*/
$method=|bool|paintingActive|

/*
int physicalDpiX () const
*/
$method=|int|physicalDpiX|

/*
int physicalDpiY () const
*/
$method=|int|physicalDpiY|

/*
int widthMM () const
*/
$method=|int|widthMM|

//=============================================================================
// QPaintDevice methods - end
//=============================================================================

/*
static QWidget * find ( WId id )
*/
HB_FUNC_STATIC( QWIDGET_FIND )
{
  WId par1 = (WId) hb_parptr(1);
  QWidget * ptr = QWidget::find ( par1 );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * keyboardGrabber ()
*/
$staticMethod=|QWidget *|keyboardGrabber|

/*
static QWidget * mouseGrabber ()
*/
$staticMethod=|QWidget *|mouseGrabber|

/*
static void setTabOrder ( QWidget * first, QWidget * second )
*/
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

#pragma ENDDUMP
