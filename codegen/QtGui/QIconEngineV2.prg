%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIconEngine

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QList<QSize> availableSizes ( QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
$method=|QList<QSize>|availableSizes|QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototypeV2=virtual QIconEngineV2 * clone() const

$prototypeV2=QString iconName()

$prototypeV2=virtual QString key() const

$prototypeV2=virtual bool read( QDataStream & in )

$prototypeV2=virtual void virtual_hook( int id, void * data )

$prototypeV2=virtual bool write( QDataStream & out ) const

#pragma ENDDUMP
