$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QGenericPlugin INHERIT QObject

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGenericPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QObject * create ( const QString & key, const QString & specification ) = 0
*/
$virtualMethod=|QObject *|create|const QString &,const QString &

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
