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

$prototype=QWidgetItem ( QWidget * widget )
HB_FUNC_STATIC( QWIDGETITEM_NEW )
{
  QWidgetItem * o = new QWidgetItem ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=virtual Qt::Orientations expandingDirections () const
$virtualMethod=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry () const
$virtualMethod=|QRect|geometry|

$prototype=virtual bool hasHeightForWidth () const
$virtualMethod=|bool|hasHeightForWidth|

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual bool isEmpty () const
$virtualMethod=|bool|isEmpty|

$prototype=virtual QSize maximumSize () const
$virtualMethod=|QSize|maximumSize|

$prototype=virtual QSize minimumSize () const
$virtualMethod=|QSize|minimumSize|

$prototype=virtual void setGeometry ( const QRect & rect )
$virtualMethod=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QWidget * widget ()
$virtualMethod=|QWidget *|widget|

#pragma ENDDUMP
