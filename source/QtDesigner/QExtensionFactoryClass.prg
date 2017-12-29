/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QExtensionFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QExtensionFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QExtensionManager>

/*
QExtensionFactory ( QExtensionManager * parent = 0 )
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQEXTENSIONMANAGER(1)||ISNIL(1)) )
  {
    QExtensionFactory * o = new QExtensionFactory ( OPQEXTENSIONMANAGER(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEXTENSIONFACTORY_DELETE )
{
  QExtensionFactory * obj = (QExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSIONMANAGER )
{
  QExtensionFactory * obj = (QExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QExtensionManager * ptr = obj->extensionManager ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QEXTENSIONMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSION )
{
  QExtensionFactory * obj = (QExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
      QObject * ptr = obj->extension ( PQOBJECT(1), PQSTRING(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
