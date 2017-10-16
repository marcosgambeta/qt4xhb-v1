$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICONENGINEV2
#endif

CLASS QIconEnginePluginV2 INHERIT QObject

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIconEnginePluginV2>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QIconEngineV2 * create ( const QString & filename = QString() ) = 0
*/
$virtualMethod=|QIconEngineV2 *|create|const QString &=QString()

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
