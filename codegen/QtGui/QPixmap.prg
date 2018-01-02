$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QBITMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD cacheKey
   METHOD convertFromImage
   METHOD copy
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD depth
   METHOD detach
   METHOD fill
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD height
   METHOD isNull
   METHOD isQBitmap
   METHOD load
   METHOD loadFromData
   METHOD mask
   METHOD rect
   METHOD save
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD scroll
   METHOD setMask
   METHOD size
   METHOD swap
   METHOD toImage
   METHOD transformed
   METHOD width
   METHOD defaultDepth
   METHOD fromImage
   METHOD fromImageReader
   METHOD grabWidget
   METHOD grabWindow
   METHOD trueMatrix
   METHOD toVariant
   METHOD fromVariant

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPixmap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QBitmap>
#include <QVariant>

$prototype=QPixmap ()
$constructor=|new1|

$prototype=QPixmap ( int width, int height )
$constructor=|new2|int,int

$prototype=QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
$constructor=|new3|const QString &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QPixmap ( const char * const[] xpm )
%% TODO: implementar ?

$prototype=QPixmap ( const QPixmap & pixmap )
$constructor=|new5|const QPixmap &

$prototype=QPixmap ( const QSize & size )
$constructor=|new6|const QSize &

//[1]QPixmap ()
//[2]QPixmap ( int width, int height )
//[3]QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[4]QPixmap ( const char * const[] xpm )
//[5]QPixmap ( const QPixmap & pixmap )
//[6]QPixmap ( const QSize & size )

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW3 );
  }
%%  else if( ISNUMPAR(1) && ISCHAR(1) )
%%  {
%%    HB_FUNC_EXEC( QPIXMAP_NEW4 );
%%  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qint64 cacheKey () const
$method=|qint64|cacheKey|

$prototype=bool convertFromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
$method=|bool|convertFromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QPixmap copy ( const QRect & rectangle = QRect() ) const
$internalMethod=|QPixmap|copy,copy1|const QRect &=QRect()

$prototype=QPixmap copy ( int x, int y, int width, int height ) const
$internalMethod=|QPixmap|copy,copy2|int,int,int,int

//[1]QPixmap copy ( const QRect & rectangle = QRect() ) const
//[2]QPixmap copy ( int x, int y, int width, int height ) const

HB_FUNC_STATIC( QPIXMAP_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    QPixmap_copy1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPixmap_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QBitmap createHeuristicMask ( bool clipTight = true ) const
$method=|QBitmap|createHeuristicMask|bool=true

$prototype=QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
$internalMethod=|QBitmap|createMaskFromColor,createMaskFromColor1|const QColor &,Qt::MaskMode

$prototype=QBitmap createMaskFromColor ( const QColor & maskColor ) const
$internalMethod=|QBitmap|createMaskFromColor,createMaskFromColor2|const QColor &

//[1]QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
//[2]QBitmap createMaskFromColor ( const QColor & maskColor ) const

HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISNUM(2) )
  {
    QPixmap_createMaskFromColor1();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPixmap_createMaskFromColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int depth () const
$method=|int|depth|

$prototype=void detach ()
$method=|void|detach|

$prototype=void fill ( const QColor & color = Qt::white )
$internalMethod=|void|fill,fill1|const QColor &=Qt::white

$prototype=void fill ( const QWidget * widget, const QPoint & offset )
$internalMethod=|void|fill,fill2|const QWidget *,const QPoint &

$prototype=void fill ( const QWidget * widget, int x, int y )
$internalMethod=|void|fill,fill3|const QWidget *,int,int

//[1]void fill ( const QColor & color = Qt::white )
//[2]void fill ( const QWidget * widget, const QPoint & offset )
//[3]void fill ( const QWidget * widget, int x, int y )

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISCHAR(1)||ISNUM(1)||ISNIL(1)) )
  {
    QPixmap_fill1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQPOINT(2) )
  {
    QPixmap_fill2();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_fill3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool hasAlpha () const
$method=|bool|hasAlpha|

$prototype=bool hasAlphaChannel () const
$method=|bool|hasAlphaChannel|

$prototype=int height () const
$method=|int|height|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isQBitmap () const
$method=|bool|isQBitmap|

$prototype=bool load ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
$method=|bool|load|const QString &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalMethod=|bool|loadFromData,loadFromData1|const uchar *,uint,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalMethod=|bool|loadFromData,loadFromData2|const QByteArray &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

//[1]bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[2]bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QPixmap_loadFromData1();
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_loadFromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QBitmap mask () const
$method=|QBitmap|mask|

$prototype=QRect rect () const
$method=|QRect|rect|

$prototype=bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
$internalMethod=|bool|save,save1|const QString &,const char *=0,int=-1

$prototype=bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
$internalMethod=|bool|save,save2|QIODevice *,const char *=0,int=-1

//[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
//[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_save1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
$internalMethod=|QPixmap|scaled,scaled1|const QSize &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
$internalMethod=|QPixmap|scaled,scaled2|int,int,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

//[1]QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
//[2]QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_scaled1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QPixmap_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPixmap scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
$method=|QPixmap|scaledToHeight|int,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
$method=|QPixmap|scaledToWidth|int,Qt::TransformationMode=Qt::FastTransformation

$prototype=void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
$internalMethod=|void|scroll,scroll1|int,int,int,int,int,int,QRegion *=0

$prototype=void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
$internalMethod=|void|scroll,scroll2|int,int,const QRect &,QRegion *=0

//[1]void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
//[2]void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    QPixmap_scroll1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    QPixmap_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setMask ( const QBitmap & mask )
$method=|void|setMask|const QBitmap &

$prototype=QSize size () const
$method=|QSize|size|

$prototype=void swap ( QPixmap & other )
$method=|void|swap|QPixmap &

$prototype=QImage toImage () const
$method=|QImage|toImage|

$prototype=QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
$internalMethod=|QPixmap|transformed,transformed1|const QTransform &,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
$internalMethod=|QPixmap|transformed,transformed2|const QMatrix &,Qt::TransformationMode=Qt::FastTransformation

//[1]QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
//[2]QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QPixmap_transformed1();
  }
  else if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QPixmap_transformed2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int width () const
