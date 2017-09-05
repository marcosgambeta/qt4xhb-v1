$header

#include "hbclass.ch"

CLASS QWindowsMime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD registerMimeType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWindowsMime>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
int registerMimeType ( const QString & mime )
*/
HB_FUNC_STATIC( QWINDOWSMIME_REGISTERMIMETYPE )
{
  RINT( QWindowsMime::registerMimeType ( PQSTRING(1) ) );
}

$extraMethods

#pragma ENDDUMP
