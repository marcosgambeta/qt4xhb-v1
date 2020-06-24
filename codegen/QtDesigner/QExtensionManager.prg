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

$beginClassFrom=QObject,QAbstractExtensionManager

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QExtensionManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=virtual QObject * extension( QObject * object, const QString & iid ) const

$prototypeV2=virtual void registerExtensions( QAbstractExtensionFactory * factory, const QString & iid = QString() )

$prototypeV2=virtual void unregisterExtensions( QAbstractExtensionFactory * factory, const QString & iid = QString() )

#pragma ENDDUMP
