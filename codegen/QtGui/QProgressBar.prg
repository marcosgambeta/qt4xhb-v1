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

$prototype=QProgressBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QString format() const

$prototypeV2=bool invertedAppearance()

$prototypeV2=bool isTextVisible() const

$prototypeV2=int maximum() const

$prototypeV2=int minimum() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=void setFormat( const QString & format )

$prototypeV2=void setInvertedAppearance( bool invert )

$prototypeV2=void setTextDirection( QProgressBar::Direction textDirection )

$prototypeV2=void setTextVisible( bool visible )

$prototypeV2=virtual QString text() const

$prototypeV2=QProgressBar::Direction textDirection()

$prototypeV2=int value() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void reset()

$prototypeV2=void setMaximum( int maximum )

$prototypeV2=void setMinimum( int minimum )

$prototypeV2=void setOrientation( Qt::Orientation )

$prototypeV2=void setRange( int minimum, int maximum )

$prototypeV2=void setValue( int value )

$beginSignals
$signal=|valueChanged(int)
$endSignals

#pragma ENDDUMP
