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

$beginClassFrom=QDialog

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=virtual int exec() = 0

$prototypeV2=int fromPage() const

$prototypeV2=int maxPage() const

$prototypeV2=int minPage() const

$prototypeV2=QAbstractPrintDialog::PrintRange printRange() const

$prototypeV2=QPrinter * printer() const

$prototypeV2=void setFromTo( int from, int to )

$prototypeV2=void setMinMax( int min, int max )

$prototypeV2=void setPrintRange( QAbstractPrintDialog::PrintRange range )

$prototypeV2=int toPage() const

#pragma ENDDUMP
