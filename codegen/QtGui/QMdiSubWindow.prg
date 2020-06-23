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

#include <QtGui/QMdiArea>
#include <QtGui/QMenu>

$prototype=QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$prototypeV2=bool isShaded() const

$prototypeV2=int keyboardPageStep() const

$prototypeV2=int keyboardSingleStep() const

$prototypeV2=QMdiArea * mdiArea() const

$prototypeV2=void setKeyboardPageStep( int step )

$prototypeV2=void setKeyboardSingleStep( int step )

$prototype=void setOption ( SubWindowOption option, bool on = true )
$method=|void|setOption|QMdiSubWindow::SubWindowOption,bool=true

$prototypeV2=void setSystemMenu( QMenu * systemMenu )

$prototypeV2=void setWidget( QWidget * widget )

$prototypeV2=QMenu * systemMenu() const

$prototypeV2=bool testOption( QMdiSubWindow::SubWindowOption option ) const

$prototypeV2=QWidget * widget() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void showShaded()

$prototypeV2=void showSystemMenu()

$beginSignals
$signal=|aboutToActivate()
$signal=|windowStateChanged(Qt::WindowStates,Qt::WindowStates)
$endSignals

#pragma ENDDUMP
