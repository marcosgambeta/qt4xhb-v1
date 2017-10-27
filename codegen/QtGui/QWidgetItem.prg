$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QWidgetItem INHERIT QLayoutItem

   METHOD new
   METHOD delete
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWidgetItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWidgetItem ( QWidget * widget )
*/
HB_FUNC_STATIC( QWIDGETITEM_NEW )
{
  QWidgetItem * o = new QWidgetItem ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual Qt::Orientations expandingDirections () const
*/
$virtualMethod=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry () const
*/
$virtualMethod=|QRect|geometry|

/*
virtual bool hasHeightForWidth () const
*/
$virtualMethod=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int w ) const
*/
$virtualMethod=|int|heightForWidth|int

/*
virtual bool isEmpty () const
*/
$virtualMethod=|bool|isEmpty|

/*
virtual QSize maximumSize () const
*/
$virtualMethod=|QSize|maximumSize|

/*
virtual QSize minimumSize () const
*/
$virtualMethod=|QSize|minimumSize|

/*
virtual void setGeometry ( const QRect & rect )
*/
$virtualMethod=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual QWidget * widget ()
*/
$virtualMethod=|QWidget *|widget|

#pragma ENDDUMP
