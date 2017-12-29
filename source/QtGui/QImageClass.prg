/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

CLASS QImage INHERIT QPaintDevice

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QImage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QImage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QColor>

/*
QImage ()
*/
HB_FUNC_STATIC( QIMAGE_NEW1 )
{
  QImage * o = new QImage ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImage ( const QSize & size, Format format )
*/
HB_FUNC_STATIC( QIMAGE_NEW2 )
{
  QImage * o = new QImage ( *PQSIZE(1), (QImage::Format) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImage ( int width, int height, Format format )
*/
HB_FUNC_STATIC( QIMAGE_NEW3 )
{
  QImage * o = new QImage ( PINT(1), PINT(2), (QImage::Format) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImage ( const QString & fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_NEW9 )
{
  QImage * o = new QImage ( PQSTRING(1), (const char *) ISNIL(2)? 0 : hb_parc(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImage ( const char * fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_NEW10 )
{
  QImage * o = new QImage ( (const char *) hb_parc(1), (const char *) ISNIL(2)? 0 : hb_parc(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImage ( const QImage & image )
*/
HB_FUNC_STATIC( QIMAGE_NEW11 )
{
  QImage * o = new QImage ( *PQIMAGE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

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

HB_FUNC_STATIC( QIMAGE_DELETE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool allGray () const
*/
HB_FUNC_STATIC( QIMAGE_ALLGRAY )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->allGray () );
  }
}

/*
int bitPlaneCount () const
*/
HB_FUNC_STATIC( QIMAGE_BITPLANECOUNT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->bitPlaneCount () );
  }
}

/*
int byteCount () const
*/
HB_FUNC_STATIC( QIMAGE_BYTECOUNT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->byteCount () );
  }
}

/*
int bytesPerLine () const
*/
HB_FUNC_STATIC( QIMAGE_BYTESPERLINE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->bytesPerLine () );
  }
}

/*
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QIMAGE_CACHEKEY )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->cacheKey () );
  }
}

/*
QRgb color ( int i ) const
*/
HB_FUNC_STATIC( QIMAGE_COLOR )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb i = obj->color ( PINT(1) );
    hb_retni( i );
  }
}

/*
int colorCount () const
*/
HB_FUNC_STATIC( QIMAGE_COLORCOUNT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->colorCount () );
  }
}

/*
QVector<QRgb> colorTable () const
*/
HB_FUNC_STATIC( QIMAGE_COLORTABLE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QRgb> list = obj->colorTable ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
HB_FUNC_STATIC( QIMAGE_CONVERTTOFORMAT1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    QImage * ptr = new QImage( obj->convertToFormat ( (QImage::Format) par1, (Qt::ImageConversionFlags) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
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
}

/*
QImage copy ( const QRect & rectangle = QRect() ) const
*/
HB_FUNC_STATIC( QIMAGE_COPY1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QImage * ptr = new QImage( obj->copy ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
QImage copy ( int x, int y, int width, int height ) const
*/
HB_FUNC_STATIC( QIMAGE_COPY2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->copy ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

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
}

/*
QImage createAlphaMask ( Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
HB_FUNC_STATIC( QIMAGE_CREATEALPHAMASK )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::AutoColor : hb_parni(1);
    QImage * ptr = new QImage( obj->createAlphaMask ( (Qt::ImageConversionFlags) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
QImage createHeuristicMask ( bool clipTight = true ) const
*/
HB_FUNC_STATIC( QIMAGE_CREATEHEURISTICMASK )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->createHeuristicMask ( OPBOOL(1,true) ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
QImage createMaskFromColor ( QRgb color, Qt::MaskMode mode = Qt::MaskInColor ) const
*/
HB_FUNC_STATIC( QIMAGE_CREATEMASKFROMCOLOR )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::MaskInColor : hb_parni(2);
    QImage * ptr = new QImage( obj->createMaskFromColor ( par1, (Qt::MaskMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
int depth () const
*/
HB_FUNC_STATIC( QIMAGE_DEPTH )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->depth () );
  }
}

/*
int dotsPerMeterX () const
*/
HB_FUNC_STATIC( QIMAGE_DOTSPERMETERX )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dotsPerMeterX () );
  }
}

/*
int dotsPerMeterY () const
*/
HB_FUNC_STATIC( QIMAGE_DOTSPERMETERY )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dotsPerMeterY () );
  }
}

/*
void fill ( uint pixelValue )
*/
HB_FUNC_STATIC( QIMAGE_FILL1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fill ( PUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QIMAGE_FILL2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->fill ( (Qt::GlobalColor) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QColor & color )
*/
HB_FUNC_STATIC( QIMAGE_FILL3 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->fill ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
Format format () const
*/
HB_FUNC_STATIC( QIMAGE_FORMAT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->format () );
  }
}

/*
bool hasAlphaChannel () const
*/
HB_FUNC_STATIC( QIMAGE_HASALPHACHANNEL )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAlphaChannel () );
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QIMAGE_HEIGHT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}

