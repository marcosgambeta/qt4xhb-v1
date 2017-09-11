$header

#include "hbclass.ch"

CLASS QSharedData

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
HB_FUNC_STATIC( QSHAREDDATA_NEW1 )
{
  QSharedData * o = new QSharedData ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSharedData ( const QSharedData & other )
*/
HB_FUNC_STATIC( QSHAREDDATA_NEW2 )
{
  QSharedData * o = new QSharedData ( *PQSHAREDDATA(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSharedData ()
//[2]QSharedData ( const QSharedData & other )

HB_FUNC_STATIC( QSHAREDDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSHAREDDATA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSHAREDDATA(1) )
  {
    HB_FUNC_EXEC( QSHAREDDATA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
