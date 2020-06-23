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

$prototypeV2=QButtonGroup * group() const

$prototypeV2=QIcon icon() const

$prototypeV2=QSize iconSize() const

$prototypeV2=bool isCheckable() const

$prototypeV2=bool isChecked() const

$prototypeV2=bool isDown() const

$prototypeV2=void setAutoExclusive( bool )

$prototypeV2=void setAutoRepeat( bool )

$prototypeV2=void setAutoRepeatDelay( int )

$prototypeV2=void setAutoRepeatInterval( int )

$prototypeV2=void setCheckable( bool )

$prototypeV2=void setDown( bool )

$prototypeV2=void setIcon( const QIcon & icon )

$prototypeV2=void setShortcut( const QKeySequence & key )

$prototypeV2=void setText( const QString & text )

$prototypeV2=QKeySequence shortcut() const

$prototypeV2=QString text() const

$prototype=void animateClick ( int msec = 100 )
$method=|void|animateClick|int=100

$prototypeV2=void click()

$prototypeV2=void setChecked( bool )

$prototypeV2=void setIconSize( const QSize & size )

$prototypeV2=void toggle()

$beginSignals
$signal=|clicked(bool)
$signal=|pressed()
$signal=|released()
$signal=|toggled(bool)
$endSignals

#pragma ENDDUMP
