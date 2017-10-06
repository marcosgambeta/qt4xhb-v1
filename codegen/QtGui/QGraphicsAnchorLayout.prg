$header

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

$destructor

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

$deleteMethod

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
$method=|qreal|horizontalSpacing|

/*
void setHorizontalSpacing ( qreal spacing )
*/
$method=|void|setHorizontalSpacing|qreal

/*
void setSpacing ( qreal spacing )
*/
$method=|void|setSpacing|qreal

/*
void setVerticalSpacing ( qreal spacing )
*/
$method=|void|setVerticalSpacing|qreal

/*
qreal verticalSpacing () const
*/
$method=|qreal|verticalSpacing|

/*
virtual int count () const
*/
$virtualMethod=|int|count|

/*
virtual void invalidate ()
*/
$virtualMethod=|void|invalidate|

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

/*
virtual void removeAt ( int index )
*/
$virtualMethod=|void|removeAt|int

/*
virtual void setGeometry ( const QRectF & geom )
*/
$virtualMethod=|void|setGeometry|const QRectF &

#pragma ENDDUMP
