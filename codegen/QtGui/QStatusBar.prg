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

$prototype=void addPermanentWidget ( QWidget * widget, int stretch = 0 )
$method=|void|addPermanentWidget|QWidget *,int=0

$prototype=void addWidget ( QWidget * widget, int stretch = 0 )
$method=|void|addWidget|QWidget *,int=0

$prototypeV2=QString currentMessage() const

$prototype=int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
$method=|int|insertPermanentWidget|int,QWidget *,int=0

$prototype=int insertWidget ( int index, QWidget * widget, int stretch = 0 )
$method=|int|insertWidget|int,QWidget *,int=0

$prototypeV2=bool isSizeGripEnabled() const

$prototypeV2=void removeWidget( QWidget * widget )

$prototypeV2=void setSizeGripEnabled( bool )

$prototypeV2=void clearMessage()

$prototype=void showMessage ( const QString & message, int timeout = 0 )
$method=|void|showMessage|const QString &,int=0

$beginSignals
$signal=|messageChanged(QString)
$endSignals

#pragma ENDDUMP
