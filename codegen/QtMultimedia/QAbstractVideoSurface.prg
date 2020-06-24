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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtMultimedia/QVideoSurfaceFormat>

$deleteMethod

$prototypeV2=QAbstractVideoSurface::Error error() const

$prototypeV2=bool isActive() const

$prototypeV2=virtual bool isFormatSupported( const QVideoSurfaceFormat & format ) const

$prototypeV2=virtual QVideoSurfaceFormat nearestFormat( const QVideoSurfaceFormat & format ) const

$prototypeV2=virtual bool present( const QVideoFrame & frame ) = 0

$prototypeV2=virtual bool start( const QVideoSurfaceFormat & format )

$prototypeV2=virtual void stop()

$prototypeV2=virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats( QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle ) const = 0

$prototypeV2=QVideoSurfaceFormat surfaceFormat() const

$beginSignals
$signal=|activeChanged(bool)
$signal=|surfaceFormatChanged(QVideoSurfaceFormat)
$signal=|supportedFormatsChanged()
$endSignals

#pragma ENDDUMP
