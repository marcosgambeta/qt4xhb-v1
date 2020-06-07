%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLayoutItem

$addMethods

$endClass

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

$prototypeV2=virtual bool hasHeightForWidth() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=virtual bool isEmpty() const

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
