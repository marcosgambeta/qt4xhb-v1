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

$prototype=QSpacerItem ( int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum )
$constructor=|new|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$prototype=void changeSize ( int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum )
$method=|void|changeSize|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$prototype=virtual Qt::Orientations expandingDirections () const
$virtualMethod=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry () const
$virtualMethod=|QRect|geometry|

$prototype=virtual bool isEmpty () const
$virtualMethod=|bool|isEmpty|

$prototype=virtual QSize maximumSize () const
$virtualMethod=|QSize|maximumSize|

$prototype=virtual QSize minimumSize () const
$virtualMethod=|QSize|minimumSize|

$prototype=virtual void setGeometry ( const QRect & r )
$virtualMethod=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QSpacerItem * spacerItem ()
$virtualMethod=|QSpacerItem *|spacerItem|

#pragma ENDDUMP
