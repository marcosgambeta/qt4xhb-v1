$header

#include "hbclass.ch"


CLASS QXmlDeclHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD attributeDecl
   METHOD errorString
   METHOD externalEntityDecl
   METHOD internalEntityDecl
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlDeclHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QXMLDECLHANDLER_DELETE )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_ATTRIBUTEDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->attributeDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_ERRORSTRING )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_EXTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->externalEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool internalEntityDecl ( const QString & name, const QString & value ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_INTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->internalEntityDecl ( PQSTRING(1), PQSTRING(2) ) );
  }
}

$extraMethods

#pragma ENDDUMP
