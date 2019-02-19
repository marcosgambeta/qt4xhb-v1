%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QBrush>
#include <QtGui/QPen>

$deleteMethod

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=QPen pen () const
$method=|QPen|pen|

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototype=void setPen ( const QPen & pen )
$method=|void|setPen|const QPen &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

#pragma ENDDUMP
