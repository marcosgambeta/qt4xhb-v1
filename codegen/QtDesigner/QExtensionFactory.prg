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

$beginClassFrom=QObject,QAbstractExtensionFactory

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDesigner/QExtensionManager>

$prototype=QExtensionFactory ( QExtensionManager * parent = 0 )
$constructor=|new|QExtensionManager *=0

$deleteMethod

$prototypeV2=QExtensionManager * extensionManager() const

$prototypeV2=virtual QObject * extension( QObject * object, const QString & iid ) const

#pragma ENDDUMP
