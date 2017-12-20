$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDynamicPropertyChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD propertyName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDynamicPropertyChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDynamicPropertyChangeEvent ( const QByteArray & name )
$constructor=|new1|const QByteArray &

$deleteMethod

$prototype=QByteArray propertyName () const
$method=|QByteArray|propertyName|

#pragma ENDDUMP
