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

$prototype=virtual QIconEngineV2 * clone () const
$virtualMethod=|QIconEngineV2 *|clone|

$prototypeV2=QString iconName()

$prototypeV2=virtual QString key() const

$prototype=virtual bool read ( QDataStream & in )
$virtualMethod=|bool|read|QDataStream &

$prototype=virtual void virtual_hook ( int id, void * data )
$virtualMethod=|void|virtual_hook|int,void *

$prototype=virtual bool write ( QDataStream & out ) const
$virtualMethod=|bool|write|QDataStream &

#pragma ENDDUMP
