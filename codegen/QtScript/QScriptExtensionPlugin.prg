$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptExtensionPlugin INHERIT QObject

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptExtensionPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QScriptValue>

$deleteMethod

$prototype=QScriptValue setupPackage ( const QString & key, QScriptEngine * engine ) const
$method=|QScriptValue|setupPackage|const QString &,QScriptEngine *

$prototype=virtual void initialize ( const QString & key, QScriptEngine * engine ) = 0
$virtualMethod=|void|initialize|const QString &,QScriptEngine *

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
