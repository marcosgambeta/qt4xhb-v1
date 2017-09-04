$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QIMAGE
REQUEST QSIZE
#endif

CLASS QImageReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD autoDetectImageFormat
   METHOD backgroundColor
   METHOD canRead
   METHOD clipRect
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD decideFormatFromContent
   METHOD device
   METHOD error
   METHOD errorString
   METHOD fileName
   METHOD format
   METHOD imageCount
   METHOD imageFormat1
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD quality
   METHOD read1
   METHOD read2
   METHOD read
   METHOD scaledClipRect
   METHOD scaledSize
   METHOD setAutoDetectImageFormat
   METHOD setBackgroundColor
   METHOD setClipRect
   METHOD setDecideFormatFromContent
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setQuality
   METHOD setScaledClipRect
   METHOD setScaledSize
   METHOD size
   METHOD supportsAnimation
   METHOD supportsOption
   METHOD text
   METHOD textKeys
   METHOD imageFormat2
   METHOD imageFormat3
   METHOD imageFormat
   METHOD supportedImageFormats

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QImageReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QColor>

/*
QImageReader ()
*/
HB_FUNC_STATIC( QIMAGEREADER_NEW1 )
{
  QImageReader * o = new QImageReader ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
*/
HB_FUNC_STATIC( QIMAGEREADER_NEW2 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QImageReader * o = new QImageReader ( PQIODEVICE(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
HB_FUNC_STATIC( QIMAGEREADER_NEW3 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QImageReader * o = new QImageReader ( PQSTRING(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QImageReader ()
//[2]QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
//[3]QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QIMAGEREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QIMAGEREADER_DELETE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool autoDetectImageFormat () const
*/
HB_FUNC_STATIC( QIMAGEREADER_AUTODETECTIMAGEFORMAT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoDetectImageFormat () );
  }
}

/*
QColor backgroundColor () const
*/
HB_FUNC_STATIC( QIMAGEREADER_BACKGROUNDCOLOR )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor () );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
bool canRead () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CANREAD )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canRead () );
  }
}

/*
QRect clipRect () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CLIPRECT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->clipRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
int currentImageNumber () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CURRENTIMAGENUMBER )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentImageNumber () );
  }
}

/*
QRect currentImageRect () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CURRENTIMAGERECT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->currentImageRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
bool decideFormatFromContent () const
*/
HB_FUNC_STATIC( QIMAGEREADER_DECIDEFORMATFROMCONTENT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->decideFormatFromContent () );
  }
}

/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEREADER_DEVICE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
ImageReaderError error () const
*/
HB_FUNC_STATIC( QIMAGEREADER_ERROR )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QIMAGEREADER_ERRORSTRING )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QIMAGEREADER_FILENAME )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEREADER_FORMAT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
int imageCount () const
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGECOUNT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->imageCount () );
  }
}

/*
QImage::Format imageFormat () const
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT1 )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->imageFormat () );
  }
}

/*
bool jumpToImage ( int imageNumber )
*/
HB_FUNC_STATIC( QIMAGEREADER_JUMPTOIMAGE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->jumpToImage ( PINT(1) ) );
  }
}

/*
bool jumpToNextImage ()
*/
HB_FUNC_STATIC( QIMAGEREADER_JUMPTONEXTIMAGE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->jumpToNextImage () );
  }
}

/*
int loopCount () const
*/
HB_FUNC_STATIC( QIMAGEREADER_LOOPCOUNT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->loopCount () );
  }
}

/*
int nextImageDelay () const
*/
HB_FUNC_STATIC( QIMAGEREADER_NEXTIMAGEDELAY )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->nextImageDelay () );
  }
}

/*
int quality () const
*/
HB_FUNC_STATIC( QIMAGEREADER_QUALITY )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->quality () );
  }
}

/*
QImage read ()
*/
HB_FUNC_STATIC( QIMAGEREADER_READ1 )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->read () );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
bool read ( QImage * image )
*/
HB_FUNC_STATIC( QIMAGEREADER_READ2 )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->read ( par1 ) );
  }
}

//[1]QImage read ()
//[2]bool read ( QImage * image )

HB_FUNC_STATIC( QIMAGEREADER_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_READ1 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_READ2 );
  }
}

/*
QRect scaledClipRect () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SCALEDCLIPRECT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->scaledClipRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QSize scaledSize () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SCALEDSIZE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->scaledSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setAutoDetectImageFormat ( bool enabled )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETAUTODETECTIMAGEFORMAT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoDetectImageFormat ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundColor ( const QColor & color )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETBACKGROUNDCOLOR )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setBackgroundColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipRect ( const QRect & rect )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETCLIPRECT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setClipRect ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDecideFormatFromContent ( bool ignored )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETDECIDEFORMATFROMCONTENT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDecideFormatFromContent ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETDEVICE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETFILENAME )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETFORMAT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFormat ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuality ( int quality )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETQUALITY )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setQuality ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScaledClipRect ( const QRect & rect )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETSCALEDCLIPRECT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScaledClipRect ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScaledSize ( const QSize & size )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETSCALEDSIZE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScaledSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SIZE )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
bool supportsAnimation () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTSANIMATION )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsAnimation () );
  }
}

/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTSOPTION )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->supportsOption ( (QImageIOHandler::ImageOption) par1 ) );
  }
}

/*
QString text ( const QString & key ) const
*/
HB_FUNC_STATIC( QIMAGEREADER_TEXT )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text ( PQSTRING(1) ) );
  }
}

/*
QStringList textKeys () const
*/
HB_FUNC_STATIC( QIMAGEREADER_TEXTKEYS )
{
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->textKeys () );
  }
}

/*
QByteArray imageFormat ( const QString & fileName )
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT2 )
{
  QByteArray * ptr = new QByteArray( QImageReader::imageFormat ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}

/*
QByteArray imageFormat ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT3 )
{
  QByteArray * ptr = new QByteArray( QImageReader::imageFormat ( PQIODEVICE(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}

//[1]QImage::Format imageFormat () const
//[2]QByteArray imageFormat ( const QString & fileName )
//[3]QByteArray imageFormat ( QIODevice * device )

HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_IMAGEFORMAT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_IMAGEFORMAT2 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_IMAGEFORMAT3 );
  }
}

/*
QList<QByteArray> supportedImageFormats ()
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTEDIMAGEFORMATS )
{
  QList<QByteArray> list = QImageReader::supportedImageFormats ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$extraMethods

#pragma ENDDUMP