/*
void invertPixels ( InvertMode mode = InvertRgb )
*/
HB_FUNC_STATIC( QIMAGE_INVERTPIXELS )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QImage::InvertRgb : hb_parni(1);
    obj->invertPixels ( (QImage::InvertMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isGrayscale () const
*/
HB_FUNC_STATIC( QIMAGE_ISGRAYSCALE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isGrayscale () );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QIMAGE_ISNULL )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool load ( const QString & fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_LOAD1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load ( PQSTRING(1), (const char *) ISNIL(2)? 0 : hb_parc(2) ) );
  }
}

/*
bool load ( QIODevice * device, const char * format )
*/
HB_FUNC_STATIC( QIMAGE_LOAD2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load ( PQIODEVICE(1), (const char *) hb_parc(2) ) );
  }
}

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
}

/*
bool loadFromData ( const uchar * data, int len, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_LOADFROMDATA1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    RBOOL( obj->loadFromData ( par1, par2, (const char *) ISNIL(3)? 0 : hb_parc(3) ) );
  }
}

/*
bool loadFromData ( const QByteArray & data, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_LOADFROMDATA2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->loadFromData ( *PQBYTEARRAY(1), (const char *) ISNIL(2)? 0 : hb_parc(2) ) );
  }
}

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
}

/*
QImage mirrored ( bool horizontal = false, bool vertical = true ) const
*/
HB_FUNC_STATIC( QIMAGE_MIRRORED )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->mirrored ( OPBOOL(1,false), OPBOOL(2,true) ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
QPoint offset () const
*/
HB_FUNC_STATIC( QIMAGE_OFFSET )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->offset () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );  }
}

/*
QRgb pixel ( const QPoint & position ) const
*/
HB_FUNC_STATIC( QIMAGE_PIXEL1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb i = obj->pixel ( *PQPOINT(1) );
    hb_retni( i );
  }
}

/*
QRgb pixel ( int x, int y ) const
*/
HB_FUNC_STATIC( QIMAGE_PIXEL2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb i = obj->pixel ( PINT(1), PINT(2) );
    hb_retni( i );
  }
}

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
}

/*
int pixelIndex ( const QPoint & position ) const
*/
HB_FUNC_STATIC( QIMAGE_PIXELINDEX1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->pixelIndex ( *PQPOINT(1) ) );
  }
}

/*
int pixelIndex ( int x, int y ) const
*/
HB_FUNC_STATIC( QIMAGE_PIXELINDEX2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->pixelIndex ( PINT(1), PINT(2) ) );
  }
}

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
}

/*
QRect rect () const
*/
HB_FUNC_STATIC( QIMAGE_RECT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}

/*
QImage rgbSwapped () const
*/
HB_FUNC_STATIC( QIMAGE_RGBSWAPPED )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->rgbSwapped () );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
HB_FUNC_STATIC( QIMAGE_SAVE1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->save ( PQSTRING(1), (const char *) ISNIL(2)? 0 : hb_parc(2), OPINT(3,-1) ) );
  }
}

