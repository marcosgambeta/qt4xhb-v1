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
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD quality
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
$internalConstructor=|new1|

/*
QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
*/
$internalConstructor=|new2|QIODevice *,const QByteArray &=QByteArray()

/*
QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

//[1]QImageReader ()
//[2]QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
//[3]QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QIMAGEREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    QImageReader_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    QImageReader_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoDetectImageFormat () const
*/
$method=|bool|autoDetectImageFormat|

/*
QColor backgroundColor () const
*/
$method=|QColor|backgroundColor|

/*
bool canRead () const
*/
$method=|bool|canRead|

/*
QRect clipRect () const
*/
$method=|QRect|clipRect|

/*
int currentImageNumber () const
*/
$method=|int|currentImageNumber|

/*
QRect currentImageRect () const
*/
$method=|QRect|currentImageRect|

/*
bool decideFormatFromContent () const
*/
$method=|bool|decideFormatFromContent|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
ImageReaderError error () const
*/
$method=|QImageReader::ImageReaderError|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QByteArray format () const
*/
$method=|QByteArray|format|

/*
int imageCount () const
*/
$method=|int|imageCount|

/*
bool jumpToImage ( int imageNumber )
*/
$method=|bool|jumpToImage|int

/*
bool jumpToNextImage ()
*/
$method=|bool|jumpToNextImage|

/*
int loopCount () const
*/
$method=|int|loopCount|

/*
int nextImageDelay () const
*/
$method=|int|nextImageDelay|

/*
int quality () const
*/
$method=|int|quality|

/*
QImage read ()
*/
$internalMethod=|QImage|read,read1|

/*
bool read ( QImage * image )
*/
$internalMethod=|bool|read,read2|QImage *

//[1]QImage read ()
//[2]bool read ( QImage * image )

HB_FUNC_STATIC( QIMAGEREADER_READ )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_read1();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QImageReader_read2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect scaledClipRect () const
*/
$method=|QRect|scaledClipRect|

/*
QSize scaledSize () const
*/
$method=|QSize|scaledSize|

/*
void setAutoDetectImageFormat ( bool enabled )
*/
$method=|void|setAutoDetectImageFormat|bool

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
$method=|void|setClipRect|const QRect &

/*
void setDecideFormatFromContent ( bool ignored )
*/
$method=|void|setDecideFormatFromContent|bool

/*
void setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
void setQuality ( int quality )
*/
$method=|void|setQuality|int

/*
void setScaledClipRect ( const QRect & rect )
*/
$method=|void|setScaledClipRect|const QRect &

/*
void setScaledSize ( const QSize & size )
*/
$method=|void|setScaledSize|const QSize &

/*
QSize size () const
*/
$method=|QSize|size|

/*
bool supportsAnimation () const
*/
$method=|bool|supportsAnimation|

/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
$method=|bool|supportsOption|QImageIOHandler::ImageOption

/*
QString text ( const QString & key ) const
*/
$method=|QString|text|const QString &

/*
QStringList textKeys () const
*/
$method=|QStringList|textKeys|

/*
QImage::Format imageFormat () const
*/
$internalMethod=|QImage::Format|imageFormat,imageFormat1|

/*
static QByteArray imageFormat ( const QString & fileName )
*/
$internalStaticMethod=|QByteArray|imageFormat,imageFormat2|const QString &

/*
static QByteArray imageFormat ( QIODevice * device )
*/
$internalStaticMethod=|QByteArray|imageFormat,imageFormat3|QIODevice *

//[1]QImage::Format imageFormat () const
//[2]QByteArray imageFormat ( const QString & fileName )
//[3]QByteArray imageFormat ( QIODevice * device )

HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_imageFormat1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QImageReader_imageFormat2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QImageReader_imageFormat3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QByteArray> supportedImageFormats ()
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTEDIMAGEFORMATS )
{
  QList<QByteArray> list = QImageReader::supportedImageFormats ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
