$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

CLASS QImage INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new9
   METHOD new10
   METHOD new11
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
   METHOD convertToFormat1
   METHOD convertToFormat2
   METHOD convertToFormat
   METHOD copy1
   METHOD copy2
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
   METHOD load1
   METHOD load2
   METHOD load
   METHOD loadFromData1
   METHOD loadFromData2
   METHOD loadFromData
   METHOD mirrored
   METHOD offset
   METHOD pixel1
   METHOD pixel2
   METHOD pixel
   METHOD pixelIndex1
   METHOD pixelIndex2
   METHOD pixelIndex
   METHOD rect
   METHOD rgbSwapped
   METHOD save1
   METHOD save2
   METHOD save
   METHOD scaled1
   METHOD scaled2
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD setColor
   METHOD setColorCount
   METHOD setColorTable
   METHOD setDotsPerMeterX
   METHOD setDotsPerMeterY
   METHOD setOffset
   METHOD setPixel1
   METHOD setPixel2
   METHOD setPixel
   METHOD setText
   METHOD size
   METHOD swap
   METHOD text
   METHOD textKeys
   METHOD transformed2
   METHOD transformed
   METHOD valid1
   METHOD valid2
   METHOD valid
   METHOD width
   METHOD fromData1
   METHOD fromData2
   METHOD fromData
   METHOD trueMatrix2
   METHOD trueMatrix

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QImage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QColor>

$prototype=QImage ()
$constructor=|new1|

$prototype=QImage ( const QSize & size, Format format )
$constructor=|new2|const QSize &,QImage::Format

$prototype=QImage ( int width, int height, Format format )
$constructor=|new3|int,int,QImage::Format

$prototype=QImage ( uchar * data, int width, int height, Format format )
$constructor=|new4|uchar *,int,int,QImage::Format

$prototype=QImage ( const uchar * data, int width, int height, Format format )
$constructor=|new5|const uchar *,int,int,QImage::Format

$prototype=QImage ( uchar * data, int width, int height, int bytesPerLine, Format format )
$constructor=|new6|uchar *,int,int,int,QImage::Format

$prototype=QImage ( const uchar * data, int width, int height, int bytesPerLine, Format format )
$constructor=|new7|const uchar *,int,int,int,QImage::Format

$prototype=QImage ( const char * const[] xpm )
$constructor=|new8|const char * const[]

$prototype=QImage ( const QString & fileName, const char * format = 0 )
$constructor=|new9|const QString &,const char *=0

$prototype=QImage ( const char * fileName, const char * format = 0 )
$constructor=|new10|const char *,const char *=0

$prototype=QImage ( const QImage & image )
$constructor=|new11|const QImage &

//[01]QImage ()
//[02]QImage ( const QSize & size, Format format )
//[03]QImage ( int width, int height, Format format )
//[04]QImage ( uchar * data, int width, int height, Format format )
//[05]QImage ( const uchar * data, int width, int height, Format format )
//[06]QImage ( uchar * data, int width, int height, int bytesPerLine, Format format )
//[07]QImage ( const uchar * data, int width, int height, int bytesPerLine, Format format )
//[08]QImage ( const char * const[] xpm )
//[09]QImage ( const QString & fileName, const char * format = 0 )
//[10]QImage ( const char * fileName, const char * format = 0 )
//[11]QImage ( const QImage & image )

