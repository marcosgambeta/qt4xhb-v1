/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
HB_FUNC_STATIC( QWIDGET_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QWidget * o = new QWidget ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QWIDGET_DELETE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool acceptDrops () const
*/
HB_FUNC_STATIC( QWIDGET_ACCEPTDROPS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->acceptDrops () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString accessibleDescription () const
*/
HB_FUNC_STATIC( QWIDGET_ACCESSIBLEDESCRIPTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->accessibleDescription () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString accessibleName () const
*/
HB_FUNC_STATIC( QWIDGET_ACCESSIBLENAME )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->accessibleName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QWIDGET_ACTIVATEWINDOW )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->activateWindow ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_ADJUSTSIZE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->adjustSize ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoFillBackground () const
*/
HB_FUNC_STATIC( QWIDGET_AUTOFILLBACKGROUND )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->autoFillBackground () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPalette::ColorRole backgroundRole () const
*/
HB_FUNC_STATIC( QWIDGET_BACKGROUNDROLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->backgroundRole () );
  }
}

/*
QSize baseSize () const
*/
HB_FUNC_STATIC( QWIDGET_BASESIZE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->baseSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QWidget * childAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QWIDGET_CHILDAT1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->childAt ( PINT(1), PINT(2) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * childAt ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QWIDGET_CHILDAT2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->childAt ( *PQPOINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

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
}

/*
QRect childrenRect () const
*/
HB_FUNC_STATIC( QWIDGET_CHILDRENRECT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->childrenRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRegion childrenRegion () const
*/
HB_FUNC_STATIC( QWIDGET_CHILDRENREGION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->childrenRegion () );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
void clearFocus ()
*/
HB_FUNC_STATIC( QWIDGET_CLEARFOCUS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearFocus ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearMask ()
*/
HB_FUNC_STATIC( QWIDGET_CLEARMASK )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearMask ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMargins contentsMargins () const
*/
HB_FUNC_STATIC( QWIDGET_CONTENTSMARGINS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->contentsMargins () );
    _qt4xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

/*
QRect contentsRect () const
*/
HB_FUNC_STATIC( QWIDGET_CONTENTSRECT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->contentsRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
Qt::ContextMenuPolicy contextMenuPolicy () const
*/
HB_FUNC_STATIC( QWIDGET_CONTEXTMENUPOLICY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->contextMenuPolicy () );
  }
}

/*
QCursor cursor () const
*/
HB_FUNC_STATIC( QWIDGET_CURSOR )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor () );
    _qt4xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
}

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
HB_FUNC_STATIC( QWIDGET_ENSUREPOLISHED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->ensurePolished ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::FocusPolicy focusPolicy () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSPOLICY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->focusPolicy () );
  }
}

/*
QWidget * focusProxy () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSPROXY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->focusProxy ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * focusWidget () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSWIDGET )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->focusWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
const QFont & font () const
*/
HB_FUNC_STATIC( QWIDGET_FONT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QFont * ptr = &obj->font ();
    _qt4xhb_createReturnClass ( ptr, "QFONT" );
  }
}

/*
QFontInfo fontInfo () const
*/
HB_FUNC_STATIC( QWIDGET_FONTINFO )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFontInfo * ptr = new QFontInfo( obj->fontInfo () );
    _qt4xhb_createReturnClass ( ptr, "QFONTINFO", true );
  }
}

/*
QFontMetrics fontMetrics () const
*/
HB_FUNC_STATIC( QWIDGET_FONTMETRICS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFontMetrics * ptr = new QFontMetrics( obj->fontMetrics () );
    _qt4xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
  }
}

/*
QPalette::ColorRole foregroundRole () const
*/
HB_FUNC_STATIC( QWIDGET_FOREGROUNDROLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->foregroundRole () );
  }
}

