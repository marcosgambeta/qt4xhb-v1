$header

#include "hbclass.ch"

CLASS QSystemSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD error
   METHOD errorString
   METHOD key
   METHOD release
   METHOD setKey

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSystemSemaphore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSystemSemaphore ( const QString & key, int initialValue = 0, AccessMode mode = Open )
$constructor=|new|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$deleteMethod

$prototype=bool acquire ()
$method=|bool|acquire|

$prototype=SystemSemaphoreError error () const
$method=|QSystemSemaphore::SystemSemaphoreError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString key () const
$method=|QString|key|

$prototype=bool release ( int n = 1 )
$method=|bool|release|int=1

$prototype=void setKey ( const QString & key, int initialValue = 0, AccessMode mode = Open )
$method=|void|setKey|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$extraMethods

#pragma ENDDUMP
