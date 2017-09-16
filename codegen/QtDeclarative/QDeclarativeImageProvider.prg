$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeImageProvider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeImageProvider ( ImageType type )
*/
$constructor=|new|QDeclarativeImageProvider::ImageType

$deleteMethod

/*
ImageType imageType () const
*/
$method=|QDeclarativeImageProvider::ImageType|imageType|

/*
virtual QImage requestImage ( const QString & id, QSize * size, const QSize & requestedSize )
*/
$virtualMethod=|QImage|requestImage|const QString &,QSize *,const QSize &

/*
virtual QPixmap requestPixmap ( const QString & id, QSize * size, const QSize & requestedSize )
*/
$virtualMethod=|QPixmap|requestPixmap|const QString &,QSize *,const QSize &

$extraMethods

#pragma ENDDUMP