/*
bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
HB_FUNC_STATIC( QIMAGE_SAVE2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->save ( PQIODEVICE(1), (const char *) ISNIL(2)? 0 : hb_parc(2), OPINT(3,-1) ) );
  }
}

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
}

/*
QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_SCALED1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    int par3 = ISNIL(3)? (int) Qt::FastTransformation : hb_parni(3);
    QImage * ptr = new QImage( obj->scaled ( *PQSIZE(1), (Qt::AspectRatioMode) par2, (Qt::TransformationMode) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_SCALED2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::IgnoreAspectRatio : hb_parni(3);
    int par4 = ISNIL(4)? (int) Qt::FastTransformation : hb_parni(4);
    QImage * ptr = new QImage( obj->scaled ( PINT(1), PINT(2), (Qt::AspectRatioMode) par3, (Qt::TransformationMode) par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

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
}

/*
QImage scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_SCALEDTOHEIGHT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QImage * ptr = new QImage( obj->scaledToHeight ( PINT(1), (Qt::TransformationMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

/*
QImage scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_SCALEDTOWIDTH )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QImage * ptr = new QImage( obj->scaledToWidth ( PINT(1), (Qt::TransformationMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

//[1]uchar * scanLine ( int i )
//[2]const uchar * scanLine ( int i ) const

//HB_FUNC_STATIC( QIMAGE_SCANLINE )
//{
//  HB_FUNC_EXEC( QIMAGE_SCANLINE1 );
//}

/*
void setColor ( int index, QRgb colorValue )
*/
HB_FUNC_STATIC( QIMAGE_SETCOLOR )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par2 = hb_parni(2);
    obj->setColor ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColorCount ( int colorCount )
*/
HB_FUNC_STATIC( QIMAGE_SETCOLORCOUNT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColorCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColorTable ( const QVector<QRgb> colors )
*/
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

/*
void setDotsPerMeterX ( int x )
*/
HB_FUNC_STATIC( QIMAGE_SETDOTSPERMETERX )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDotsPerMeterX ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDotsPerMeterY ( int y )
*/
HB_FUNC_STATIC( QIMAGE_SETDOTSPERMETERY )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDotsPerMeterY ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( const QPoint & offset )
*/
HB_FUNC_STATIC( QIMAGE_SETOFFSET )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOffset ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixel ( const QPoint & position, uint index_or_rgb )
*/
HB_FUNC_STATIC( QIMAGE_SETPIXEL1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixel ( *PQPOINT(1), PUINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixel ( int x, int y, uint index_or_rgb )
*/
HB_FUNC_STATIC( QIMAGE_SETPIXEL2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixel ( PINT(1), PINT(2), PUINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setText ( const QString & key, const QString & text )
*/
HB_FUNC_STATIC( QIMAGE_SETTEXT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setText ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QIMAGE_SIZE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}

/*
void swap ( QImage & other )
*/
HB_FUNC_STATIC( QIMAGE_SWAP )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text ( const QString & key = QString() ) const
*/
HB_FUNC_STATIC( QIMAGE_TEXT )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text ( OPQSTRING(1,QString()) ) );
  }
}

/*
QStringList textKeys () const
*/
HB_FUNC_STATIC( QIMAGE_TEXTKEYS )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->textKeys () );
  }
}

/*
QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_TRANSFORMED2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QImage * ptr = new QImage( obj->transformed ( *PQTRANSFORM(1), (Qt::TransformationMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}

//[1]QImage transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
//[2]QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QIMAGE_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGE_TRANSFORMED2 );
  }
}

/*
bool valid ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QIMAGE_VALID1 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->valid ( *PQPOINT(1) ) );
  }
}

/*
bool valid ( int x, int y ) const
*/
HB_FUNC_STATIC( QIMAGE_VALID2 )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->valid ( PINT(1), PINT(2) ) );
  }
}

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
}

/*
int width () const
*/
HB_FUNC_STATIC( QIMAGE_WIDTH )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}

// Static Public Members

/*
QImage fromData ( const uchar * data, int size, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_FROMDATA1 )
{
  const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  QImage * ptr = new QImage( QImage::fromData ( par1, par2, (const char *) ISNIL(3)? 0 : hb_parc(3) ) );
  _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );}

/*
QImage fromData ( const QByteArray & data, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_FROMDATA2 )
{
  QImage * ptr = new QImage( QImage::fromData ( *PQBYTEARRAY(1), (const char *) ISNIL(2)? 0 : hb_parc(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );}

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
}

/*
QTransform trueMatrix ( const QTransform & matrix, int width, int height )
*/
HB_FUNC_STATIC( QIMAGE_TRUEMATRIX2 )
{
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QTransform * ptr = new QTransform( QImage::trueMatrix ( *PQTRANSFORM(1), par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );}

//[1]QMatrix trueMatrix ( const QMatrix & matrix, int width, int height )
//[2]QTransform trueMatrix ( const QTransform & matrix, int width, int height )

HB_FUNC_STATIC( QIMAGE_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QIMAGE_TRUEMATRIX2 );
  }
}

#pragma ENDDUMP
