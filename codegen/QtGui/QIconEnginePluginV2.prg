$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICONENGINEV2
#endif

CLASS QIconEnginePluginV2 INHERIT QObject

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIconEnginePluginV2>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QIconEngineV2 * create ( const QString & filename = QString() ) = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGINV2_CREATE )
{
  QIconEnginePluginV2 * obj = (QIconEnginePluginV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIconEngineV2 * ptr = obj->create ( OPQSTRING(1,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QICONENGINEV2" );
  }
}

/*
virtual QStringList keys () const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
