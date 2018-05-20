%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

$beginClassFrom=QPaintDevice

   METHOD new
   METHOD delete

   METHOD allGray
   METHOD bitPlaneCount
   METHOD byteCount
   METHOD bytesPerLine
   METHOD cacheKey
   METHOD color
   METHOD colorCount
   METHOD colorTable
   METHOD convertToFormat
   METHOD copy
   METHOD createAlphaMask
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD depth
   METHOD dotsPerMeterX
   METHOD dotsPerMeterY
   METHOD fill1
   METHOD fill2
   METHOD fill3
   METHOD fill
   METHOD format
   METHOD hasAlphaChannel
   METHOD height
   METHOD invertPixels
   METHOD isGrayscale
   METHOD isNull
   METHOD load
   METHOD loadFromData
   METHOD mirrored
   METHOD offset
   METHOD pixel
   METHOD pixelIndex
   METHOD rect
   METHOD rgbSwapped
   METHOD save
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD setColor
   METHOD setColorCount
   METHOD setColorTable
   METHOD setDotsPerMeterX
   METHOD setDotsPerMeterY
   METHOD setOffset
   METHOD setPixel
   METHOD setText
   METHOD size
   METHOD swap
   METHOD text
   METHOD textKeys
   METHOD transformed
   METHOD valid
   METHOD width
   METHOD fromData
   METHOD trueMatrix
   METHOD toVariant
   METHOD fromVariant

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QColor>

$prototype=QImage ()
$internalConstructor=|new1|

$prototype=QImage ( const QSize & size, Format format )
$internalConstructor=|new2|const QSize &,QImage::Format

$prototype=QImage ( int width, int height, Format format )
$internalConstructor=|new3|int,int,QImage::Format

$prototype=QImage ( uchar * data, int width, int height, Format format )
$internalConstructor=|new4|uchar *,int,int,QImage::Format

$prototype=QImage ( const uchar * data, int width, int height, Format format )
$internalConstructor=|new5|const uchar *,int,int,QImage::Format

$prototype=QImage ( uchar * data, int width, int height, int bytesPerLine, Format format )
$internalConstructor=|new6|uchar *,int,int,int,QImage::Format

$prototype=QImage ( const uchar * data, int width, int height, int bytesPerLine, Format format )
$internalConstructor=|new7|const uchar *,int,int,int,QImage::Format

$prototype=QImage ( const char * const[] xpm )
%% TODO: implementar 'const char * const[] '
%% $constructor=|new8|const char * const[]

$prototype=QImage ( const QString & fileName, const char * format = 0 )
$internalConstructor=|new9|const QString &,const char *=0

$prototype=QImage ( const char * fileName, const char * format = 0 )
$internalConstructor=|new10|const char *,const char *=0

$prototype=QImage ( const QImage & image )
$internalConstructor=|new11|const QImage &

//[01]QImage ()
//[02]QImage ( const QSize & size, Format format )
//[03]QImage ( int width, int height, Format format )
%% TODO: conflict between [4] and [5]
//[04]QImage ( uchar * data, int width, int height, Format format )
//[05]QImage ( const uchar * data, int width, int height, Format format )
%% TODO: conflict between [6] and [7]
//[06]QImage ( uchar * data, int width, int height, int bytesPerLine, Format format )
//[07]QImage ( const uchar * data, int width, int height, int bytesPerLine, Format format )
%% TODO: implement
//[08]QImage ( const char * const[] xpm )
%% TODO: conflict between [9] and [10]
//[09]QImage ( const QString & fileName, const char * format = 0 )
//[10]QImage ( const char * fileName, const char * format = 0 )
//[11]QImage ( const QImage & image )

