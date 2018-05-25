%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD signature
   METHOD typeName
   METHOD parameterTypes
   METHOD parameterNames
   METHOD tag
   METHOD access
   METHOD methodType
   METHOD attributes
   METHOD methodIndex
   METHOD revision
   METHOD enclosingMetaObject
%%    METHOD invoke1
%%    METHOD invoke2
%%    METHOD invoke3
%%    METHOD invoke4
   METHOD invoke

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMetaMethod()
$constructor=|new|

$deleteMethod

$prototype=const char *signature() const
$method=|const char *|signature|

$prototype=const char *typeName() const
$method=|const char *|typeName|

$prototype=QList<QByteArray> parameterTypes() const
$method=|QList<QByteArray>|parameterTypes|

$prototype=QList<QByteArray> parameterNames() const
$method=|QList<QByteArray>|parameterNames|

$prototype=const char *tag() const
$method=|const char *|tag|

$prototype=Access access() const
$method=|QMetaMethod::Access|access|

$prototype=MethodType methodType() const
$method=|QMetaMethod::MethodType|methodType|

$prototype=int attributes() const
$method=|int|attributes|

$prototype=int methodIndex() const
$method=|int|methodIndex|

$prototype=int revision() const
$method=|int|revision|

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$prototype=bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
%% TODO: implementar
%% $method=|bool|invoke,invoke1|QObject *,Qt::ConnectionType,QGenericReturnArgument,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
%% TODO: implementar
%% $method=|bool|invoke,invoke2|QObject *,QGenericReturnArgument,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
%% TODO: implementar
%% $method=|bool|invoke,invoke3|QObject *,Qt::ConnectionType,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
%% TODO: implementar
%% $method=|bool|invoke,invoke4|QObject *,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

//[1]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[2]bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[3]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[4]bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const

HB_FUNC_STATIC( QMETAMETHOD_INVOKE )
{
%%   if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISNUM(1) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
%%   {
%%     HB_FUNC_EXEC( QMETAMETHOD_INVOKE1 );
%%   }
%%   else if( ISBETWEEN(2,12) && ISQOBJECT(1) && ISOBJECT(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
%%   {
%%     HB_FUNC_EXEC( QMETAMETHOD_INVOKE2 );
%%   }
%%   else if( ISBETWEEN(2,12) && ISQOBJECT(1) && ISNUM(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
%%   {
%%     HB_FUNC_EXEC( QMETAMETHOD_INVOKE3 );
%%   }
%%   else if( ISBETWEEN(1,11) && ISQOBJECT(1) && (ISOBJECT(2)||ISNIL(2)) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) )
%%   {
%%     HB_FUNC_EXEC( QMETAMETHOD_INVOKE4 );
%%   }
%%   else
%%   {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
}

$extraMethods

#pragma ENDDUMP
