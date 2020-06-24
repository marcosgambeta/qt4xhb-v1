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

$prototype=QScriptClass ( QScriptEngine * engine )
$constructor=|new|QScriptEngine *

$deleteMethod

$prototype=QScriptEngine * engine () const
%% TODO: $method=|QScriptEngine *|engine|

$prototypeV2=virtual QVariant extension( QScriptClass::Extension extension, const QVariant & argument = QVariant() )

$prototypeV2=virtual QString name() const

$prototypeV2=virtual QScriptClassPropertyIterator * newIterator( const QScriptValue & object )

$prototypeV2=virtual QScriptValue property( const QScriptValue & object, const QScriptString & name, uint id )

$prototypeV2=virtual QScriptValue::PropertyFlags propertyFlags( const QScriptValue & object, const QScriptString & name, uint id )

$prototypeV2=virtual QScriptValue prototype() const

$prototype=virtual QueryFlags queryProperty ( const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id )
%% TODO: $virtualMethod=|QScriptClass::QueryFlags|queryProperty|const QScriptValue &,const QScriptString &,QScriptClass::QueryFlags,uint *

$prototypeV2=virtual void setProperty( QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value )

$prototypeV2=virtual bool supportsExtension( QScriptClass::Extension extension ) const

$extraMethods

#pragma ENDDUMP
