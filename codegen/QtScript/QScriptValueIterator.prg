/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptValueIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD name
   METHOD next
   METHOD previous
   METHOD remove
   METHOD scriptName
   METHOD setValue
   METHOD toBack
   METHOD toFront
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptValueIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptValueIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QScriptString>

/*
QScriptValueIterator ( const QScriptValue & object )
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEW )
{
  QScriptValueIterator * o = new QScriptValueIterator ( *PQSCRIPTVALUE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_DELETE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptValue::PropertyFlags flags () const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_FLAGS )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}


/*
bool hasNext () const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_HASNEXT )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasNext () );
  }
}


/*
bool hasPrevious () const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_HASPREVIOUS )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasPrevious () );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NAME )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void next ()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEXT )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->next ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void previous ()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_PREVIOUS )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->previous ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void remove ()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_REMOVE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->remove ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptString scriptName () const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_SCRIPTNAME )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptString * ptr = new QScriptString( obj->scriptName () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
void setValue ( const QScriptValue & value )
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_SETVALUE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( *PQSCRIPTVALUE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toBack ()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_TOBACK )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toBack ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toFront ()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_TOFRONT )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toFront ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue value () const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_VALUE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->value () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTVALUEITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTVALUEITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP