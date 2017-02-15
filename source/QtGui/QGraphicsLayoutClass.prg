/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGRAPHICSLAYOUTITEM

CLASS QGraphicsLayout INHERIT QGraphicsLayoutItem

   DATA class_id INIT Class_Id_QGraphicsLayout
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD activate
   METHOD count
   METHOD invalidate
   METHOD isActivated
   METHOD itemAt
   METHOD removeAt
   METHOD setContentsMargins
   METHOD widgetEvent
   METHOD getContentsMargins
   METHOD updateGeometry
   METHOD instantInvalidatePropagation
   METHOD setInstantInvalidatePropagation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGraphicsLayout>

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


HB_FUNC_STATIC( QGRAPHICSLAYOUT_DELETE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void activate ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ACTIVATE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->activate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_COUNT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_INVALIDATE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isActivated () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ISACTIVATED )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isActivated (  );
    hb_retl( b );
  }
}


/*
virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ITEMAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QGraphicsLayoutItem * ptr = obj->itemAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


/*
virtual void removeAt ( int index ) = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_REMOVEAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeAt ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_SETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setContentsMargins ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void widgetEvent ( QEvent * e )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_WIDGETEVENT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->widgetEvent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_GETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void updateGeometry ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_UPDATEGEOMETRY )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateGeometry (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool instantInvalidatePropagation ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_INSTANTINVALIDATEPROPAGATION )
{
  bool b = QGraphicsLayout::instantInvalidatePropagation (  );
  hb_retl( b );
}


/*
void setInstantInvalidatePropagation ( bool enable )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_SETINSTANTINVALIDATEPROPAGATION )
{
  bool par1 = hb_parl(1);
  QGraphicsLayout::setInstantInvalidatePropagation ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
