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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=int colorCount () const
$method=|int|colorCount|

$prototype=int depth () const
$method=|int|depth|

$prototype=int height () const
$method=|int|height|

$prototype=int heightMM () const
$method=|int|heightMM|

$prototype=int logicalDpiX () const
$method=|int|logicalDpiX|

$prototype=int logicalDpiY () const
$method=|int|logicalDpiY|

$prototype=int numColors () const (deprecated)
$method=|int|numColors|

$prototype=virtual QPaintEngine * paintEngine () const = 0
$virtualMethod=|QPaintEngine *|paintEngine|

$prototype=bool paintingActive () const
$method=|bool|paintingActive|

$prototype=int physicalDpiX () const
$method=|int|physicalDpiX|

$prototype=int physicalDpiY () const
$method=|int|physicalDpiY|

$prototype=int width () const
$method=|int|width|

$prototype=int widthMM () const
$method=|int|widthMM|

$extraMethods

#pragma ENDDUMP
