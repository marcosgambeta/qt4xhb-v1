$header

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

$destructor

#pragma BEGINDUMP

#include <QInputContextPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

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
    RQSTRING( obj->description ( PQSTRING(1) ) );
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
    RQSTRING( obj->displayName ( PQSTRING(1) ) );
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
