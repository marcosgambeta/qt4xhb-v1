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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStackedWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=int addWidget( QWidget * widget )

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototypeV2=QWidget * currentWidget() const

$prototypeV2=int indexOf( QWidget * widget ) const

$prototypeV2=int insertWidget( int index, QWidget * widget )

$prototypeV2=void removeWidget( QWidget * widget )

$prototypeV2=QWidget * widget( int index ) const

$prototypeV2=void setCurrentIndex( int index )

$prototypeV2=void setCurrentWidget( QWidget * widget )

$beginSignals
$signal=|currentChanged(int)
$signal=|widgetRemoved(int)
$endSignals

#pragma ENDDUMP
