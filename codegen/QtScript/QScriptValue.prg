%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>
#include <QtCore/QRegExp>
#include <QtCore/QVariant>

$prototype=QScriptValue ()
$constructor=|new1|

$prototype=QScriptValue ( const QScriptValue & other )
$constructor=|new2|const QScriptValue &

$prototype=QScriptValue ( SpecialValue value )
$constructor=|new3|QScriptValue::SpecialValue

$prototype=QScriptValue ( bool value )
$constructor=|new4|bool

$prototype=QScriptValue ( int value )
$constructor=|new5|int

$prototype=QScriptValue ( uint value )
$constructor=|new6|uint

$prototype=QScriptValue ( qsreal value )
%% TODO: $constructor=|new7|qsreal

$prototype=QScriptValue ( const QString & value )
$constructor=|new8|const QString &

$prototype=QScriptValue ( const QLatin1String & value )
%% TODO: $constructor=|new9|const QLatin1String &

$prototype=QScriptValue ( const char * value )
$constructor=|new10|const char *

/*
[01]QScriptValue ()
[02]QScriptValue ( const QScriptValue & other )
[03]QScriptValue ( SpecialValue value )
[04]QScriptValue ( bool value )
[05]QScriptValue ( int value )
[06]QScriptValue ( uint value )
[07]QScriptValue ( qsreal value )
[08]QScriptValue ( const QString & value )
[09]QScriptValue ( const QLatin1String & value )
[10]QScriptValue ( const char * value )
*/

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
$addMethod=new

$deleteMethod

$prototype=QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
%% TODO: code generator
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
    Qt4xHb::createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}
$addMethod=call1

$prototype=QScriptValue call ( const QScriptValue & thisObject, const QScriptValue & arguments )
$method=|QScriptValue|call,call2|const QScriptValue &,const QScriptValue &

/*
[1]QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
[2]QScriptValue call ( const QScriptValue & thisObject, const QScriptValue & arguments )
*/

%% TODO: QScripValueList = array ?

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=call

$prototype=QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
%% TODO: code generator
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
    Qt4xHb::createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}
$addMethod=construct1

$prototype=QScriptValue construct ( const QScriptValue & arguments )
$method=|QScriptValue|construct,construct2|const QScriptValue &

/*
[1]QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
[2]QScriptValue construct ( const QScriptValue & arguments )
*/

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=construct

$prototypeV2=QScriptValue data() const

$prototype=QScriptEngine * engine () const
%% TODO: $method=|QScriptEngine *|engine|

$prototype=bool equals ( const QScriptValue & other ) const
$method=|bool|equals|const QScriptValue &

$prototype=bool instanceOf ( const QScriptValue & other ) const
$method=|bool|instanceOf|const QScriptValue &

$prototypeV2=bool isArray() const

$prototypeV2=bool isBool() const

$prototypeV2=bool isDate() const

$prototypeV2=bool isError() const

$prototypeV2=bool isFunction() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isNumber() const

$prototypeV2=bool isObject() const

$prototypeV2=bool isQMetaObject() const

$prototypeV2=bool isQObject() const

$prototypeV2=bool isRegExp() const

$prototypeV2=bool isString() const

$prototypeV2=bool isUndefined() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isVariant() const

$prototype=bool lessThan ( const QScriptValue & other ) const
$method=|bool|lessThan|const QScriptValue &

$prototypeV2=QScriptValue prototype() const

$prototypeV2=QScriptClass * scriptClass() const

$prototype=void setData ( const QScriptValue & data )
$method=|void|setData|const QScriptValue &

$prototype=void setPrototype ( const QScriptValue & prototype )
$method=|void|setPrototype|const QScriptValue &

$prototype=void setScriptClass ( QScriptClass * scriptClass )
$method=|void|setScriptClass|QScriptClass *

$prototype=bool strictlyEquals ( const QScriptValue & other ) const
$method=|bool|strictlyEquals|const QScriptValue &

$prototypeV2=bool toBool() const

$prototypeV2=QDateTime toDateTime() const

$prototypeV2=qint32 toInt32() const

$prototype=qsreal toInteger () const
%% TODO: $method=|qsreal|toInteger|

$prototype=qsreal toNumber () const
%% TODO: $method=|qsreal|toNumber|

$prototypeV2=QObject * toQObject() const

$prototypeV2=QRegExp toRegExp() const

$prototypeV2=QString toString() const

$prototypeV2=quint16 toUInt16() const

$prototypeV2=quint32 toUInt32() const

$prototypeV2=QVariant toVariant() const

$extraMethods

#pragma ENDDUMP
