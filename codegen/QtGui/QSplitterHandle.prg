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

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
$constructor=|new|Qt::Orientation,QSplitter *

$prototypeV2=bool opaqueResize() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void setOrientation( Qt::Orientation orientation )

$prototypeV2=QSplitter * splitter() const

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP
