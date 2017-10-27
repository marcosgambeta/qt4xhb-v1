$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QGRAPHICSWIDGET
REQUEST QFONT
REQUEST QGRAPHICSLAYOUT
REQUEST QPALETTE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QSTYLE
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsWidget INHERIT QGraphicsObject,QGraphicsLayoutItem

   METHOD new
   METHOD delete
   METHOD actions
   METHOD addAction
   METHOD addActions
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD focusPolicy
   METHOD focusWidget
   METHOD font
   METHOD getWindowFrameMargins
   METHOD grabShortcut
   METHOD insertAction
   METHOD insertActions
   METHOD isActiveWindow
   METHOD layout
   METHOD layoutDirection
   METHOD paintWindowFrame
   METHOD palette
   METHOD rect
   METHOD releaseShortcut
   METHOD removeAction
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setContentsMargins
   METHOD setFocusPolicy
   METHOD setFont
   METHOD setGeometry1
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setPalette
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setStyle
   METHOD setWindowFlags
   METHOD setWindowFrameMargins
   METHOD setWindowTitle
   METHOD size
   METHOD style
   METHOD testAttribute
   METHOD unsetLayoutDirection
   METHOD unsetWindowFrameMargins
   METHOD windowFlags
   METHOD windowFrameGeometry
   METHOD windowFrameRect
   METHOD windowTitle
   METHOD windowType
   METHOD boundingRect
   METHOD getContentsMargins
   METHOD paint
   METHOD setGeometry2
   METHOD setGeometry
   METHOD shape
   METHOD type
   METHOD close
   METHOD setTabOrder

   METHOD onGeometryChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QGraphicsWidget * o = new QGraphicsWidget ( OPQGRAPHICSITEM(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_ACTIONS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addAction ( QAction * action )
*/
$method=|void|addAction|QAction *

/*
void addActions ( QList<QAction *> actions )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_ADDACTIONS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::FocusPolicy focusPolicy () const
*/
$method=|Qt::FocusPolicy|focusPolicy|

/*
QGraphicsWidget * focusWidget () const
*/
$method=|QGraphicsWidget *|focusWidget|

/*
QFont font () const
*/
$method=|QFont|font|

/*
void getWindowFrameMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
$method=|void|getWindowFrameMargins|qreal *,qreal *,qreal *,qreal *

/*
int grabShortcut ( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
$method=|int|grabShortcut|const QKeySequence &|Qt::ShortcutContext=Qt::WindowShortcut

/*
void insertAction ( QAction * before, QAction * action )
*/
$method=|void|insertAction|QAction *,QAction *

/*
void insertActions ( QAction * before, QList<QAction *> actions )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_INSERTACTIONS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QGraphicsLayout * layout () const
*/
$method=|QGraphicsLayout *|layout|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
virtual void paintWindowFrame ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$virtualMethod=|void|paintWindowFrame|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
QPalette palette () const
*/
$method=|QPalette|palette|

/*
QRectF rect () const
*/
$method=|QRectF|rect|

/*
void releaseShortcut ( int id )
*/
$method=|void|releaseShortcut|int

/*
void removeAction ( QAction * action )
*/
$method=|void|removeAction|QAction *

/*
void resize ( const QSizeF & size )
*/
$method=|void|resize,resize1|const QSizeF &

/*
void resize ( qreal w, qreal h )
*/
$method=|void|resize,resize2|qreal,qreal

//[1]void resize ( const QSizeF & size )
//[2]void resize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSWIDGET_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSWIDGET_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

/*
void setAutoFillBackground ( bool enabled )
*/
$method=|void|setAutoFillBackground|bool

/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
$method=|void|setFocusPolicy|Qt::FocusPolicy

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setGeometry ( qreal x, qreal y, qreal w, qreal h )
*/
$method=|void|setGeometry,setGeometry1|qreal,qreal,qreal,qreal

/*
void setLayout ( QGraphicsLayout * layout )
*/
$method=|void|setLayout|QGraphicsLayout *

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void setPalette ( const QPalette & palette )
*/
$method=|void|setPalette|const QPalette &

/*
void setShortcutAutoRepeat ( int id, bool enabled = true )
*/
$method=|void|setShortcutAutoRepeat|int,bool=true

/*
void setShortcutEnabled ( int id, bool enabled = true )
*/
$method=|void|setShortcutEnabled|int,bool=true

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
void setWindowFlags ( Qt::WindowFlags wFlags )
*/
$method=|void|setWindowFlags|Qt::WindowFlags

/*
void setWindowFrameMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
$method=|void|setWindowFrameMargins|qreal,qreal,qreal,qreal

/*
void setWindowTitle ( const QString & title )
*/
$method=|void|setWindowTitle|const QString &

/*
QSizeF size () const
*/
$method=|QSizeF|size|

/*
QStyle * style () const
*/
$method=|QStyle *|style|

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
$method=|bool|testAttribute|Qt::WidgetAttribute

/*
void unsetLayoutDirection ()
*/
$method=|void|unsetLayoutDirection|

/*
void unsetWindowFrameMargins ()
*/
$method=|void|unsetWindowFrameMargins|

/*
Qt::WindowFlags windowFlags () const
*/
$method=|Qt::WindowFlags|windowFlags|

/*
QRectF windowFrameGeometry () const
*/
$method=|QRectF|windowFrameGeometry|

/*
QRectF windowFrameRect () const
*/
$method=|QRectF|windowFrameRect|

/*
QString windowTitle () const
*/
$method=|QString|windowTitle|

/*
Qt::WindowType windowType () const
*/
$method=|Qt::WindowType|windowType|

/*
virtual QRectF boundingRect () const
*/
$virtualMethod=|QRectF|boundingRect|

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
virtual void setGeometry ( const QRectF & rect )
*/
$virtualMethod=|void|setGeometry,setGeometry2|const QRectF &

//[1]void setGeometry ( qreal x, qreal y, qreal w, qreal h )
//[2]virtual void setGeometry ( const QRectF & rect )

HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSWIDGET_SETGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSWIDGET_SETGEOMETRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QPainterPath shape () const
*/
$virtualMethod=|QPainterPath|shape|

/*
virtual int type () const
*/
$virtualMethod=|int|type|

/*
bool close ()
*/
$method=|bool|close|

/*
static void setTabOrder ( QGraphicsWidget * first, QGraphicsWidget * second )
*/
$staticMethod=|void|setTabOrder|QGraphicsWidget *,QGraphicsWidget *

#pragma ENDDUMP
