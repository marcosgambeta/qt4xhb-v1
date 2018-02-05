%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptValueIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD name
   METHOD next
   METHOD previous
   METHOD remove
   METHOD scriptName
   METHOD setValue
   METHOD toBack
   METHOD toFront
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptValueIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QScriptString>

$prototype=QScriptValueIterator ( const QScriptValue & object )
$constructor=|new|const QScriptValue &

$deleteMethod

$prototype=QScriptValue::PropertyFlags flags () const
$method=|QScriptValue::PropertyFlags|flags|

$prototype=bool hasNext () const
$method=|bool|hasNext|

$prototype=bool hasPrevious () const
$method=|bool|hasPrevious|

$prototype=QString name () const
$method=|QString|name|

$prototype=void next ()
$method=|void|next|

$prototype=void previous ()
$method=|void|previous|

$prototype=void remove ()
$method=|void|remove|

$prototype=QScriptString scriptName () const
$method=|QScriptString|scriptName|

$prototype=void setValue ( const QScriptValue & value )
$method=|void|setValue|const QScriptValue &

$prototype=void toBack ()
$method=|void|toBack|

$prototype=void toFront ()
$method=|void|toFront|

$prototype=QScriptValue value () const
$method=|QScriptValue|value|

$extraMethods

#pragma ENDDUMP
