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

$prototype=virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|bool|isFormatSupported|const QVideoSurfaceFormat &

$prototype=virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|QVideoSurfaceFormat|nearestFormat|const QVideoSurfaceFormat &

$prototype=virtual bool present ( const QVideoFrame & frame ) = 0
$virtualMethod=|bool|present|const QVideoFrame &

$prototype=virtual bool start ( const QVideoSurfaceFormat & format )
$virtualMethod=|bool|start|const QVideoSurfaceFormat &

$prototypeV2=virtual void stop()

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats ( QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle ) const = 0
$virtualMethod=|QList<QVideoFrame::PixelFormat>|supportedPixelFormats|QAbstractVideoBuffer::HandleType=QAbstractVideoBuffer::NoHandle

$prototypeV2=QVideoSurfaceFormat surfaceFormat() const

$beginSignals
$signal=|activeChanged(bool)
$signal=|surfaceFormatChanged(QVideoSurfaceFormat)
$signal=|supportedFormatsChanged()
$endSignals

#pragma ENDDUMP
