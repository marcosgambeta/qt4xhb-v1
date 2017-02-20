/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QINPUTCONTEXT

CLASS QInputContextPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QInputContextPlugin
   DATA self_destruction INIT .f.

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

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
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
    QString par1 = hb_parc(1);
    QInputContext * ptr = obj->create ( par1 );
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
    QString par1 = hb_parc(1);
    QString str1 = obj->description ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QString par1 = hb_parc(1);
    QString str1 = obj->displayName ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QStringList strl = obj->keys (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    QString par1 = hb_parc(1);
    QStringList strl = obj->languages ( par1 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
