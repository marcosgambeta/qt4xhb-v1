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

$prototype=virtual int exec () = 0
$virtualMethod=|int|exec|

$prototype=int fromPage () const
$method=|int|fromPage|

$prototype=int maxPage () const
$method=|int|maxPage|

$prototype=int minPage () const
$method=|int|minPage|

$prototype=PrintRange printRange () const
$method=|QAbstractPrintDialog::PrintRange|printRange|

$prototype=QPrinter * printer () const
$method=|QPrinter *|printer|

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setMinMax ( int min, int max )
$method=|void|setMinMax|int,int

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QAbstractPrintDialog::PrintRange

$prototype=int toPage () const
$method=|int|toPage|

#pragma ENDDUMP
