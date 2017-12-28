$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECORATION
#endif

CLASS QDecorationPlugin INHERIT QObject

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDecorationPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QDecoration * create ( const QString & key ) = 0
$virtualMethod=|QDecoration *|create|const QString &

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
