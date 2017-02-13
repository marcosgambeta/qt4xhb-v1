/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSupportedWritingSystems

   DATA pointer
   DATA class_id INIT Class_Id_QSupportedWritingSystems
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QSupportedWritingSystems
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSupportedWritingSystems
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSupportedWritingSystems
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSupportedWritingSystems
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSupportedWritingSystems
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSupportedWritingSystems
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSupportedWritingSystems>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSupportedWritingSystems ()
*/
HB_FUNC( QSUPPORTEDWRITINGSYSTEMS_NEW1 )
{
  QSupportedWritingSystems * o = NULL;
  o = new QSupportedWritingSystems (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSupportedWritingSystems *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QSupportedWritingSystems ( const QSupportedWritingSystems & other )
*/
HB_FUNC( QSUPPORTEDWRITINGSYSTEMS_NEW2 )
{
  QSupportedWritingSystems * o = NULL;
  QSupportedWritingSystems * par1 = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSupportedWritingSystems ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSupportedWritingSystems *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QSupportedWritingSystems ()
//[2]QSupportedWritingSystems ( const QSupportedWritingSystems & other )

HB_FUNC( QSUPPORTEDWRITINGSYSTEMS_NEW )
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

HB_FUNC( QSUPPORTEDWRITINGSYSTEMS_DELETE )
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
HB_FUNC( QSUPPORTEDWRITINGSYSTEMS_SETSUPPORTED )
{
  QSupportedWritingSystems * obj = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = ISNIL(2)? true : hb_parl(2);
    obj->setSupported (  (QFontDatabase::WritingSystem) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool supported ( QFontDatabase::WritingSystem writingSystem ) const
*/
HB_FUNC( QSUPPORTEDWRITINGSYSTEMS_SUPPORTED )
{
  QSupportedWritingSystems * obj = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->supported (  (QFontDatabase::WritingSystem) par1 );
    hb_retl( b );
  }
}





#pragma ENDDUMP
