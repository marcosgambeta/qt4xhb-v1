$header

#include "hbclass.ch"

CLASS QSharedData

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSharedData>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSharedData ()
*/
$internalConstructor=|new1|

/*
QSharedData ( const QSharedData & other )
*/
$internalConstructor=|new2|const QSharedData &

//[1]QSharedData ()
//[2]QSharedData ( const QSharedData & other )

HB_FUNC_STATIC( QSHAREDDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSharedData_new1();
  }
  else if( ISNUMPAR(1) && ISQSHAREDDATA(1) )
  {
    QSharedData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
