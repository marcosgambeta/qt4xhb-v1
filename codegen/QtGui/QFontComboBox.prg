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

$beginClassFrom=QComboBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontComboBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QFont currentFont() const

$prototypeV2=QFontComboBox::FontFilters fontFilters() const

$prototypeV2=void setFontFilters( QFontComboBox::FontFilters filters )

$prototypeV2=void setWritingSystem( QFontDatabase::WritingSystem script )

$prototypeV2=QFontDatabase::WritingSystem writingSystem() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void setCurrentFont( const QFont & font )

$beginSignals
$signal=|currentFontChanged(QFont)
$endSignals

#pragma ENDDUMP
