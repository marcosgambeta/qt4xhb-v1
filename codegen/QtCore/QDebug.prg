$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDEBUG
#endif

CLASS QDebug

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD maybeSpace
   METHOD nospace
   METHOD space

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDebug>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDebug ( QIODevice * device )
$internalConstructor=|new1|QIODevice *

$prototype=QDebug ( QString * string )
$internalConstructor=|new2|QString *

$prototype=QDebug ( QtMsgType type )
$internalConstructor=|new3|QtMsgType

$prototype=QDebug ( const QDebug & other )
$internalConstructor=|new4|const QDebug &

//[1]QDebug ( QIODevice * device )
//[2]QDebug ( QString * string )
//[3]QDebug ( QtMsgType type )
//[4]QDebug ( const QDebug & other )

HB_FUNC_STATIC( QDEBUG_NEW )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDebug_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDebug_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDebug_new3();
  }
  else if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    QDebug_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDebug & maybeSpace ()
$method=|QDebug &|maybeSpace|

$prototype=QDebug & nospace ()
$method=|QDebug &|nospace|

$prototype=QDebug & space ()
$method=|QDebug &|space|

$extraMethods

#pragma ENDDUMP
