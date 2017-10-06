$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverPlugin INHERIT QObject

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlDriverPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlDriver>

$deleteMethod

/*
virtual QSqlDriver * create ( const QString & key ) = 0
*/
$virtualMethod=|QSqlDriver *|create|const QString &

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