HB_FUNC_STATIC( QIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImage_new1();
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    QImage_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_new3();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QImage_new4();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QImage_new5();
  }
  else if( ISNUMPAR(5) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QImage_new6();
  }
  else if( ISNUMPAR(5) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QImage_new7();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QImage_new9();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QImage_new10();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QImage_new11();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool allGray () const
$method=|bool|allGray|

$prototype=int bitPlaneCount () const
$method=|int|bitPlaneCount|

$prototype=int byteCount () const
$method=|int|byteCount|

$prototype=int bytesPerLine () const
$method=|int|bytesPerLine|

$prototype=qint64 cacheKey () const
$method=|qint64|cacheKey|

$prototype=QRgb color ( int i ) const
$method=|QRgb|color|int

$prototype=int colorCount () const
$method=|int|colorCount|

$prototype=QVector<QRgb> colorTable () const
$method=|QVector<QRgb>|colorTable|

$prototype=QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
$internalMethod=|QImage|convertToFormat,convertToFormat1|QImage::Format,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
$internalMethod=|QImage|convertToFormat,convertToFormat2|QImage::Format,const QVector<QRgb> &,Qt::ImageConversionFlags=Qt::AutoColor

//[1]QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
//[2]QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const

HB_FUNC_STATIC( QIMAGE_CONVERTTOFORMAT )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QImage_convertToFormat1();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QImage_convertToFormat2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage copy ( const QRect & rectangle = QRect() ) const
$internalMethod=|QImage|copy,copy1|const QRect &=QRect()

$prototype=QImage copy ( int x, int y, int width, int height ) const
$internalMethod=|QImage|copy,copy2|int,int,int,int

//[1]QImage copy ( const QRect & rectangle = QRect() ) const
//[2]QImage copy ( int x, int y, int width, int height ) const

HB_FUNC_STATIC( QIMAGE_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    QImage_copy1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QImage_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage createAlphaMask ( Qt::ImageConversionFlags flags = Qt::AutoColor ) const
$method=|QImage|createAlphaMask|Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QImage createHeuristicMask ( bool clipTight = true ) const
$method=|QImage|createHeuristicMask|bool=true

$prototype=QImage createMaskFromColor ( QRgb color, Qt::MaskMode mode = Qt::MaskInColor ) const
$method=|QImage|createMaskFromColor|QRgb,Qt::MaskMode=Qt::MaskInColor

$prototype=int depth () const
$method=|int|depth|

$prototype=int dotsPerMeterX () const
$method=|int|dotsPerMeterX|

$prototype=int dotsPerMeterY () const
$method=|int|dotsPerMeterY|

$prototype=void fill ( uint pixelValue )
$method=|void|fill,fill1|uint

$prototype=void fill ( Qt::GlobalColor color )
$method=|void|fill,fill2|Qt::GlobalColor

$prototype=void fill ( const QColor & color )
$method=|void|fill,fill3|const QColor &

%% TODO: conflict between [1] and [2]
//[1]void fill ( uint pixelValue )
//[2]void fill ( Qt::GlobalColor color )
//[3]void fill ( const QColor & color )

HB_FUNC_STATIC( QIMAGE_FILL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIMAGE_FILL1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIMAGE_FILL2 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QIMAGE_FILL3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Format format () const
$method=|QImage::Format|format|

$prototype=bool hasAlphaChannel () const
$method=|bool|hasAlphaChannel|

$prototype=int height () const
$method=|int|height|

$prototype=void invertPixels ( InvertMode mode = InvertRgb )
$method=|void|invertPixels|QImage::InvertMode=QImage::InvertRgb

$prototype=bool isGrayscale () const
$method=|bool|isGrayscale|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool load ( const QString & fileName, const char * format = 0 )
$internalMethod=|bool|load,load1|const QString &,const char *=0

$prototype=bool load ( QIODevice * device, const char * format )
$internalMethod=|bool|load,load2|QIODevice *,const char *

//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * device, const char * format )

HB_FUNC_STATIC( QIMAGE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QImage_load1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QImage_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool loadFromData ( const uchar * data, int len, const char * format = 0 )
$internalMethod=|bool|loadFromData,loadFromData1|const uchar *,int,const char *=0

$prototype=bool loadFromData ( const QByteArray & data, const char * format = 0 )
$internalMethod=|bool|loadFromData,loadFromData2|const QByteArray &,const char *=0

//[1]bool loadFromData ( const uchar * data, int len, const char * format = 0 )
//[2]bool loadFromData ( const QByteArray & data, const char * format = 0 )

HB_FUNC_STATIC( QIMAGE_LOADFROMDATA )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) )
  {
    QImage_loadFromData1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QImage_loadFromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage mirrored ( bool horizontal = false, bool vertical = true ) const
$method=|QImage|mirrored|bool=false,bool=true

$prototype=QPoint offset () const
$method=|QPoint|offset|

$prototype=QRgb pixel ( const QPoint & position ) const
$internalMethod=|QRgb|pixel,pixel1|const QPoint &

$prototype=QRgb pixel ( int x, int y ) const
$internalMethod=|QRgb|pixel,pixel2|int,int

//[1]QRgb pixel ( const QPoint & position ) const
//[2]QRgb pixel ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_PIXEL )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_pixel1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_pixel2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int pixelIndex ( const QPoint & position ) const
$internalMethod=|int|pixelIndex,pixelIndex1|const QPoint &

$prototype=int pixelIndex ( int x, int y ) const
$internalMethod=|int|pixelIndex,pixelIndex2|int,int

//[1]int pixelIndex ( const QPoint & position ) const
//[2]int pixelIndex ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_PIXELINDEX )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_pixelIndex1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_pixelIndex2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect rect () const
$method=|QRect|rect|

$prototype=QImage rgbSwapped () const
$method=|QImage|rgbSwapped|

$prototype=bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
$internalMethod=|bool|save,save1|const QString &,const char *=0,int=-1

$prototype=bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
$internalMethod=|bool|save,save2|QIODevice *,const char *=0,int=-1

//[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
//[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const

HB_FUNC_STATIC( QIMAGE_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QImage_save1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QImage_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
$internalMethod=|QImage|scaled,scaled1|const QSize &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

$prototype=QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
$internalMethod=|QImage|scaled,scaled2|int,int,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

//[1]QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
//[2]QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QIMAGE_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QImage_scaled1();
  }
  else if( ISBETWEEN(1,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QImage_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
$method=|QImage|scaledToHeight|int,Qt::TransformationMode=Qt::FastTransformation

$prototype=QImage scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
$method=|QImage|scaledToWidth|int,Qt::TransformationMode=Qt::FastTransformation

// TODO: implementar
//[1]uchar * scanLine ( int i )
//[2]const uchar * scanLine ( int i ) const

//HB_FUNC_STATIC( QIMAGE_SCANLINE )
//{
//  HB_FUNC_EXEC( QIMAGE_SCANLINE1 );
//}

$prototype=void setColor ( int index, QRgb colorValue )
$method=|void|setColor|int,QRgb

$prototype=void setColorCount ( int colorCount )
$method=|void|setColorCount|int

$prototype=void setColorTable ( const QVector<QRgb> colors )
$method=|void|setColorTable|const QVector<QRgb>

$prototype=void setDotsPerMeterX ( int x )
$method=|void|setDotsPerMeterX|int

$prototype=void setDotsPerMeterY ( int y )
$method=|void|setDotsPerMeterY|int

$prototype=void setOffset ( const QPoint & offset )
$method=|void|setOffset|const QPoint &

$prototype=void setPixel ( const QPoint & position, uint index_or_rgb )
$internalMethod=|void|setPixel,setPixel1|const QPoint &,uint

$prototype=void setPixel ( int x, int y, uint index_or_rgb )
$internalMethod=|void|setPixel,setPixel2|int,int,uint

//[1]void setPixel ( const QPoint & position, uint index_or_rgb )
//[2]void setPixel ( int x, int y, uint index_or_rgb )

HB_FUNC_STATIC( QIMAGE_SETPIXEL )
{
  if( ISNUMPAR(2) && ISQPOINT(1) && ISNUM(2) )
  {
    QImage_setPixel1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_setPixel2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setText ( const QString & key, const QString & text )
$method=|void|setText|const QString &,const QString &

$prototype=QSize size () const
$method=|QSize|size|

$prototype=void swap ( QImage & other )
$method=|void|swap|QImage &

$prototype=QString text ( const QString & key = QString() ) const
$method=|QString|text|const QString &=QString()

$prototype=QStringList textKeys () const
$method=|QStringList|textKeys|

$prototype=QImage transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
$internalMethod=|QImage|transformed,transformed1|const QMatrix &,Qt::TransformationMode=Qt::FastTransformation

$prototype=QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
$internalMethod=|QImage|transformed,transformed2|const QTransform &,Qt::TransformationMode=Qt::FastTransformation

//[1]QImage transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
//[2]QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QIMAGE_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QImage_transformed1();
  }
  else if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QImage_transformed2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool valid ( const QPoint & pos ) const
$internalMethod=|bool|valid,valid1|const QPoint &

$prototype=bool valid ( int x, int y ) const
$internalMethod=|bool|valid,valid2|int,int

//[1]bool valid ( const QPoint & pos ) const
//[2]bool valid ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_VALID )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_valid1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_valid2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int width () const
$method=|int|width|

$prototype=static QImage fromData ( const uchar * data, int size, const char * format = 0 )
$internalStaticMethod=|QImage|fromData,fromData1|const uchar *,int,const char *=0

$prototype=static QImage fromData ( const QByteArray & data, const char * format = 0 )
$internalStaticMethod=|QImage|fromData,fromData2|const QByteArray &,const char *=0

//[1]QImage fromData ( const uchar * data, int size, const char * format = 0 )
//[2]QImage fromData ( const QByteArray & data, const char * format = 0 )

HB_FUNC_STATIC( QIMAGE_FROMDATA )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) )
  {
    QImage_fromData1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QImage_fromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QMatrix trueMatrix ( const QMatrix & matrix, int width, int height )
$internalStaticMethod=|QMatrix|trueMatrix,trueMatrix1|const QMatrix &,int,int

$prototype=static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
$internalStaticMethod=|QTransform|trueMatrix,trueMatrix2|const QTransform &,int,int

//[1]QMatrix trueMatrix ( const QMatrix & matrix, int width, int height )
//[2]QTransform trueMatrix ( const QTransform & matrix, int width, int height )

HB_FUNC_STATIC( QIMAGE_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_trueMatrix1();
  }
  else if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_trueMatrix2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$variantMethods

#pragma ENDDUMP
