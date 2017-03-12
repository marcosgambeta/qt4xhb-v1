/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDynamicPropertyChangeEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QDynamicPropertyChangeEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD propertyName
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDynamicPropertyChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDynamicPropertyChangeEvent>

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

/*
QDynamicPropertyChangeEvent ( const QByteArray & name )
*/
HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_NEW )
{
  QDynamicPropertyChangeEvent * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDynamicPropertyChangeEvent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDynamicPropertyChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_DELETE )
{
  QDynamicPropertyChangeEvent * obj = (QDynamicPropertyChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QByteArray propertyName () const
*/
HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_PROPERTYNAME )
{
  QDynamicPropertyChangeEvent * obj = (QDynamicPropertyChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->propertyName (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}




#pragma ENDDUMP
