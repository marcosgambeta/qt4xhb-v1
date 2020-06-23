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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QColor>
#include <QtGui/QPixmap>

$prototype=QMovie ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
$internalConstructor=|new2|QIODevice *,const QByteArray &=QByteArray(),QObject *=0

$prototype=QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray(),QObject *=0

/*
[1]QMovie ( QObject * parent = 0 )
[2]QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
[3]QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/

HB_FUNC_STATIC( QMOVIE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QMovie_new1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QMovie_new2();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QMovie_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QColor backgroundColor() const

$prototypeV2=QMovie::CacheMode cacheMode() const

$prototypeV2=int currentFrameNumber() const

$prototypeV2=QImage currentImage() const

$prototypeV2=QPixmap currentPixmap() const

$prototypeV2=QIODevice * device() const

$prototypeV2=QString fileName() const

$prototypeV2=QByteArray format() const

$prototypeV2=int frameCount() const

$prototypeV2=QRect frameRect() const

$prototypeV2=bool isValid() const

$prototypeV2=bool jumpToFrame( int frameNumber )

$prototypeV2=int loopCount() const

$prototypeV2=int nextFrameDelay() const

$prototypeV2=QSize scaledSize()

$prototypeV2=void setBackgroundColor( const QColor & color )

$prototypeV2=void setCacheMode( QMovie::CacheMode mode )

$prototypeV2=void setDevice( QIODevice * device )

$prototypeV2=void setFileName( const QString & fileName )

$prototypeV2=void setFormat( const QByteArray & format )

$prototypeV2=void setScaledSize( const QSize & size )

$prototypeV2=int speed() const

$prototypeV2=QMovie::MovieState state() const

$prototypeV2=bool jumpToNextFrame()

$prototypeV2=void setPaused( bool paused )

$prototypeV2=void setSpeed( int percentSpeed )

$prototypeV2=void start()

$prototypeV2=void stop()

$prototypeV2=static QList<QByteArray> supportedFormats()

$beginSignals
$signal=|error(QImageReader::ImageReaderError)
$signal=|finished()
$signal=|frameChanged(int)
$signal=|resized(QSize)
$signal=|started()
$signal=|stateChanged(QMovie::MovieState)
$signal=|updated(QRect)
$endSignals

#pragma ENDDUMP
