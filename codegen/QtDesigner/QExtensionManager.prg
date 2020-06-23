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

$prototype=virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
$virtualMethod=|void|registerExtensions|QAbstractExtensionFactory *,const QString &=QString()

$prototype=virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
$virtualMethod=|void|unregisterExtensions|QAbstractExtensionFactory *,const QString &=QString()

#pragma ENDDUMP
