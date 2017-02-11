/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGraphicsLinearLayout>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_NEW1 )
{
  QGraphicsLinearLayout * o = NULL;
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsLinearLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsLinearLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_NEW2 )
{
  QGraphicsLinearLayout * o = NULL;
  int par1 = hb_parni(1);
  QGraphicsLayoutItem * par2 = ISNIL(2)? 0 : (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsLinearLayout (  (Qt::Orientation) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsLinearLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
//[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )

HB_FUNC( QGRAPHICSLINEARLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEARLAYOUT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEARLAYOUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QGRAPHICSLINEARLAYOUT_DELETE )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_ADDITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addStretch ( int stretch = 1 )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_ADDSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    obj->addStretch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_ALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->alignment ( par1 );
    hb_retni( i );
  }
}


/*
void insertItem ( int index, QGraphicsLayoutItem * item )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_INSERTITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QGraphicsLayoutItem * par2 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertItem ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertStretch ( int index, int stretch = 1 )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_INSERTSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? 1 : hb_parni(2);
    obj->insertStretch ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal itemSpacing ( int index ) const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_ITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    qreal r = obj->itemSpacing ( par1 );
    hb_retnd( r );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_ORIENTATION )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->orientation (  );
    hb_retni( i );
  }
}


/*
void removeItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_REMOVEITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SETALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setAlignment ( par1,  (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemSpacing ( int index, qreal spacing )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SETITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    qreal par2 = hb_parnd(2);
    obj->setItemSpacing ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SETORIENTATION )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( qreal spacing )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SETSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStretchFactor ( QGraphicsLayoutItem * item, int stretch )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SETSTRETCHFACTOR )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setStretchFactor ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal spacing () const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->spacing (  );
    hb_retnd( r );
  }
}


/*
int stretchFactor ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_STRETCHFACTOR )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->stretchFactor ( par1 );
    hb_retni( i );
  }
}


/*
virtual int count () const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_COUNT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_INVALIDATE )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_ITEMAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QGraphicsLayoutItem * ptr = obj->itemAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );  }
}


/*
virtual void removeAt ( int index )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_REMOVEAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeAt ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SETGEOMETRY )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC( QGRAPHICSLINEARLAYOUT_SIZEHINT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSizeF * ptr = new QSizeF( obj->sizeHint (  (Qt::SizeHint) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );  }
}




