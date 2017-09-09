$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
#endif

CLASS QInputContextFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputContextFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QInputContext * create ( const QString & key, QObject * parent )
*/
$method=|QInputContext *|create|const QString &,QObject *

/*
static QString description ( const QString & key )
*/
$staticMethod=|QString|description|const QString &

/*
static QString displayName ( const QString & key )
*/
$staticMethod=|QString|displayName|const QString &

/*
static QStringList keys ()
*/
$staticMethod=|QStringList|keys|

/*
static QStringList languages ( const QString & key )
*/
$staticMethod=|QStringList|languages|const QString &

$extraMethods

#pragma ENDDUMP
