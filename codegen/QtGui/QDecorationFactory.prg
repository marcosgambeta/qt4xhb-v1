$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECORATION
#endif

CLASS QDecorationFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD create
   METHOD keys

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDecorationFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDecorationFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDecoration * create ( const QString & key )
*/
HB_FUNC_STATIC( QDECORATIONFACTORY_CREATE )
{
  QDecoration * ptr = QDecorationFactory::create ( PQSTRING(1) );
  _qt4xhb_createReturnClass ( ptr, "QDECORATION" );
}

/*
QStringList keys ()
*/
HB_FUNC_STATIC( QDECORATIONFACTORY_KEYS )
{
  RQSTRINGLIST( QDecorationFactory::keys () );
}

$extraMethods

#pragma ENDDUMP
