/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDriverPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlDriverPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QSQLDRIVERPLUGIN_DELETE )
{
  QSqlDriverPlugin * obj = (QSqlDriverPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QSqlDriver * create ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QSQLDRIVERPLUGIN_CREATE )
{
  QSqlDriverPlugin * obj = (QSqlDriverPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlDriver * ptr = obj->create ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}


/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QSQLDRIVERPLUGIN_KEYS )
{
  QSqlDriverPlugin * obj = (QSqlDriverPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->keys ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
