$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createWidget
   METHOD valuePropertyName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QItemEditorCreatorBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QWidget * createWidget ( QWidget * parent ) const = 0
$virtualMethod=|QWidget *|createWidget|QWidget *

$prototype=virtual QByteArray valuePropertyName () const = 0
$virtualMethod=|QByteArray|valuePropertyName|

$extraMethods

#pragma ENDDUMP
