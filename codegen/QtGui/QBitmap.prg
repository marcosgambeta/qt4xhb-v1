$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBITMAP
#endif

CLASS QBitmap INHERIT QPixmap

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD clear
   METHOD transformed
   METHOD fromData
   METHOD fromImage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QBitmap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBitmap ()
*/
$constructor=|new1|

/*
QBitmap ( const QPixmap & pixmap )
*/
$constructor=|new2|const QPixmap &

/*
QBitmap ( int width, int height )
*/
$constructor=|new3|int,int

/*
QBitmap ( const QSize & size )
*/
$constructor=|new4|const QSize &

/*
QBitmap ( const QString & fileName, const char * format = 0 )
*/
$constructor=|new5|const QString &,const char *=0

//[1]QBitmap ()
//[2]QBitmap ( const QPixmap & pixmap )
//[3]QBitmap ( int width, int height )
//[4]QBitmap ( const QSize & size )
//[5]QBitmap ( const QString & fileName, const char * format = 0 )

HB_FUNC_STATIC( QBITMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW4 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
QBitmap transformed ( const QTransform & matrix ) const
*/
$method=|QBitmap|transformed|const QTransform &

/*
static QBitmap fromData ( const QSize & size, const uchar * bits, QImage::Format monoFormat = QImage::Format_MonoLSB )
*/
$staticMethod=|QBitmap|fromData|const QSize &,const uchar *,QImage::Format=QImage::Format_MonoLSB

/*
static QBitmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$staticMethod=|QBitmap|fromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

#pragma ENDDUMP
