$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QGenericPluginFactory

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

PROCEDURE destroyObject () CLASS QGenericPluginFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGenericPluginFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QObject * create ( const QString & key, const QString & specification )
*/
HB_FUNC_STATIC( QGENERICPLUGINFACTORY_CREATE )
{
  QObject * ptr = QGenericPluginFactory::create ( PQSTRING(1), PQSTRING(2) );
  _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
}

/*
QStringList keys ()
*/
HB_FUNC_STATIC( QGENERICPLUGINFACTORY_KEYS )
{
  RQSTRINGLIST( QGenericPluginFactory::keys () );
}

$extraMethods

#pragma ENDDUMP
