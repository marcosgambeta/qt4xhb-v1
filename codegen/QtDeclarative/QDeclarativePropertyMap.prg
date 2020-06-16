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

$prototype=void clear ( const QString & key )
$method=|void|clear|const QString &

$prototype=bool contains ( const QString & key ) const
$method=|bool|contains|const QString &

$prototypeV2=int count() const

$prototype=void insert ( const QString & key, const QVariant & value )
$method=|void|insert|const QString &,const QVariant &

$prototypeV2=bool isEmpty() const

$prototypeV2=QStringList keys() const

$prototypeV2=int size() const

$prototype=QVariant value ( const QString & key ) const
$method=|QVariant|value|const QString &

$beginSignals
$signal=|valueChanged(QString,QVariant)
$endSignals

#pragma ENDDUMP
