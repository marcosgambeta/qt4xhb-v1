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

$beginClassFrom=QGraphicsEffect

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsColorizeEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QColor color () const
$method=|QColor|color|

$prototypeV2=qreal strength() const

$prototype=void setColor ( const QColor & c )
$method=|void|setColor|const QColor &

$prototype=void setStrength ( qreal strength )
$method=|void|setStrength|qreal

$beginSignals
$signal=|colorChanged(QColor)
$signal=|strengthChanged(qreal)
$endSignals

#pragma ENDDUMP
