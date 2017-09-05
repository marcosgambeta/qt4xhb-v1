$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSqlResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handle
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlResult>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QVariant handle () const
*/
HB_FUNC_STATIC( QSQLRESULT_HANDLE )
{
  QSqlResult * obj = (QSqlResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->handle () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

$extraMethods

#pragma ENDDUMP
