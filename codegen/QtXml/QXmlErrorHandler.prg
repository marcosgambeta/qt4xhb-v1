$header

#include "hbclass.ch"


CLASS QXmlErrorHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD error
   METHOD errorString
   METHOD fatalError
   METHOD warning
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlErrorHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual bool error ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_ERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->error ( *PQXMLPARSEEXCEPTION(1) ) );
  }
}

/*
virtual QString errorString () const = 0
*/
$virtualMethod=|QString|errorString|

/*
virtual bool fatalError ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_FATALERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->fatalError ( *PQXMLPARSEEXCEPTION(1) ) );
  }
}


/*
virtual bool warning ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_WARNING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->warning ( *PQXMLPARSEEXCEPTION(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
