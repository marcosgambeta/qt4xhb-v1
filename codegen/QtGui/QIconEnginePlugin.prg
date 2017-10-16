$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICONENGINE
#endif

CLASS QIconEnginePlugin INHERIT QObject

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIconEnginePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QIconEngine * create ( const QString & filename ) = 0
*/
$virtualMethod=|QIconEngine *|create|const QString &

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
