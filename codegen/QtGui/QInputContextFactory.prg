$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
#endif

CLASS QInputContextFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputContextFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QInputContextFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_DELETE )
{
  QInputContextFactory * obj = (QInputContextFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QInputContext * create ( const QString & key, QObject * parent )
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_CREATE )
{
  QInputContext * ptr = QInputContextFactory::create ( PQSTRING(1), PQOBJECT(2) );
  _qt4xhb_createReturnClass ( ptr, "QINPUTCONTEXT" );
}

/*
QString description ( const QString & key )
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_DESCRIPTION )
{
  RQSTRING( QInputContextFactory::description ( PQSTRING(1) ) );
}

/*
QString displayName ( const QString & key )
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_DISPLAYNAME )
{
  RQSTRING( QInputContextFactory::displayName ( PQSTRING(1) ) );
}

/*
QStringList keys ()
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_KEYS )
{
  RQSTRINGLIST( QInputContextFactory::keys () );
}

/*
QStringList languages ( const QString & key )
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_LANGUAGES )
{
  RQSTRINGLIST( QInputContextFactory::languages ( PQSTRING(1) ) );
}

$extraMethods

#pragma ENDDUMP
