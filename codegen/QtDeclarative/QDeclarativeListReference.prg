%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeListReference ()
$internalConstructor=|new1|

$prototype=QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
$internalConstructor=|new2|QObject *,const char *,QDeclarativeEngine *=0

/*
[1]QDeclarativeListReference ()
[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeListReference_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    QDeclarativeListReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=bool append( QObject * object ) const

$prototypeV2=QObject * at( int index ) const

$prototypeV2=bool canAppend() const

$prototypeV2=bool canAt() const

$prototypeV2=bool canClear() const

$prototypeV2=bool canCount() const

$prototypeV2=bool clear() const

$prototypeV2=int count() const

$prototypeV2=bool isValid() const

$prototypeV2=const QMetaObject * listElementType() const

$prototypeV2=QObject * object() const

$extraMethods

#pragma ENDDUMP
