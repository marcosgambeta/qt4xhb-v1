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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QImageIOPlugin::Capabilities capabilities( QIODevice * device, const QByteArray & format ) const = 0

$prototype=virtual QImageIOHandler * create ( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
$virtualMethod=|QImageIOHandler *|create|QIODevice *,const QByteArray &=QByteArray()

$prototypeV2=virtual QStringList keys() const = 0

#pragma ENDDUMP
