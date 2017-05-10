/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECORATION
#endif

CLASS QDecorationPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QDecorationPlugin
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDecorationPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDecorationPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QDECORATIONPLUGIN_DELETE )
{
  QDecorationPlugin * obj = (QDecorationPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QDecoration * create ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QDECORATIONPLUGIN_CREATE )
{
  QDecorationPlugin * obj = (QDecorationPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDecoration * ptr = obj->create ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QDECORATION" );
  }
}


/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QDECORATIONPLUGIN_KEYS )
{
  QDecorationPlugin * obj = (QDecorationPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->keys (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
