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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual bool abort() = 0

$prototypeV2=virtual int metric( QPaintDevice::PaintDeviceMetric id ) const = 0

$prototypeV2=virtual bool newPage() = 0

$prototypeV2=virtual QPrinter::PrinterState printerState() const = 0

$prototypeV2=virtual QVariant property( QPrintEngine::PrintEnginePropertyKey key ) const = 0

$prototypeV2=virtual void setProperty( QPrintEngine::PrintEnginePropertyKey key, const QVariant & value ) = 0

$extraMethods

#pragma ENDDUMP
