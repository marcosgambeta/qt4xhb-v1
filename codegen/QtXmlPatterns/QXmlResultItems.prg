$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLITEM
#endif

CLASS QXmlResultItems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD current
   METHOD hasError
   METHOD next
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlResultItems>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QXmlItem>

/*
QXmlResultItems ()
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_NEW )
{
  QXmlResultItems * o = new QXmlResultItems ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
QXmlItem current () const
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_CURRENT )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->current () );
    _qt4xhb_createReturnClass ( ptr, "QXMLITEM", true );
  }
}


/*
bool hasError () const
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_HASERROR )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasError () );
  }
}


/*
QXmlItem next ()
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_NEXT )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->next () );
    _qt4xhb_createReturnClass ( ptr, "QXMLITEM", true );
  }
}

$extraMethods

#pragma ENDDUMP
