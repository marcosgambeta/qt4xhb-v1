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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void setSizePolicy( QSizePolicy::Policy policy )

$prototypeV2=void setSpacing( qreal spacing )

$prototypeV2=QSizePolicy::Policy sizePolicy() const

$prototypeV2=qreal spacing() const

$prototypeV2=void unsetSpacing()

#pragma ENDDUMP
