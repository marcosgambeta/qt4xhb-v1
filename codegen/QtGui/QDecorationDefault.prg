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

$beginClassFrom=QDecoration

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDecorationDefault ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual bool paint( QPainter * painter, const QWidget * widget, int decorationRegion = QDecoration::All, QDecoration::DecorationState state = QDecoration::Normal )

$prototypeV2=virtual QRegion region( const QWidget * widget, const QRect & rect, int decorationRegion = QDecoration::All )

#pragma ENDDUMP
