$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessiblePlugin INHERIT QObject,QAccessible

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessiblePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QACCESSIBLEPLUGIN_DELETE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QAccessibleInterface * create ( const QString & key, QObject * object ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEPLUGIN_CREATE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAccessibleInterface * ptr = obj->create ( PQSTRING(1), PQOBJECT(2) );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}

/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEPLUGIN_KEYS )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

#pragma ENDDUMP
