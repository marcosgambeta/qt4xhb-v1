$header

#include "hbclass.ch"

CLASS QSupportedWritingSystems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

PROCEDURE destroyObject () CLASS QSupportedWritingSystems
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSupportedWritingSystems>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSupportedWritingSystems ()
*/
HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_NEW1 )
{
  QSupportedWritingSystems * o = new QSupportedWritingSystems ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QSupportedWritingSystems ( const QSupportedWritingSystems & other )
*/
HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_NEW2 )
{
  QSupportedWritingSystems * o = new QSupportedWritingSystems ( *PQSUPPORTEDWRITINGSYSTEMS(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QSupportedWritingSystems ()
//[2]QSupportedWritingSystems ( const QSupportedWritingSystems & other )

HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSUPPORTEDWRITINGSYSTEMS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSUPPORTEDWRITINGSYSTEMS(1) )
  {
    HB_FUNC_EXEC( QSUPPORTEDWRITINGSYSTEMS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_DELETE )
{
  QSupportedWritingSystems * obj = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSupported ( QFontDatabase::WritingSystem writingSystem, bool support = true )
*/
HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_SETSUPPORTED )
{
  QSupportedWritingSystems * obj = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSupported ( (QFontDatabase::WritingSystem) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supported ( QFontDatabase::WritingSystem writingSystem ) const
*/
HB_FUNC_STATIC( QSUPPORTEDWRITINGSYSTEMS_SUPPORTED )
{
  QSupportedWritingSystems * obj = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->supported ( (QFontDatabase::WritingSystem) par1 ) );
  }
}

$extraMethods

#pragma ENDDUMP
