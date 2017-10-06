$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QImageIOHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD canRead
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD device
   METHOD format
   METHOD imageCount
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD option
   METHOD read
   METHOD setDevice
   METHOD setFormat
   METHOD setOption
   METHOD supportsOption
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QImageIOHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QRect>
#include <QVariant>

$deleteMethod

/*
virtual bool canRead () const = 0
*/
$virtualMethod=|bool|canRead|

/*
virtual int currentImageNumber () const
*/
$virtualMethod=|int|currentImageNumber|

/*
virtual QRect currentImageRect () const
*/
$virtualMethod=|QRect|currentImageRect|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
QByteArray format () const
*/
$method=|QByteArray|format|

/*
virtual int imageCount () const
*/
$virtualMethod=|int|imageCount|

/*
virtual bool jumpToImage ( int imageNumber )
*/
$virtualMethod=|bool|jumpToImage|int

/*
virtual bool jumpToNextImage ()
*/
$virtualMethod=|bool|jumpToNextImage|

/*
virtual int loopCount () const
*/
$virtualMethod=|int|loopCount|

/*
virtual int nextImageDelay () const
*/
$virtualMethod=|int|nextImageDelay|

/*
virtual QVariant option ( ImageOption option ) const
*/
$virtualMethod=|QVariant|option|QImageIOHandler::ImageOption

/*
virtual bool read ( QImage * image ) = 0
*/
$virtualMethod=|bool|read|QImage *

/*
void setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
virtual void setOption ( ImageOption option, const QVariant & value )
*/
$virtualMethod=|void|setOption|QImageIOHandler::ImageOption,const QVariant &

/*
virtual bool supportsOption ( ImageOption option ) const
*/
$virtualMethod=|bool|supportsOption|QImageIOHandler::ImageOption

/*
virtual bool write ( const QImage & image )
*/
$virtualMethod=|bool|write|const QImage &

$extraMethods

#pragma ENDDUMP
