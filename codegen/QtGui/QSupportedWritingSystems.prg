$header

#include "hbclass.ch"

CLASS QSupportedWritingSystems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSupported
   METHOD supported

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSupportedWritingSystems>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSupportedWritingSystems ()
$internalConstructor=|new1|

$prototype=QSupportedWritingSystems ( const QSupportedWritingSystems & other )
$internalConstructor=|new2|const QSupportedWritingSystems &

//[1]QSupportedWritingSystems ()
//[2]QSupportedWritingSystems ( const QSupportedWritingSystems & other )

HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSupportedWritingSystems_new1();
  }
  else if( ISNUMPAR(1) && ISQSUPPORTEDWRITINGSYSTEMS(1) )
  {
    QSupportedWritingSystems_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setSupported ( QFontDatabase::WritingSystem writingSystem, bool support = true )
$method=|void|setSupported|QFontDatabase::WritingSystem,bool=true

$prototype=bool supported ( QFontDatabase::WritingSystem writingSystem ) const
$method=|bool|supported|QFontDatabase::WritingSystem

$extraMethods

#pragma ENDDUMP
