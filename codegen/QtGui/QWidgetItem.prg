%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$includes

$prototype=QWidgetItem ( QWidget * widget )
$constructor=|new|QWidget *

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
