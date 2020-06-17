%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$deleteMethod

$prototypeV2=virtual QVariant handle() const

$prototypeV2=QAbstractVideoBuffer::HandleType handleType() const

$prototype=virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
%% TODO: implementar 'uchar *'
%% $virtualMethod=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

$prototypeV2=virtual QAbstractVideoBuffer::MapMode mapMode() const = 0

$prototypeV2=virtual void unmap() = 0

$extraMethods

#pragma ENDDUMP
