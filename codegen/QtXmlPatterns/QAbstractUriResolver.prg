$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QAbstractUriResolver INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD resolve

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractUriResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

$deleteMethod

/*
virtual QUrl resolve ( const QUrl & relative, const QUrl & baseURI ) const = 0
*/
$virtualMethod=|QUrl|resolve|const QUrl &,const QUrl &

#pragma ENDDUMP
