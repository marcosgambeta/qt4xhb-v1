/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QINPUTCONTEXTFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QINPUTCONTEXTFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
