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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QSize actualSize( const QSize & size, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual void addFile( const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual void addPixmap( const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual void paint( QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state ) = 0

$prototypeV2=virtual QPixmap pixmap( const QSize & size, QIcon::Mode mode, QIcon::State state )

$extraMethods

#pragma ENDDUMP
