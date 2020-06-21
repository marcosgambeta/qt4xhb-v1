%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
$virtualMethod=|int|addDynamicProperty|const QString &,const QVariant &

$prototypeV2=virtual bool canAddDynamicProperty( const QString & propertyName ) const = 0

$prototypeV2=virtual bool dynamicPropertiesAllowed() const = 0

$prototypeV2=virtual bool isDynamicProperty( int index ) const = 0

$prototypeV2=virtual bool removeDynamicProperty( int index ) = 0

$extraMethods

#pragma ENDDUMP
