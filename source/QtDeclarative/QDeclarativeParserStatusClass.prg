/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDeclarativeParserStatus

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeParserStatus
   DATA self_destruction INIT .f.

   METHOD classBegin
   METHOD componentComplete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDeclarativeParserStatus
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDeclarativeParserStatus
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDeclarativeParserStatus
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDeclarativeParserStatus
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDeclarativeParserStatus
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDeclarativeParserStatus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDeclarativeParserStatus>

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
virtual void classBegin () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_CLASSBEGIN )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->classBegin (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void componentComplete () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_COMPONENTCOMPLETE )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->componentComplete (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
