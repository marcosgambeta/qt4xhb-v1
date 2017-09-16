/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
#endif

CLASS QInputContextPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputContextPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QInputContextPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QINPUTCONTEXTPLUGIN_DELETE )
{
  QInputContextPlugin * obj = (QInputContextPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QInputContext * create ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXTPLUGIN_CREATE )
{
  QInputContextPlugin * obj = (QInputContextPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QInputContext * ptr = obj->create ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QINPUTCONTEXT" );
  }
}

/*
virtual QString description ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXTPLUGIN_DESCRIPTION )
{
  QInputContextPlugin * obj = (QInputContextPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->description ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString displayName ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXTPLUGIN_DISPLAYNAME )
{
  QInputContextPlugin * obj = (QInputContextPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->displayName ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXTPLUGIN_KEYS )
{
  QInputContextPlugin * obj = (QInputContextPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

/*
virtual QStringList languages ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXTPLUGIN_LANGUAGES )
{
  QInputContextPlugin * obj = (QInputContextPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->languages ( PQSTRING(1) ) );
  }
}

#pragma ENDDUMP