/*
QRect frameGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_FRAMEGEOMETRY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameGeometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QSize frameSize () const
*/
HB_FUNC_STATIC( QWIDGET_FRAMESIZE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->frameSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
const QRect & geometry () const
*/
HB_FUNC_STATIC( QWIDGET_GEOMETRY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QRect * ptr = &obj->geometry ();
    _qt4xhb_createReturnClass ( ptr, "QRECT" );
  }
}

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QWIDGET_GETCONTENTSMARGINS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QWIDGET_GRABGESTURE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::GestureFlags() : hb_parni(2);
    obj->grabGesture ( (Qt::GestureType) par1, (Qt::GestureFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabKeyboard ()
*/
HB_FUNC_STATIC( QWIDGET_GRABKEYBOARD )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->grabKeyboard ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ()
*/
HB_FUNC_STATIC( QWIDGET_GRABMOUSE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->grabMouse ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QWIDGET_GRABMOUSE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->grabMouse ( *PQCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
HB_FUNC_STATIC( QWIDGET_GRABSHORTCUT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::WindowShortcut : hb_parni(2);
    RINT( obj->grabShortcut ( *PQKEYSEQUENCE(1), (Qt::ShortcutContext) par2 ) );
  }
}

/*
QGraphicsEffect * graphicsEffect () const
*/
HB_FUNC_STATIC( QWIDGET_GRAPHICSEFFECT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsEffect * ptr = obj->graphicsEffect ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSEFFECT" );
  }
}

/*
QGraphicsProxyWidget * graphicsProxyWidget () const
*/
HB_FUNC_STATIC( QWIDGET_GRAPHICSPROXYWIDGET )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsProxyWidget * ptr = obj->graphicsProxyWidget ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSPROXYWIDGET" );
  }
}

/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QWIDGET_HASFOCUS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasFocus () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasMouseTracking () const
*/
HB_FUNC_STATIC( QWIDGET_HASMOUSETRACKING )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasMouseTracking () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QWIDGET_HEIGHT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->height () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QWIDGET_HEIGHTFORWIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->heightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QInputContext * inputContext ()
*/
HB_FUNC_STATIC( QWIDGET_INPUTCONTEXT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QInputContext * ptr = obj->inputContext ();
    _qt4xhb_createReturnClass ( ptr, "QINPUTCONTEXT" );
  }
}

/*
Qt::InputMethodHints inputMethodHints () const
*/
HB_FUNC_STATIC( QWIDGET_INPUTMETHODHINTS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->inputMethodHints () );
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QWIDGET_INPUTMETHODQUERY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void insertAction ( QAction * before, QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertAction ( PQACTION(1), PQACTION(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QWIDGET_ISACTIVEWINDOW )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isActiveWindow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAncestorOf ( const QWidget * child ) const
*/
HB_FUNC_STATIC( QWIDGET_ISANCESTOROF )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isAncestorOf ( par1 ) );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QWIDGET_ISENABLED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEnabledTo ( QWidget * ancestor ) const
*/
HB_FUNC_STATIC( QWIDGET_ISENABLEDTO )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabledTo ( PQWIDGET(1) ) );
  }
}

/*
bool isFullScreen () const
*/
HB_FUNC_STATIC( QWIDGET_ISFULLSCREEN )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isFullScreen () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isHidden () const
*/
HB_FUNC_STATIC( QWIDGET_ISHIDDEN )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isHidden () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isMaximized () const
*/
HB_FUNC_STATIC( QWIDGET_ISMAXIMIZED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMaximized () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isMinimized () const
*/
HB_FUNC_STATIC( QWIDGET_ISMINIMIZED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMinimized () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isModal () const
*/
HB_FUNC_STATIC( QWIDGET_ISMODAL )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isModal () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QWIDGET_ISVISIBLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isVisibleTo ( QWidget * ancestor ) const
*/
HB_FUNC_STATIC( QWIDGET_ISVISIBLETO )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVisibleTo ( PQWIDGET(1) ) );
  }
}

