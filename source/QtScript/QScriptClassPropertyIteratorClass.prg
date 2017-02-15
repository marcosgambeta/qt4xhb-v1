/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE

CLASS QScriptClassPropertyIterator

   DATA pointer
   DATA class_id INIT Class_Id_QScriptClassPropertyIterator
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD id
   METHOD name
   METHOD next
   METHOD object
   METHOD previous
   METHOD toBack
   METHOD toFront
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QScriptClassPropertyIterator
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QScriptClassPropertyIterator
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QScriptClassPropertyIterator
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QScriptClassPropertyIterator
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QScriptClassPropertyIterator
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QScriptClassPropertyIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptClassPropertyIterator>

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

#include <QScriptString>

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_DELETE )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QScriptValue::PropertyFlags flags () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_FLAGS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->flags (  );
    hb_retni( i );
  }
}


/*
virtual bool hasNext () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_HASNEXT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasNext (  ) );
  }
}


/*
virtual bool hasPrevious () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_HASPREVIOUS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasPrevious (  ) );
  }
}


/*
virtual uint id () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_ID )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint i = obj->id (  );
    hb_retni( i );
  }
}


/*
virtual QScriptString name () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NAME )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptString * ptr = new QScriptString( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
virtual void next () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NEXT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->next (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue object () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_OBJECT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->object (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual void previous () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_PREVIOUS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->previous (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void toBack () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_TOBACK )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toBack (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void toFront () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_TOFRONT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toFront (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
