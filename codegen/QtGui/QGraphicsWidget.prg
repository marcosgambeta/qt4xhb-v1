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

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QGraphicsWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QGRAPHICSWIDGET_DELETE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QGRAPHICSWIDGET_ADDACTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->addActions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void adjustSize ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_ADJUSTSIZE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->adjustSize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoFillBackground () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_AUTOFILLBACKGROUND )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoFillBackground () );
  }
}

/*
Qt::FocusPolicy focusPolicy () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_FOCUSPOLICY )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->focusPolicy () );
  }
}

/*
QGraphicsWidget * focusWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_FOCUSWIDGET )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsWidget * ptr = obj->focusWidget ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_FONT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void getWindowFrameMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_GETWINDOWFRAMEMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getWindowFrameMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int grabShortcut ( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_GRABSHORTCUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::WindowShortcut : hb_parni(2);
    RINT( obj->grabShortcut ( *PQKEYSEQUENCE(1), (Qt::ShortcutContext) par2 ) );
  }
}

/*
void insertAction ( QAction * before, QAction * action )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_INSERTACTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertAction ( PQACTION(1), PQACTION(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
par2 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertActions ( PQACTION(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isActiveWindow () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_ISACTIVEWINDOW )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isActiveWindow () );
  }
}

/*
QGraphicsLayout * layout () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_LAYOUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayout * ptr = obj->layout ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUT" );
  }
}

/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_LAYOUTDIRECTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->layoutDirection () );
  }
}

/*
virtual void paintWindowFrame ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_PAINTWINDOWFRAME )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paintWindowFrame ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPalette palette () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_PALETTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette () );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}

/*
QRectF rect () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_RECT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void releaseShortcut ( int id )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_RELEASESHORTCUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->releaseShortcut ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_REMOVEACTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( const QSizeF & size )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE1 )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE2 )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETATTRIBUTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETAUTOFILLBACKGROUND )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoFillBackground ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETCONTENTSMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContentsMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETFOCUSPOLICY )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocusPolicy ( (Qt::FocusPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETFONT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( qreal x, qreal y, qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY1 )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayout ( QGraphicsLayout * layout )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETLAYOUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayout * par1 = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLayout ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETLAYOUTDIRECTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutDirection ( (Qt::LayoutDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPalette ( const QPalette & palette )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETPALETTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPalette ( *PQPALETTE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcutAutoRepeat ( int id, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETSHORTCUTAUTOREPEAT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setShortcutAutoRepeat ( PINT(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcutEnabled ( int id, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETSHORTCUTENABLED )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setShortcutEnabled ( PINT(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETSTYLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStyle * par1 = (QStyle *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStyle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowFlags ( Qt::WindowFlags wFlags )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETWINDOWFLAGS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowFlags ( (Qt::WindowFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowFrameMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETWINDOWFRAMEMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWindowFrameMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowTitle ( const QString & title )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETWINDOWTITLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWindowTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSizeF size () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SIZE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
QStyle * style () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_STYLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStyle * ptr = obj->style ();
    _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_TESTATTRIBUTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testAttribute ( (Qt::WidgetAttribute) par1 ) );
  }
}

/*
void unsetLayoutDirection ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_UNSETLAYOUTDIRECTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetLayoutDirection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetWindowFrameMargins ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_UNSETWINDOWFRAMEMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetWindowFrameMargins ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::WindowFlags windowFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWFLAGS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowFlags () );
  }
}

/*
QRectF windowFrameGeometry () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWFRAMEGEOMETRY )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->windowFrameGeometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF windowFrameRect () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWFRAMERECT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->windowFrameRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QString windowTitle () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWTITLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->windowTitle () );
  }
}

/*
Qt::WindowType windowType () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWTYPE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowType () );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_BOUNDINGRECT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_GETCONTENTSMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_PAINT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY2 )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SHAPE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_TYPE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

/*
bool close ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_CLOSE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->close () );
  }
}

/*
void setTabOrder ( QGraphicsWidget * first, QGraphicsWidget * second )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETTABORDER )
{
  QGraphicsWidget * par1 = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsWidget * par2 = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsWidget::setTabOrder ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
