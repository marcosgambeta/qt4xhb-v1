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

#include <QtGui/QGesture>

$deleteMethod

$prototypeV2=virtual QGesture * create( QObject * target )

$prototypeV2=virtual QGestureRecognizer::Result recognize( QGesture * gesture, QObject * watched, QEvent * event ) = 0

$prototypeV2=virtual void reset( QGesture * gesture )

$prototypeV2=static Qt::GestureType registerRecognizer( QGestureRecognizer * recognizer )

$prototypeV2=static void unregisterRecognizer( Qt::GestureType type )

$extraMethods

#pragma ENDDUMP
