/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QAXAGGREGATED

CLASS QAxBindable

   DATA pointer
   DATA class_id INIT Class_Id_QAxBindable
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD readData
   METHOD reportError
   METHOD writeData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAxBindable
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAxBindable
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAxBindable
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAxBindable
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAxBindable
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAxBindable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAxBindable>

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
QAxBindable ()
*/
HB_FUNC_STATIC( QAXBINDABLE_NEW )
{
  QAxBindable * o = NULL;
  o = new QAxBindable (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxBindable *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QAXBINDABLE_DELETE )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAxAggregated * createAggregate ()
*/
HB_FUNC_STATIC( QAXBINDABLE_CREATEAGGREGATE )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAxAggregated * ptr = obj->createAggregate (  );
    _qt4xhb_createReturnClass ( ptr, "QAXAGGREGATED" );
  }
}


/*
virtual bool readData ( QIODevice * source, const QString & format )
*/
HB_FUNC_STATIC( QAXBINDABLE_READDATA )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    hb_retl( obj->readData ( par1, par2 ) );
  }
}


/*
void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
*/
HB_FUNC_STATIC( QAXBINDABLE_REPORTERROR )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    QString par4 = ISNIL(4)? QString() : hb_parc(4);
    obj->reportError ( hb_parni(1), par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool writeData ( QIODevice * sink )
*/
HB_FUNC_STATIC( QAXBINDABLE_WRITEDATA )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->writeData ( par1 ) );
  }
}




#pragma ENDDUMP
