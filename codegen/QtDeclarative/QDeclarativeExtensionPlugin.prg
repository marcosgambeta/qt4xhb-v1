$header

#include "hbclass.ch"


CLASS QDeclarativeExtensionPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD initializeEngine
   METHOD registerTypes
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeExtensionPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"




/*
virtual void initializeEngine ( QDeclarativeEngine * engine, const char * uri )
*/
HB_FUNC_STATIC( QDECLARATIVEEXTENSIONPLUGIN_INITIALIZEENGINE )
{
  QDeclarativeExtensionPlugin * obj = (QDeclarativeExtensionPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeEngine * par1 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->initializeEngine ( par1, (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void registerTypes ( const char * uri ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVEEXTENSIONPLUGIN_REGISTERTYPES )
{
  QDeclarativeExtensionPlugin * obj = (QDeclarativeExtensionPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->registerTypes ( (const char *) hb_parc(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