/*
bool isWindow () const
*/
HB_FUNC_STATIC( QWIDGET_ISWINDOW )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isWindow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWindowModified () const
*/
HB_FUNC_STATIC( QWIDGET_ISWINDOWMODIFIED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isWindowModified () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QLayout * layout () const
*/
HB_FUNC_STATIC( QWIDGET_LAYOUT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * ptr = obj->layout ();
    _qt4xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QWIDGET_LAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->layoutDirection () );
  }
}

/*
QLocale locale () const
*/
HB_FUNC_STATIC( QWIDGET_LOCALE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROM )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFrom ( PQWIDGET(1), *PQPOINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapFromGlobal ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROMGLOBAL )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromGlobal ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapFromParent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROMPARENT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromParent ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTO )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapTo ( PQWIDGET(1), *PQPOINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapToGlobal ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTOGLOBAL )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapToGlobal ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint mapToParent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTOPARENT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapToParent ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QRegion mask () const
*/
HB_FUNC_STATIC( QWIDGET_MASK )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->mask () );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
int maximumHeight () const
*/
HB_FUNC_STATIC( QWIDGET_MAXIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximumHeight () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize maximumSize () const
*/
HB_FUNC_STATIC( QWIDGET_MAXIMUMSIZE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int maximumWidth () const
*/
HB_FUNC_STATIC( QWIDGET_MAXIMUMWIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximumWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int minimumHeight () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minimumHeight () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize minimumSize () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMSIZE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMSIZEHINT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int minimumWidth () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMWIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minimumWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void move ( const QPoint & )
*/
HB_FUNC_STATIC( QWIDGET_MOVE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->move ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move ( int x, int y )
*/
HB_FUNC_STATIC( QWIDGET_MOVE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->move ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
QWidget * nativeParentWidget () const
*/
HB_FUNC_STATIC( QWIDGET_NATIVEPARENTWIDGET )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->nativeParentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * nextInFocusChain () const
*/
HB_FUNC_STATIC( QWIDGET_NEXTINFOCUSCHAIN )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->nextInFocusChain ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QRect normalGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_NORMALGEOMETRY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->normalGeometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void overrideWindowFlags ( Qt::WindowFlags flags )
*/
HB_FUNC_STATIC( QWIDGET_OVERRIDEWINDOWFLAGS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->overrideWindowFlags ( (Qt::WindowFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QPalette & palette () const
*/
HB_FUNC_STATIC( QWIDGET_PALETTE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPalette * ptr = &obj->palette ();
    _qt4xhb_createReturnClass ( ptr, "QPALETTE" );
  }
}

/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QWIDGET_PARENTWIDGET )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QPoint pos () const
*/
HB_FUNC_STATIC( QWIDGET_POS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QWidget * previousInFocusChain () const
*/
HB_FUNC_STATIC( QWIDGET_PREVIOUSINFOCUSCHAIN )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->previousInFocusChain ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QRect rect () const
*/
HB_FUNC_STATIC( QWIDGET_RECT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void releaseKeyboard ()
*/
HB_FUNC_STATIC( QWIDGET_RELEASEKEYBOARD )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->releaseKeyboard ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseMouse ()
*/
HB_FUNC_STATIC( QWIDGET_RELEASEMOUSE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->releaseMouse ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseShortcut ( int id )
*/
HB_FUNC_STATIC( QWIDGET_RELEASESHORTCUT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->releaseShortcut ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_REMOVEACTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
*/
HB_FUNC_STATIC( QWIDGET_RENDER1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPoint par2 = ISNIL(2)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) QWidget::DrawWindowBackground | QWidget::DrawChildren : hb_parni(4);
    obj->render ( par1, par2, par3, (QWidget::RenderFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
*/
HB_FUNC_STATIC( QWIDGET_RENDER2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint par2 = ISNIL(2)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) QWidget::DrawWindowBackground | QWidget::DrawChildren : hb_parni(4);
    obj->render ( PQPAINTER(1), par2, par3, (QWidget::RenderFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void render ( QPaintDevice * target, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )
//[2]void render ( QPainter * painter, const QPoint & targetOffset = QPoint(), const QRegion & sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags( DrawWindowBackground | DrawChildren ) )

// TODO: implementar reconhecimento de QPaintDevice

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
}

/*
void repaint ( int x, int y, int w, int h )
*/
HB_FUNC_STATIC( QWIDGET_REPAINT1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->repaint ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ( const QRect & rect )
*/
HB_FUNC_STATIC( QWIDGET_REPAINT2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->repaint ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ( const QRegion & rgn )
*/
HB_FUNC_STATIC( QWIDGET_REPAINT3 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->repaint ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void resize ( const QSize & )
*/
HB_FUNC_STATIC( QWIDGET_RESIZE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( int w, int h )
*/
HB_FUNC_STATIC( QWIDGET_RESIZE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
bool restoreGeometry ( const QByteArray & geometry )
*/
HB_FUNC_STATIC( QWIDGET_RESTOREGEOMETRY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->restoreGeometry ( *PQBYTEARRAY(1) ) );
  }
}

/*
QByteArray saveGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_SAVEGEOMETRY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveGeometry () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void scroll ( int dx, int dy )
*/
HB_FUNC_STATIC( QWIDGET_SCROLL1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scroll ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll ( int dx, int dy, const QRect & r )
*/
HB_FUNC_STATIC( QWIDGET_SCROLL2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scroll ( PINT(1), PINT(2), *PQRECT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setAcceptDrops ( bool on )
*/
HB_FUNC_STATIC( QWIDGET_SETACCEPTDROPS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAcceptDrops ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccessibleDescription ( const QString & description )
*/
HB_FUNC_STATIC( QWIDGET_SETACCESSIBLEDESCRIPTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setAccessibleDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccessibleName ( const QString & name )
*/
HB_FUNC_STATIC( QWIDGET_SETACCESSIBLENAME )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setAccessibleName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QWIDGET_SETATTRIBUTE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttribute ( (Qt::WidgetAttribute) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoFillBackground ( bool enabled )
*/
HB_FUNC_STATIC( QWIDGET_SETAUTOFILLBACKGROUND )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoFillBackground ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundRole ( QPalette::ColorRole role )
*/
HB_FUNC_STATIC( QWIDGET_SETBACKGROUNDROLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBackgroundRole ( (QPalette::ColorRole) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBaseSize ( const QSize & )
*/
HB_FUNC_STATIC( QWIDGET_SETBASESIZE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBaseSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBaseSize ( int basew, int baseh )
*/
HB_FUNC_STATIC( QWIDGET_SETBASESIZE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBaseSize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContentsMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( const QMargins & margins )
*/
HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContentsMargins ( *PQMARGINS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
*/
HB_FUNC_STATIC( QWIDGET_SETCONTEXTMENUPOLICY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setContextMenuPolicy ( (Qt::ContextMenuPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursor ( const QCursor & )
*/
HB_FUNC_STATIC( QWIDGET_SETCURSOR )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCursor ( *PQCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedHeight ( int h )
*/
HB_FUNC_STATIC( QWIDGET_SETFIXEDHEIGHT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFixedHeight ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedSize ( const QSize & s )
*/
HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFixedSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedSize ( int w, int h )
*/
HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFixedSize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setFixedWidth ( int w )
*/
HB_FUNC_STATIC( QWIDGET_SETFIXEDWIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFixedWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ( Qt::FocusReason reason )
*/
HB_FUNC_STATIC( QWIDGET_SETFOCUS1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocus ( (Qt::FocusReason) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ()
*/
HB_FUNC_STATIC( QWIDGET_SETFOCUS2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocus ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
HB_FUNC_STATIC( QWIDGET_SETFOCUSPOLICY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocusPolicy ( (Qt::FocusPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocusProxy ( QWidget * w )
*/
HB_FUNC_STATIC( QWIDGET_SETFOCUSPROXY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocusProxy ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & )
*/
HB_FUNC_STATIC( QWIDGET_SETFONT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForegroundRole ( QPalette::ColorRole role )
*/
HB_FUNC_STATIC( QWIDGET_SETFOREGROUNDROLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setForegroundRole ( (QPalette::ColorRole) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( const QRect & )
*/
HB_FUNC_STATIC( QWIDGET_SETGEOMETRY1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( int x, int y, int w, int h )
*/
HB_FUNC_STATIC( QWIDGET_SETGEOMETRY2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
HB_FUNC_STATIC( QWIDGET_SETGRAPHICSEFFECT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsEffect * par1 = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGraphicsEffect ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInputContext ( QInputContext * context )
*/
HB_FUNC_STATIC( QWIDGET_SETINPUTCONTEXT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QInputContext * par1 = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setInputContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
HB_FUNC_STATIC( QWIDGET_SETINPUTMETHODHINTS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputMethodHints ( (Qt::InputMethodHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayout ( QLayout * layout )
*/
HB_FUNC_STATIC( QWIDGET_SETLAYOUT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLayout ( PQLAYOUT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QWIDGET_SETLAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutDirection ( (Qt::LayoutDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QWIDGET_SETLOCALE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMask ( const QBitmap & bitmap )
*/
HB_FUNC_STATIC( QWIDGET_SETMASK1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMask ( *PQBITMAP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMask ( const QRegion & region )
*/
HB_FUNC_STATIC( QWIDGET_SETMASK2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMask ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setMaximumHeight ( int maxh )
*/
HB_FUNC_STATIC( QWIDGET_SETMAXIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaximumHeight ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumSize ( const QSize & )
*/
HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximumSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumSize ( int maxw, int maxh )
*/
HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximumSize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setMaximumWidth ( int maxw )
*/
HB_FUNC_STATIC( QWIDGET_SETMAXIMUMWIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaximumWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumHeight ( int minh )
*/
HB_FUNC_STATIC( QWIDGET_SETMINIMUMHEIGHT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinimumHeight ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumSize ( const QSize & )
*/
HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimumSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumSize ( int minw, int minh )
*/
HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimumSize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setMinimumWidth ( int minw )
*/
HB_FUNC_STATIC( QWIDGET_SETMINIMUMWIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinimumWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMouseTracking ( bool enable )
*/
HB_FUNC_STATIC( QWIDGET_SETMOUSETRACKING )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setMouseTracking ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPalette ( const QPalette & )
*/
HB_FUNC_STATIC( QWIDGET_SETPALETTE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPalette ( *PQPALETTE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParent ( QWidget * parent )
*/
HB_FUNC_STATIC( QWIDGET_SETPARENT1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setParent ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParent ( QWidget * parent, Qt::WindowFlags f )
*/
HB_FUNC_STATIC( QWIDGET_SETPARENT2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setParent ( PQWIDGET(1), (Qt::WindowFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setShortcutAutoRepeat ( int id, bool enable = true )
*/
HB_FUNC_STATIC( QWIDGET_SETSHORTCUTAUTOREPEAT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setShortcutAutoRepeat ( PINT(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcutEnabled ( int id, bool enable = true )
*/
HB_FUNC_STATIC( QWIDGET_SETSHORTCUTENABLED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setShortcutEnabled ( PINT(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeIncrement ( const QSize & )
*/
HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeIncrement ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeIncrement ( int w, int h )
*/
HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeIncrement ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setSizePolicy ( QSizePolicy & )
*/
HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizePolicy * par1 = (QSizePolicy *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSizePolicy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/
HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setStatusTip ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETSTATUSTIP )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setStatusTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QWIDGET_SETSTYLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStyle * par1 = (QStyle *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStyle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETTOOLTIP )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setToolTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUpdatesEnabled ( bool enable )
*/
HB_FUNC_STATIC( QWIDGET_SETUPDATESENABLED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setUpdatesEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWHATSTHIS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setWhatsThis ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowFilePath ( const QString & filePath )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWFILEPATH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setWindowFilePath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowFlags ( Qt::WindowFlags type )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWFLAGS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowFlags ( (Qt::WindowFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWICON )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setWindowIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowIconText ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWICONTEXT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setWindowIconText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWMODALITY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowModality ( (Qt::WindowModality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowOpacity ( qreal level )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWOPACITY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWindowOpacity ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowRole ( const QString & role )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWROLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setWindowRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowState ( Qt::WindowStates windowState )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWSTATE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowState ( (Qt::WindowStates) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QWIDGET_SIZE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEHINT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeIncrement () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEINCREMENT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeIncrement () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSizePolicy sizePolicy () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEPOLICY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizePolicy * ptr = new QSizePolicy( obj->sizePolicy () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEPOLICY", true );
  }
}

/*
void stackUnder ( QWidget * w )
*/
HB_FUNC_STATIC( QWIDGET_STACKUNDER )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stackUnder ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QWIDGET_STATUSTIP )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->statusTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStyle * style () const
*/
HB_FUNC_STATIC( QWIDGET_STYLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStyle * ptr = obj->style ();
    _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}

/*
QString styleSheet () const
*/
HB_FUNC_STATIC( QWIDGET_STYLESHEET )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->styleSheet () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
HB_FUNC_STATIC( QWIDGET_TESTATTRIBUTE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testAttribute ( (Qt::WidgetAttribute) par1 ) );
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QWIDGET_TOOLTIP )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toolTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool underMouse () const
*/
HB_FUNC_STATIC( QWIDGET_UNDERMOUSE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->underMouse () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void ungrabGesture ( Qt::GestureType gesture )
*/
HB_FUNC_STATIC( QWIDGET_UNGRABGESTURE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ungrabGesture ( (Qt::GestureType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetCursor ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETCURSOR )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->unsetCursor ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetLayoutDirection ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETLAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->unsetLayoutDirection ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetLocale ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETLOCALE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->unsetLocale ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( int x, int y, int w, int h )
*/
HB_FUNC_STATIC( QWIDGET_UPDATE1 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRect & rect )
*/
HB_FUNC_STATIC( QWIDGET_UPDATE2 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRegion & rgn )
*/
HB_FUNC_STATIC( QWIDGET_UPDATE3 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ()
*/
HB_FUNC_STATIC( QWIDGET_UPDATE4 )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void updateGeometry ()
*/
HB_FUNC_STATIC( QWIDGET_UPDATEGEOMETRY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->updateGeometry ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool updatesEnabled () const
*/
HB_FUNC_STATIC( QWIDGET_UPDATESENABLED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->updatesEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRegion visibleRegion () const
*/
HB_FUNC_STATIC( QWIDGET_VISIBLEREGION )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->visibleRegion () );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QWIDGET_WHATSTHIS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->whatsThis () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int width () const
*/
HB_FUNC_STATIC( QWIDGET_WIDTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->width () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QWIDGET_WINDOW )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->window ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QString windowFilePath () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWFILEPATH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->windowFilePath () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::WindowFlags windowFlags () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWFLAGS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowFlags () );
  }
}

/*
QIcon windowIcon () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWICON )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->windowIcon () );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QString windowIconText () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWICONTEXT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->windowIconText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::WindowModality windowModality () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWMODALITY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowModality () );
  }
}

/*
qreal windowOpacity () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWOPACITY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->windowOpacity () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString windowRole () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWROLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->windowRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::WindowStates windowState () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWSTATE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowState () );
  }
}

/*
QString windowTitle () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWTITLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->windowTitle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::WindowType windowType () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWTYPE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowType () );
  }
}

/*
int x () const
*/
HB_FUNC_STATIC( QWIDGET_X )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->x () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int y () const
*/
HB_FUNC_STATIC( QWIDGET_Y )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->y () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QWIDGET_PAINTENGINE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}

/*
bool close ()
*/
HB_FUNC_STATIC( QWIDGET_CLOSE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->close () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void hide ()
*/
HB_FUNC_STATIC( QWIDGET_HIDE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->hide ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lower ()
*/
HB_FUNC_STATIC( QWIDGET_LOWER )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->lower ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void raise ()
*/
HB_FUNC_STATIC( QWIDGET_RAISE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->raise ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled ( bool disable )
*/
HB_FUNC_STATIC( QWIDGET_SETDISABLED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDisabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QWIDGET_SETENABLED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHidden ( bool hidden )
*/
HB_FUNC_STATIC( QWIDGET_SETHIDDEN )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setHidden ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyleSheet ( const QString & styleSheet )
*/
HB_FUNC_STATIC( QWIDGET_SETSTYLESHEET )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setStyleSheet ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QWIDGET_SETVISIBLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowModified ( bool )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWMODIFIED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setWindowModified ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowTitle ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWTITLE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setWindowTitle ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void show ()
*/
HB_FUNC_STATIC( QWIDGET_SHOW )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->show ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showFullScreen ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWFULLSCREEN )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showFullScreen ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMaximized ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWMAXIMIZED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showMaximized ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMinimized ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWMINIMIZED )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showMinimized ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showNormal ()
*/
HB_FUNC_STATIC( QWIDGET_SHOWNORMAL )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showNormal ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//=============================================================================
// QPaintDevice methods - begin
//=============================================================================

/*
int colorCount () const
*/
HB_FUNC_STATIC( QWIDGET_COLORCOUNT )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->colorCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int depth () const
*/
HB_FUNC_STATIC( QWIDGET_DEPTH )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->depth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int heightMM () const
*/
HB_FUNC_STATIC( QWIDGET_HEIGHTMM )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->heightMM () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int logicalDpiX () const
*/
HB_FUNC_STATIC( QWIDGET_LOGICALDPIX )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->logicalDpiX () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int logicalDpiY () const
*/
HB_FUNC_STATIC( QWIDGET_LOGICALDPIY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->logicalDpiY () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int numColors () const (deprecated)
*/
HB_FUNC_STATIC( QWIDGET_NUMCOLORS )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->numColors () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool paintingActive () const
*/
HB_FUNC_STATIC( QWIDGET_PAINTINGACTIVE )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->paintingActive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int physicalDpiX () const
*/
HB_FUNC_STATIC( QWIDGET_PHYSICALDPIX )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->physicalDpiX () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int physicalDpiY () const
*/
HB_FUNC_STATIC( QWIDGET_PHYSICALDPIY )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->physicalDpiY () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int widthMM () const
*/
HB_FUNC_STATIC( QWIDGET_WIDTHMM )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->widthMM () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//=============================================================================
// QPaintDevice methods - end
//=============================================================================

/*
QWidget * find ( WId id )
*/
HB_FUNC_STATIC( QWIDGET_FIND )
{
  WId par1 = (WId) hb_parptr(1);
  QWidget * ptr = QWidget::find ( par1 );
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QWidget * keyboardGrabber ()
*/
HB_FUNC_STATIC( QWIDGET_KEYBOARDGRABBER )
{
  QWidget * ptr = QWidget::keyboardGrabber ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
QWidget * mouseGrabber ()
*/
HB_FUNC_STATIC( QWIDGET_MOUSEGRABBER )
{
  QWidget * ptr = QWidget::mouseGrabber ();
  _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
void setTabOrder ( QWidget * first, QWidget * second )
*/
HB_FUNC_STATIC( QWIDGET_SETTABORDER )
{
  QWidget::setTabOrder ( PQWIDGET(1), PQWIDGET(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
