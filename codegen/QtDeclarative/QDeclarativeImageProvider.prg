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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeImageProvider ( ImageType type )
$constructor=|new|QDeclarativeImageProvider::ImageType

$deleteMethod

$prototypeV2=QDeclarativeImageProvider::ImageType imageType() const

$prototypeV2=virtual QImage requestImage( const QString & id, QSize * size, const QSize & requestedSize )

$prototypeV2=virtual QPixmap requestPixmap( const QString & id, QSize * size, const QSize & requestedSize )

$extraMethods

#pragma ENDDUMP
