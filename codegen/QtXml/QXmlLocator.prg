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

PROCEDURE destroyObject () CLASS QXmlLocator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlLocator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QXMLLOCATOR_DELETE )
{
  QXmlLocator * obj = (QXmlLocator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
