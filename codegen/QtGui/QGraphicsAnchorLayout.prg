/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSANCHOR
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsAnchorLayout INHERIT QGraphicsLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addAnchor
   METHOD addAnchors
   METHOD addCornerAnchors
   METHOD anchor
   METHOD horizontalSpacing
   METHOD setHorizontalSpacing
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsAnchorLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsAnchorLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_NEW )
{
  QGraphicsAnchorLayout * o = new QGraphicsAnchorLayout ( PQGRAPHICSLAYOUTITEM(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_DELETE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QGraphicsLayoutItem * par3 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = hb_parni(4);
    QGraphicsAnchor * ptr = obj->addAnchor ( par1, (Qt::AnchorPoint) par2, par3, (Qt::AnchorPoint) par4 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSANCHOR" );
  }
}

/*
void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsLayoutItem * par2 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) Qt::Horizontal | Qt::Vertical : hb_parni(3);
    obj->addAnchors ( par1, par2, (Qt::Orientations) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDCORNERANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QGraphicsLayoutItem * par3 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = hb_parni(4);
    obj->addCornerAnchors ( par1, (Qt::Corner) par2, par3, (Qt::Corner) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QGraphicsLayoutItem * par3 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = hb_parni(4);
    QGraphicsAnchor * ptr = obj->anchor ( par1, (Qt::AnchorPoint) par2, par3, (Qt::AnchorPoint) par4 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSANCHOR" );
  }
}

/*
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_HORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->horizontalSpacing () );
  }
}

/*
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETVERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal verticalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_VERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->verticalSpacing () );
  }
}

/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_COUNT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_INVALIDATE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ITEMAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}

/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_REMOVEAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAt ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRectF & geom )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETGEOMETRY )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