HB_FUNC_STATIC( QIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW9 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW9 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW10 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW11 );
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
HB_FUNC_STATIC( QIMAGE_COLORTABLE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QRgb> list = obj->colorTable ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
$method=|QImage|convertToFormat,convertToFormat1|QImage::Format,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
HB_FUNC_STATIC( QIMAGE_CONVERTTOFORMAT2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = hb_parni(1);
    QVector<QRgb> par2;
    PHB_ITEM aValues2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aValues2);
    int temp2;
    for (i2=0;i2<nLen2;i2++)
    {
      temp2 = hb_arrayGetNI(aValues2, i2+1);
      par2 << temp2;
    }
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    QImage * ptr = new QImage( obj->convertToFormat ( (QImage::Format) par1, par2, (Qt::ImageConversionFlags) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

//[1]QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
//[2]QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const

HB_FUNC_STATIC( QIMAGE_CONVERTTOFORMAT )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_CONVERTTOFORMAT1 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QIMAGE_CONVERTTOFORMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage copy ( const QRect & rectangle = QRect() ) const
$method=|QImage|copy,copy1|const QRect &=QRect()

$prototype=QImage copy ( int x, int y, int width, int height ) const
$method=|QImage|copy,copy2|int,int,int,int

//[1]QImage copy ( const QRect & rectangle = QRect() ) const
//[2]QImage copy ( int x, int y, int width, int height ) const

HB_FUNC_STATIC( QIMAGE_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QIMAGE_COPY1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QIMAGE_COPY2 );
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

//[1]void fill ( uint pixelValue )
//[2]void fill ( Qt::GlobalColor color )
//[3]void fill ( const QColor & color )

HB_FUNC_STATIC( QIMAGE_FILL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIMAGE_FILL1 );
    //HB_FUNC_EXEC( QIMAGE_FILL2 );
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
$method=|bool|load,load1|const QString &,const char *=0

$prototype=bool load ( QIODevice * device, const char * format )
$method=|bool|load,load2|QIODevice *,const char *

//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * device, const char * format )

HB_FUNC_STATIC( QIMAGE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_LOAD1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QIMAGE_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool loadFromData ( const uchar * data, int len, const char * format = 0 )
$method=|bool|loadFromData,loadFromData1|const uchar *,int,const char *=0

$prototype=bool loadFromData ( const QByteArray & data, const char * format = 0 )
$method=|bool|loadFromData,loadFromData2|const QByteArray &,const char *=0

//[1]bool loadFromData ( const uchar * data, int len, const char * format = 0 )
//[2]bool loadFromData ( const QByteArray & data, const char * format = 0 )

HB_FUNC_STATIC( QIMAGE_LOADFROMDATA )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QIMAGE_LOADFROMDATA1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_LOADFROMDATA2 );
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
$method=|QRgb|pixel,pixel1|const QPoint &

$prototype=QRgb pixel ( int x, int y ) const
$method=|QRgb|pixel,pixel2|int,int

//[1]QRgb pixel ( const QPoint & position ) const
//[2]QRgb pixel ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_PIXEL )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QIMAGE_PIXEL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGE_PIXEL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int pixelIndex ( const QPoint & position ) const
$method=|int|pixelIndex,pixelIndex1|const QPoint &

$prototype=int pixelIndex ( int x, int y ) const
$method=|int|pixelIndex,pixelIndex2|int,int

//[1]int pixelIndex ( const QPoint & position ) const
//[2]int pixelIndex ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_PIXELINDEX )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QIMAGE_PIXELINDEX1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGE_PIXELINDEX2 );
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
$method=|bool|save,save1|const QString &,const char *=0,int=-1

$prototype=bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
$method=|bool|save,save2|QIODevice *,const char *=0,int=-1

//[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
//[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const

HB_FUNC_STATIC( QIMAGE_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QIMAGE_SAVE1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QIMAGE_SAVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
$method=|QImage|scaled,scaled1|const QSize &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

$prototype=QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
$method=|QImage|scaled,scaled2|int,int,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

//[1]QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
//[2]QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QIMAGE_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QIMAGE_SCALED1 );
  }
  else if( ISBETWEEN(1,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QIMAGE_SCALED2 );
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
HB_FUNC_STATIC( QIMAGE_SETCOLORTABLE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QRgb> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetNI(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setColorTable ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setDotsPerMeterX ( int x )
$method=|void|setDotsPerMeterX|int

$prototype=void setDotsPerMeterY ( int y )
$method=|void|setDotsPerMeterY|int

$prototype=void setOffset ( const QPoint & offset )
$method=|void|setOffset|const QPoint &

$prototype=void setPixel ( const QPoint & position, uint index_or_rgb )
$method=|void|setPixel,setPixel1|const QPoint &,uint

$prototype=void setPixel ( int x, int y, uint index_or_rgb )
$method=|void|setPixel,setPixel2|int,int,uint

//[1]void setPixel ( const QPoint & position, uint index_or_rgb )
//[2]void setPixel ( int x, int y, uint index_or_rgb )

HB_FUNC_STATIC( QIMAGE_SETPIXEL )
{
  if( ISNUMPAR(2) && ISQPOINT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGE_SETPIXEL1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QIMAGE_SETPIXEL2 );
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
$method=|QImage|transformed,transformed1|const QMatrix &,Qt::TransformationMode=Qt::FastTransformation

$prototype=QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
$method=|QImage|transformed,transformed2|const QTransform &,Qt::TransformationMode=Qt::FastTransformation

//[1]QImage transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
//[2]QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QIMAGE_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_TRANSFORMED2 );
  }
  else if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_TRANSFORMED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool valid ( const QPoint & pos ) const
$method=|bool|valid,valid1|const QPoint &

$prototype=bool valid ( int x, int y ) const
$method=|bool|valid,valid2|int,int

//[1]bool valid ( const QPoint & pos ) const
//[2]bool valid ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_VALID )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QIMAGE_VALID1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGE_VALID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int width () const
$method=|int|width|

$prototype=static QImage fromData ( const uchar * data, int size, const char * format = 0 )
$staticMethod=|QImage|fromData,fromData1|const uchar *,int,const char *=0

$prototype=static QImage fromData ( const QByteArray & data, const char * format = 0 )
$staticMethod=|QImage|fromData,fromData2|const QByteArray &,const char *=0

//[1]QImage fromData ( const uchar * data, int size, const char * format = 0 )
//[2]QImage fromData ( const QByteArray & data, const char * format = 0 )

HB_FUNC_STATIC( QIMAGE_FROMDATA )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QIMAGE_FROMDATA1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_FROMDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
$staticMethod=|QTransform|trueMatrix,trueMatrix1|const QTransform &,int,int

$prototype=static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
$staticMethod=|QTransform|trueMatrix,trueMatrix2|const QTransform &,int,int

//[1]QMatrix trueMatrix ( const QMatrix & matrix, int width, int height )
//[2]QTransform trueMatrix ( const QTransform & matrix, int width, int height )

HB_FUNC_STATIC( QIMAGE_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QIMAGE_TRUEMATRIX2 );
  }
  else if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QIMAGE_TRUEMATRIX2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$variantMethods

#pragma ENDDUMP
