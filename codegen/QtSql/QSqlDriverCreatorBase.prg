$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createObject
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlDriverCreatorBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QSqlDriver * createObject () const = 0
*/
HB_FUNC_STATIC( QSQLDRIVERCREATORBASE_CREATEOBJECT )
{
  QSqlDriverCreatorBase * obj = (QSqlDriverCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlDriver * ptr = obj->createObject ();
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}

$extraMethods

#pragma ENDDUMP
