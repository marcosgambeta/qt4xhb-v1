$header

#include "hbclass.ch"

CLASS QRunnable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD autoDelete
   METHOD run
   METHOD setAutoDelete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QRunnable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=bool autoDelete () const
$method=|bool|autoDelete|

$prototype=virtual void run () = 0
$virtualMethod=|void|run|

$prototype=void setAutoDelete ( bool autoDelete )
$method=|void|setAutoDelete|bool

$extraMethods

#pragma ENDDUMP
