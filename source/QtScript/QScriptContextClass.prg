/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSCRIPTVALUE
REQUEST QSCRIPTENGINE
REQUEST QSCRIPTCONTEXT

CLASS QScriptContext

   DATA pointer
   DATA class_id INIT Class_Id_QScriptContext
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD activationObject
   METHOD argument
   METHOD argumentCount
   METHOD argumentsObject
   METHOD backtrace
   METHOD callee
   METHOD engine
   METHOD isCalledAsConstructor
   METHOD parentContext
   METHOD setActivationObject
   METHOD setThisObject
   METHOD state
   METHOD thisObject
   METHOD throwError1
   METHOD throwError2
   METHOD throwError
   METHOD throwValue
   METHOD toString
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QScriptContext
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QScriptContext
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QScriptContext
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QScriptContext
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QScriptContext
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QScriptContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptContext>

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

#include <QStringList>

HB_FUNC( QSCRIPTCONTEXT_DELETE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptValue activationObject () const
*/
HB_FUNC( QSCRIPTCONTEXT_ACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->activationObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptValue argument ( int index ) const
*/
HB_FUNC( QSCRIPTCONTEXT_ARGUMENT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QScriptValue * ptr = new QScriptValue( obj->argument ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
int argumentCount () const
*/
HB_FUNC( QSCRIPTCONTEXT_ARGUMENTCOUNT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->argumentCount (  );
    hb_retni( i );
  }
}


/*
QScriptValue argumentsObject () const
*/
HB_FUNC( QSCRIPTCONTEXT_ARGUMENTSOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->argumentsObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QStringList backtrace () const
*/
HB_FUNC( QSCRIPTCONTEXT_BACKTRACE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->backtrace (  );
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
QScriptValue callee () const
*/
HB_FUNC( QSCRIPTCONTEXT_CALLEE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->callee (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptEngine * engine () const
*/
HB_FUNC( QSCRIPTCONTEXT_ENGINE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );  }
}


/*
bool isCalledAsConstructor () const
*/
HB_FUNC( QSCRIPTCONTEXT_ISCALLEDASCONSTRUCTOR )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCalledAsConstructor (  );
    hb_retl( b );
  }
}


/*
QScriptContext * parentContext () const
*/
HB_FUNC( QSCRIPTCONTEXT_PARENTCONTEXT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptContext * ptr = obj->parentContext (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );  }
}


/*
void setActivationObject ( const QScriptValue & activation )
*/
HB_FUNC( QSCRIPTCONTEXT_SETACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActivationObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setThisObject ( const QScriptValue & thisObject )
*/
HB_FUNC( QSCRIPTCONTEXT_SETTHISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setThisObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ExecutionState state () const
*/
HB_FUNC( QSCRIPTCONTEXT_STATE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
QScriptValue thisObject () const
*/
HB_FUNC( QSCRIPTCONTEXT_THISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->thisObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptValue throwError ( Error error, const QString & text )
*/
HB_FUNC( QSCRIPTCONTEXT_THROWERROR1 )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    QScriptValue * ptr = new QScriptValue( obj->throwError (  (QScriptContext::Error) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QScriptValue throwError ( const QString & text )
*/
HB_FUNC( QSCRIPTCONTEXT_THROWERROR2 )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QScriptValue * ptr = new QScriptValue( obj->throwError ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


//[1]QScriptValue throwError ( Error error, const QString & text )
//[2]QScriptValue throwError ( const QString & text )

HB_FUNC( QSCRIPTCONTEXT_THROWERROR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXT_THROWERROR1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXT_THROWERROR2 );
  }
}

/*
QScriptValue throwValue ( const QScriptValue & value )
*/
HB_FUNC( QSCRIPTCONTEXT_THROWVALUE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->throwValue ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
QString toString () const
*/
HB_FUNC( QSCRIPTCONTEXT_TOSTRING )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





#pragma ENDDUMP
