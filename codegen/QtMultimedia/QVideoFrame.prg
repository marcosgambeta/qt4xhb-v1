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

$prototype=QVideoFrame ()
$internalConstructor=|new1|

$prototype=QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
$internalConstructor=|new2|QAbstractVideoBuffer *,const QSize &,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
$internalConstructor=|new3|int,const QSize &,int,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( const QImage & image )
$internalConstructor=|new4|const QImage &

$prototype=QVideoFrame ( const QVideoFrame & other )
$internalConstructor=|new5|const QVideoFrame &

/*
[1]QVideoFrame ()
[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
[4]QVideoFrame ( const QImage & image )
[5]QVideoFrame ( const QVideoFrame & other )
*/

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_new1();
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3) )
  {
    QVideoFrame_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    QVideoFrame_new3();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QVideoFrame_new4();
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    QVideoFrame_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

%% TODO: implementar 'uchar *'

$prototype=uchar * bits ()
%% $method=|uchar *|bits,bits1|

$prototype=const uchar * bits () const
%% $method=|const uchar *|bits,bits2|

%% /*
%% [1]uchar * bits ()
%% [2]const uchar * bits () const
%% */

%% HB_FUNC_STATIC( QVIDEOFRAME_BITS )
%% {
%%   if( ISNUMPAR(0) )
%%   {
%%     HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%% }

$prototypeV2=int bytesPerLine() const

$prototype=qint64 endTime () const
$method=|qint64|endTime|

$prototype=FieldType fieldType () const
$method=|QVideoFrame::FieldType|fieldType|

$prototype=QVariant handle () const
$method=|QVariant|handle|

$prototype=QAbstractVideoBuffer::HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototypeV2=int height() const

$prototypeV2=bool isMapped() const

$prototypeV2=bool isReadable() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isWritable() const

$prototype=bool map ( QAbstractVideoBuffer::MapMode mode )
$method=|bool|map|QAbstractVideoBuffer::MapMode

$prototype=QAbstractVideoBuffer::MapMode mapMode () const
$method=|QAbstractVideoBuffer::MapMode|mapMode|

$prototypeV2=int mappedBytes() const

$prototype=PixelFormat pixelFormat () const
$method=|QVideoFrame::PixelFormat|pixelFormat|

$prototype=void setEndTime ( qint64 time )
$method=|void|setEndTime|qint64

$prototype=void setFieldType ( FieldType field )
$method=|void|setFieldType|QVideoFrame::FieldType

$prototype=void setStartTime ( qint64 time )
$method=|void|setStartTime|qint64

$prototype=QSize size () const
$method=|QSize|size|

$prototype=qint64 startTime () const
$method=|qint64|startTime|

$prototype=void unmap ()
$method=|void|unmap|

$prototypeV2=int width() const

$prototype=static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
$staticMethod=|QImage::Format|imageFormatFromPixelFormat|QVideoFrame::PixelFormat

$prototype=static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
$staticMethod=|QVideoFrame::PixelFormat|pixelFormatFromImageFormat|QImage::Format

$extraMethods

#pragma ENDDUMP
