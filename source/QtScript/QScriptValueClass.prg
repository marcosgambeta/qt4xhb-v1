/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTENGINE
REQUEST QSCRIPTCLASS
REQUEST QDATETIME
REQUEST QOBJECT
REQUEST QREGEXP
REQUEST QVARIANT
#endif

CLASS QScriptValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new10
   METHOD new
   METHOD delete
   METHOD call1
   METHOD call2
   METHOD call
   METHOD construct1
   METHOD construct2
   METHOD construct
   METHOD data
   METHOD engine
   METHOD equals
   METHOD instanceOf
   METHOD isArray
   METHOD isBool
   METHOD isDate
   METHOD isError
   METHOD isFunction
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQMetaObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isValid
   METHOD isVariant
   METHOD lessThan
   METHOD prototype
   METHOD scriptClass
   METHOD setData
   METHOD setPrototype
   METHOD setScriptClass
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt32
   METHOD toInteger
   METHOD toNumber
   METHOD toQObject
   METHOD toRegExp
   METHOD toString
   METHOD toUInt16
   METHOD toUInt32
   METHOD toVariant
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptValue>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>
#include <QRegExp>
#include <QVariant>

/*
QScriptValue ()
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW1 )
{
  QScriptValue * o = new QScriptValue ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( const QScriptValue & other )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW2 )
{
  QScriptValue * o = new QScriptValue ( *PQSCRIPTVALUE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( SpecialValue value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW3 )
{
  QScriptValue * o = new QScriptValue ( (QScriptValue::SpecialValue) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( bool value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW4 )
{
  QScriptValue * o = new QScriptValue ( PBOOL(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( int value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW5 )
{
  QScriptValue * o = new QScriptValue ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( uint value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW6 )
{
  QScriptValue * o = new QScriptValue ( PUINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( qsreal value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW7 )
{
  qsreal par1 = hb_parnd(1);
  QScriptValue * o = new QScriptValue ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptValue ( const QString & value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW8 )
{
  QScriptValue * o = new QScriptValue ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}



/*
QScriptValue ( const char * value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW10 )
{
  QScriptValue * o = new QScriptValue ( (const char *) hb_parc(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[01]QScriptValue ()
//[02]QScriptValue ( const QScriptValue & other )
//[03]QScriptValue ( SpecialValue value )
//[04]QScriptValue ( bool value )
//[05]QScriptValue ( int value )
//[06]QScriptValue ( uint value )
//[07]QScriptValue ( qsreal value )
//[08]QScriptValue ( const QString & value )
//[09]QScriptValue ( const QLatin1String & value )
//[10]QScriptValue ( const char * value )

HB_FUNC_STATIC( QSCRIPTVALUE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW3 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW5 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW6 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW8 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_DELETE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CALL1 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue par1 = ISNIL(1)? QScriptValue() : *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
QScriptValueList par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
}
    QScriptValue * ptr = new QScriptValue( obj->call ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue call ( const QScriptValue & thisObject, const QScriptValue & arguments )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CALL2 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * par2 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->call ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
//[2]QScriptValue call ( const QScriptValue & thisObject, const QScriptValue & arguments )

// TODO: QScripValueList = array ?

HB_FUNC_STATIC( QSCRIPTVALUE_CALL )
{
  if( ISBETWEEN(0,2) && (ISQSCRIPTVALUE(1)||ISNIL(1)) && (ISOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL2 );
  }
}

/*
QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT1 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QScriptValueList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    QScriptValue * ptr = new QScriptValue( obj->construct ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue construct ( const QScriptValue & arguments )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT2 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->construct ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
//[2]QScriptValue construct ( const QScriptValue & arguments )

HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT )
{
  if( ISBETWEEN(0,1) && (ISOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT2 );
  }
}

/*
QScriptValue data () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_DATA )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->data () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptEngine * engine () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ENGINE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
bool equals ( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_EQUALS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->equals ( *par1 ) );
  }
}


/*
bool instanceOf ( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_INSTANCEOF )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->instanceOf ( *par1 ) );
  }
}


/*
bool isArray () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISARRAY )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isArray () );
  }
}


/*
bool isBool () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISBOOL )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isBool () );
  }
}


/*
bool isDate () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISDATE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDate () );
  }
}


/*
bool isError () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISERROR )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isError () );
  }
}


/*
bool isFunction () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISFUNCTION )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFunction () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNULL )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isNumber () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNUMBER )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNumber () );
  }
}


/*
bool isObject () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isObject () );
  }
}


/*
bool isQMetaObject () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQMETAOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isQMetaObject () );
  }
}


/*
bool isQObject () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isQObject () );
  }
}


/*
bool isRegExp () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISREGEXP )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRegExp () );
  }
}


/*
bool isString () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISSTRING )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isString () );
  }
}


/*
bool isUndefined () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISUNDEFINED )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isUndefined () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVALID )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
bool isVariant () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVARIANT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVariant () );
  }
}


/*
bool lessThan ( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_LESSTHAN )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->lessThan ( *par1 ) );
  }
}







/*
QScriptValue prototype () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_PROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptClass * scriptClass () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptClass * ptr = obj->scriptClass ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCLASS" );
  }
}


/*
void setData ( const QScriptValue & data )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETDATA )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setPrototype ( const QScriptValue & prototype )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETPROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPrototype ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScriptClass ( QScriptClass * scriptClass )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETSCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptClass * par1 = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScriptClass ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool strictlyEquals ( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_STRICTLYEQUALS )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->strictlyEquals ( *par1 ) );
  }
}


/*
bool toBool () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOBOOL )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->toBool () );
  }
}


/*
QDateTime toDateTime () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TODATETIME )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
qint32 toInt32 () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOINT32 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT32( obj->toInt32 () );
  }
}


/*
qsreal toInteger () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOINTEGER )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qsreal r = obj->toInteger ();
    hb_retnd( r );
  }
}


/*
qsreal toNumber () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TONUMBER )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qsreal r = obj->toNumber ();
    hb_retnd( r );
  }
}



/*
QObject * toQObject () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->toQObject ();
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QRegExp toRegExp () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOREGEXP )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->toRegExp () );
    _qt4xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
}


/*
QString toString () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOSTRING )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString () );
  }
}


/*
quint16 toUInt16 () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT16 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT16( obj->toUInt16 () );
  }
}


/*
quint32 toUInt32 () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT32 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT32( obj->toUInt32 () );
  }
}


/*
QVariant toVariant () const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOVARIANT )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SETSELFDESTRUCTION )
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
