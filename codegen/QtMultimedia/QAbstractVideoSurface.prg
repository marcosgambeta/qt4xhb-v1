%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   METHOD delete
   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD supportedPixelFormats
   METHOD surfaceFormat

   METHOD onActiveChanged
   METHOD onSurfaceFormatChanged
   METHOD onSupportedFormatsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVideoSurfaceFormat>

$deleteMethod

$prototype=Error error () const
$method=|QAbstractVideoSurface::Error|error|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|bool|isFormatSupported|const QVideoSurfaceFormat &

$prototype=virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|QVideoSurfaceFormat|nearestFormat|const QVideoSurfaceFormat &

$prototype=virtual bool present ( const QVideoFrame & frame ) = 0
$virtualMethod=|bool|present|const QVideoFrame &

$prototype=virtual bool start ( const QVideoSurfaceFormat & format )
$virtualMethod=|bool|start|const QVideoSurfaceFormat &

$prototype=virtual void stop ()
$virtualMethod=|void|stop|

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats ( QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle ) const = 0
$virtualMethod=|QList<QVideoFrame::PixelFormat>|supportedPixelFormats|QAbstractVideoBuffer::HandleType=QAbstractVideoBuffer::NoHandle

$prototype=QVideoSurfaceFormat surfaceFormat () const
$method=|QVideoSurfaceFormat|surfaceFormat|

$beginSignals
$signalMethod=|activeChanged(bool)
$signalMethod=|surfaceFormatChanged(QVideoSurfaceFormat)
$signalMethod=|supportedFormatsChanged()
$endSignals

#pragma ENDDUMP
