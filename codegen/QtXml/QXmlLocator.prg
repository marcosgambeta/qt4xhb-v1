$header

#include "hbclass.ch"


CLASS QXmlLocator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD columnNumber
   METHOD lineNumber
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlLocator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual int columnNumber () const = 0
*/
HB_FUNC_STATIC( QXMLLOCATOR_COLUMNNUMBER )
{
  QXmlLocator * obj = (QXmlLocator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnNumber () );
  }
}


/*
virtual int lineNumber () const = 0
*/
HB_FUNC_STATIC( QXMLLOCATOR_LINENUMBER )
{
  QXmlLocator * obj = (QXmlLocator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}

$extraMethods

#pragma ENDDUMP
