$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsLinearLayout INHERIT QGraphicsLayout

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addStretch
   METHOD alignment
   METHOD insertItem
   METHOD insertStretch
   METHOD itemSpacing
   METHOD orientation
   METHOD removeItem
   METHOD setAlignment
   METHOD setItemSpacing
   METHOD setOrientation
   METHOD setSpacing
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretchFactor
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsLinearLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW1 )
{
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsLinearLayout * o = new QGraphicsLinearLayout ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW2 )
{
  QGraphicsLayoutItem * par2 = ISNIL(2)? 0 : (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsLinearLayout * o = new QGraphicsLinearLayout ( (Qt::Orientation) hb_parni(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
//[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW )
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

$deleteMethod

/*
void addItem ( QGraphicsLayoutItem * item )
*/
$method=|void|addItem|QGraphicsLayoutItem *

/*
void addStretch ( int stretch = 1 )
*/
$method=|void|addStretch|int=1

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
$method=|Qt::Alignment|alignment|QGraphicsLayoutItem *

/*
void insertItem ( int index, QGraphicsLayoutItem * item )
*/
$method=|void|insertItem|int,QGraphicsLayoutItem *

/*
void insertStretch ( int index, int stretch = 1 )
*/
$method=|void|insertStretch|int,int=1

/*
qreal itemSpacing ( int index ) const
*/
$method=|qreal|itemSpacing|int

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
$method=|void|removeItem|QGraphicsLayoutItem *

/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
$method=|void|setAlignment|QGraphicsLayoutItem *,Qt::Alignment

/*
void setItemSpacing ( int index, qreal spacing )
*/
$method=|void|setItemSpacing|int,qreal

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setSpacing ( qreal spacing )
*/
$method=|void|setSpacing|qreal

/*
void setStretchFactor ( QGraphicsLayoutItem * item, int stretch )
*/
$method=|void|setStretchFactor|QGraphicsLayoutItem *,int

/*
qreal spacing () const
*/
$method=|qreal|spacing|

/*
int stretchFactor ( QGraphicsLayoutItem * item ) const
*/
$method=|int|stretchFactor|QGraphicsLayoutItem *

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
virtual void setGeometry ( const QRectF & rect )
*/
$virtualMethod=|void|setGeometry|const QRectF &

/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
$virtualMethod=|QSizeF|sizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

#pragma ENDDUMP
