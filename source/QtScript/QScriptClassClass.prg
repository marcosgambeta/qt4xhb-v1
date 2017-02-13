/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSCRIPTENGINE
REQUEST QVARIANT
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTVALUE

CLASS QScriptClass

   DATA pointer
   DATA class_id INIT Class_Id_QScriptClass
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD extension
   METHOD name
   METHOD newIterator
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD queryProperty
   METHOD setProperty
   METHOD supportsExtension
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QScriptClass
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QScriptClass
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QScriptClass
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QScriptClass
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QScriptClass
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QScriptClass
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptClass>

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
QScriptClass ( QScriptEngine * engine )
*/
HB_FUNC( QSCRIPTCLASS_NEW )
{
  QScriptClass * o = NULL;
  QScriptEngine * par1 = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptClass ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptClass *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QSCRIPTCLASS_DELETE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptEngine * engine () const
*/
HB_FUNC( QSCRIPTCLASS_ENGINE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );  }
}


/*
virtual QVariant extension ( Extension extension, const QVariant & argument = QVariant() )
*/
HB_FUNC( QSCRIPTCLASS_EXTENSION )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->extension (  (QScriptClass::Extension) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
virtual QString name () const
*/
HB_FUNC( QSCRIPTCLASS_NAME )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QScriptClassPropertyIterator * newIterator ( const QScriptValue & object )
*/
HB_FUNC( QSCRIPTCLASS_NEWITERATOR )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptClassPropertyIterator * ptr = obj->newIterator ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCLASSPROPERTYITERATOR" );  }
}


/*
virtual QScriptValue property ( const QScriptValue & object, const QScriptString & name, uint id )
*/
HB_FUNC( QSCRIPTCLASS_PROPERTY )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptString * par2 = (QScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    uint par3 = hb_parni(3);
    QScriptValue * ptr = new QScriptValue( obj->property ( *par1, *par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
virtual QScriptValue::PropertyFlags propertyFlags ( const QScriptValue & object, const QScriptString & name, uint id )
*/
HB_FUNC( QSCRIPTCLASS_PROPERTYFLAGS )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptString * par2 = (QScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    uint par3 = hb_parni(3);
    int i = obj->propertyFlags ( *par1, *par2, par3 );
    hb_retni( i );
  }
}


/*
virtual QScriptValue prototype () const
*/
HB_FUNC( QSCRIPTCLASS_PROTOTYPE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );  }
}


/*
virtual QueryFlags queryProperty ( const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id )
*/
HB_FUNC( QSCRIPTCLASS_QUERYPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptString * par2 = (QScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    uint * par4 = (uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->queryProperty ( *par1, *par2,  (QScriptClass::QueryFlags) par3, par4 );
    hb_retni( i );
  }
}


/*
virtual void setProperty ( QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value )
*/
HB_FUNC( QSCRIPTCLASS_SETPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptString * par2 = (QScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    uint par3 = hb_parni(3);
    QScriptValue * par4 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProperty ( *par1, *par2, par3, *par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC( QSCRIPTCLASS_SUPPORTSEXTENSION )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->supportsExtension (  (QScriptClass::Extension) par1 );
    hb_retl( b );
  }
}





#pragma ENDDUMP
