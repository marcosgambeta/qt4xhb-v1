$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACCESSIBLEBRIDGE
#endif

CLASS QAccessibleBridgePlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleBridgePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QAccessibleBridge * create ( const QString & key ) = 0
*/
$virtualMethod=|QAccessibleBridge *|create|const QString &

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
