$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QDeclarativeListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD listElementType
   METHOD object
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeListReference>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeListReference ()
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW1 )
{
  QDeclarativeListReference * o = new QDeclarativeListReference ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW2 )
{
  QDeclarativeEngine * par3 = ISNIL(3)? 0 : (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeListReference * o = new QDeclarativeListReference ( PQOBJECT(1), (const char *) hb_parc(2), par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool append ( QObject * object ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_APPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->append ( PQOBJECT(1) ) );
  }
}


/*
QObject * at ( int index ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_AT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->at ( PINT(1) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
bool canAppend () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAPPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canAppend () );
  }
}


/*
bool canAt () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canAt () );
  }
}


/*
bool canClear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canClear () );
  }
}


/*
bool canCount () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCOUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canCount () );
  }
}


/*
bool clear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->clear () );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_COUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_ISVALID )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
const QMetaObject * listElementType () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_LISTELEMENTTYPE )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->listElementType ();
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QObject * object () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_OBJECT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
