$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QSPACERITEM
#endif

CLASS QSpacerItem INHERIT QLayoutItem

   METHOD new
   METHOD changeSize
   METHOD expandingDirections
   METHOD geometry
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSpacerItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSpacerItem ( int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum )
*/
HB_FUNC_STATIC( QSPACERITEM_NEW )
{
  int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
  QSpacerItem * o = new QSpacerItem ( PINT(1), PINT(2), (QSizePolicy::Policy) par3, (QSizePolicy::Policy) par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
void changeSize ( int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum )
*/
$method=|void|changeSize|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

/*
virtual Qt::Orientations expandingDirections () const
*/
$virtualMethod=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry () const
*/
$virtualMethod=|QRect|geometry|

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
virtual void setGeometry ( const QRect & r )
*/
$virtualMethod=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual QSpacerItem * spacerItem ()
*/
$virtualMethod=|QSpacerItem *|spacerItem|

#pragma ENDDUMP
