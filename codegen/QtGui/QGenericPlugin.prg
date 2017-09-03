$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QGenericPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGenericPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGenericPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGENERICPLUGIN_DELETE )
{
  QGenericPlugin * obj = (QGenericPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QObject * create ( const QString & key, const QString & specification ) = 0
*/
HB_FUNC_STATIC( QGENERICPLUGIN_CREATE )
{
  QGenericPlugin * obj = (QGenericPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->create ( PQSTRING(1), PQSTRING(2) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QGENERICPLUGIN_KEYS )
{
  QGenericPlugin * obj = (QGenericPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

#pragma ENDDUMP
