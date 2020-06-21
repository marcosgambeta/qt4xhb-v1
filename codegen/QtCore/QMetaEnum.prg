%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMetaEnum()
$constructor=|new|

$deleteMethod

$prototypeV2=const char * name() const

$prototypeV2=bool isFlag() const

$prototypeV2=int keyCount() const

$prototypeV2=const char * key( int index ) const

$prototypeV2=int value( int index ) const

$prototypeV2=const char * scope() const

$prototypeV2=int keyToValue( const char * key ) const

$prototypeV2=const char * valueToKey( int value ) const

$prototypeV2=int keysToValue( const char * keys ) const

$prototypeV2=QByteArray valueToKeys( int value ) const

$prototypeV2=const QMetaObject * enclosingMetaObject() const

$prototypeV2=bool isValid() const

$extraMethods

#pragma ENDDUMP