$method=|int|width|

$prototype=static int defaultDepth ()
$staticMethod=|int|defaultDepth|

$prototype=static QPixmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
$staticMethod=|QPixmap|fromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=static QPixmap fromImageReader ( QImageReader * imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor )
$staticMethod=|QPixmap|fromImageReader|QImageReader *,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=static QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
$internalStaticMethod=|QPixmap|grabWidget,grabWidget1|QWidget *,const QRect &

$prototype=static QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )
$internalStaticMethod=|QPixmap|grabWidget,grabWidget2|QWidget *,int=0,int=0,int=-1,int=-1

//[1]QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
//[2]QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQRECT(2) )
  {
    QPixmap_grabWidget1();
  }
  else if( ISBETWEEN(1,5) && ISQWIDGET(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    QPixmap_grabWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QPixmap grabWindow ( WId window, int x = 0, int y = 0, int width = -1, int height = -1 )
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
  WId par1 = (WId) hb_parptr(1);
  QPixmap * ptr = new QPixmap( QPixmap::grabWindow ( par1, OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

$prototype=static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
$internalStaticMethod=|QTransform|trueMatrix,trueMatrix1|const QTransform &,int,int

$prototype=static QMatrix trueMatrix ( const QMatrix & m, int w, int h )
$internalStaticMethod=|QMatrix|trueMatrix,trueMatrix2|const QMatrix &,int,int

//[1]QTransform trueMatrix ( const QTransform & matrix, int width, int height )
//[2]QMatrix trueMatrix ( const QMatrix & m, int w, int h )

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix1();
  }
  else if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$variantMethods

#pragma ENDDUMP
