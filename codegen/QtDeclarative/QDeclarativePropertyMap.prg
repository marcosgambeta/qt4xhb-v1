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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativePropertyMap ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void clear( const QString & key )

$prototypeV2=bool contains( const QString & key ) const

$prototypeV2=int count() const

$prototypeV2=void insert( const QString & key, const QVariant & value )

$prototypeV2=bool isEmpty() const

$prototypeV2=QStringList keys() const

$prototypeV2=int size() const

$prototypeV2=QVariant value( const QString & key ) const

$beginSignals
$signal=|valueChanged(QString,QVariant)
$endSignals

#pragma ENDDUMP
