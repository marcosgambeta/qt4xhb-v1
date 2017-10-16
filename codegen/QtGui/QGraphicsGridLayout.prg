$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsGridLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD alignment
   METHOD columnAlignment
   METHOD columnCount
   METHOD columnMaximumWidth
   METHOD columnMinimumWidth
   METHOD columnPreferredWidth
   METHOD columnSpacing
   METHOD columnStretchFactor
   METHOD horizontalSpacing
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD removeItem
   METHOD rowAlignment
   METHOD rowCount
   METHOD rowMaximumHeight
   METHOD rowMinimumHeight
   METHOD rowPreferredHeight
   METHOD rowSpacing
   METHOD rowStretchFactor
   METHOD setAlignment
   METHOD setColumnAlignment
   METHOD setColumnFixedWidth
   METHOD setColumnMaximumWidth
   METHOD setColumnMinimumWidth
   METHOD setColumnPreferredWidth
   METHOD setColumnSpacing
   METHOD setColumnStretchFactor
   METHOD setHorizontalSpacing
   METHOD setRowAlignment
   METHOD setRowFixedHeight
   METHOD setRowMaximumHeight
   METHOD setRowMinimumHeight
   METHOD setRowPreferredHeight
   METHOD setRowSpacing
   METHOD setRowStretchFactor
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsGridLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsGridLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_NEW )
{
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsGridLayout * o = new QGraphicsGridLayout ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
$method=|void|addItem,addItem1|QGraphicsLayoutItem *,int,int,int,int,Qt::Alignment=0

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
*/
$method=|void|addItem,addItem2|QGraphicsLayoutItem *,int,int,Qt::Alignment=0

//[1]void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
//[2]void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM )
{
  if( ISBETWEEN(5,6) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ADDITEM1 );
  }
  else if( ISBETWEEN(3,4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ADDITEM2 );
  }
}

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
$method=|Qt::Alignment|alignment|QGraphicsLayoutItem *

/*
Qt::Alignment columnAlignment ( int column ) const
*/
$method=|Qt::Alignment|columnAlignment|int

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
qreal columnMaximumWidth ( int column ) const
*/
$method=|qreal|columnMaximumWidth|int

/*
qreal columnMinimumWidth ( int column ) const
*/
$method=|qreal|columnMinimumWidth|int

/*
qreal columnPreferredWidth ( int column ) const
*/
$method=|qreal|columnPreferredWidth|int

/*
qreal columnSpacing ( int column ) const
*/
$method=|qreal|columnSpacing|int

/*
int columnStretchFactor ( int column ) const
*/
$method=|int|columnStretchFactor|int

/*
qreal horizontalSpacing () const
*/
$method=|qreal|horizontalSpacing|

/*
QGraphicsLayoutItem * itemAt ( int row, int column ) const
*/
$method=|QGraphicsLayoutItem *|itemAt,itemAt1|int,int

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
$virtualMethod=|QGraphicsLayoutItem *|itemAt,itemAt2|int

//[1]QGraphicsLayoutItem * itemAt ( int row, int column ) const
//[2]virtual QGraphicsLayoutItem * itemAt ( int index ) const

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ITEMAT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ITEMAT2 );
  }
}

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
$method=|void|removeItem|QGraphicsLayoutItem *

/*
Qt::Alignment rowAlignment ( int row ) const
*/
$method=|Qt::Alignment|rowAlignment|int

/*
int rowCount () const
*/
$method=|int|rowCount|

/*
qreal rowMaximumHeight ( int row ) const
*/
$method=|qreal|rowMaximumHeight|int

/*
qreal rowMinimumHeight ( int row ) const
*/
$method=|qreal|rowMinimumHeight|int

/*
qreal rowPreferredHeight ( int row ) const
*/
$method=|qreal|rowPreferredHeight|int

/*
qreal rowSpacing ( int row ) const
*/
$method=|qreal|rowSpacing|int

/*
int rowStretchFactor ( int row ) const
*/
$method=|int|rowStretchFactor|int

/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
$method=|void|setAlignment|QGraphicsLayoutItem *,Qt::Alignment

/*
void setColumnAlignment ( int column, Qt::Alignment alignment )
*/
$method=|void|setColumnAlignment|int,Qt::Alignment

/*
void setColumnFixedWidth ( int column, qreal width )
*/
$method=|void|setColumnFixedWidth|int,qreal

/*
void setColumnMaximumWidth ( int column, qreal width )
*/
$method=|void|setColumnMaximumWidth|int,qreal

/*
void setColumnMinimumWidth ( int column, qreal width )
*/
$method=|void|setColumnMinimumWidth|int,qreal

/*
void setColumnPreferredWidth ( int column, qreal width )
*/
$method=|void|setColumnPreferredWidth|int,qreal

/*
void setColumnSpacing ( int column, qreal spacing )
*/
$method=|void|setColumnSpacing|int,qreal

/*
void setColumnStretchFactor ( int column, int stretch )
*/
$method=|void|setColumnStretchFactor|int,int

/*
void setHorizontalSpacing ( qreal spacing )
*/
$method=|void|setHorizontalSpacing|qreal

/*
void setRowAlignment ( int row, Qt::Alignment alignment )
*/
$method=|void|setRowAlignment|int,Qt::Alignment

/*
void setRowFixedHeight ( int row, qreal height )
*/
$method=|void|setRowFixedHeight|int,qreal

/*
void setRowMaximumHeight ( int row, qreal height )
*/
$method=|void|setRowMaximumHeight|int,qreal

/*
void setRowMinimumHeight ( int row, qreal height )
*/
$method=|void|setRowMinimumHeight|int,qreal

/*
void setRowPreferredHeight ( int row, qreal height )
*/
$method=|void|setRowPreferredHeight|int,qreal

/*
void setRowSpacing ( int row, qreal spacing )
*/
$method=|void|setRowSpacing|int,qreal

/*
void setRowStretchFactor ( int row, int stretch )
*/
$method=|void|setRowStretchFactor|int,int

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
