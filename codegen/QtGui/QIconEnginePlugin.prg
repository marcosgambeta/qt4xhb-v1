$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICONENGINE
#endif

CLASS QIconEnginePlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIconEnginePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QIconEngine * create ( const QString & filename ) = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGIN_CREATE )
{
  QIconEnginePlugin * obj = (QIconEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIconEngine * ptr = obj->create ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QICONENGINE" );
  }
}

/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGIN_KEYS )
{
  QIconEnginePlugin * obj = (QIconEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

#pragma ENDDUMP
