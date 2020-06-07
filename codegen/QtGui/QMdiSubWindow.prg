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

$prototype=QMdiArea * mdiArea () const
$method=|QMdiArea *|mdiArea|

$prototype=void setKeyboardPageStep ( int step )
$method=|void|setKeyboardPageStep|int

$prototype=void setKeyboardSingleStep ( int step )
$method=|void|setKeyboardSingleStep|int

$prototype=void setOption ( SubWindowOption option, bool on = true )
$method=|void|setOption|QMdiSubWindow::SubWindowOption,bool=true

$prototype=void setSystemMenu ( QMenu * systemMenu )
$method=|void|setSystemMenu|QMenu *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=QMenu * systemMenu () const
$method=|QMenu *|systemMenu|

$prototype=bool testOption ( SubWindowOption option ) const
$method=|bool|testOption|QMdiSubWindow::SubWindowOption

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void showShaded ()
$method=|void|showShaded|

$prototype=void showSystemMenu ()
$method=|void|showSystemMenu|

$beginSignals
$signal=|aboutToActivate()
$signal=|windowStateChanged(Qt::WindowStates,Qt::WindowStates)
$endSignals

#pragma ENDDUMP
