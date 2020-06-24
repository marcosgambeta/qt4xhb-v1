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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStatusBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=void addPermanentWidget( QWidget * widget, int stretch = 0 )

$prototypeV2=void addWidget( QWidget * widget, int stretch = 0 )

$prototypeV2=QString currentMessage() const

$prototypeV2=int insertPermanentWidget( int index, QWidget * widget, int stretch = 0 )

$prototypeV2=int insertWidget( int index, QWidget * widget, int stretch = 0 )

$prototypeV2=bool isSizeGripEnabled() const

$prototypeV2=void removeWidget( QWidget * widget )

$prototypeV2=void setSizeGripEnabled( bool )

$prototypeV2=void clearMessage()

$prototypeV2=void showMessage( const QString & message, int timeout = 0 )

$beginSignals
$signal=|messageChanged(QString)
$endSignals

#pragma ENDDUMP
