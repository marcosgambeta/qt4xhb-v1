$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
#endif

CLASS QInputContextPlugin INHERIT QObject

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputContextPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QInputContext * create ( const QString & key ) = 0
*/
$virtualMethod=|QInputContext *|create|const QString &

/*
virtual QString description ( const QString & key ) = 0
*/
$virtualMethod=|QString|description|const QString &

/*
virtual QString displayName ( const QString & key ) = 0
*/
$virtualMethod=|QString|displayName|const QString &

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

/*
virtual QStringList languages ( const QString & key ) = 0
*/
$virtualMethod=|QStringList|languages|const QString &

#pragma ENDDUMP
