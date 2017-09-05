$header

#include "hbclass.ch"


CLASS QXmlDTDHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString
   METHOD notationDecl
   METHOD unparsedEntityDecl
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlDTDHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_ERRORSTRING )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_NOTATIONDECL )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->notationDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName ) = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_UNPARSEDENTITYDECL )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unparsedEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) ) );
  }
}

$extraMethods

#pragma ENDDUMP
