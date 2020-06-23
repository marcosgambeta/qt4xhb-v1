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

$prototype=QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=bool isSizeGripEnabled() const

$prototypeV2=int result() const

$prototypeV2=void setModal( bool modal )

$prototypeV2=void setResult( int i )

$prototypeV2=void setSizeGripEnabled( bool )

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual void accept()

$prototypeV2=virtual void done( int r )

$prototypeV2=int exec()

$prototypeV2=void open()

$prototypeV2=virtual void reject()

$beginSignals
$signal=|accepted()
$signal=|finished(int)
$signal=|rejected()
$endSignals

#pragma ENDDUMP
