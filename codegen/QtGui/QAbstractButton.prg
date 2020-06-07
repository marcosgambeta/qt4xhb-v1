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

#include <QtGui/QButtonGroup>

$deleteMethod

$prototypeV2=bool autoExclusive() const

$prototypeV2=bool autoRepeat() const

$prototypeV2=int autoRepeatDelay() const

$prototypeV2=int autoRepeatInterval() const

$prototype=QButtonGroup * group () const
$method=|QButtonGroup *|group|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototypeV2=bool isCheckable() const

$prototypeV2=bool isChecked() const

$prototypeV2=bool isDown() const

$prototype=void setAutoExclusive ( bool )
$method=|void|setAutoExclusive|bool

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

$prototype=void setAutoRepeatDelay ( int )
$method=|void|setAutoRepeatDelay|int

$prototype=void setAutoRepeatInterval ( int )
$method=|void|setAutoRepeatInterval|int

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

$prototype=void setDown ( bool )
$method=|void|setDown|bool

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setShortcut ( const QKeySequence & key )
$method=|void|setShortcut|const QKeySequence &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=QKeySequence shortcut () const
$method=|QKeySequence|shortcut|

$prototypeV2=QString text() const

$prototype=void animateClick ( int msec = 100 )
$method=|void|animateClick|int=100

$prototype=void click ()
$method=|void|click|

$prototype=void setChecked ( bool )
$method=|void|setChecked|bool

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=void toggle ()
$method=|void|toggle|

$beginSignals
$signal=|clicked(bool)
$signal=|pressed()
$signal=|released()
$signal=|toggled(bool)
$endSignals

#pragma ENDDUMP
