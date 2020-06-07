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

$prototype=QColor  backgroundColor () const
$method=|QColor|backgroundColor|

$prototype=CacheMode  cacheMode () const
$method=|QMovie::CacheMode|cacheMode|

$prototypeV2=int currentFrameNumber() const

$prototype=QImage  currentImage () const
$method=|QImage|currentImage|

$prototype=QPixmap  currentPixmap () const
$method=|QPixmap|currentPixmap|

$prototype=QIODevice *  device () const
$method=|QIODevice *|device|

$prototypeV2=QString fileName() const

$prototype=QByteArray  format () const
$method=|QByteArray|format|

$prototypeV2=int frameCount() const

$prototype=QRect  frameRect () const
$method=|QRect|frameRect|

$prototypeV2=bool isValid() const

$prototype=bool jumpToFrame ( int frameNumber )
$method=|bool|jumpToFrame|int

$prototypeV2=int loopCount() const

$prototypeV2=int nextFrameDelay() const

$prototype=QSize  scaledSize ()
$method=|QSize|scaledSize|

$prototype=void  setBackgroundColor ( const QColor & color )
$method=|void|setBackgroundColor|const QColor &

$prototype=void  setCacheMode ( CacheMode mode )
$method=|void|setCacheMode|QMovie::CacheMode

$prototype=void  setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void  setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void  setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=void  setScaledSize ( const QSize & size )
$method=|void|setScaledSize|const QSize &

$prototypeV2=int speed() const

$prototype=MovieState  state () const
$method=|QMovie::MovieState|state|

$prototypeV2=bool jumpToNextFrame()

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void setSpeed ( int percentSpeed )
$method=|void|setSpeed|int

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$prototype=static QList<QByteArray> supportedFormats ()
$staticMethod=|QList<QByteArray>|supportedFormats|

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
