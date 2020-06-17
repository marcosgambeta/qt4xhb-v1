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

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setMinMax ( int min, int max )
$method=|void|setMinMax|int,int

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QAbstractPrintDialog::PrintRange

$prototypeV2=int toPage() const

#pragma ENDDUMP
